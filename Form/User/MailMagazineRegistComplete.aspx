<%--
=========================================================================================================
  Module      : メールマガジン登録完了画面(MailMagazineRegistComplete.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2010 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_MailMagazineRegistComplete, App_Web_mailmagazineregistcomplete.aspx.b2a7112d" title="ニュースレター登録完了ページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap">
	<h2>登録完了</h2>

	<div class="registWrap_box">
		<p class="completeTxt02">
			ニュースレターを登録したメールアドレスは<br class="sp_contents">「<%: this.UserMailAddr%>」です。<br>
			今後とも、<%: ShopMessage.GetMessage("ShopName") %>をどうぞよろしくお願いいたします。<br>
			<br>
			<%= ShopMessage.GetMessage("ContactCenterInfo") %>
		</p>
		<div class="submitBtnBox">
			<asp:LinkButton ID="lbTopPage" runat="server" OnClick="lbTopPage_Click" class="prevBtn">トップページへ戻る</asp:LinkButton>
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