<%--
=========================================================================================================
  Module      : 会員登録完了画面(UserRegistComplete.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserRegistComplete, App_Web_userregistcomplete.aspx.b2a7112d" title="会員新規登録完了ページ" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap topSpace">
	<h2>会員登録</h2>

	<%-- 会員登録系パンくず --%>
	<img src="../../Contents/ImagesPkg/user/user/registration_step03.png" class="registStep" alt="登録完了" />

	<div class="registWrap_box">
		<%-- メッセージ --%>
		<p class="completeTxt01">
			ご登録ありがとうございます
		</p>
		<p class="completeTxt02">
			<%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopName")) %>へのご登録ありがとうございます。<br>
			登録完了メールをご登録のメールアドレスに送信しました。<br><br>
			メールが届かない場合は、ご登録のメールアドレスが間違っている可能性がございます。<br>
			マイページの「登録内容の確認・変更」からご確認ください。<br><br>
			引き続き、お買い物をお楽しみください。
		</p>
		<div class="submitBtnBox">
			<asp:LinkButton ID="lbTopPage" runat="server" OnClick="lbTopPage_Click" class="prevBtn">トップページへ戻る</asp:LinkButton>
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