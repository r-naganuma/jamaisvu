<%--
=========================================================================================================
  Module      : パスワード変更完了画面(PasswordModifyComplete.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2010 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_PasswordModifyComplete, App_Web_passwordmodifycomplete.aspx.b2a7112d" title="パスワード変更完了ページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap topSpace">
	<h2>パスワード変更完了</h2>

	<div class="registWrap_box">
		<p class="psCompleteTxt">
			パスワード変更を完了しました。<br>
			引き続き、<%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopName")) %>でのお買い物を<br>
			お楽しみください。
		</p>
		<div class="submitBtnBox">
			<asp:LinkButton ID="lbTopPage" runat="server" OnClick="lbTopPage_Click" class="prevBtn">
				トップページへ戻る
			</asp:LinkButton>
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
				パスワード変更
			</a>
		</li>
		<li> >
			<a href="#">
				パスワード変更完了
			</a>
		</li>
	</ul>
</div>
</asp:Content>
