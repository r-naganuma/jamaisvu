<%--
=========================================================================================================
  Module      : 会員退会完了画面(UserWithdrawalComplete.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserWithdrawalComplete, App_Web_userwithdrawalcomplete.aspx.b2a7112d" title="退会完了ページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>退会手続き完了</h2>

	<div class="registWrap_box">
		<p class="psCompleteTxt">
			退会処理が完了いたしました。<br>
			<%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopName")) %>をご利用いただき<br>
			誠にありがとうございました。
		</p>
		<div class="submitBtnBox">
			<asp:LinkButton ID="lbTopPage" runat="server" OnClick="lbTopPage_Click" class="prevBtn">トップページへ戻る</asp:LinkButton>
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
		<li> >
			<a href="#">
				完了
			</a>
		</li>
	</ul>
</div>
</asp:Content>