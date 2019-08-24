<%--
=========================================================================================================
  Module      : メールマガジン登録確認画面(MailMagazineRegistConfirm.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2010 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_MailMagazineRegistConfirm, App_Web_mailmagazineregistconfirm.aspx.b2a7112d" title="ニュースレター登録確認ページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap topSpace">
	<h2>ニュースレター登録内容確認</h2>

	<p class="catchTxt">
		ご入力内容をご確認ください。<br>
		この内容でニュースレターに登録する場合は 登録ボタン を押してください。
	</p>

	<div class="registWrap_box">
		<div class="registWrap_box--input">
			<dl class="inputBox inputBox_confirm">
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.name.name@@") %>
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.Name1 %> <%: this.UserInput.Name2 %>
				</dd>
				<dt class="inputBox_left must">
					ふりがな
				</dt>
				<dd class="inputBox_right">
					<%: this.UserInput.NameKana1 %> <%: this.UserInput.NameKana2 %>
				</dd>
				<dt class="inputBox_left must">
					メールアドレス
				</dt>
				<dd class="inputBox_right"><%: this.UserInput.MailAddr %></dd>
			</dl>
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
				ニュースレター登録
			</a>
		</li>
		<li> >
			<a href="#">
				ニュースレター登録内容確認
			</a>
		</li>
	</ul>
</div>
</asp:Content>