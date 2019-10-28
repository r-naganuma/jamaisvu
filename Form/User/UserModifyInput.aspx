<%--
=========================================================================================================
  Module      : 会員登録変更入力画面(UserModifyInput.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="BodyUserExtendModify" Src="~/Form/Common/User/BodyUserExtendModify.ascx" %>
<%@ Register TagPrefix="uc" TagName="Layer" Src="~/Form/Common/Layer/SearchResultLayer.ascx" %>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserModifyInput, App_Web_usermodifyinput.aspx.b2a7112d" title="会員情報入力（変更）｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="会員情報入力（変更）ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<%@ Import Namespace="w2.App.Common.Amazon.Util" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>会員情報確認・変更</h2>

	<p class="catchTxt">ご登録内容をご確認ください。<br>
	内容を変更する場合は項目を変更し 変更ボタン を押してください。</p>

	<div class="registWrap_box">

		<h3>会員情報</h3>
		<div class="registWrap_box--input noBorderB">
			<%if (this.IsEasyUser) {%>
			<p style="margin:5px;padding:5px;text-align:center;background-color:#ffff80;border:1px solid #D4440D;border-color:#E5A500;color:#CC7600;">ご購入手続きに必要な会員情報が不足しています。</p>
			<%} %>
			
			<%-- UPDATE PANEL開始 --%>
			<asp:UpdatePanel ID="upUpdatePanel" runat="server">
			<ContentTemplate>
			<dl class="inputBox">
				<%-- 氏名 --%>
				<dt class="inputBox_left must"><%: ReplaceTag("@@User.name.name@@") %></dt>
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
							<asp:TextBox id="tbUserName2" Runat="server" placeholder="花子" CssClass="nameLast"></asp:TextBox>
						</dd>
					</dl>
					<asp:CustomValidator
						ID="cvUserName1"
						runat="Server"
						ControlToValidate="tbUserName1"
						ValidationGroup="UserModify"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<asp:CustomValidator
						ID="cvUserName2"
						runat="Server"
						ControlToValidate="tbUserName2"
						ValidationGroup="UserModify"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
				<% if (this.IsUserAddrJp) { %>
					<%-- 氏名（かな） --%>
					<dt class="inputBox_left must">かな</dt>
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
								<asp:TextBox id="tbUserNameKana2" Runat="server" placeholder="はなこ" CssClass="nameLast"></asp:TextBox>
							</dd>
						</dl>
						<asp:CustomValidator
							ID="cvUserNameKana1"
							runat="Server"
							ControlToValidate="tbUserNameKana1"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserNameKana2"
							runat="Server"
							ControlToValidate="tbUserNameKana2"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
				<% } %>
					<%-- 性別 --%>
					<dt class="inputBox_left must"><%: ReplaceTag("@@User.sex.name@@") %></dt>
					<dd class="inputBox_right">
						<asp:RadioButtonList ID="rblUserSex" runat="server" RepeatDirection="Horizontal"  RepeatLayout="Flow" CssClass="radioBtn"></asp:RadioButtonList>
						<asp:CustomValidator
							ID="cvUserSex"
							runat="Server"
							ControlToValidate="rblUserSex"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							EnableClientScript="false"
							CssClass="error_inline" />
					</dd>
				<%if (Constants.PRODUCTREVIEW_ENABLED) { %>
					<%-- ニックネーム --%>
					<dt style="display: none;" class="inputBox_left must"><%: ReplaceTag("@@User.nickname.name@@") %></dt>
					<dd style="display: none;" class="inputBox_right">
						<asp:TextBox id="tbUserNickName" runat="server" MaxLength="20" CssClass="nickname"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserNickName"
							runat="Server"
							ControlToValidate="tbUserNickName"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
				<%} %>
					<%-- 生年月日 --%>
					<dt class="inputBox_left must"><%: ReplaceTag("@@User.birth.name@@") %></dt>
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
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							EnableClientScript="false"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserBirthMonth"
							runat="Server"
							ControlToValidate="ddlUserBirthMonth"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							EnableClientScript="false"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserBirthDay"
							runat="Server"
							ControlToValidate="ddlUserBirthDay"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							EnableClientScript="false"
							CssClass="error_inline" />
						</dl>
					</dd><%-- 電話番号 --%>
					<% if (this.IsUserAddrJp) { %>
					<dt class="inputBox_left must">
						<%: ReplaceTag("@@User.tel1.name@@") %>
						
					</dt>
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
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserTel2"
							runat="Server"
							ControlToValidate="tbUserTel2"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserTel3"
							runat="Server"
							ControlToValidate="tbUserTel3"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						</dl>
					</dd>
					<% } else { %>
					<dt class="inputBox_left must">
						<%: ReplaceTag("@@User.tel1.name@@", this.UserAddrCountryIsoCode) %>
						
					</dt>
					<dd class="inputBox_right">
						<asp:TextBox ID="tbUserTel1Global" runat="server" MaxLength="30"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserTel1Global"
							runat="Server"
							ControlToValidate="tbUserTel1Global"
							ValidationGroup="UserModifyGlobal"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<% } %>
					<% if (this.IsUserAddrJp) { %>
					<dt style="display: none;" class="inputBox_left must">
						<%: ReplaceTag("@@User.tel2.name@@") %>
					</dt>
					<dd style="display: none;" class="inputBox_right">
						<asp:TextBox id="tbUserTel2_1" Runat="server" MaxLength="6" CssClass="tel1"></asp:TextBox> -
						<asp:TextBox id="tbUserTel2_2" Runat="server" MaxLength="4" CssClass="tel2"></asp:TextBox> -
						<asp:TextBox id="tbUserTel2_3" Runat="server" MaxLength="4" CssClass="tel3"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserTel2_1"
							runat="Server"
							ControlToValidate="tbUserTel2_1"
							ValidationGroup="UserModify"
							ValidateEmptyText="false"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserTel2_2"
							runat="Server"
							ControlToValidate="tbUserTel2_2"
							ValidationGroup="UserModify"
							ValidateEmptyText="false"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserTel2_3"
							runat="Server"
							ControlToValidate="tbUserTel2_3"
							ValidationGroup="UserModify"
							ValidateEmptyText="false"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<% } else { %>
					<dt style="display: none;" class="inputBox_left must"><%: ReplaceTag("@@User.tel2.name@@", this.UserAddrCountryIsoCode) %></dt>
					<dd style="display: none;" class="inputBox_right">
						<asp:TextBox ID="tbUserTel2Global" runat="server"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserTel2Global"
							runat="Server"
							ControlToValidate="tbUserTel2Global"
							ValidationGroup="UserModifyGlobal"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<% } %>
					<%-- PCメールアドレス --%>
					<dt class="inputBox_left must">メールアドレス
						<%if (this.IsPcSiteOrOfflineUser) {%>
						
						<%} %>
					</dt>
					<dd class="inputBox_right">
						<asp:TextBox id="tbUserMailAddr" Runat="server" MaxLength="256" placeholder="sample@sample.com" Type="email"></asp:TextBox>
						<% cvUserMailAddr.ValidateEmptyText = this.IsPcSiteOrOfflineUser; %>
						<asp:CustomValidator
							ID="cvUserMailAddr"
							runat="Server"
							ControlToValidate="tbUserMailAddr"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserMailAddrForCheck"
							runat="Server"
							ControlToValidate="tbUserMailAddr"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							CssClass="error_inline" />
					</dd>
					<%-- PCメールアドレス(確認用) --%>
					<dt class="inputBox_left must">メールアドレス（確認）
						<%if (this.IsPcSiteOrOfflineUser) {%>
						
						<%} %>
					</dt>
					<dd class="inputBox_right">
						<asp:TextBox id="tbUserMailAddrConf" Runat="server" MaxLength="256" placeholder="sample@sample.com" Type="email"></asp:TextBox>
						<% cvUserMailAddrConf.ValidateEmptyText = this.IsPcSiteOrOfflineUser; %>
						<asp:CustomValidator
							ID="cvUserMailAddrConf"
							runat="Server"
							ControlToValidate="tbUserMailAddrConf"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<%-- モバイルメールアドレス --%>
					<dt style="display: none;" class="inputBox_left must"><%: ReplaceTag("@@User.mail_addr2.name@@") %>
						<%if ((this.IsPcSiteOrOfflineUser == false) || (Constants.EITHER_ENTER_MAIL_ADDRESS_ENABLED)) {%>
						
						<%} %>
					</dt>
					<dd style="display: none;" class="inputBox_right">
						<asp:TextBox id="tbUserMailAddr2" Runat="server" MaxLength="256" CssClass="mailAddr" Type="email"></asp:TextBox>
						<% cvUserMailAddr2.ValidateEmptyText = (this.IsPcSiteOrOfflineUser == false); %>
						<asp:CustomValidator
							ID="cvUserMailAddr2"
							runat="Server"
							ControlToValidate="tbUserMailAddr2"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserMailAddr2ForCheck"
							runat="Server"
							ControlToValidate="tbUserMailAddr2"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							CssClass="error_inline" />
					</dd>
					<%-- モバイルメールアドレス(確認用) --%>
					<dt style="display: none;" class="inputBox_left must"><%: ReplaceTag("@@User.mail_addr2.name@@") %>(確認用)
						<%if ((this.IsPcSiteOrOfflineUser == false) || (Constants.EITHER_ENTER_MAIL_ADDRESS_ENABLED)) {%>
						
						<%} %>
					</dt>
					<dd style="display: none;" class="inputBox_right">
						<asp:TextBox id="tbUserMailAddr2Conf" Runat="server" MaxLength="256" CssClass="mailAddr" Type="email"></asp:TextBox>
						<% cvUserMailAddr2Conf.ValidateEmptyText = (this.IsPcSiteOrOfflineUser == false); %>
						<asp:CustomValidator
							ID="cvUserMailAddr2Conf"
							runat="Server"
							ControlToValidate="tbUserMailAddr2Conf"
							ValidationGroup="UserModify"
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
						<asp:DropDownList ID="ddlUserCountry" runat="server" AutoPostBack="true" OnSelectedIndexChanged="ddlUserAddrCountry_SelectedIndexChanged"></asp:DropDownList></br>
						<span id="countryAlertMessage" class="notes" runat="server" Visible='false'>※Amazonログイン連携では国はJapan以外選択できません。</span>
					</dd>
				<% } %>
				<% if (this.IsUserAddrJp) { %>
					<%-- 郵便番号 --%>
					<dt class="inputBox_left must">
						<%: ReplaceTag("@@User.zip.name@@") %>
						
					</dt>
					<dd class="inputBox_right">
						<dl class="zipArea">
							<dt>
								<asp:TextBox id="tbUserZip1" Runat="server" placeholder="101" MaxLength="3" CssClass="zipFirst" Type="tel"></asp:TextBox>
							</dt>
							<dd>ー</dd>
							<dt>
								<asp:TextBox id="tbUserZip2" Runat="server" placeholder="0001" MaxLength="4" CssClass="zipLast" Type="tel" OnTextChanged="lbSearchAddr_Click"></asp:TextBox>
							</dt>
						<asp:LinkButton style="display: none;" ID="lbSearchAddr" runat="server" OnClick="lbSearchAddr_Click" class="btn btn-mini" OnClientClick="return false;">
							住所検索</asp:LinkButton><br/>
						<%--検索結果レイヤー--%>
						<uc:Layer ID="ucLayer" runat="server" />
						<asp:CustomValidator
							ID="cvUserZip1"
							runat="Server"
							ControlToValidate="tbUserZip1"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvUserZip2"
							runat="Server"
							ControlToValidate="tbUserZip2"
							ValidationGroup="UserModify"
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
						
					</dt>
					<dd class="inputBox_right">
						<asp:DropDownList id="ddlUserAddr1" runat="server" CssClass="district"></asp:DropDownList>
						<asp:CustomValidator
							ID="cvUserAddr1"
							runat="Server"
							ControlToValidate="ddlUserAddr1"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
				<% } %>
					<%-- 市区町村 --%>
					<dt class="inputBox_left must">
						住所（市区町村）
					</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserAddr2, "@@User.addr2.length_max@@"); %>
						<asp:TextBox id="tbUserAddr2" Runat="server" placeholder="港区六本木" CssClass="addr"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserAddr2"
							runat="Server"
							ControlToValidate="tbUserAddr2"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<%-- 番地 --%>
					<dt class="inputBox_left must">
						住所（番地以降）
						<% if (this.IsUserAddrJp) { %><% } %>
					</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserAddr3, "@@User.addr3.length_max@@"); %>
						<asp:TextBox id="tbUserAddr3" Runat="server" placeholder="7-3-16" CssClass="addr2"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserAddr3"
							runat="Server"
							ControlToValidate="tbUserAddr3"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<%-- ビル・マンション名 --%>
					<dt class="inputBox_left">
						住所（建物名）
						<% if (this.IsUserAddrJp == false) { %><% } %>
					</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserAddr4, "@@User.addr4.length_max@@"); %>
						<asp:TextBox id="tbUserAddr4" Runat="server" placeholder="ジャメヴマンション5F" CssClass="addr2"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserAddr4"
							runat="Server"
							ControlToValidate="tbUserAddr4"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
				<% if (this.IsUserAddrJp == false) { %>
					<dt class="inputBox_left must">
						<%: ReplaceTag("@@User.addr5.name@@", this.UserAddrCountryIsoCode) %>
						<% if (this.IsUserAddrUs) { %><% } %>
					</dt>
					<dd class="inputBox_right">
						<% if (this.IsUserAddrUs) { %>
						<asp:DropDownList ID="ddlUserAddr5" runat="server"></asp:DropDownList>
						<% } else { %>
						<asp:TextBox ID="tbUserAddr5" runat="server"></asp:TextBox>
						<% } %>
					</dd>
					<%-- 郵便番号（海外向け） --%>
					<dt class="inputBox_left must">
						<%: ReplaceTag("@@User.zip.name@@", this.UserAddrCountryIsoCode) %>
						<% if (this.IsUserAddrZipNecessary) { %><% } %>
					</dt>
					<dd class="inputBox_right">
						<asp:TextBox ID="tbUserZipGlobal" runat="server" MaxLength="30"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserZipGlobal"
							runat="Server"
							ControlToValidate="tbUserZipGlobal"
							ValidationGroup="UserModifyGlobal"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
				<% } %>
					<%-- 企業名 --%>
					<dt class="inputBox_left">
						<%: ReplaceTag("@@User.company_name.name@@")%>
						<span class="necessary"></span>
					</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserCompanyName, "@@User.company_name.length_max@@"); %>
						<asp:TextBox id="tbUserCompanyName" Runat="server" CssClass="addr2"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserCompanyName"
							runat="Server"
							ControlToValidate="tbUserCompanyName"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<%-- 部署名 --%>
					<dt class="inputBox_left">
						<%: ReplaceTag("@@User.company_post_name.name@@")%>
						<span class="necessary"></span>
					</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserCompanyPostName, "@@User.company_post_name.length_max@@"); %>
						<asp:TextBox id="tbUserCompanyPostName" Runat="server" CssClass="addr2"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserCompanyPostName"
							runat="Server"
							ControlToValidate="tbUserCompanyPostName"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<dt class="inputBox_left must">
						ニュースレター配信
					</dt>
					<dd class="inputBox_right" class="checkBox">
						<asp:CheckBox ID="cbUserMailFlg" Text=" 希望する " CssClass="checkBox" runat="server" />
					</dd>
				<%-- ユーザー拡張項目　HasInput:true(入力画面)/false(確認画面)　HasRegist:true(新規登録)/false(登録編集) --%>
				<uc:BodyUserExtendModify ID="ucBodyUserExtendModify" runat="server" HasInput="true" HasRegist="false" />
			</dl>
			</ContentTemplate>
			</asp:UpdatePanel>
			<%-- UPDATE PANELここまで --%>
		</div>

		<h3>パスワード変更（変更する場合のみご入力ください）</h3>
		<div class="registWrap_box--input" style="display:<%= Constants.RAKUTEN_LOGIN_ENABLED && SessionManager.IsRakutenIdConnectRegisterUser ? "none" : "" %>">
			<%if (Constants.LOGIN_ID_USE_MAILADDRESS_ENABLED == false) { %>
			<dl class="inputBox">
					<%-- ログインID --%>
					<dt class="inputBox_left"><%: ReplaceTag("@@User.login_id.name@@") %>
					</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserLoginId, "@@User.login_id.length_max@@"); %>
						<% if (Constants.LOGIN_ID_USE_MAILADDRESS_ENABLED) tbUserLoginId.Attributes["Type"] = "email"; %>
						<asp:TextBox id="tbUserLoginId" Runat="server" CssClass="loginId"></asp:TextBox><span class="notes">※6～15桁</span>
						<asp:CustomValidator
							ID="cvUserLoginId"
							runat="Server"
							ControlToValidate="tbUserLoginId"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
			</dl>
			<%} %>
			<dl class="inputBox">
				<%-- ソーシャルログイン連携されている場合はパスワードスキップ --%>
				<%if (this.IsVisible_UserPassword){ %>
					<dt class="inputBox_left">現在のパスワード</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserPasswordBefore, "@@User.password.length_max@@"); %>
						<asp:TextBox id="tbUserPasswordBefore" Runat="server" TextMode="Password" autocomplete="off" placeholder="半角英数字で入力してください" CssClass="loginPass" MaxLength="30"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserPasswordBefore"
							runat="Server"
							ControlToValidate="tbUserPasswordBefore"
							ValidationGroup="UserModify"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
				<% } %>
					<dt class="inputBox_left">新しいパスワード</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserPassword, "@@User.password.length_max@@"); %>
						<asp:TextBox id="tbUserPassword" Runat="server" TextMode="Password" autocomplete="off" placeholder="半角英数字で入力してください" CssClass="loginPass" MaxLength="15"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserPassword"
							runat="Server"
							ControlToValidate="tbUserPassword"
							ValidationGroup="UserModify"
							ValidateEmptyText="false"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</dd>
					<dt class="inputBox_left noCenter">新しいパスワード（確認）</dt>
					<dd class="inputBox_right">
						<% SetMaxLength(this.WtbUserPasswordConf, "@@User.password.length_max@@"); %>
						<asp:TextBox id="tbUserPasswordConf" Runat="server" TextMode="Password" autocomplete="off" placeholder="半角英数字で入力してください" CssClass="loginPass" MaxLength="15"></asp:TextBox>
						<asp:CustomValidator
							ID="cvUserPasswordConf"
							runat="Server"
							ControlToValidate="tbUserPasswordConf"
							ValidationGroup="UserModify"
							ValidateEmptyText="false"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<div class="noticeArea">
							<p>
								※半角英数字 7文字以上,15文字以内で入力してください。<br>
								※IDと同様のパスワードは入力できません。
							</p>
						</div>
					</dd>
			</dl>
		</div>
		<div class="submitBtnBox">
			<asp:LinkButton ID="lbConfirm" ValidationGroup="UserModify" OnClientClick="return exec_submit();" runat="server" OnClick="lbConfirm_Click" class="nextBtn">変更する</asp:LinkButton>
		</div>
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
			<a href="/Form/User/MyPage.aspx">
				マイページ
			</a>
		</li>
		<li> >
			<a href="#">
				会員情報登録・変更
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
//-->
</script>

</asp:Content>