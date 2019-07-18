<%--
=========================================================================================================
  Module      : リマインダー完了画面(PasswordReminderComplete.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_PasswordReminderComplete, App_Web_passwordremindercomplete.aspx.b2a7112d" title="パスワード変更受付完了ページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap topSpace">
	<h2>受付完了</h2>

	<div class="registWrap_box">
		<p class="remindTxt">
			パスワード再設定用のリンクを記載したメールを<br>
			<span class="remindSpan01"><%= this.MailAddress %></span><br>
			に送信しましたのでご確認ください。<br><br>
			今後とも、<%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopName")) %>どうぞ宜しくお願い申し上げます。<br><br>
			<span class="remindSpan02">※メールアドレスが未登録の場合、メールは送信されません。</span>
		</p>
		<div class="submitBtnBox">
			<% if (string.IsNullOrEmpty(this.NextUrl) == false) { %>
			<asp:LinkButton ID="lbReturn" runat="server" OnClick="lbReturn_Click" class="prevBtn">
				戻る</asp:LinkButton>
			<% } else { %>
			<asp:LinkButton ID="lbTopPage" runat="server" OnClick="lbTopPage_Click" class="prevBtn">
				トップページへ戻る</asp:LinkButton>
			<% } %>
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
			<a href="/Form/Login.aspx">
				ログイン
			</a>
		</li>
		<li> >
			<a href="/Form/User/PasswordReminderInput.aspx">
				パスワード再設定
			</a>
		</li>
		<li> >
			<a href="#">
				受付完了
			</a>
		</li>
	</ul>
</div>
</asp:Content>