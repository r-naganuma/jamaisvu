<%--
=========================================================================================================
  Module      : パスワード変更入力画面(PasswordModifyInput.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2010 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_PasswordModifyInput, App_Web_passwordmodifyinput.aspx.b2a7112d" title="パスワード変更入力ページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap topSpace">
	<h2>パスワード変更</h2>

	<p class="catchTxt">
		パスワードを再設定します。<br>
		新しいパスワードを入力し、変更するボタンをクリックしてください。
	</p>

	<div class="registWrap_box">
		<%-- UPDATE PANEL開始 --%>
		<asp:UpdatePanel ID="upUpdatePanel" runat="server">
		<ContentTemplate>
		<div class="registWrap_box--input">
			<dl class="inputBox">
				<dt class="inputBox_left">
					<%: ReplaceTag("@@User.login_id.name@@") %>
				</dt>
				<dd class="inputBox_right">
					<%: this.LoginId %>
				</dd>
				<%-- かんたん会員の場合は、生年月日や電話番号による確認をスキップ --%>
				<% if (this.EasyRegisterFlg == Constants.FLG_USER_EASY_REGISTER_FLG_NORMAL) {%>
				<% if (Constants.PASSWORDRIMINDER_AUTHITEM == Constants.PasswordReminderAuthItem.Birth) {%>
				<dt class="inputBox_left">
					<%: ReplaceTag("@@User.birth.name@@") %>
					
				</dt>
				<dd class="inputBox_right">
					<asp:TextBox ID="tbBirth" Runat="server" placeholder="例）19700101" CssClass="loginId" MaxLength="8"></asp:TextBox>
					<asp:CustomValidator ID="cvBirth" runat="Server"
						ControlToValidate="tbBirth"
						ValidationGroup="PasswordModify"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
				<% } else if (Constants.PASSWORDRIMINDER_AUTHITEM == Constants.PasswordReminderAuthItem.Tel) {%>
				<dt class="inputBox_left">
					<%: ReplaceTag("@@User.tel1.name@@") %>
					
				</dt>
				<dd class="inputBox_right">
					<asp:TextBox ID="tbTel1_1" Runat="server" CssClass="tel1" MaxLength="6" Type="tel"></asp:TextBox> -
					<asp:TextBox ID="tbTel1_2" Runat="server" CssClass="tel2" MaxLength="4" Type="tel"></asp:TextBox> -
					<asp:TextBox ID="tbTel1_3" Runat="server" CssClass="tel3" MaxLength="4" Type="tel"></asp:TextBox>
					<asp:CustomValidator ID="cvTel1_1" runat="Server"
						ControlToValidate="tbTel1_1"
						ValidationGroup="PasswordModify"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<asp:CustomValidator ID="cvTel1_2" runat="Server"
						ControlToValidate="tbTel1_2"
						ValidationGroup="PasswordModify"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<asp:CustomValidator ID="cvTel1_3" runat="Server"
						ControlToValidate="tbTel1_3"
						ValidationGroup="PasswordModify"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
				<% } %>
				<% } %>
				<dt class="inputBox_left">
					新しい<%: ReplaceTag("@@User.password.name@@") %>
					
				</dt>
				<dd class="inputBox_right">
					<asp:TextBox ID="tbPassword" Runat="server" placeholder="半角英数字で入力してください" TextMode="Password" autocomplete="off" CssClass="loginId" MaxLength="15"></asp:TextBox>
					<asp:CustomValidator ID="cvPassword" runat="Server"
						ControlToValidate="tbPassword"
						ValidationGroup="PasswordModify"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
				<dt class="inputBox_left noCenter02">
					新しい<%: ReplaceTag("@@User.password.name@@") %>（確認）
					
				</dt>
				<dd class="inputBox_right">
					<asp:TextBox ID="tbPasswordConf" Runat="server" placeholder="半角英数字で入力してください" TextMode="Password" autocomplete="off" CssClass="loginId" MaxLength="15"></asp:TextBox>
					<asp:CustomValidator ID="cvPasswordConf" runat="Server"
						ControlToValidate="tbPasswordConf"
						ValidationGroup="PasswordModify"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<div class="noticeArea">
						<p>
							※3回失敗した場合は、再度「パスワードを忘れた方はこちら」から設定をお願いします。
						</p>
					</div>
				</dd>
			</dl>
		</div>
		<div class="submitBtnBox">
			<p>
				<span><asp:LinkButton ID="lbModify" ValidationGroup="PasswordModify" OnClientClick="return exec_submit();" OnClick="lbModify_Click" runat="server" class="nextBtn">
					変更する</asp:LinkButton></span>
			</p>
		</div>
		</ContentTemplate>
		</asp:UpdatePanel>
		<%-- UPDATE PANELここまで --%>
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
	</ul>
</div>
</asp:Content>