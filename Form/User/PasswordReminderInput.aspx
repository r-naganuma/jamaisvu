<%--
=========================================================================================================
  Module      : リマインダー入力画面(PasswordReminderInput.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_PasswordReminderInput, App_Web_passwordreminderinput.aspx.b2a7112d" title="ID/PASSをお忘れの方｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="ID/PASSをお忘れの方ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap topSpace">
	<h2>パスワード再設定</h2>

	<p class="catchTxt">
		会員情報の確認を行います。<br>
		会員登録を行ったメールアドレスを入力し、送信ボタンをクリックしてください。
	</p>

	<div class="registWrap_box">
		<div class="registWrap_box--input">
			<dl class="inputBox">
				<%if (Constants.LOGIN_ID_USE_MAILADDRESS_ENABLED == false) { %>
				<dt class="inputBox_left">
					ログインＩＤ
				</dt>
				<dd class="inputBox_right">
					<asp:TextBox ID="tbLoginId" Runat="server" CssClass="loginId" MaxLength="15" Type="email"></asp:TextBox>
					<asp:CustomValidator ID="CustomValidator1" runat="Server"
						ControlToValidate="tbLoginId"
						ValidationGroup="PasswordReminderInput"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
				<%} %>
				<dt class="inputBox_left">
					メールアドレス
				</dt>
				<dd class="inputBox_right">
					<asp:TextBox ID="tbMailAddr" Runat="server" placeholder="sample@sample.com" CssClass="mailAddr" MaxLength="256" Type="email"></asp:TextBox>
					<asp:CustomValidator ID="CustomValidator2" runat="Server"
						ControlToValidate="tbMailAddr"
						ValidationGroup="PasswordReminderInput"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<% if(StringUtility.ToEmpty(this.ErrorMessage) != "") {%>
						<span class="error_inline">
							<%: this.ErrorMessage %></span>
					<%} %>
				</dd>
			</dl>
		</div>
		<div class="allBtnBox">
			<a href="javascript:history.back();" class="prevBtn">戻る</a>
			<asp:LinkButton ID="lbSend" ValidationGroup="PasswordReminderInput" runat="server" OnClientClick="return exec_submit()" OnClick="lbSend_Click" class="nextBtn">送信する</asp:LinkButton>
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
			<a href="/Form/Login.aspx">
				ログイン
			</a>
		</li>
		<li> >
			<a href="#">
				パスワード再設定
			</a>
		</li>
	</ul>
</div>
</asp:Content>
