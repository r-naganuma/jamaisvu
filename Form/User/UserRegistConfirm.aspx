<%--
=========================================================================================================
  Module      : 会員登録確認画面(UserRegistConfirm.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="BodyUserExtendRegist" Src="~/Form/Common/User/BodyUserExtendRegist.ascx" %>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserRegistConfirm, App_Web_userregistconfirm.aspx.b2a7112d" title="会員新規登録確認ページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap topSpace">
	<h2>会員登録</h2>

	<%-- 会員登録系パンくず --%>
	<img src="../../Contents/ImagesPkg/user/user/registration_step02.png" class="registStep" alt="会員情報確認" />

	<p class="catchTxt">
		ご入力内容をご確認ください。<br>
		この内容で登録する場合は 登録ボタン を押してください。
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
				<% if (this.IsUserAddrJp) { %>
				<dt class="inputBox_left must">
					<%-- 氏名 --%>
					ふりがな
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.NameKana1 %>
					<%: this.UserInput.NameKana2 %>
				</dd>
				<% } %>
				<dt class="inputBox_left must">
					<%-- 性別 --%>
					<%: ReplaceTag("@@User.sex.name@@") %></dt>
				<dd class="inputBox_right">
					<%: this.UserInput.SexValueText %></dd>
			<%if (Constants.PRODUCTREVIEW_ENABLED) { %>
				<dt style="display: none;" class="inputBox_left must">
					<%-- ニックネーム --%>
					<%: ReplaceTag("@@User.nickname.name@@") %></dt>
				<dd style="display: none;" class="inputBox_right">
					<%: this.UserInput.NickName %></dd>
			<%} %>
				<dt class="inputBox_left must">
					<%-- 生年月日 --%>
					<%: ReplaceTag("@@User.birth.name@@") %></dt>
				<dd class="inputBox_right">
				<%if (this.UserInput.Birth != null) {%>
					<%: this.UserInput.BirthYear %>年
					<%: this.UserInput.BirthMonth %>月
					<%: this.UserInput.BirthDay %>日
				<%} %></dd>
				<%-- 電話番号 --%>
				<dt class="inputBox_left must"><%: ReplaceTag("@@User.tel1.name@@", this.UserAddrCountryIsoCode) %></dt>
				<dd class="inputBox_right"><%: this.UserInput.Tel1 %></dd>
				<dt style="display: none;" class="inputBox_left must"><%: ReplaceTag("@@User.tel2.name@@", this.UserAddrCountryIsoCode) %></dt>
				<dd style="display: none;" class="inputBox_right"><%: this.UserInput.Tel2 %></dd>
				<dt class="inputBox_left must">
					<%-- ＰＣメールアドレス --%>
					メールアドレス
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.MailAddr %>
					<%if (Constants.LOGIN_ID_USE_MAILADDRESS_ENABLED) {%>
					<%} %></dd>
				<dt style="display: none;" class="inputBox_left must">
					<%-- モバイルメールアドレス --%>
					<%: ReplaceTag("@@User.mail_addr2.name@@") %></dt>
				<dd style="display: none;" class="inputBox_right">
					<%: this.UserInput.MailAddr2 %></dd>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.zip.name@@") %>
				</dt>
				<dd class="inputBox_right">
					<% if (this.IsUserAddrJp) { %><%: this.UserInput.Zip %><% } %>
				</dd>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.addr.name@@") %>
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.Addr1 %><%: this.UserInput.Addr2 %><%: this.UserInput.Addr3 %><br>
					<%: this.UserInput.Addr4 %><br />
					<% if (this.IsUserAddrJp == false) { %><%: this.UserInput.Addr5 %> <%: this.UserInput.Zip %><br /><% } %>
					<%: this.UserInput.AddrCountryName %>
				</dd>
				<dt class="inputBox_left">
					<!-- 企業名 -->
					会社・部署
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.CompanyName %><br>
					<%: this.UserInput.CompanyPostName %>
				</dd>
				<dt class="inputBox_left must">
					ニュースレター配信
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.MailFlgValueText %></dd>
				<%-- ユーザー拡張項目　HasInput:true(入力画面)/false(確認画面)　HasRegist:true(新規登録)/false(登録編集) --%>
				<uc:BodyUserExtendRegist ID="ucBodyUserExtendRegist" runat="server" HasInput="false" HasRegist="true" />

		<%if ((Constants.LOGIN_ID_USE_MAILADDRESS_ENABLED == false) || this.IsVisible_UserPassword) { %>
			<%if (Constants.LOGIN_ID_USE_MAILADDRESS_ENABLED == false) { %>
				<dt class="inputBox_left must">
					<%-- ログインID --%>
					<%: ReplaceTag("@@User.login_id.name@@") %></dt>
				<dd class="inputBox_right">
					<%: this.UserInput.LoginId %></dd>
			<%} %>
			<%-- ソーシャルログイン連携されている場合はパスワードスキップ --%>
			<%if (this.IsVisible_UserPassword){ %>
				<dt class="inputBox_left must">
					<%-- パスワード --%>
					<%: ReplaceTag("@@User.password.name@@") %></dt>
				<dd class="inputBox_right">
					<%: StringUtility.ChangeToAster(this.UserInput.Password) %></dd>
			<% } %>
			</dl>
		<% } %>

		</div>

		<div class="allBtnBox">
			<asp:LinkButton ID="lbBack" runat="server" OnClientClick="return exec_submit()" OnClick="lbBack_Click" class="prevBtn">戻る</asp:LinkButton>
			<asp:LinkButton ID="lbSend" runat="server" OnClientClick="return exec_submit()" OnClick="lbSend_Click" class="nextBtn">登録する</asp:LinkButton>
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
			<a href="#">
				会員登録
			</a>
		</li>
	</ul>
</div>

</asp:Content>