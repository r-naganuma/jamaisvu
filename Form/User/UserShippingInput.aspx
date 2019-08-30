<%--
=========================================================================================================
  Module      : アドレス帳入力画面(UserShippingInput.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserShippingInput, App_Web_usershippinginput.aspx.b2a7112d" title="お届け先住所（新規入力）｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="お届け先住所（新規入力）ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<%@ Register TagPrefix="uc" TagName="Layer" Src="~/Form/Common/Layer/SearchResultLayer.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>お届け先情報入力</h2>

	<div class="registWrap_box">
		<h3>アドレス帳情報</h3>
		<div class="registWrap_box--input creditListBox">
			<%-- UPDATE PANEL開始 --%>
			<asp:UpdatePanel ID="upUpdatePanel" runat="server">
			<ContentTemplate>
			<dl class="inputBox">
				<dt class="inputBox_left must">お届け先名称</dt>
				<dd class="inputBox_right">
					<asp:TextBox id="tbName" Runat="server" placeholder="例：勤務先" maxlength="30" CssClass="nameShipping"></asp:TextBox>
					<asp:CustomValidator
						ID="cvName"
						runat="Server"
						ControlToValidate="tbName"
						ValidationGroup="UserShippingRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
				<%-- 氏名 --%>
				<dt class="inputBox_left must"><%: ReplaceTag("@@User.name.name@@") %></dt>
				<dd class="inputBox_right">
					<dl class="nameArea">
						<dt>
							<% SetMaxLength(this.WtbShippingName1, "@@User.name1.length_max@@"); %>
							<span>姓</span>
						</dt>
						<dd>
							<asp:TextBox id="tbShippingName1" Runat="server" placeholder="伊藤" CssClass="nameFirst"></asp:TextBox>
						</dd>
						<dt>
							<% SetMaxLength(this.WtbShippingName2, "@@User.name2.length_max@@"); %>
							<span>名</span>
						</dt>
						<dd>
							<asp:TextBox id="tbShippingName2" Runat="server" placeholder="忠太郎" CssClass="nameLast"></asp:TextBox>
						</dd>
					</dl>
					<asp:CustomValidator
						ID="cvShippingName1"
						runat="Server"
						ControlToValidate="tbShippingName1"
						ValidationGroup="UserShippingRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<asp:CustomValidator
						ID="cvShippingName2"
						runat="Server"
						ControlToValidate="tbShippingName2"
						ValidationGroup="UserShippingRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
			<% if (this.IsShippingAddrJp) { %>
				<%-- 氏名（かな） --%>
				<dt class="inputBox_left must">かな</dt>
				<dd class="inputBox_right">
					<dl class="nameArea">
						<dt>
							<% SetMaxLength(this.WtbShippingNameKana1, "@@User.name_kana1.length_max@@"); %>
							<span>せい</span>
						</dt>
						<dd>
							<asp:TextBox id="tbShippingNameKana1" Runat="server" placeholder="いとう" CssClass="nameFirst"></asp:TextBox>
						</dd>
						<dt>
							<% SetMaxLength(this.WtbShippingNameKana2, "@@User.name_kana2.length_max@@"); %>
							<span>めい</span>
						</dt>
						<dd>
							<asp:TextBox id="tbShippingNameKana2" Runat="server" placeholder="ちゅうたろう" CssClass="nameLast"></asp:TextBox>
						</dd>
					</dl>
					<asp:CustomValidator
						ID="cvShippingNameKana1"
						runat="Server"
						ControlToValidate="tbShippingNameKana1"
						ValidationGroup="UserShippingRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<asp:CustomValidator
						ID="cvShippingNameKana2"
						runat="Server"
						ControlToValidate="tbShippingNameKana2"
						ValidationGroup="UserShippingRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
			<% } %>
				<%-- 電話番号 --%>
				<% if (this.IsShippingAddrJp) { %>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.tel1.name@@") %>
					
				</dt>
				<dd class="inputBox_right">
					<dl class="zipArea">
						<dt>
							<asp:TextBox id="tbShippingTel1_1" MaxLength="6" Runat="server" placeholder="012" CssClass="tel1" Type="tel"></asp:TextBox>
						</dt>
						<dd>ー</dd>
						<dt>
							<asp:TextBox id="tbShippingTel1_2" MaxLength="4" Runat="server" placeholder="3456" CssClass="tel2" Type="tel"></asp:TextBox>
						</dt>
						<dd>ー</dd>
						<dt>
							<asp:TextBox id="tbShippingTel1_3" MaxLength="4" Runat="server" placeholder="7890" CssClass="tel3" Type="tel"></asp:TextBox>
						</dt>
					<asp:CustomValidator
						ID="cvShippingTel1_1"
						runat="Server"
						ControlToValidate="tbShippingTel1_1"
						ValidationGroup="UserShippingRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<asp:CustomValidator
						ID="cvShippingTel1_2"
						runat="Server"
						ControlToValidate="tbShippingTel1_2"
						ValidationGroup="UserShippingRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<asp:CustomValidator
						ID="cvShippingTel1_3"
						runat="Server"
						ControlToValidate="tbShippingTel1_3"
						ValidationGroup="UserShippingRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					</dl>
				</dd>
				<% } else { %>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.tel1.name@@", this.ShippingAddrCountryIsoCode) %>
					
				</dt>
				<dd class="inputBox_right">
					<asp:TextBox ID="tbShippingTel1Global" MaxLength="30" runat="server" Type="tel"></asp:TextBox>
					<asp:CustomValidator
						ID="cvShippingTel1Global"
						runat="Server"
						ControlToValidate="tbShippingTel1Global"
						ValidationGroup="UserShippingRegistGlobal"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
				<% } %>
			<% if (Constants.GLOBAL_OPTION_ENABLE) { %>
				<%-- 国 --%>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.country.name@@", this.ShippingAddrCountryIsoCode) %>
					
				</dt>
				<dd class="inputBox_right">
					<asp:DropDownList runat="server" ID="ddlShippingCountry" AutoPostBack="true" OnSelectedIndexChanged="ddlShippingCountry_SelectedIndexChanged"></asp:DropDownList>
				</dd>
			<% } %>
			<% if (this.IsShippingAddrJp) { %>
				<%-- 郵便番号 --%>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.zip.name@@") %>
					
				</dt>
				<dd class="inputBox_right">
					<dl class="zipArea">
						<dt>
							<asp:TextBox id="tbShippingZip1" MaxLength="3" Runat="server" placeholder="012" CssClass="zipFirst" Type="tel"></asp:TextBox>
						</dt>
						<dd>ー</dd>
						<dt>
							<asp:TextBox id="tbShippingZip2" MaxLength="4" Runat="server" placeholder="3456" CssClass="zipLast" Type="tel" OnTextChanged="lbSearchShippingAddr_Click"></asp:TextBox>
						</dt>
						<asp:LinkButton style="display: none;" ID="lbSearchShippingAddr" runat="server" OnClick="lbSearchShippingAddr_Click" class="btn btn-mini" OnClientClick="return false;">住所検索</asp:LinkButton><br/>
						<%--検索結果レイヤー--%>
						<uc:Layer ID="ucLayer" runat="server" />
						<asp:CustomValidator
							ID="cvShippingZip1"
							runat="Server"
							ControlToValidate="tbShippingZip1"
							ValidationGroup="UserShippingRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<asp:CustomValidator
							ID="cvShippingZip2"
							runat="Server"
							ControlToValidate="tbShippingZip2"
							ValidationGroup="UserShippingRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<%-- エラーメッセージ --%>
						<% if(StringUtility.ToEmpty(this.ZipInputErrorMessage) != "") {%>
						<span style="color :Red" id="addrSearchErrorMessage">
							<%: this.ZipInputErrorMessage %></span>
						<% } %>
					</dl>
				</dd>
				<%-- 都道府県 --%>
				<dt class="inputBox_left must"><%: ReplaceTag("@@User.addr1.name@@") %></dt>
				<dd class="inputBox_right">
					<asp:DropDownList id="ddlShippingAddr1" runat="server" DataTextField="Text" DataValueField="Value"></asp:DropDownList>
					<asp:CustomValidator
						ID="cvShippingAddr1"
						runat="Server"
						ControlToValidate="ddlShippingAddr1"
						ValidationGroup="UserShippingRegist"
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
					<% SetMaxLength(this.WtbShippingAddr2, "@@User.addr2.length_max@@"); %>
					<asp:TextBox id="tbShippingAddr2" Runat="server" placeholder="港区" CssClass="addr"></asp:TextBox>
					<asp:CustomValidator
						ID="cvShippingAddr2"
						runat="Server"
						ControlToValidate="tbShippingAddr2"
						ValidationGroup="UserShippingRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
				<%-- 番地 --%>
				<dt class="inputBox_left must">
					住所（番地以降）
					<% if (this.IsShippingAddrJp) { %><% } %>
				</dt>
				<dd class="inputBox_right">
					<% SetMaxLength(this.WtbShippingAddr3, "@@User.addr3.length_max@@"); %>
					<asp:TextBox id="tbShippingAddr3" Runat="server" placeholder="六本木7-3-16" CssClass="addr2"></asp:TextBox>
					<asp:CustomValidator
						ID="cvShippingAddr3"
						runat="Server"
						ControlToValidate="tbShippingAddr3"
						ValidationGroup="UserShippingRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
				<%-- ビル・マンション名 --%>
				<dt class="inputBox_left">
					住所（建物名）
					<% if (this.IsShippingAddrJp == false) { %><% } %>
				</dt>
				<dd class="inputBox_right">
					<% SetMaxLength(this.WtbShippingAddr4, "@@User.addr4.length_max@@"); %>
					<asp:TextBox id="tbShippingAddr4" Runat="server" placeholder="六本木インターナショナルアネックスビル4F" CssClass="addr2"></asp:TextBox>
					<asp:CustomValidator
						ID="cvShippingAddr4"
						runat="Server"
						ControlToValidate="tbShippingAddr4"
						ValidationGroup="UserShippingRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
			<% if (this.IsShippingAddrJp == false) { %>
				<%-- 郵便番号（海外向け） --%>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.addr5.name@@", this.ShippingAddrCountryIsoCode) %>
					<% if (this.IsShippingAddrUs) { %><% } %>
				</dt>
				<dd class="inputBox_right">
					<% if (this.IsShippingAddrUs) { %>
					<asp:DropDownList ID="ddlShippingAddr5" runat="server"></asp:DropDownList>
					<% } else { %>
					<asp:TextBox ID="tbShippingAddr5" runat="server"></asp:TextBox>
					<% } %>
				</dd>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.zip.name@@", this.ShippingAddrCountryIsoCode) %>
					<% if (this.IsShippingAddrZipNecessary) { %><% } %>
				</dt>
				<dd class="inputBox_right">
					<asp:TextBox ID="tbShippingZipGlobal" MaxLength="30" runat="server"></asp:TextBox>
					<asp:CustomValidator
						ID="cvShippingZipGlobal"
						runat="Server"
						ControlToValidate="tbShippingZipGlobal"
						ValidationGroup="UserShippingRegistGlobal"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
			<% } %>
			<% if (Constants.DISPLAY_CORPORATION_ENABLED){ %>
				<%-- 企業名 --%>
				<dt class="inputBox_left">
					会社名
					<span class="necessary"></span>
				</dt>
				<dd class="inputBox_right">
					<% SetMaxLength(this.WtbShippingCompanyName, "@@User.company_name.length_max@@"); %>
					<asp:TextBox id="tbShippingCompanyName" Runat="server" CssClass="addr2"></asp:TextBox>
					<asp:CustomValidator
						ID="cvShippingCompanyName"
						runat="Server"
						ControlToValidate="tbShippingCompanyName"
						ValidationGroup="UserShippingRegist"
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
					<% SetMaxLength(this.WtbShippingCompanyPostName, "@@User.company_post_name.length_max@@"); %>
					<asp:TextBox id="tbShippingCompanyPostName" Runat="server" CssClass="addr2"></asp:TextBox>
					<asp:CustomValidator
						ID="cvShippingCompanyPostName"
						runat="Server"
						ControlToValidate="tbShippingCompanyPostName"
						ValidationGroup="UserShippingRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
			<%} %>
			</dl>
			</ContentTemplate>
			</asp:UpdatePanel>
			<%-- UPDATE PANELここまで --%>
		</div>
		<div class="allBtnBox">
			<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_SHIPPING_LIST) %>" class="prevBtn">戻る</a>
			<asp:LinkButton ID="lbConfirm" ValidationGroup="UserShippingRegist" OnClientClick="return exec_submit();" runat="server" OnClick="lbConfirm_Click" class="nextBtn">確認する</asp:LinkButton>
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
			<a href="/Form/User/UserShippingList.aspx">
				お届け先情報
			</a>
		</li>
		<li> >
			<a href="#">
				変更
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
			$("#<%= tbShippingName1.ClientID %>"),
			$("#<%= tbShippingNameKana1.ClientID %>"),
			$("#<%= tbShippingName2.ClientID %>"),
			$("#<%= tbShippingNameKana2.ClientID %>"));
	}

	<%-- 郵便番号検索のイベントをバインドする --%>
	function bindZipCodeSearch() {
		$("#<%= tbShippingZip2.ClientID %>").keyup(function (e) {
			if (isValidKeyCodeForKeyEvent(e.keyCode) == false) return;
			checkZipCodeLengthAndExecPostback(
				$("#<%= tbShippingZip1.ClientID %>"),
				$("#<%= tbShippingZip2.ClientID %>"),
				"<%= tbShippingZip2.UniqueID %>",
				'<%= Constants.PATH_ROOT + Constants.PAGE_FRONT_ZIPCODE_SEARCHER_GET_ADDR_JSON %>',
				'#addrSearchErrorMessage'
			);
		});
		$("#<%= lbSearchShippingAddr.ClientID %>").on('click', function () {
			checkZipCodeLengthAndExecPostback(
				$("#<%= tbShippingZip1.ClientID %>"),
				$("#<%= tbShippingZip2.ClientID %>"),
				"<%= lbSearchShippingAddr.UniqueID %>",
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
		$("#<%= ddlShippingAddr1.ClientID %>").val(selectedAddr.find('.addr').text());
		$("#<%= tbShippingAddr2.ClientID %>").val(selectedAddr.find('.city').text() + selectedAddr.find('.town').text());
		$("#<%= tbShippingAddr3.ClientID %>").focus();

		closePopupAndLayer();
	}
//-->
</script>

</asp:Content>