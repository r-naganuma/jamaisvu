<%--
=========================================================================================================
  Module      : 会員登録変更確認画面(UserModifyConfirm.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="BodyUserExtendModify" Src="~/Form/Common/User/BodyUserExtendModify.ascx" %>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserModifyConfirm, App_Web_usermodifyconfirm.aspx.b2a7112d" title="登録情報変更確認ページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>会員情報変更</h2>

	<p class="catchTxt">
		ご入力内容をご確認ください。<br>
		変更を確定する場合は 変更ボタン を押してください。
	</p>

	<div class="registWrap_box">
		
		<div class="registWrap_box--input">
			<dl class="inputBox inputBox_confirm">
				<dt class="inputBox_left must">
					<%-- 氏名 --%>
					<%: ReplaceTag("@@User.name.name@@") %>
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.Name1 %>
					<%: this.UserInput.Name2 %>
				</dd>
				<dt class="inputBox_left must">
					<%-- ふりがな --%>
					ふりがな
				</dt>
				<dd class="inputBox_right">
					<% if (this.IsUserAddrJp) { %>
					<%: this.UserInput.NameKana1 %>
					<%: this.UserInput.NameKana2 %>
					<% } %>
				</dd>
				<dt class="inputBox_left must">
					<%-- 性別 --%>
					<%: ReplaceTag("@@User.sex.name@@") %>
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.SexValueText %></dd>
			<%if (Constants.PRODUCTREVIEW_ENABLED) { %>
				<dt style="display: none;" class="inputBox_left must">
					<%-- ニックネーム --%>
					<%: ReplaceTag("@@User.nickname.name@@") %>
				</dt>
				<dd style="display: none;" class="inputBox_right">
					<%: this.UserInput.NickName %></dd>
			<%} %>
				<dt class="inputBox_left must">
					<%-- 生年月日 --%>
					<%: ReplaceTag("@@User.birth.name@@") %>
				</dt>
				<dd class="inputBox_right">
				<%if (this.UserInput.Birth != null) {%>
					<%: this.UserInput.BirthYear %>年
					<%: this.UserInput.BirthMonth %>月
					<%: this.UserInput.BirthDay %>日
				<%} %></dd>
				<dt class="inputBox_left must">
					<%-- 電話番号 --%>
					<%: ReplaceTag("@@User.tel1.name@@", this.UserAddrCountryIsoCode) %>
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.Tel1 %></dd>
				<dt style="display: none;" class="inputBox_left must">
					<%: ReplaceTag("@@User.tel2.name@@", this.UserAddrCountryIsoCode) %>
				</dt>
				<dd style="display: none;" class="inputBox_right"><%: WebSanitizer.HtmlEncode(this.UserInput.Tel2) %></dd>
				<dt class="inputBox_left must">
					<%-- ＰＣメールアドレス --%>
					メールアドレス
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.MailAddr %>
					<%if (this.IsPcSiteOrOfflineUser && Constants.LOGIN_ID_USE_MAILADDRESS_ENABLED) {%>
					<%} %></dd>
				<dt style="display: none;" class="inputBox_left must">
					<%-- モバイルメールアドレス --%>
					<%: ReplaceTag("@@User.mail_addr2.name@@") %>
				</dt>
				<dd style="display: none;" class="inputBox_right">
					<%: this.UserInput.MailAddr2 %>
					<%if ((this.IsPcSiteOrOfflineUser == false) && Constants.LOGIN_ID_USE_MAILADDRESS_ENABLED) {%>
					<span class="notes">※ログイン時に利用します</span>
					<%} %></dd>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.zip.name@@") %>
				</dt>
				<dd class="inputBox_right">
					<% if (this.IsUserAddrJp) { %>
					<%: this.UserInput.Zip %>
					<% } %>
				</dd>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.addr.name@@") %>
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.Addr1 %><%: this.UserInput.Addr2 %><%: this.UserInput.Addr3 %><br />
					<%: this.UserInput.Addr4 %><br />
					<%: this.UserInput.Addr5 %> 
					<% if (this.IsUserAddrJp == false) { %>
					<%: this.UserInput.Zip %><br />
					<% } %>
					<%: this.UserInput.AddrCountryName %>
				</dd>
				<dt class="inputBox_left">
					<!-- 企業名 -->
					会社・部署
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.CompanyName %><br>
					<%: this.UserInput.CompanyPostName %></dd>
				<dt class="inputBox_left must">
					ニュースレター配信
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.MailFlgValueText %></dd>
				<%-- ユーザー拡張項目　HasInput:true(入力画面)/false(確認画面)　HasRegist:true(新規登録)/false(登録編集) --%>
				<uc:BodyUserExtendModify ID="ucBodyUserExtendModify" runat="server" HasInput="false" HasRegist="false" />
			<%if (Constants.LOGIN_ID_USE_MAILADDRESS_ENABLED == false) { %>
				<dt class="inputBox_left">
				<%-- ログインID --%>
				<%: ReplaceTag("@@User.login_id.name@@") %>
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.LoginId %></dd>
			<%} %>
				<dt class="inputBox_left">
				<%-- パスワード --%>
				<%: ReplaceTag("@@User.password.name@@") %>
				</dt>
				<dd class="inputBox_right">
					<%if (StringUtility.ToEmpty(this.UserInput.Password) != "") { %>
						<%: StringUtility.ChangeToAster(this.UserInput.Password) %>
					<%} else {%>
						（変更なし）
					<%} %>
				</dd>
			</dl>
		</div>
		<div class="allBtnBox">
			<asp:LinkButton ID="lbSend" runat="server" OnClientClick="return exec_submit()" OnClick="lbBack_Click" class="prevBtn">戻る</asp:LinkButton>
			<asp:LinkButton ID="lbModity" runat="server" OnClick="lbModity_Click" class="nextBtn">変更する</asp:LinkButton>
		</div>
	</div>
</div>
</div>

<div class="userBread">
	<ul>
		<li>
			<a href="<%= WebSanitizer.HtmlEncode(this.UnsecurePageProtocolAndHost + Constants.PATH_ROOT) %>">
				トップ
			</a>
		</li>
		<li> >
			<a href="/Form/User/MyPage.aspx">
				マイページ
			</a>
		</li>
		<li> >
			<a href="/Form/User/UserModifyInput.aspx">
				会員情報登録・変更
			</a>
		</li>
		<li> >
			<a href="#">
				確認
			</a>
		</li>
	</ul>
</div>
</asp:Content>