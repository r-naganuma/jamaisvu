<%--
=========================================================================================================
  Module      : ログイン画面(Login.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_Login, App_Web_login.aspx.b129f0c2" title="ログインページ" %>
<%@ Register Src="~/Form/Common/PaypalScriptsForm.ascx" TagPrefix="uc" TagName="PaypalScriptsForm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="loginWrap topSpace">
	<h2>ログイン</h2>
	<div style="display: none;" id="dvMessages" runat="server" class="contentsInfo"><p><%= WebSanitizer.HtmlEncodeChangeToBr(this.ErrorMessage) %></p></div>
	<div class="loginWrap_box">
		<div class="loginWrap_box--left">
			<p class="loginTtl">会員登録がお済みのお客様</p>
			<ul>
				<%if (Constants.LOGIN_ID_USE_MAILADDRESS_ENABLED) { %>
				<li>
					<p>メールアドレス</p>
					<asp:TextBox ID="tbLoginIdInMailAddr" Runat="server" MaxLength="256" placeholder="Sample.sample@roseaupensant.jp" Type="email"></asp:TextBox>
				</li>
				<%} else { %>
				<li>
					<p><%: ReplaceTag("@@User.login_id.name@@") %></p>
					<asp:TextBox ID="tbLoginId" Runat="server" CssClass="loginId" MaxLength="15"></asp:TextBox></li>
				<%} %>
				<li>
					<p><%: ReplaceTag("@@User.password.name@@") %></p>
					<asp:TextBox ID="tbPassword" Runat="server" TextMode="Password" autocomplete="off" CssClass="loginPass" MaxLength="15"></asp:TextBox></li>
				<li><asp:CheckBox ID="cbAutoCompleteLoginIdFlg" runat="server" CssClass="loginCheck" Text="メールアドレスをブラウザに保存する" /></li>
			</ul>
			<p>
			<asp:LinkButton ID="lbLogin" runat="server" onclick="lbLogin_Click" class="loginBtn">ログイン</asp:LinkButton>
			</p>
			<p><a href="<%= Constants.PATH_ROOT + Constants.PAGE_FRONT_PASSWORD_REMINDER_INPUT %>" class="loginPsForget">パスワードを忘れた方はこちら</a></p>
		</div>
		<div class="loginWrap_box--right">
			<p class="loginTtl">外部サイトのIDで会員登録・ログイン</p>
			<p class="loginTtl_catch">お持ちのアカウントで会員登録・ログインできます。</p>
			<div class="socialBox">
				<ul>
					<%-- Facebook --%>
					<li>
						<a href="https://api.socialplus.jp/jamaisvu/jamaisvu/facebook/authenticate?extended_profile=true&display=page&callback=https://jamaisvu.co.jp/Form/User/UserRegistInput.aspx&registration=true&trcode=fb">
							<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/fb_white.png" alt="Facebook">Facebookでログイン
						</a>
					</li>
					<%-- Twitter --%>
					<li>
						<a href="https://api.socialplus.jp/jamaisvu/jamaisvu/twitter/authenticate?callback=https://jamaisvu.co.jp/Form/User/UserRegistInput.aspx">
							<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/tw_white.png" alt="Twitter">Twitterでログイン
						</a>
					</li>
					<%-- Yahoo --%>
					<li style="display: none;">
						<a style="width: 185px;background-color: #FF0020;border: none;border-radius:5px;color: white;padding: 1em 2em;text-align: center;text-decoration: none;display: inline-block;font-size: 13px;font-family: 'ヒラギノ角ゴ Pro W3', 'Hiragino Kaku Gothic Pro', 'メイリオ', Meiryo, Osaka, 'ＭＳ Ｐゴシック', 'MS PGothic', sans-serif;"
							href="<%=w2.App.Common.User.SocialLogin.Util.SocialLoginUtil.GetAuthenticateUrl(
									w2.App.Common.User.SocialLogin.Helper.SocialLoginApiProviderType.Yahoo,
									Constants.PAGE_FRONT_SOCIAL_LOGIN_LOGIN_CALLBACK,
									Constants.PAGE_FRONT_SOCIAL_LOGIN_LOGIN_CALLBACK,
									true,
									Request.Url.Authority) %>">Yahoo!で新規登録/ログイン</a>
					</li>
					<%-- LINE --%>
					<li style="display: none;">
						<a style="width: 185px;background-color: #00c300;border: none;border-radius:5px;color: white;padding: 1em 2em;text-align: center;text-decoration: none;display: inline-block;font-size: 13px;font-family: 'ヒラギノ角ゴ Pro W3', 'Hiragino Kaku Gothic Pro', 'メイリオ', Meiryo, Osaka, 'ＭＳ Ｐゴシック', 'MS PGothic', sans-serif;"
							href="<%=w2.App.Common.User.SocialLogin.Util.SocialLoginUtil.GetAuthenticateUrl(
									w2.App.Common.User.SocialLogin.Helper.SocialLoginApiProviderType.Line,
									Constants.PAGE_FRONT_SOCIAL_LOGIN_LOGIN_CALLBACK,
									Constants.PAGE_FRONT_SOCIAL_LOGIN_LOGIN_CALLBACK,
									true,
									Request.Url.Authority) %>">LINEで新規登録/ログイン</a>
						<p style="margin:3px 0 4px;">※LINE連携時に友だち追加します</p>
					</li>
					<%-- AmazonPay --%>
					<% if (Constants.AMAZON_LOGIN_OPTION_ENABLED) { %>
					<li>
						<%--▼▼Amazonログインボタンウィジェット▼▼--%>
						<div id="AmazonLoginButton" style="margin-bottom:5px;"></div>
						<%--▲▲Amazonログインボタンウィジェット▲▲--%>
					</li>
					<% } %>
					<%-- PayPal --%>
					<%if (Constants.PAYPAL_LOGINPAYMENT_ENABLED) {%>
					<li style="margin :10px 0 10px 0">
						<%
							ucPaypalScriptsForm.LogoDesign = "Login";
							ucPaypalScriptsForm.AuthCompleteActionControl = lbPayPalAuthComplete;
							ucPaypalScriptsForm.GetShippingAddress = (this.IsLoggedIn == false);
						%>
						<uc:PaypalScriptsForm ID="ucPaypalScriptsForm" runat="server" />
						<div>
						<div id="paypal-button" style="width: 236px;"></div>
						<% if (SessionManager.PayPalCooperationInfo != null) {%>
							※<%: SessionManager.PayPalCooperationInfo.AccountEMail %> 連携済
						<% } else {%>
							※PayPalで新規登録/ログインします
						<%} %>
						</div>
						<asp:LinkButton ID="lbPayPalAuthComplete" runat="server" OnClick="lbPayPalAuthComplete_Click"></asp:LinkButton>
					</li>
					<% } %>
					<%-- 楽天Connect --%>
					<% if (Constants.RAKUTEN_LOGIN_ENABLED) { %>
					<li>
						<asp:LinkButton ID="lbRakutenIdConnectRequestAuthForUserRegister" runat="server" OnClick="lbRakutenIdConnectRequestAuth_Click">
							<img src="https://checkout.rakuten.co.jp/p/common/img/btn_idconnect_03.gif" style="width: 237px;"/></asp:LinkButton>
					</li>
					<% } %>
				</ul>
			</div>
			<p><a href="<%= Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_REGIST_INPUT + "?" + Constants.REQUEST_KEY_NEXT_URL + "=" + Server.UrlEncode(Request[Constants.REQUEST_KEY_NEXT_URL]) %>" class="loginBtn addressBtn">メールアドレスで新規会員登録</a></p>
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
				ログイン
			</a>
		</li>
	</ul>
</div>
<%--▼▼Amazonウィジェット用スクリプト▼▼--%>
<% if (Constants.AMAZON_LOGIN_OPTION_ENABLED) { %>
<script type='text/javascript'>
	window.onAmazonLoginReady = function () {
		amazon.Login.setClientId('<%=Constants.PAYMENT_AMAZON_CLIENTID %>');
	};
	window.onAmazonPaymentsReady = function () {
		if ($('#AmazonLoginButton').length) showButton();
	};

	<%--Amazonボタン表示ウィジェット--%>
	function showButton() {
		var authRequest;
		OffAmazonPayments.Button("AmazonLoginButton", "<%=Constants.PAYMENT_AMAZON_SELLERID %>", {
			type: "LwA",
			color: "Gold",
			size: "large",
			authorization: function () {
				loginOptions = {
					scope: "payments:shipping_address payments:widget profile",
					popup: true
				};
				authRequest = amazon.Login.authorize(loginOptions, "<%=w2.App.Common.Amazon.Util.AmazonUtil.CreateCallbackUrl(Constants.PAGE_FRONT_AMAZON_LOGIN_CALLBACK, this.NextUrl.Replace(Constants.PATH_ROOT, ""))%>");
			},
			onError: function (error) {
				alert(error.getErrorMessage());
			}
		});
		$('#OffAmazonPaymentsWidgets0').css({ 'height': '44px', 'width': '237px' });
	}
</script>
<script async="async" type="text/javascript" charset="utf-8" src="<%=Constants.PAYMENT_AMAZON_WIDGETSSCRIPT %>"></script>
<% } %>
<%-- ▲▲Amazonウィジェット用スクリプト▲▲ --%>
</asp:Content>