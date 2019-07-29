<%--
=========================================================================================================
  Module      : 会員退会入力画面(UserWithdrawalInput.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserWithdrawalInput, App_Web_userwithdrawalinput.aspx.b2a7112d" title="退会入力ページ" %>
<%@ Import Namespace="w2.Common.Web" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>退会手続き</h2>

	<div class="registWrap_box">
		<p class="psCompleteTxt">
			<%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopName")) %>をご利用いただきありがとうございました。<br class="pc_contents">「退会する」ボタンを押すことで退会手続きが完了いたします。<br><br>
			ご退会後に再び本サービスをご利用される場合は、改めて会員登録していただくか<br class="pc_contents">ご注文時にお名前やご住所などの情報をご入力くださいませ。<br><br>
			※退会するとこれまでの会員情報や購入履歴が削除されますので、あらかじめご了承ください。
		</p>
		<div class="submitBtnBox">
			<% if (IsWithdrawalLimit(this.LoginUserId)) { %>
			<div runat="server" Visible="True" style="color:#ff0000; margin-left:120px; margin-bottom:3px; font-size:15px; line-height: 20px" align="left">
				有効な定期購入情報がございます。<br />
				定期購入情報の解約手続きを先に行ってから、退会を行ってください。
			</div>
			<% } else { %>
			<asp:LinkButton ID="lbWithdrawal" runat="server" OnClick="lbWithdrawal_Click" OnClientClick="return confirm('本当によろしいですか？')" class="nextBtn">退会する</asp:LinkButton>
			<% } %>
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
			<a href="#">
				退会手続き
			</a>
		</li>
	</ul>
</div>
</asp:Content>