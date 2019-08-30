<%--
=========================================================================================================
  Module      : 問合せ完了画面(InquiryComplete.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_Inquiry_InquiryComplete, App_Web_inquirycomplete.aspx.97d9c6ad" title="お問い合わせ完了｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="お問い合わせ完了ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
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

@media (max-width: 768px) {
	#Wrap .userWrap {
	    display: block;
	    height: auto;
	}
	
	#Foot{
		position: inherit;
		bottom: inherit;
		left: inherit;
	}
}
</style>
</asp:Content>