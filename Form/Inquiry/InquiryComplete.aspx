<%--
=========================================================================================================
  Module      : 問合せ完了画面(InquiryComplete.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_Inquiry_InquiryComplete, App_Web_inquirycomplete.aspx.97d9c6ad" title="問合せ完了ページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap inquiryWrap">
	<h2>お問い合わせが完了しました</h2>

	<div class="registWrap_box">
		<%-- メッセージ --%>
		<p class="completeTxt02">
			お問い合わせいただきありがとうございます。<br>
			担当者からご連絡差し上げますので、少々お待ちくださいませ。<br><br>
			引き続き、<%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopName")) %>での<br>
			お買い物をお楽しみください。
		</p>
		<div class="submitBtnBox">
			<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT) %>" class="prevBtn">トップページへ戻る</a>
		</div>
	</div>
</div>

<style type="text/css">
	#Wrap .userWrap {
	    display: flex;
	    align-items: center;
	    height: 100vh;
	}
	
	#Foot{
		position: absolute;
		bottom: 0;
		left: 0;
	}
</style>
</asp:Content>