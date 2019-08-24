<%--
=========================================================================================================
  Module      : エラー画面(Error.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_Error, App_Web_error.aspx.b129f0c2" title="エラーページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<meta http-equiv="pragma" content="no-cache">
<%-- △編集可能領域△ --%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap">
	<h2>エラー情報</h2>
	<div class="registWrap_box">
		<div id="dvErrorContents" runat="server" class="psCompleteTxt"></div>
	</div>
	<div class="submitBtnBox">
		<span id="spGoBack" runat="server" visible="true">
			<a id="aGoBack" href="Javascript:history.back();" runat="server" class="prevBtn">
				戻る</a>
		</span>
		<span id="spGoTop" runat="server" visible="false">
			<asp:LinkButton ID="lbGoTop" Runat="server" onclick="lbGoTop_Click" class="prevBtn">
				トップページへ戻る</asp:LinkButton>
		</span>
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
					エラー情報
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
</style>
</asp:Content>