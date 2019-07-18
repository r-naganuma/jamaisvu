<%--
=========================================================================================================
  Module      : 会員登録入力画面(UserRegistInput.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="BodyUserExtendRegist" Src="~/Form/Common/User/BodyUserExtendRegist.ascx" %>
<%@ Register TagPrefix="uc" TagName="Layer" Src="~/Form/Common/Layer/SearchResultLayer.ascx" %>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserRegistInput, App_Web_userregistinput.aspx.b2a7112d" title="会員新規登録入力ページ" %>
<%@ Register TagPrefix="uc" TagName="PaypalScriptsForm" Src="~/Form/Common/PayPalScriptsForm.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap topSpace">
	<h2>会員登録</h2>

	<%-- 会員登録系パンくず --%>
	<img src="../../Contents/ImagesPkg/user/user/registration_step01.png" class="registStep" alt="会員情報入力" />

	<div class="registWrap_box">
		<% if (Constants.PAYPAL_LOGINPAYMENT_ENABLED) { %>
		<%-- ソーシャルログイン連携 --%>
		<div class="dvSocialLoginCooperation">
			<h3>ソーシャルログイン連携</h3>
			<%-- PayPal --%>
			<% if (Constants.PAYPAL_LOGINPAYMENT_ENABLED) { %>
			<ul style="display:flex;margin-bottom:20px;flex-wrap:wrap">
				<%-- PayPal --%>
				<li style="padding: 0 0.5em;">
					<%-- ▼PayPalここから▼ --%>
					<%
						ucPaypalScriptsForm.LogoDesign = "Login";
						ucPaypalScriptsForm.AuthCompleteActionControl = lbPayPalAuthComplete;
						ucPaypalScriptsForm.GetShippingAddress = (this.IsLoggedIn == false);
					%>
					<uc:PaypalScriptsForm ID="ucPaypalScriptsForm" runat="server" />
					<div style="width: 218px;">
					<div id="paypal-button"></div>
					<% if (SessionManager.PayPalCooperationInfo != null) { %>
						※<%: SessionManager.PayPalCooperationInfo.AccountEMail %> 連携済
					<% } else { %>
						<p style="padding-top:7px;">※PayPalで新規登録/ログインします</p>
					<% } %>
					</div>
					<asp:LinkButton ID="lbPayPalAuthComplete" runat="server" OnClick="lbPayPalAuthComplete_Click"></asp:LinkButton>
					<%-- ▲PayPalここまで▲ --%>
				</li>
			</ul>
			<% } %>
		</div>
		<% } %>

		<%-- お客様情報入力フォーム --%>
		<h3>会員情報</h3>
		<div class="registWrap_box--input">	
		<%-- UPDATE PANEL開始 --%>
		<asp:UpdatePanel ID="upUpdatePanel" runat="server">
		<ContentTemplate>
			<dl class="inputBox">
				<%-- 氏名 --%>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.name.name@@") %>
					<span id="efo_sign_name"/>
				</dt>
				<dd class="inputBox_right">
					<dl class="nameArea">
						<dt>
							<% SetMaxLength(this.WtbUserName1, "@@User.name1.length_max@@"); %>
							<span>姓</span>
						</dt>
						<dd>
							<asp:TextBox id="tbUserName1" Runat="server" placeholder="伊藤" CssClass="nameFirst"></asp:TextBox>
						</dd>
						<dt>
							<% SetMaxLength(this.WtbUserName2, "@@User.name2.length_max@@"); %>
							<span>名</span>
						</dt>
						<dd>
							<asp:TextBox id="tbUserName2" Runat="server" placeholder="忠太郎" CssClass="nameLast"></asp:TextBox>
						</dd>
					</dl>
					<asp:CustomValidator
						ID="cvUserName1"
						runat="Server"
						ControlToValidate="tbUserName1"
						ValidationGroup="UserRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<asp:CustomValidator
						ID="cvUserName2"
						runat="Server"
						ControlToValidate="tbUserName2"
						ValidationGroup="UserRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
				<% if (this.IsUserAddrJp) { %>
					<%-- 氏名（かな） --%>
					<dt class="inputBox_left must">
						ふりがな
						<span id="efo_sign_kana"/>
					</dt>
					<dd class="inputBox_right">
						<dl class="nameArea">
							<dt>
								<% SetMaxLength(this.WtbUserNameKana1, "@@User.name_kana1.length_max@@"); %>
								<span>せい</span>
							</dt>
							<dd>
								<asp:TextBox id="tbUserNameKana1" Runat="server" placeholder="いとう" CssClass="nameFirst"></asp:TextBox>
							</dd>
							<dt>
								<% SetMaxLength(this.WtbUserNameKana2, "@@User.name_kana2.length_max@@"); %>
								<span>めい</span>
							</dt>
							<dd>
								<asp:TextBox id="tbUserNameKana2" Runat="server" placeholder="ちゅうたろう" CssClass="nameLast"></asp:TextBox>
							</dd>
						</dl>
						<asp:CustomValidator
							ID="cvUserNameKana1"
							runat="Server"
							ControlToValidate="tbUserNameKana1"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserNameKana2"
							runat="Server"
							ControlToValidate="tbUserNameKana2"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
				<% } %>
				<%if (Constants.PRODUCTREVIEW_ENABLED) { %>
					<%-- ニックネーム --%>
					<dt style="display: none;" class="inputBox_left must">
						<%: ReplaceTag("@@User.nickname.name@@") %>
					</dt>
					<dd style="display: none;" class="inputBox_right">
						<asp:TextBox id="tbUserNickName" runat="server" MaxLength="20" CssClass="nickname"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserNickName"
							runat="Server"
							ControlToValidate="tbUserNickName"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
				<%} %>
					<%-- 性別 --%>
					<dt class="inputBox_left must">
						<%: ReplaceTag("@@User.sex.name@@") %>
						<span id="efo_sign_sex"/>
					</dt>
					<dd class="inputBox_right">
						<asp:RadioButtonList ID="rblUserSex" runat="server" RepeatDirection="Horizontal" CellSpacing="0" RepeatLayout="Flow" CssClass="radioBtn"></asp:RadioButtonList>
						<asp:CustomValidator
							ID="cvUserSex"
							runat="Server"
							ControlToValidate="rblUserSex"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							EnableClientScript="false"
							CssClass="error_inline" />
					</dd>
					<%-- 生年月日 --%>
					<dt class="inputBox_left must">
						<%: ReplaceTag("@@User.birth.name@@") %>
						<span id="efo_sign_birth"/>
					</dt>
					<dd class="inputBox_right">
						<dl class="birthArea">
							<dt class="long">
								<asp:DropDownList id="ddlUserBirthYear" runat="server" CssClass="year"></asp:DropDownList>
							</dt>
							<dd>
								年
							</dd>
							<dt>
								<asp:DropDownList id="ddlUserBirthMonth" runat="server" CssClass="month"></asp:DropDownList>
							</dt>
							<dd>
								月
							</dd>
							<dt>
								<asp:DropDownList id="ddlUserBirthDay" runat="server" CssClass="date"></asp:DropDownList>
							</dt>
							<dd>
								日
							</dd>
						<asp:CustomValidator
							ID="cvUserBirthYear"
							runat="Server"
							ControlToValidate="ddlUserBirthYear"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							EnableClientScript="false"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserBirthMonth"
							runat="Server"
							ControlToValidate="ddlUserBirthMonth"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							EnableClientScript="false"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserBirthDay"
							runat="Server"
							ControlToValidate="ddlUserBirthDay"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							EnableClientScript="false"
							CssClass="error_inline" />
						</dl>
					</dd>
				<% if (this.IsUserAddrJp) { %>
					<%-- 電話番号 --%>
					<dt class="inputBox_left must"><%: ReplaceTag("@@User.tel1.name@@") %><span id="efo_sign_tel1"/></dt>
					<dd class="inputBox_right">
						<dl class="zipArea">
							<dt>
								<asp:TextBox id="tbUserTel1" Runat="server" placeholder="012" MaxLength="6" CssClass="tel1" Type="tel"></asp:TextBox>
							</dt>
							<dd>ー</dd>
							<dt>
								<asp:TextBox id="tbUserTel2" Runat="server" placeholder="3456" MaxLength="4" CssClass="tel2" Type="tel"></asp:TextBox>
							</dt>
							<dd>ー</dd>
							<dt>
								<asp:TextBox id="tbUserTel3" Runat="server" placeholder="7890" MaxLength="4" CssClass="tel3" Type="tel"></asp:TextBox>
							</dt>
						<asp:CustomValidator
							ID="cvUserTel1"
							runat="Server"
							ControlToValidate="tbUserTel1"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserTel2"
							runat="Server"
							ControlToValidate="tbUserTel2"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserTel3"
							runat="Server"
							ControlToValidate="tbUserTel3"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						</dl>
					</dd>
					<%-- 電話番号（予備） --%>
					<dt style="display: none;" class="inputBox_left must"><%: ReplaceTag("@@User.tel2.name@@") %></dt>
					<dd style="display: none;" class="inputBox_right">
						<asp:TextBox id="tbUserTel2_1" Runat="server" MaxLength="6" CssClass="tel1" Type="tel"></asp:TextBox> -
						<asp:TextBox id="tbUserTel2_2" Runat="server" MaxLength="4" CssClass="tel2" Type="tel"></asp:TextBox> -
						<asp:TextBox id="tbUserTel2_3" Runat="server" MaxLength="4" CssClass="tel3" Type="tel"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserTel2_1"
							runat="Server"
							ControlToValidate="tbUserTel2_1"
							ValidationGroup="UserRegist"
							ValidateEmptyText="false"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserTel2_2"
							runat="Server"
							ControlToValidate="tbUserTel2_2"
							ValidationGroup="UserRegist"
							ValidateEmptyText="false"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserTel2_3"
							runat="Server"
							ControlToValidate="tbUserTel2_3"
							ValidationGroup="UserRegist"
							ValidateEmptyText="false"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
				<% } else { %>
					<%-- 電話番号 --%>
					<dt class="inputBox_left must">
						<%: ReplaceTag("@@User.tel1.name@@", this.UserAddrCountryIsoCode) %>
						
					</dt>
					<dd class="inputBox_right">
						<asp:TextBox id="tbUserTel1Global" Runat="server" MaxLength="16" Type="tel"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserTel1Global"
							runat="Server"
							ControlToValidate="tbUserTel1Global"
							ValidationGroup="UserRegistGlobal"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<%-- 電話番号（予備） --%>
					<dt style="display: none;" class="inputBox_left must"><%: ReplaceTag("@@User.tel2.name@@", this.UserAddrCountryIsoCode) %></dt>
					<dd style="display: none;" class="inputBox_right">
						<asp:TextBox id="tbUserTel2Global" Runat="server" MaxLength="30" Type="tel"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserTel2Global"
							runat="Server"
							ControlToValidate="tbUserTel2Global"
							ValidationGroup="UserRegistGlobal"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
				<% } %>
					<%-- PCメールアドレス --%>
					<dt class="inputBox_left must">
						メールアドレス
						<span id="efo_sign_mail_addr"/>
					</dt>
					<dd class="inputBox_right">
						<asp:TextBox id="tbUserMailAddr" Runat="server" MaxLength="256" placeholder="jamaisvu@xxx.co.jp" Type="email"></asp:TextBox>
						<%if (Constants.LOGIN_ID_USE_MAILADDRESS_ENABLED) {%>
						<%} %>
						<asp:CustomValidator
							ID="cvUserMailAddr"
							runat="Server"
							ControlToValidate="tbUserMailAddr"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserMailAddrForCheck"
							runat="Server"
							ControlToValidate="tbUserMailAddr"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							CssClass="error_inline" />
					</dd>
					<%-- PCメールアドレス（確認用） --%>
					<dt class="inputBox_left must">
						メールアドレス（確認）
						<span id="efo_sign_mail_addr_conf"/>
					</dt>
					<dd class="inputBox_right">
						<asp:TextBox id="tbUserMailAddrConf" Runat="server" MaxLength="256" placeholder="jamaisvu@xxx.co.jp" Type="email"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserMailAddrConf"
							runat="Server"
							ControlToValidate="tbUserMailAddrConf"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<%-- モバイルメールアドレス --%>
					<dt style="display: none;" class="inputBox_left must">
						<%: ReplaceTag("@@User.mail_addr2.name@@") %>
						<span class="necessary" style="display:<%= (Constants.EITHER_ENTER_MAIL_ADDRESS_ENABLED) ? "" : "none" %>">*</span>
					</dt>
					<dd style="display: none;" class="inputBox_right">
						<asp:TextBox id="tbUserMailAddr2" Runat="server" MaxLength="256" CssClass="mailAddr" Type="email"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserMailAddr2"
							runat="Server"
							ValidationGroup="UserRegist"
							ControlToValidate="tbUserMailAddr2"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<%-- モバイルメールアドレス（確認用） --%>
					<dt style="display: none;" class="inputBox_left must">
						<%: ReplaceTag("@@User.mail_addr2.name@@") %>（確認用）
						<span class="necessary" style="display:<%= (Constants.EITHER_ENTER_MAIL_ADDRESS_ENABLED) ? "" : "none" %>">*</span>
					</dt>
					<dd style="display: none;" class="inputBox_right">
						<asp:TextBox id="tbUserMailAddr2Conf" Runat="server" MaxLength="256" CssClass="mailAddr" Type="email"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserMailAddr2Conf"
							runat="Server"
							ControlToValidate="tbUserMailAddr2Conf"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>

				<% if (Constants.GLOBAL_OPTION_ENABLE) { %>
					<%-- 国 --%>
					<dt class="inputBox_left must">
						<%: ReplaceTag("@@User.country.name@@", this.UserAddrCountryIsoCode) %>
					
					</dt>
					<dd class="inputBox_right">
						<asp:DropDownList id="ddlUserCountry" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlUserAddrCountry_SelectedIndexChanged"/>
						<span id="countryAlertMessage" class="notes" runat="server" Visible='false'>※Amazonログイン連携では国はJapan以外選択できません。</span>
					</dd>
				<% } %>
				<% if (this.IsAmazonLoggedIn && Constants.AMAZON_LOGIN_OPTION_ENABLED) { %>
						<dt class="inputBox_left must">
							<%: ReplaceTag("@@User.addr.name@@") %>
						</dt>
						<dd class="inputBox_right">
							<%--▼▼Amazonアドレス帳ウィジェット▼▼--%>
							<div id="addressBookWidgetDiv" style="width:100%;height:300px;"></div>
							<div id="addressBookErrorMessage" style="color:red;padding:5px" ClientIDMode="Static" runat="server"></div>
							<%--▲▲Amazonアドレス帳ウィジェット▲▲--%>
							<%--▼▼AmazonリファレンスID格納▼▼--%>
							<asp:HiddenField runat="server" ID="hfAmazonOrderRefID" />
							<%--▲▲AmazonリファレンスID格納▲▲--%>
						</dd>
				<% } else { %>
				<% if (this.IsUserAddrJp) { %>
					<%-- 郵便番号 --%>
					<dt class="inputBox_left must">
						<%: ReplaceTag("@@User.zip.name@@") %>
						<span id="efo_sign_zip"/>
					</dt>
					<dd class="inputBox_right">
						<dl class="zipArea">
							<dt>
								<asp:TextBox id="tbUserZip1" Runat="server" placeholder="012" MaxLength="3" CssClass="zipFirst" Type="tel"></asp:TextBox>
							</dt>
							<dd>ー</dd>
							<dt>
								<asp:TextBox id="tbUserZip2" Runat="server" placeholder="3456" MaxLength="4" CssClass="zipLast" Type="tel" OnTextChanged="lbSearchAddr_Click"></asp:TextBox>
							</dt>
							<asp:LinkButton style="display: none;" ID="lbSearchAddr" runat="server" OnClick="lbSearchAddr_Click" class="btn btn-mini" OnClientClick="return false;">
								住所検索</asp:LinkButton>
						<%--検索結果レイヤー--%>
						<uc:Layer ID="ucLayer" runat="server" />
						<asp:CustomValidator
							ID="cvUserZip1"
							runat="Server"
							ValidationGroup="UserRegist"
							ControlToValidate="tbUserZip1"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserZip2"
							runat="Server"
							ControlToValidate="tbUserZip2"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<span style="color :Red" id="addrSearchErrorMessage">
							<%: this.ZipInputErrorMessage %></span>
						</dl>
					</dd>

					<%-- 都道府県 --%>
					<dt class="inputBox_left must">
						<%: ReplaceTag("@@User.addr1.name@@") %>
						<span id="efo_sign_addr1"/>
					</dt>
					<dd class="inputBox_right">
						<asp:DropDownList id="ddlUserAddr1" runat="server" CssClass="district"></asp:DropDownList>
						<asp:CustomValidator
							ID="cvUserAddr1"
							runat="Server"
							ControlToValidate="ddlUserAddr1"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
				<% } %>
					<%-- 市区町村 --%>
					<dt class="inputBox_left must">
						住所（市区町村）
						<% if (this.IsUserAddrJp) { %><span id="efo_sign_addr2"/><% } %>
					</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserAddr2, "@@User.addr2.length_max@@"); %>
						<asp:TextBox id="tbUserAddr2" Runat="server" placeholder="港区" CssClass="addr"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserAddr2"
							runat="Server"
							ControlToValidate="tbUserAddr2"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<%-- 番地 --%>
					<dt class="inputBox_left must">
						住所（番地以降）
						<% if (this.IsUserAddrJp) { %><span id="efo_sign_addr3"/><% } %>
					</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserAddr3, "@@User.addr3.length_max@@"); %>
						<asp:TextBox id="tbUserAddr3" Runat="server" placeholder="六本木7-3-16" CssClass="addr2"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserAddr3"
							runat="Server"
							ControlToValidate="tbUserAddr3"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<%-- ビル・マンション名 --%>
					<dt class="inputBox_left must">
						住所（建物名）
						<% if (this.IsUserAddrJp == false) { %><% } %>
					</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserAddr4, "@@User.addr4.length_max@@"); %>
						<asp:TextBox id="tbUserAddr4" Runat="server" placeholder="六本木インターナショナルアネックスビル4F" CssClass="addr2"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserAddr4"
							runat="Server"
							ControlToValidate="tbUserAddr4"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
				<% if (this.IsUserAddrJp == false) { %>
					<%-- 州 --%>
					<dt class="inputBox_left must"><%: ReplaceTag("@@User.addr5.name@@", this.UserAddrCountryIsoCode) %>
						<% if (this.IsUserAddrUs) { %><%} %>
					</dt>
					<dd class="inputBox_right">
						<% if (this.IsUserAddrUs) { %>
						<asp:DropDownList runat="server" ID="ddlUserAddr5" ></asp:DropDownList>
					<% } else { %>
						<asp:TextBox runat="server" ID="tbUserAddr5" ></asp:TextBox>
					<% } %>
					</dd>
					<%-- 郵便番号（海外向け） --%>
					<dt class="inputBox_left must">
						<%: ReplaceTag("@@User.zip.name@@", this.UserAddrCountryIsoCode) %>
						<% if (this.IsUserAddrZipNecessary) { %><% } %>
					</dt>
					<td valign="middle">
						<asp:TextBox id="tbUserZipGlobal" Runat="server" MaxLength="30" Type="tel"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserZipGlobal"
							runat="Server"
							ControlToValidate="tbUserZipGlobal"
							ValidationGroup="UserRegistGlobal"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline"/>
					</dd>
				<% } %>
				<% } %>
					<%-- 企業名 --%>
					<dt class="inputBox_left">
						<%: ReplaceTag("@@User.company_name.name@@") %>
						<span class="necessary"></span>
					</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserCompanyName, "@@User.company_name.length_max@@"); %>
						<asp:TextBox id="tbUserCompanyName" Runat="server" CssClass="addr2"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserCompanyName"
							runat="Server"
							ControlToValidate="tbUserCompanyName"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<%-- 部署名 --%>
					<dt class="inputBox_left">
						<%: ReplaceTag("@@User.company_post_name.name@@") %>
						<span class="necessary"></span>
					</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserCompanyPostName, "@@User.company_post_name.length_max@@"); %>
						<asp:TextBox id="tbUserCompanyPostName" Runat="server" CssClass="addr2"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserCompanyPostName"
							runat="Server"
							ControlToValidate="tbUserCompanyPostName"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<dt class="inputBox_left must">
						ニュースレター配信
					</dt>
					<dd class="inputBox_right">
						<asp:CheckBox ID="cbUserMailFlg" Text="希望する" CssClass="checkBox" runat="server" />
					</dd>
				<%-- ユーザー拡張項目　HasInput:true(入力画面)/false(確認画面)　HasRegist:true(新規登録)/false(登録編集) --%>
				<uc:BodyUserExtendRegist ID="ucBodyUserExtendRegist" runat="server" HasInput="true" HasRegist="true" />
			</dl>
		<%-- ソーシャルログイン用 --%>
		<% if (Constants.SOCIAL_LOGIN_ENABLED) { %>
		<asp:HiddenField ID="hfSocialLoginJson" runat="server" />
		<% } %>
		</ContentTemplate>
		</asp:UpdatePanel>
		<%-- UPDATE PANELここまで --%>
		
		<%if ((Constants.LOGIN_ID_USE_MAILADDRESS_ENABLED == false) || this.IsVisible_UserPassword) { %>
		<div class="registWrap_box--ps">
			<dl class="inputBox">
				<%if (Constants.LOGIN_ID_USE_MAILADDRESS_ENABLED == false) { %>
					<dt class="inputBox_left must">
						<%-- ログインID --%>
						<%: ReplaceTag("@@User.login_id.name@@") %>
						<span id="efo_sign_login_id"/>
					</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserLoginId, "@@User.login_id.length_max@@"); %>
						<% if (Constants.LOGIN_ID_USE_MAILADDRESS_ENABLED) tbUserLoginId.Attributes["Type"] = "email"; %>
						<asp:TextBox id="tbUserLoginId" Width="120" Runat="server"></asp:TextBox>
						<asp:CustomValidator ID="cvUserLoginId" runat="Server"
							ControlToValidate="tbUserLoginId"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
				<%} %>
				<%-- ソーシャルログイン連携されている場合はパスワードスキップ --%>
				<%if (this.IsVisible_UserPassword){ %>
					<dt class="inputBox_left must">
						<%: ReplaceTag("@@User.password.name@@") %>
						<span id="efo_sign_password" />
					</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserPassword, "@@User.password.length_max@@"); %>
						<asp:TextBox id="tbUserPassword" TextMode="Password" autocomplete="off" CssClass="password" Runat="server" placeholder="半角英数字で入力してください"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserPassword"
							runat="Server"
							ControlToValidate="tbUserPassword"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<dt class="inputBox_left must noCenter">
						<%: ReplaceTag("@@User.password.name@@") %>（確認）
						<span id="efo_sign_password_conf"/>
					</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserPasswordConf, "@@User.password.length_max@@"); %>
						<asp:TextBox id="tbUserPasswordConf" TextMode="Password" autocomplete="off" CssClass="password" Runat="server" placeholder="半角英数字で入力してください"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserPasswordConf"
							runat="Server"
							ControlToValidate="tbUserPasswordConf"
							ValidationGroup="UserRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<div class="noticeArea">
							<p>
								※半角英数字 7文字以上,30文字以内で入力してください。<br>
								※IDと同様のパスワードは入力できません。
							</p>
						</div>
					</dd>
				<% } %>
			</dl>
		</div>
		<% } %>

		</div>

		<div class="agreementTxt">
			<p>
				<a href="/Page/agreement.aspx" target="_blank">会員規約</a>にご同意のうえ、「登録内容を確認する」をクリックしてください。
			</p>
		</div>

		<div class="submitBtnBox">
			<asp:LinkButton ID="lbConfirm" ValidationGroup="UserRegist" OnClientClick="return exec_submit();" runat="server" OnClick="lbConfirm_Click" class="nextBtn">登録内容を確認する</asp:LinkButton>
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
				会員登録
			</a>
		</li>
	</ul>
</div>
<script type="text/javascript">
<!--
	bindEvent();

	<%-- UpdataPanelの更新時のみ処理を行う --%>
	function bodyPageLoad() {
		if (Sys.WebForms == null) return;
		var isAsyncPostback = Sys.WebForms.PageRequestManager.getInstance().get_isInAsyncPostBack();
		if (isAsyncPostback) {
			bindEvent();
		}
	}

	<%-- イベントをバインドする --%>
	function bindEvent() {
		bindExecAutoKana();
		bindZipCodeSearch();
	}

	<%-- 氏名（姓・名）の自動振り仮名変換のイベントをバインドする --%>
	function bindExecAutoKana() {
		execAutoKanaWithKanaType(
			$("#<%= tbUserName1.ClientID %>"),
			$("#<%= tbUserNameKana1.ClientID %>"),
			$("#<%= tbUserName2.ClientID %>"),
			$("#<%= tbUserNameKana2.ClientID %>"));
	}

	<%-- 郵便番号検索のイベントをバインドする --%>
	function bindZipCodeSearch() {
		$("#<%= tbUserZip2.ClientID %>").keyup(function (e) {
			if (isValidKeyCodeForKeyEvent(e.keyCode) == false) return;
			checkZipCodeLengthAndExecPostback(
				$("#<%= tbUserZip1.ClientID %>"),
				$("#<%= tbUserZip2.ClientID %>"),
				"<%= tbUserZip2.UniqueID %>",
				'<%= Constants.PATH_ROOT + Constants.PAGE_FRONT_ZIPCODE_SEARCHER_GET_ADDR_JSON %>',
				'#addrSearchErrorMessage'
			);
		});
		$("#<%= lbSearchAddr.ClientID %>").on('click', function () {
			checkZipCodeLengthAndExecPostback(
				$("#<%= tbUserZip1.ClientID %>"),
				$("#<%= tbUserZip2.ClientID %>"),
				"<%= lbSearchAddr.UniqueID %>",
				'<%= Constants.PATH_ROOT + Constants.PAGE_FRONT_ZIPCODE_SEARCHER_GET_ADDR_JSON %>',
				'#addrSearchErrorMessage'
			);
		});
	}

	$(document).on('click', '.search-result-layer-close', function () {
		closePopupAndLayer();
	});

	$(document).on('click', '.search-result-layer-addr', function () {
		bindSelectedAddr($('li.search-result-layer-addr').index(this));
	});

	<%-- 複数住所検索結果からの選択値を入力フォームにバインドする --%>
	function bindSelectedAddr(selectedIndex) {
		var selectedAddr = $('.search-result-layer-addrs li').eq(selectedIndex);
		$("#<%= ddlUserAddr1.ClientID %>").val(selectedAddr.find('.addr').text());
		$("#<%= tbUserAddr2.ClientID %>").val(selectedAddr.find('.city').text() + selectedAddr.find('.town').text());
		$("#<%= tbUserAddr3.ClientID %>").focus();

		closePopupAndLayer();
	}

	<%-- ソーシャルログイン用 --%>
	<% if (Constants.SOCIAL_LOGIN_ENABLED) { %>
	$(function () {
		var data = $('#<%= WhfSocialLoginJson.ClientID %>').val();
		var json = data ? JSON.parse(data) : {};
		<%-- メールアドレス補完 --%>
		var mails = json['email'];
		if (mails && mails.length > 0) {
			var email = mails[0]['email'];
			if ($('#<%= WtbUserMailAddr.ClientID %>').val().length === 0) $('#<%= WtbUserMailAddr.ClientID %>').val(email);
			if ($('#<%= WtbUserMailAddrConf.ClientID %>').val().length === 0) $('#<%= WtbUserMailAddrConf.ClientID %>').val(email);
		}
	});
	<% } %>
//-->
</script>
<%--▼▼Amazonウィジェット用スクリプト▼▼--%>
<script type="text/javascript">
	window.onAmazonLoginReady = function () {
		amazon.Login.setClientId('<%=Constants.PAYMENT_AMAZON_CLIENTID %>');
	};
	window.onAmazonPaymentsReady = function () {
		if ($('#addressBookWidgetDiv').length) showAddressBookWidget();
	};

	<%-- Amazonアドレス帳表示ウィジェット --%>
	function showAddressBookWidget() {
		new OffAmazonPayments.Widgets.AddressBook({
			sellerId: '<%=Constants.PAYMENT_AMAZON_SELLERID %>',
			onOrderReferenceCreate: function (orderReference) {
				var x = orderReference.getAmazonOrderReferenceId();
				$('#<%= this.WhfAmazonOrderRefID.ClientID %>').val(x);
			},
			onAddressSelect: function (orderReference) {
				var $addressBookErrorMessage = $('#addressBookErrorMessage');
				$addressBookErrorMessage.empty();
				getAmazonAddress(function (response) {
					var data = JSON.parse(response.d);
					if (data.Error) {
						$addressBookErrorMessage.html(data.Error);
						return;
					}
					$("#<%= tbUserTel1.ClientID %>").val(data.Input.Phone1);
					$("#<%= tbUserTel2.ClientID %>").val(data.Input.Phone2);
					$("#<%= tbUserTel3.ClientID %>").val(data.Input.Phone3);
				});
			},
			design: { designMode: 'responsive' },
			onError: function (error) {
				alert(error.getErrorMessage());
				location.href = "<%=Constants.PATH_ROOT + Constants.PAGE_FRONT_LOGIN %>";
			}
		}).bind("addressBookWidgetDiv");
	}

	<%-- Amazon住所取得関数 --%>
	function getAmazonAddress(callback) {
		$.ajax({
			type: "POST",
			url: "<%= Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_REGIST_INPUT%>/GetAmazonAddress",
			contentType: "application/json; charset=utf-8",
			dataType: "json",
			data: JSON.stringify({
				amazonOrderReferenceId: $('#<%= this.WhfAmazonOrderRefID.ClientID %>').val()
			}),
			success: callback
		});
	}
</script>
<script async="async" type="text/javascript" charset="utf-8" src="<%=Constants.PAYMENT_AMAZON_WIDGETSSCRIPT %>"></script>
<%-- ▲▲Amazonウィジェット用スクリプト▲▲ --%>

</asp:Content>