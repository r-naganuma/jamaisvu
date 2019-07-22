<%--
=========================================================================================================
  Module      : 会員登録変更完了画面(UserModifyComplete.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserModifyComplete, App_Web_usermodifycomplete.aspx.b2a7112d" title="登録情報変更完了ページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>会員情報の変更が完了しました</h2>
	<div class="registWrap_box">
		<p class="psCompleteTxt">
			ご登録情報を変更しました。<br>
			引き続き、<%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopName")) %>でのお買い物をお楽しみください。
		</p>
		<%-- メッセージ --%>
		<div class="submitBtnBox">
			<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_MYPAGE) %>" class="prevBtn">マイページへ戻る</asp:LinkButton></a>
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
				変更完了
			</a>
		</li>
	</ul>
</div>
</asp:Content>