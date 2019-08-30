<%--
=========================================================================================================
  Module      : リマインダー完了画面(PasswordReminderComplete.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_PasswordReminderComplete, App_Web_passwordremindercomplete.aspx.b2a7112d" title="再設定メール送信完了｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="再設定メール送信完了ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap">
	<h2>受付完了</h2>

	<div class="registWrap_box">
		<p class="remindTxt">
			パスワード再設定用のリンクを記載したメールを<br>
			<span class="remindSpan01"><%= this.MailAddress %></span><br>
			に送信しましたのでご確認ください。<br><br>
			今後とも、<%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopName")) %>どうぞ宜しくお願い申し上げます。<br><br>
			<span class="remindSpan02">※メールアドレスが未登録の場合、メールは送信されません。</span>
		</p>
		<div class="submitBtnBox">
			<% if (string.IsNullOrEmpty(this.NextUrl) == false) { %>
			<asp:LinkButton ID="lbReturn" runat="server" OnClick="lbReturn_Click" class="prevBtn">
				戻る</asp:LinkButton>
			<% } else { %>
			<asp:LinkButton ID="lbTopPage" runat="server" OnClick="lbTopPage_Click" class="prevBtn">
				トップページへ戻る</asp:LinkButton>
			<% } %>
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
				<a href="/Form/Login.aspx">
					ログイン
				</a>
			</li>
			<li> >
				<a href="/Form/User/PasswordReminderInput.aspx">
					パスワード再設定
				</a>
			</li>
			<li> >
				<a href="#">
					受付完了
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