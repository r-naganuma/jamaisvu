<%--
=========================================================================================================
  Module      : パスワード変更完了画面(PasswordModifyComplete.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2010 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_PasswordModifyComplete, App_Web_passwordmodifycomplete.aspx.b2a7112d" title="パスワード変更完了ページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap">
	<h2>パスワード変更完了</h2>

	<div class="registWrap_box">
		<p class="psCompleteTxt">
			パスワード変更を完了しました。<br>
			引き続き、<%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopName")) %>でのお買い物を<br class="pc_contents">お楽しみください。
		</p>
		<div class="submitBtnBox">
			<asp:LinkButton ID="lbTopPage" runat="server" OnClick="lbTopPage_Click" class="prevBtn">
				トップページへ戻る
			</asp:LinkButton>
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
</div>

<style type="text/css">
	#Wrap .userWrap {
	    display: flex;
	    align-items: center;
	    height: 100vh;
	}

	#Wrap .userWrap .userBread {
	    width: 1120px;
	    margin: 0 auto 40px;
	    position: absolute;
	    bottom: 140px;
	}
	
	#Foot{
		position: absolute;
		bottom: 0;
		left: 0;
	}

@media (max-width: 1200px) {
	#Wrap .userWrap .userBread {
	    width: 100%;
	    position: inherit;
	    bottom: inherit;
		padding: 0 40px;
		box-sizing: border-box;
	}
}

@media (max-width: 768px) {
	#Wrap .userWrap {
	    display: block;
	    height: auto;
	}

	#Wrap .userWrap .userBread {
	    width: 100%;
	    margin: 0 auto 20px;
		padding: 0 18px;
	}
	
	#Foot{
		position: inherit;
		bottom: inherit;
		left: inherit;
	}
}
</style>
</asp:Content>
