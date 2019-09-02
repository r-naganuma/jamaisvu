<%--
=========================================================================================================
  Module      : 注文履歴詳細画面(OrderHistoryDetail.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_Order_OrderHistoryDetail, App_Web_orderhistorydetail.aspx.a8f71c32" title="購入履歴詳細｜マイページ｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="購入履歴詳細ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<%@ Import Namespace="System.Runtime.CompilerServices" %>
<%-- ▼削除禁止：クレジットカードTokenコントロール▼ --%>
<%@ Register TagPrefix="uc" TagName="CreditToken" Src="~/Form/Common/CreditToken.ascx" %>
<%-- ▲削除禁止：クレジットカードTokenコントロール▲ --%>
<%@ Register TagPrefix="uc" TagName="Layer" Src="~/Form/Common/Layer/SearchResultLayer.ascx" %>
<%@ Register TagPrefix="uc" TagName="PaymentDescriptionCvsDef" Src="~/Form/Common/Order/PaymentDescriptionCvsDef.ascx" %>
<%@ Register TagPrefix="uc" TagName="PaymentDescriptionPayPal" Src="~/Form/Common/Order/PaymentDescriptionPayPal.ascx" %>
<%@ Register TagPrefix="uc" TagName="PaypalScriptsForm" Src="~/Form/Common/PayPalScriptsForm.ascx" %>
<%@ Register Src="~/Form/Common/Order/PaymentDescriptionTriLinkAfterPay.ascx" TagPrefix="uc" TagName="PaymentDescriptionTriLinkAfterPay" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%-- UpdatePanel開始 --%>
<asp:UpdatePanel ID="upUpdatePanel" UpdateMode="Conditional" runat="server">
<ContentTemplate>
<script type="text/javascript">
$(function(){
    $('.ohShippingChange a').click(function () {
        $('body, html').animate({ scrollTop: 0 }, 500);
    });
});
function bodyPageLoad() {
    $('.ohShippingChange a').click(function () {
        $('body, html').animate({ scrollTop: 0 }, 500);
    });
}
</script>
<div class="registWrap mypageCts">
	<h2>購入履歴詳細</h2>
	<div class="registWrap_box">
			
		<%-- 注文情報 --%>
		<div class="registWrap_box--input noBorderB mrgB0 pdgT0">
			<table class="inputBox tableInputBox inputBox_confirm orderDetailArea">
				<tr>
					<th class="inputBox_left">注文概要</th>
					<td class="inputBox_right">
						<dl class="orderDetailAbout">
							<dt>ご注文番号</dt>
							<dd><%#: this.OrderModel.OrderId %></dd>
							<dt>ご注文日</dt>
							<dd><%#: DateTimeUtility.ToStringFromRegion(this.OrderModel.OrderDate, DateTimeUtility.FormatType.ShortDate2Letter) %></dd>
							<dt>発送状況</dt>
							<dd><%#: ValueText.GetValueText(Constants.TABLE_ORDER, Constants.FIELD_ORDER_ORDER_STATUS, this.OrderModel.OrderStatus) %><%#: this.OrderModel.ShippedChangedKbn == Constants.FLG_ORDER_SHIPPED_CHANGED_KBN_CHANAGED ? "（変更有り）" : "" %></dd>
						</dl>
					</td>
				</tr>
				<tr>
					<th class="inputBox_left">お支払い方法</th>
					<td class="inputBox_right">
						<%#: this.PaymentModel.PaymentName %>
						<% if ((this.OrderModel.OrderPaymentKbn == Constants.FLG_PAYMENT_PAYMENT_ID_CREDIT) && (string.IsNullOrEmpty(this.OrderModel.CardInstruments) == false)) { %>
							(<%: this.OrderModel.CardInstruments %>)
						<% } %>
						<% if (this.OrderModel.OrderPaymentKbn == Constants.FLG_PAYMENT_PAYMENT_ID_AMAZON_PAYMENT) { %>
							<div style="margin: 10px 0;">
								<small>※現在のAmazon Payでの配送先情報、お支払い方法を表示しています。</small>
							</div>
							<iframe id="AmazonDetailWidget" src="<%: PageUrlCreatorUtility.CreateAmazonPayWidgetUrl(true, orderId: this.OrderModel.OrderId) %>" style="width:100%;border:none;"></iframe>
						<% } %>
						<div style="display: none; text-align:right; float:right;">
							<asp:LinkButton ID="lbDisplayInputOrderPaymentKbn" Text="お支払い方法変更" runat="server" OnClick="lbDisplayInputOrderPaymentKbn_Click"
								Enabled="<%# (this.OrderModel.DigitalContentsFlg == Constants.FLG_PRODUCT_DIGITAL_CONTENTS_FLG_INVALID) && this.IsModifyOrder %>" class="btn" AutoPostBack="true" />
						</div>
						<div style="display: none; text-align:right; padding-top:15px;">
							<%#: this.ExplanationOrderPaymentKbn %>
						</div>
						<%-- ▼PayPalログインここから▼ --%>
						<div style="display: none">
							<%if (Constants.PAYPAL_LOGINPAYMENT_ENABLED) {%>
								<%
									ucPaypalScriptsForm.LogoDesign = "Payment";
									ucPaypalScriptsForm.AuthCompleteActionControl = lbPayPalAuthComplete;
								%>
								<uc:PaypalScriptsForm ID="ucPaypalScriptsForm" runat="server" />
								<br /><asp:LinkButton ID="lbPayPalAuthComplete" runat="server" OnClick="lbPayPalAuthComplete_Click"></asp:LinkButton>
							<%} %>
						</div>
						<%-- ▲PayPalログインここまで▲ --%>
						<div id="dvOrderPaymentPattern" Visible="False" runat="server">
							<tr>
								<th class="inputBox_left">お支払い情報</th>
								<td id="CartList" class="inputBox_right">
									<div class="orderBox" style="background: url() !important;">
										<div class="list">
											<span style="color:red" runat="server" visible="<%# (string.IsNullOrEmpty(StringUtility.ToEmpty(this.DispLimitedPaymentMessages[0])) == false) %>">
												<%# StringUtility.ToEmpty(this.DispLimitedPaymentMessages[0]) %><br/>
											</span>
										<dl class="list">
											<asp:Repeater ID="rPayment" DataSource="<%# this.ValidPayments[0] %>" runat="server" >
											<ItemTemplate>
												<asp:HiddenField ID="hfPaymentId" Value='<%# Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) %>' runat="server" />
												<asp:HiddenField ID="hfPaymentName" Value='<%# Eval(Constants.FIELD_PAYMENT_PAYMENT_NAME) %>' runat="server" />
												<asp:HiddenField ID="hfPaymentPrice" Value="<%# OrderCommon.GetPaymentPrice((string)Eval(Constants.FIELD_PAYMENT_SHOP_ID), (string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID), this.OrderModel.OrderPriceSubtotal) %>" runat="server" />
												<dt><w2c:RadioButtonGroup ID="rbgPayment" GroupName='Payment' Checked="<%# this.OrderModel.OrderPaymentKbn == (string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) %>" Text="<%#: Eval(Constants.FIELD_PAYMENT_PAYMENT_NAME) %>" OnCheckedChanged="rbgPayment_OnCheckedChanged" AutoPostBack="true" CssClass="radioBtn" runat="server" /></dt>

												<%-- クレジット --%>
												<dd id="ddCredit" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_CREDIT) %>" runat="server">
													<asp:DropDownList ID="ddlUserCreditCard" runat="server" AutoPostBack="true" DataTextField="text" DataValueField="value" OnSelectedIndexChanged="ddlUserCreditCard_OnSelectedIndexChanged"></asp:DropDownList>
												
													<%-- ▽新規カード▽ --%>
													<% if (IsNewCreditCard()){ %>

													<%--▼▼ カード情報取得用 ▼▼--%>
													<input type="hidden" id="hidCinfo" name="hidCinfo" value="<%# CreateGetCardInfoJsScriptForCreditToken(Container) %>" />
													<%--▲▲ カード情報取得用 ▲▲--%>

													<%--▼▼ クレジット Token保持用 ▼▼--%>
													<asp:HiddenField ID="hfCreditToken" Value="" runat="server" />
													<%--▲▲ クレジット Token保持用 ▲▲--%>

													<%--▼▼ カード情報入力（トークン未取得・利用なし） ▼▼--%>
													<div id="divCreditCardNoToken" runat="server">
														<%if (OrderCommon.CreditCompanySelectable) {%>
														<strong>カード会社</strong>
														<p><asp:DropDownList id="ddlCreditCardCompany" runat="server" DataTextField="Text" DataValueField="Value" CssClass="input_widthG input_border"></asp:DropDownList></p>
														<%} %>
														<strong>カード番号</strong>&nbsp;<span class="fred">※</span>
														<p>
														<asp:TextBox id="tbCreditCardNo1" runat="server" CssClass="cardNo1" MaxLength="4" autocomplete="off"></asp:TextBox>-
														<asp:TextBox id="tbCreditCardNo2" runat="server" CssClass="cardNo2" MaxLength="6" autocomplete="off"></asp:TextBox>-
														<asp:TextBox id="tbCreditCardNo3" runat="server" CssClass="cardNo3" MaxLength="5" autocomplete="off"></asp:TextBox>-
														<asp:TextBox id="tbCreditCardNo4" runat="server" CssClass="cardNo4" MaxLength="4" autocomplete="off"></asp:TextBox><br />
														<small class="fred">
															<asp:CustomValidator ID="cvCreditCardNo1" runat="Server"
																ControlToValidate="tbCreditCardNo1"
																ValidationGroup="OrderPayment"
																ValidateEmptyText="true"
																SetFocusOnError="true"
																ClientValidationFunction="ClientValidate"
																CssClass="error_inline" />
															<asp:CustomValidator ID="cvCreditCardNo2" runat="Server"
																ControlToValidate="tbCreditCardNo2"
																ValidationGroup="OrderPayment"
																ValidateEmptyText="true"
																SetFocusOnError="true"
																ClientValidationFunction="ClientValidate"
																CssClass="error_inline" />
															<asp:CustomValidator ID="cvCreditCardNo3" runat="Server"
																ControlToValidate="tbCreditCardNo3"
																ValidationGroup="OrderPayment"
																ValidateEmptyText="true"
																SetFocusOnError="true"
																ClientValidationFunction="ClientValidate"
																CssClass="error_inline" />
															<asp:CustomValidator ID="cvCreditCardNo4" runat="Server"
																ControlToValidate="tbCreditCardNo4"
																ValidationGroup="OrderPayment"
																ValidateEmptyText="true"
																SetFocusOnError="true"
																ClientValidationFunction="ClientValidate"
																CssClass="error_inline" />
														</small>
														<small class="fgray">
														カードの表記のとおりご入力ください。<br />
														例：<br />
														1234-5678-9012-3456<br />
														1234- 567890-12345（4つ目の入力欄は空白）
														</small></p>
														<strong>有効期限</strong>
														<p>
															<asp:DropDownList id="ddlCreditExpireMonth" runat="server" CssClass="expMonth"></asp:DropDownList>/
															<asp:DropDownList id="ddlCreditExpireYear" runat="server" CssClass="expYear"></asp:DropDownList> (月/年)</p>
														<strong>カード名義人</strong><span class="fred">※</span>例：「TAROU YAMADA」
														<p>
															<asp:TextBox id="tbCreditAuthorName" runat="server" CssClass="nameFull" MaxLength="50" autocomplete="off"></asp:TextBox><br />
																<small class="fred">
																	<asp:CustomValidator ID="cvCreditAuthorName" runat="Server"
																		ControlToValidate="tbCreditAuthorName"
																		ValidationGroup="OrderPayment"
																		ValidateEmptyText="true"
																		SetFocusOnError="true"
																		ClientValidationFunction="ClientValidate"
																		CssClass="error_inline" />
																</small>
														</p>
														<div id="trSecurityCode" visible="<%# OrderCommon.CreditSecurityCodeEnable %>" runat="server">
														<strong>セキュリティコード</strong>&nbsp;<span class="fred">※</span>
														<p>
															<asp:TextBox id="tbCreditSecurityCode" runat="server" CssClass="securityCode" MaxLength="4" autocomplete="off"></asp:TextBox><br />
															<small class="fred">
															<asp:CustomValidator ID="cvCreditSecurityCode" runat="Server"
																ControlToValidate="tbCreditSecurityCode"
																ValidationGroup="OrderPayment"
																ValidateEmptyText="true"
																SetFocusOnError="true"
																ClientValidationFunction="ClientValidate"
																CssClass="error_inline" />
															</small>
														</p>
														</div>
													</div>
													<%--▲▲ カード情報入力（トークン未取得・利用なし） ▲▲--%>

													<%--▼▼ カード情報入力（トークン取得済） ▼▼--%>
													<div id="divCreditCardForTokenAcquired" runat="server">
														<%if (OrderCommon.CreditCompanySelectable) {%>
														<strong>カード会社</strong>
														<p><asp:Literal ID="lCreditCardCompanyNameForTokenAcquired" runat="server"></asp:Literal></p>
														<%} %>
														<strong>カード番号</strong>
														<p>XXXXXXXXXXXX<asp:Literal ID="lLastFourDigitForTokenAcquired" runat="server"></asp:Literal>
														<asp:LinkButton id="lbEditCreditCardNoForToken" OnClick="lbEditCreditCardNoForToken_Click" runat="server">再入力</asp:LinkButton><br /></p>
														<strong>有効期限</strong>
														<p><asp:Literal ID="lExpirationMonthForTokenAcquired" runat="server"></asp:Literal>
															/
															<asp:Literal ID="lExpirationYearForTokenAcquired" runat="server"></asp:Literal>
														(月/年)</p>
														<strong>カード名義人</strong>
														<p><asp:Literal ID="lCreditAuthorNameForTokenAcquired" runat="server"></asp:Literal></p>
													</div>
													<%--▲▲ カード情報入力（トークン取得済） ▲▲ --%>

													<div id="Div3" visible="<%# OrderCommon.CreditInstallmentsSelectable %>" runat="server">
														<strong>支払い回数</strong>
														<p>
															<asp:DropDownList id="dllCreditInstallments" runat="server" DataTextField="Text" DataValueField="Value" CssClass="input_border" autocomplete="off"></asp:DropDownList><br/>
															<span class="fgray">※AMEX/DINERSは一括のみとなります。</span>
														</p>
													</div>

													<asp:CheckBox ID="cbRegistCreditCard" runat="server" Checked="false" OnCheckedChanged="cbRegistCreditCard_OnCheckedChanged" Text="登録する" autocomplete="off" AutoPostBack="true" />
													<div id="divUserCreditCardName" visible="false" runat="server">
														<p>クレジットカードを保存する場合は、以下をご入力ください。</p>
														<strong>クレジットカード登録名&nbsp;<span class="fred">※</span></strong>
														<p>
															<asp:TextBox ID="tbUserCreditCardName" Text="" MaxLength="100" CssClass="input_widthD input_border" runat="server" autocomplete="off"></asp:TextBox><br />
															<small class="fred">
															<asp:CustomValidator ID="cvUserCreditCardName" runat="Server"
																ControlToValidate="tbUserCreditCardName"
																ValidationGroup="OrderPayment"
																ValidateEmptyText="true"
																SetFocusOnError="true"
																ClientValidationFunction="ClientValidate"
																CssClass="error_inline" />
															</small>
														</p>
													</div>
													<span id="spanErrorMessageForCreditCard" style="color: red; display: none" runat="server"></span>
													<%-- △新規カード△ --%>

													<%-- ▽登録済みカード▽ --%>
													<% }else{ %>
													<div id="divCreditCardDisp" runat="server">
														<%if (OrderCommon.CreditCompanySelectable) {%>
														<strong>カード会社</strong>
														<p><%: this.CreditCardCompanyName %><br /></p>
														<%} %>
														<strong>カード番号</strong>
														<p>XXXXXXXXXXXX<%: this.LastFourDigit %><br /></p>
														<strong>有効期限</strong>
														<p><%: this.ExpirationMonth %>/<%: this.ExpirationYear %> (月/年)</p>
														<strong>カード名義人</strong>
														<p><%: this.CreditAuthorName %></p>
														<asp:HiddenField ID="hfCreditCardId" runat="server" />

														<div visible="<%# OrderCommon.CreditInstallmentsSelectable %>" runat="server">
															<strong>支払い回数</strong>
															<p>
																<asp:DropDownList id="dllCreditInstallments2" runat="server" CssClass="input_border"></asp:DropDownList>
																<br/>
																<span class="fgray">※AMEX/DINERSは一括のみとなります。</span>
															</p>
														</div>
													</div>
													<% } %>
												<%-- △登録済みカード△ --%>
												</dd>

												<%-- コンビニ(後払い) --%>
												<dd id="ddCvsDef" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_CVS_DEF) %>" runat="server">
													<uc:PaymentDescriptionCvsDef runat="server" id="ucPaymentDescriptionCvsDef" />
												</dd>

												<%-- 後付款(TriLink後払い) --%>
												<dd id="ddTriLinkAfterPayPayment" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_TRILINK_AFTERPAY) %>" runat="server">
													<uc:PaymentDescriptionTriLinkAfterPay runat="server" id="ucPaymentDescriptionTryLinkAfterPay" />
												</dd>

												<%-- Amazon Pay --%>
												<dd id="ddAmazonPay" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_AMAZON_PAYMENT) %>" runat="server">
													<div style="margin: 10px 0;">
														<small>※配送先情報、または、お支払い方法の変更を希望される方は「アドレス帳」→「お支払い方法」の順で選択してください。</small>
													</div>
													<iframe id="AmazonInputWidget" src="<%: PageUrlCreatorUtility.CreateAmazonPayWidgetUrl(false, orderId: this.OrderModel.OrderId) %>" style="width:100%;border:none;"></iframe>
													<asp:HiddenField ID="hfAmazonOrderRefID" ClientIDMode="Static" runat="server" />
												</dd>

												<%-- 代金引換 --%>
												<dd id="ddCollect" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_COLLECT) %>" runat="server">
												</dd>

												<%-- PayPal --%>
												<dd id="ddPayPal" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_PAYPAL) %>" runat="server">
													<div style="display: <%= dvOrderPaymentPattern.Visible ? "block" : "none"%>">
														<%if (Constants.PAYPAL_LOGINPAYMENT_ENABLED) {%>
															<div id="paypal-button" style="margin: 5px;"></div>
															<%if (SessionManager.PayPalCooperationInfo != null) {%>
																<%: (SessionManager.PayPalCooperationInfo != null) ? SessionManager.PayPalCooperationInfo.AccountEMail : "" %> 連携済<br/>
															<%} else { %>
																<%: WebMessages.GetMessages(WebMessages.ERRMSG_FRONT_PAYPAL_NEEDS_LOGIN_ERROR) %>
															<%} %>
														<%} %>
													</div>
													<uc:PaymentDescriptionPayPal runat="server" id="PaymentDescriptionPayPal" />
												</dd>

												<%-- 決済なし --%>
												<dd id="ddNoPayment" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_NOPAYMENT) %>" runat="server">
												</dd>
											</ItemTemplate>
											</asp:Repeater>
											</dl>
										</div><!--list-->
									</div>
								</td>
							</tr><!--End input payment update form-->

							<tr><!--Action button payment update form-->
								<th class="inputBox_left"></th>
								<td class="inputBox_right">
									<div id="divOrderPaymentUpdateButtons" style="display: block">
									<% if (this.IsFixedPurchase && (this.FixedPurchaseModel.IsCancelFixedPurchaseStatus == false)) { %>
										<asp:CheckBox ID="cbIsUpdateFixedPurchaseByOrderPayment" Text="今後の定期注文にも反映させる" Checked="false" runat="server"/><br />
									<% } %>
										<asp:LinkButton Text="情報更新" runat="server" ValidationGroup="OrderPayment" OnClientClick="doPostbackEvenIfCardAuthFailed=false;return AlertDataChange('Payment', this);" OnClick="btnUpdatePaymentPatternInfo_Click" class="btn" ></asp:LinkButton>
										<asp:LinkButton Text="キャンセル" runat="server" OnClick="btnClosePaymentPatternInfo_Click" class="btn"></asp:LinkButton>
									</div>
									<div id="divOrderPaymentUpdateExecFroms" style="display: none"> 
										更新中です...
									</div>
									<small id="sErrorMessagePayment" class="error" runat="server"></small>
								</td>
							</tr>
						</div>
					</td>
				</tr>
				<% if (this.IsFixedPurchase){ %>
				<tr>
					<th class="inputBox_left">定期購入ID</th>
					<td class="inputBox_right">
						<%#: this.OrderModel.FixedPurchaseId %>
						<div style="float: right">
							<asp:LinkButton Text="次回以降の注文変更" runat="server" OnClick="lbDisplayFixedPurchaseDetail_Click" class="btn" />
						</div>
					</td>
				</tr>
				<%}%>
				<tr style="display: none;">
					<th class="inputBox_left">購入日</th>
					<td class="inputBox_right">
						</td>
				</tr>
				<tr style="display: none;">
					<th class="inputBox_left">ご入金状況</th>
					<td class="inputBox_right">
						<%#: ValueText.GetValueText(Constants.TABLE_ORDER, Constants.FIELD_ORDER_ORDER_PAYMENT_STATUS, this.OrderModel.OrderPaymentStatus) %></td>
				</tr>
				<% if ((this.OrderModel.OrderPaymentKbn == Constants.FLG_PAYMENT_PAYMENT_ID_CREDIT) && (this.UserCreditCardInfo != null)) { %>
				<tr style="display: none;" id="dvFixedPurchaseCurrentCard" runat="server">
					<th class="inputBox_left">利用クレジットカード情報</th>
					<td class="inputBox_right">
						<% if (this.UserCreditCardInfo.DispFlg == Constants.FLG_USERCREDITCARD_DISP_FLG_ON) { %>
						クレジットカード登録名: <%:this.UserCreditCardInfo.CardDispName %><%: this.UserCreditCardInfo.DispFlag ? "" : " (削除済)" %><br />
						<% } %>
						<%if (OrderCommon.CreditCompanySelectable && (this.UserCreditCardInfo.CompanyName != string.Empty)) {%>
						カード会社: <%: this.UserCreditCardInfo.CompanyName %><br />
						<%} %>
						カード番号: XXXXXXXXXXXX<%: this.UserCreditCardInfo.LastFourDigit %><br />
						有効期限: <%: this.UserCreditCardInfo.ExpirationMonth + "/" + this.UserCreditCardInfo.ExpirationYear + " (月/年)" %><br />
						カード名義人: <%: this.UserCreditCardInfo.AuthorName %>
					</td>
				</tr>
				<%} %>
				<tr style="display: none;">
					<th class="inputBox_left">注文メモ</th>
					<td class="inputBox_right">
						<%#: StringUtility.ToEmpty(this.OrderModel.Memo) != "" ? this.OrderModel.Memo : "指定なし" %></td>
				</tr>
				
				<%-- ポイントオプションが有効な場合 --%>
				<%if (Constants.W2MP_POINT_OPTION_ENABLED) {%>
				<tr style="display: none;">
					<th class="inputBox_left">購入時付与ポイント</th>
					<td class="inputBox_right">
						<%#: GetNumeric(this.OrderModel.OrderPointAdd) %><%: Constants.CONST_UNIT_POINT_PT %></td>
				</tr>
				<tr style="display: none;">
					<th class="inputBox_left">ご利用ポイント</th>
					<td class="inputBox_right">
						<%#: GetNumeric(this.OrderModel.OrderPointUse) %><%: Constants.CONST_UNIT_POINT_PT %>
						<div style="text-align:right; float:right; ">
							<asp:LinkButton ID="lbDisplayInputOrderPointUse" Text="利用ポイント変更" OnClick="lbDisplayInputOrderPointUse_Click"  runat="server" Enabled="<%# this.IsModifyUsePoint %>" class="btn" />
						</div>
						<div style="text-align:right; padding-top:15px;">
							<%: this.ExplanationPointUse %>
						</div>
						<% if (this.IsOrderPointAddDisplayStatus) { %>
						<br />
						利用可能ポイントは<%: StringUtility.ToNumeric(this.LoginUserPointUsable + this.OrderModel.OrderPointUse) %><%: Constants.CONST_UNIT_POINT_PT %>です。<br />
						※1<%: Constants.CONST_UNIT_POINT_PT %> = <%: CurrencyManager.ToPrice(1m) %><br />
						<asp:TextBox ID="tbOrderPointUse" runat="server" style="width: 70px;"></asp:TextBox> <%: Constants.CONST_UNIT_POINT_PT %>
						<br />
						<small id="slErrorMessagePointUse" runat="server" class="fred"></small>
						<% } %>
					</td>
				</tr>
					<% if (this.IsOrderPointAddDisplayStatus) { %>
				<tr style="display: none;">
					<th class="inputBox_left"></th>
					<td class="inputBox_right">
						<div id="divOrderPointUpdateButtons" style="display: block"> 
							<asp:LinkButton Text="情報更新" runat="server" OnClientClick="return AlertDataChange('OrderPointUse', null);" OnClick="lbUpdateOrderPointUse_Click" class="btn" />
							<asp:LinkButton Text="キャンセル" runat="server" OnClick="lbHideOrderPointUse_Click" class="btn" />
						</div>
						<div id="divOrderPointUpdateExecFroms" style="display: none"> 
							更新中です...
						</div>
					</td>
				</tr>
					<% } %>
				<% } %>
				<tr style="display: none;">
					<th class="inputBox_left">
						総合計（税込）</th>
					<td class="inputBox_right">
						<%#: CurrencyManager.ToPrice(this.OrderModel.OrderPriceTotal) %></td>
				</tr>
				<%if (Constants.GLOBAL_OPTION_ENABLE) { %>
				<tr style="display: none;">
					<th class="inputBox_left">
						決済金額（税込）</th>
					<td class="inputBox_right">
						<%#: this.SendingAmount %></td>
				</tr>
				<% } %>
		<a name="ShippingArea" runat="server"></a>
		<%
			this.CartShippingItemIndexTmp = -1;
		%>
		<asp:Repeater ID="rOrderShipping" DataSource="<%# this.OrderShippingItems %>" Runat="server">
			<ItemTemplate>
				<% if (this.OrderModel.DigitalContentsFlg != Constants.FLG_ORDER_DIGITAL_CONTENTS_FLG_ON) {  %>
					<%-- お届け先情報 --%>
					<asp:Label ID="lOrderHistoryErrorMessage" CssClass="fred" runat="server" Visible="false"></asp:Label>
						<tr visible='<%# StringUtility.ToEmpty(this.OrderModel.GiftFlg) == Constants.FLG_ORDER_GIFT_FLG_ON %>' runat="server">
							<th class="inputBox_left">お届け先</th>
							<td class="inputBox_right">
								<%# IsCountryJp((string)GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_COUNTRY_ISO_CODE))
									? "〒" + WebSanitizer.HtmlEncode(GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_ZIP)) + "<br />"
									: "" %>
								<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_ADDR1) %>
								<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_ADDR2) %>
								<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_ADDR3) %>
								<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_ADDR4) %>
								<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_ADDR5) %>
								<%#: (IsCountryJp((string)GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_COUNTRY_ISO_CODE)) == false)
									? GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_ZIP)
									: "" %><br />
								<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_COUNTRY_NAME) %>
							</td>
						</tr>
						<% if (Constants.DISPLAY_CORPORATION_ENABLED){ %>
						<tr visible='<%# StringUtility.ToEmpty(this.OrderModel.GiftFlg) == Constants.FLG_ORDER_GIFT_FLG_ON %>' runat="server">
							<%-- 企業名・部署名 --%>
							<th class="inputBox_left"><%: ReplaceTag("@@User.company_name.name@@")%>・
								<%: ReplaceTag("@@User.company_post_name.name@@")%></th>
							<td class="inputBox_right">
								<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_COMPANY_NAME) %><br />
								<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_COMPANY_POST_NAME) %>
							</td>
						</tr>
						<%} %>
						<tr visible='<%# StringUtility.ToEmpty(this.OrderModel.GiftFlg) == Constants.FLG_ORDER_GIFT_FLG_ON %>' runat="server">
							<%-- 氏名 --%>
							<th><%: ReplaceTag("@@User.name.name@@") %></th>
							<td><%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_TEL1) %>
								<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_NAME) %>&nbsp;様<br />
								<%#: IsCountryJp((string)GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_COUNTRY_ISO_CODE))
									? "(" + GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_NAME_KANA) + " さま)"
									: "" %>
							</td>
						</tr>
						<tr visible='<%# StringUtility.ToEmpty(this.OrderModel.GiftFlg) == Constants.FLG_ORDER_GIFT_FLG_ON %>' runat="server">
							<%-- 電話番号 --%>
							<th><%: ReplaceTag("@@User.tel1.name@@") %></th>
							<td>
								<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SENDER_TEL1) %>
							</td>
						</tr>
						<tr visible='<%# StringUtility.ToEmpty(this.OrderModel.GiftFlg) == Constants.FLG_ORDER_GIFT_FLG_ON %>' runat="server">
							<th colspan="2">お届け先</th>
						</tr>
						<div id="dShippingInfo" runat="server" visible="true">
							<% if (this.OrderModel.OrderPaymentKbn != Constants.FLG_PAYMENT_PAYMENT_ID_AMAZON_PAYMENT) { %>
							<tr class="noBorderB">
								<th class="inputBox_left">
									お届け先
								</th>
								<td class="inputBox_right noBorderB">
									<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_NAME) %>　様<br><br>
									<%# IsCountryJp((string)GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_COUNTRY_ISO_CODE))
										? "〒" + WebSanitizer.HtmlEncode(GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_ZIP)) + "<br />"
										: "" %>
									<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR1) %>
									<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR2) %>
									<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR3) %><br>
									<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR4) %>
									<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR5) %>
									<%# (IsCountryJp((string)GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_COUNTRY_ISO_CODE)) == false)
										? WebSanitizer.HtmlEncode(GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_ZIP)) + "<br />"
										: "" %>
									<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_COUNTRY_NAME) %><br><br>
									<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_TEL1) %><br><br>
									<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_COMPANY_NAME) %><br />
									<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_COMPANY_POST_NAME) %>
									<div class="ohShippingChange">
										<asp:LinkButton ID="LinkButton1" Text="お届け先変更" runat="server" CommandArgument="<%# Container.ItemIndex %>" OnClick="lbDisplayUserShippingInfoForm_Click" Visible="<%# this.IsModifyShipping %>" />
									</div>
									<div>
										<%#: this.ExplanationShipping %>
									</div>
								</td>
							</tr>
							<% if (Constants.DISPLAY_CORPORATION_ENABLED){ %>
							<tr style="display: none;">
								<%-- 企業名・部署名 --%>
								<th><%: ReplaceTag("@@User.company_name.name@@")%>・
									<%: ReplaceTag("@@User.company_post_name.name@@")%></th>
								<td>
									<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_COMPANY_NAME) %><br />
									<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_COMPANY_POST_NAME) %>
								</td>
							</tr>
							<%} %>
							<tr style="display: none;">
								<%-- 氏名 --%>
								<th><%: ReplaceTag("@@User.name.name@@") %></th>
								<td>
									<br />
									<%#: IsCountryJp((string)GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_COUNTRY_ISO_CODE))
										? "(" + GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_NAME_KANA) + " さま)" 
										: ""%>
								</td>
							</tr>
							<%} %>
							<tr style="display: none;">
								<%-- 電話番号 --%>
								<th><%: ReplaceTag("@@User.tel1.name@@") %></th>
								<td>
									
								</td>
							</tr>
						</div>
						<div id="dShippngInput" runat="server" visible="false">
							<%
								this.CartShippingItemIndexTmp++;
								var shippingAddrCountryIsoCode = GetShippingAddrCountryIsoCode(this.CartShippingItemIndexTmp);
								var isShippingAddrCountryJp = IsCountryJp(shippingAddrCountryIsoCode);
								var isShippingAddrCountryUs = IsCountryUs(shippingAddrCountryIsoCode);
								var isShippingAddrZipNecessary = IsAddrZipcodeNecessary(shippingAddrCountryIsoCode);
							%>
							<dl class="inputBox" style="margin-top: 20px;">
							<dt class="inputBox_left must"><%: ReplaceTag("@@User.name.name@@") %> </dt>
								<dd class="inputBox_right">
									<div style="display: none; float:right; ">
										<asp:LinkButton Text="お届け先変更" runat="server" CommandArgument="<%# Container.ItemIndex %>" OnClick="lbDisplayUserShippingInfoForm_Click" Visible="<%# this.IsModifyShipping %>" class="btn" />
									</div>
									<dl class="nameArea">
										<dt>姓</dt>
										<dd><asp:TextBox ID="tbShippingName1" runat="server" MaxLength="10" ></asp:TextBox></dd>
										<dt>名</dt>
										<dd><asp:TextBox ID="tbShippingName2" runat="server" MaxLength="10" ></asp:TextBox></dd>
									<asp:CustomValidator ID="CustomValidator1" runat="Server"
										ControlToValidate="tbShippingName1"
										ValidationGroup="OrderShipping"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
									<asp:CustomValidator ID="CustomValidator2" runat="Server"
										ControlToValidate="tbShippingName2"
										ValidationGroup="OrderShipping"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
									</dl>
								</dd>
							<% if (isShippingAddrCountryJp) { %>
								<dt class="inputBox_left must">かな</dt>
								<dd class="inputBox_right">
									<dl class="nameArea">
										<dt>せい</dt>
										<dd><asp:TextBox ID="tbShippingNameKana1" runat="server" MaxLength="20"></asp:TextBox></dd>
										<dt>めい</dt>
										<dd><asp:TextBox ID="tbShippingNameKana2" runat="server" MaxLength="20"></asp:TextBox></dd>
									<asp:CustomValidator ID="CustomValidator3" runat="Server"
										ControlToValidate="tbShippingNameKana1"
										ValidationGroup="OrderShipping"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
									<asp:CustomValidator ID="CustomValidator4" runat="Server"
										ControlToValidate="tbShippingNameKana2"
										ValidationGroup="OrderShipping"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
									</dl>
								</dd>
							<% } %>
							<% if (Constants.GLOBAL_OPTION_ENABLE) { %>
								<dt class="inputBox_left must">
									<%: ReplaceTag("@@User.country.name@@", shippingAddrCountryIsoCode) %>
									
								</dt>
								<dd class="inputBox_right">
									<asp:DropDownList ID="ddlShippingCountry" runat="server" DataTextField="<%#: Container.ItemIndex %>" AutoPostBack="true" OnSelectedIndexChanged="ddlShippingCountry_SelectedIndexChanged"></asp:DropDownList>
								</dd>
							<% } %>
								<% if (isShippingAddrCountryJp) { %>
								<dt class="inputBox_left must">
									<%: ReplaceTag("@@User.zip.name@@") %>
									
								</dt>
								<dd class="inputBox_right">
									<dl class="zipArea">
										<dt><asp:TextBox ID="tbShippingZip1" runat="server" MaxLength="3"></asp:TextBox></dt>
										<dd>ー</dd>
										<dt><asp:TextBox ID="tbShippingZip2" runat="server" MaxLength="4" ValidationGroup="<%# Container.ItemIndex %>" OnTextChanged="lbSearchAddr_TextBox_Click"></asp:TextBox></dt>
									<asp:LinkButton ID="lbSearchShippingAddr" runat="server" CommandArgument="<%# Container.ItemIndex %>" OnClientClick="return false;" OnClick="lbSearchAddr_LinkButton_Click" class="btn btn-mini" style="display: none;">
									郵便番号から住所を入力
									</asp:LinkButton><br />
									<%--検索結果レイヤー--%>
									<uc:Layer ID="ucLayerForOwner" runat="server" />
									<asp:CustomValidator
										ID="cvShippingZip1"
										runat="Server"
										ControlToValidate="tbShippingZip1"
										ValidationGroup="OrderShipping"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
									<asp:CustomValidator
										ID="cvShippingZip2"
										runat="Server"
										ControlToValidate="tbShippingZip2"
										ValidationGroup="OrderShipping"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
									<small id="sShippingZipError" runat="server" class="fred"></small>
									</dl>
								</dd>
								<%-- 都道府県 --%>
								<dt class="inputBox_left must">
									<%: ReplaceTag("@@User.addr1.name@@") %>
									
								</dt>
								<dd class="inputBox_right">
									<asp:DropDownList ID="ddlShippingAddr1" runat="server" DataTextField="<%#: Container.ItemIndex %>" OnSelectedIndexChanged="ddlShippingAddr1_SelectedIndexChanged" AutoPostBack="true"></asp:DropDownList>
									<asp:CustomValidator
										ID="cvShippingAddr1"
										runat="Server"
										ControlToValidate="ddlShippingAddr1"
										ValidationGroup="OrderShipping"
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
									<asp:TextBox ID="tbShippingAddr2" runat="server" MaxLength="40"></asp:TextBox>
									<asp:CustomValidator
										ID="cvShippingAddr2"
										runat="Server"
										ControlToValidate="tbShippingAddr2"
										ValidationGroup="OrderShipping"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
								</dd>
								<%-- 番地 --%>
								<dt class="inputBox_left must">
									住所（番地以降）
									<% if (isShippingAddrCountryJp) { %><% } %>
								</dt>
								<dd class="inputBox_right">
									<asp:TextBox ID="tbShippingAddr3" runat="server" MaxLength="40"></asp:TextBox>
									<asp:CustomValidator
										ID="cvShippingAddr3"
										runat="Server"
										ControlToValidate="tbShippingAddr3"
										ValidationGroup="OrderShipping"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
								</dd>
								<%-- ビル・マンション名 --%>
								<dt class="inputBox_left">
									住所（建物名）
									<% if (isShippingAddrCountryJp == false) {%><% } %>
								</dt>
								<dd class="inputBox_right">
									<asp:TextBox ID="tbShippingAddr4" runat="server" MaxLength="40"></asp:TextBox>
									<asp:CustomValidator
										ID="cvShippingAddr4"
										runat="Server"
										ControlToValidate="tbShippingAddr4"
										ValidationGroup="OrderShipping"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
								</dd>
							<% if (isShippingAddrCountryJp == false) { %>
								<%-- 州 --%>
								<dt class="inputBox_left must">
									<%: ReplaceTag("@@User.addr5.name@@", shippingAddrCountryIsoCode) %>
									<% if (isShippingAddrCountryUs) { %> <% } %>
								</dt>
								<dd class="inputBox_right">
									<% if (isShippingAddrCountryUs) { %>
									<asp:DropDownList runat="server" ID="ddlShippingAddr5"></asp:DropDownList>
									<% } else { %>
									<asp:TextBox runat="server" ID="tbShippingAddr5"></asp:TextBox>
									<asp:CustomValidator
										ID="cvShippingAddr5"
										runat="Server"
										ControlToValidate="tbShippingAddr5"
										ValidationGroup="OrderShippingGlobal"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
									<% } %>
								</dd>
								<%-- 郵便番号（海外向け） --%>
								<dt class="inputBox_left must">
									<%: ReplaceTag("@@User.zip.name@@", shippingAddrCountryIsoCode) %>
									<% if (isShippingAddrZipNecessary) { %><% } %>
								</dt>
								<dd class="inputBox_right">
									<asp:TextBox runat="server" ID="tbShippingZipGlobal" MaxLength="30"></asp:TextBox>
									<asp:CustomValidator
										ID="cvShippingZipGlobal"
										runat="Server"
										ControlToValidate="tbShippingZipGlobal"
										ValidationGroup="OrderHistoryDetailGlobal"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
								</dd>
							<% } %>
							<% if (Constants.DISPLAY_CORPORATION_ENABLED) { %>
								<dt class="inputBox_left"><%: ReplaceTag("@@User.company_name.name@@") %> </dt>
								<dd class="inputBox_right">
									<asp:TextBox ID="tbShippingCompanyName" runat="server" MaxLength="40"></asp:TextBox>
									<asp:CustomValidator
										ID="cvShippingCompanyName"
										runat="Server"
										ControlToValidate="tbShippingCompanyName"
										ValidationGroup="OrderShipping"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
								</dd>
								<dt class="inputBox_left"><%: ReplaceTag("@@User.company_post_name.name@@") %> </dt>
								<dd class="inputBox_right">
									<asp:TextBox ID="tbShippingCompanyPostName" runat="server" MaxLength="40"></asp:TextBox>
									<asp:CustomValidator
										ID="cvShippingCompanyPostName"
										runat="Server"
										ControlToValidate="tbShippingCompanyPostName"
										ValidationGroup="OrderShipping"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
								</dd>
							<% } %>
								<% if (isShippingAddrCountryJp) { %>
								<dt class="inputBox_left must">
									<%: ReplaceTag("@@User.tel1.name@@") %>
									</dt>
								<dd class="inputBox_right">
									<dl class="zipArea">
										<dt><asp:TextBox ID="tbShippingTel1_1" runat="server" MaxLength="6"></asp:TextBox></dt>
										<dd>ー</dd>
										<dt><asp:TextBox ID="tbShippingTel1_2" runat="server" MaxLength="4"></asp:TextBox></dt>
										<dd>ー</dd>
										<dt><asp:TextBox ID="tbShippingTel1_3" runat="server" MaxLength="4"></asp:TextBox></dt>
									<asp:CustomValidator
										ID="cvShippingTel1_1"
										runat="Server"
										ControlToValidate="tbShippingTel1_1"
										ValidationGroup="OrderShipping"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
									<asp:CustomValidator
										ID="cvShippingTel1_2"
										runat="Server"
										ControlToValidate="tbShippingTel1_2"
										ValidationGroup="OrderShipping"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
									<asp:CustomValidator
										ID="cvShippingTel1_3"
										runat="Server"
										ControlToValidate="tbShippingTel1_3"
										ValidationGroup="OrderShipping"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
									</dl>
								</dd>
								<% } else { %>
								<dt class="inputBox_left must">
									<%: ReplaceTag("@@User.tel1.name@@", shippingAddrCountryIsoCode) %>
									</dt>
								<dd class="inputBox_right">
									<asp:TextBox runat="server" ID="tbShippingTel1Global" MaxLength="30"></asp:TextBox>
									<asp:CustomValidator
										ID="cvShippingTel1Global"
										runat="Server"
										ControlToValidate="tbShippingTel1Global"
										ValidationGroup="OrderShippingGlobal"
										ValidateEmptyText="true"
										SetFocusOnError="true"
										ClientValidationFunction="ClientValidate"
										CssClass="error_inline" />
								</dd>
								<% } %>
								<div id="divOrderShippingUpdateButtons" class="allBtnBox">
									<% if (this.IsFixedPurchase && (this.FixedPurchaseModel.IsCancelFixedPurchaseStatus == false)) { %>
										<asp:CheckBox ID="cbIsUpdateFixedPurchaseByOrderShippingInfo" Text="今後の定期注文にも反映させる" Checked="false" runat="server"/><br />
									<% } %>
									<asp:LinkButton Text="キャンセル" runat="server" CommandArgument="<%# Container.ItemIndex %>"  OnClick="lbHideUserShippingInfoForm_Click" class="prevBtn ohPrev" ></asp:LinkButton>
									<asp:LinkButton Text="情報更新" runat="server" ValidationGroup="OrderShipping" CommandArgument="<%# Container.ItemIndex %>" OnClientClick="return AlertDataChange('Shipping', this);" OnClick="lbUpdateUserShippingInfo_Click" class="nextBtn ohNext" ></asp:LinkButton>
									<input type="hidden" id="parentShippingRepeater" name="parentShippingRepeater" value="<%#: Container.UniqueID %>" />
								</div>
								<div id="divOrderShippingUpdateExecFroms" style="display: none"> 
									更新中です...
								</div>
								<small id="sErrorMessageShipping" runat="server" class="error" style="padding: 2px;"></small>
							</dl>
						</div>
						<tr style="display: none;">
							<th>配送方法</th>
							<td>
								<%#: ValueText.GetValueText(Constants.TABLE_ORDERSHIPPING, Constants.FIELD_ORDERSHIPPING_SHIPPING_METHOD, GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_METHOD)) %>
							</td>
						</tr>
						<div visible='<%# (string)GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_METHOD) != Constants.FLG_SHOPSHIPPINGSHIPPINGCOMPANY_SHIPPING_KBN_MAIL %>' runat="server">
							<tr style="display: none;" runat="server" visible='<%# (string)GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_SHOPSHIPPING_SHIPPING_DATE_SET_FLG) == Constants.FLG_SHOPSHIPPING_SHIPPING_DATE_SET_FLG_VALID %>'>
								<th>配送希望日</th>
								<td>
									<asp:DropDownList ID="ddlShippingDateList" Visible="false" runat="server" DataSource="<%# GetListShippingDate() %>" DataTextField="text" DataValueField="value"></asp:DropDownList>
									<div id="dvShippingDateText"  runat="server" ><%#: DateTimeUtility.ToStringFromRegion(GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_DATE), DateTimeUtility.FormatType.LongDateWeekOfDay2Letter, ReplaceTag("@@DispText.shipping_date_list.none@@")) %></div>
									<div style="text-align:right; float:right;">
										<asp:LinkButton CommandArgument="<%# Container.ItemIndex %>" Text="配送希望日変更" runat="server" OnClick="lbDisplayInputShippingDate_Click" Enabled="<%# this.IsModifyShippingDates[Container.ItemIndex] %>" class="btn" />
									</div>
									<div style="text-align:right; padding-top:30px;"><%#: this.ExplanationShippingDates[Container.ItemIndex] %></div>
									<asp:Label ID="lShippingDateErrorMessage" CssClass="fred" runat="server" Visible="false"></asp:Label>
								</td>
							</tr>
							<tr style="display: none;" id="trShippingDateInput" visible='false'  runat="server">
								<th></th>
								<td>
									<div id="divShippingDateUpdateButtons" style="display: block"> 
										<asp:LinkButton Text="情報更新" runat="server" ValidationGroup="OrderShipping" CommandArgument="<%# Container.ItemIndex %>" OnClientClick="return AlertUpdateShippingDate(this);" OnClick="lbUpdateShippingDate_Click" class="btn" ></asp:LinkButton>
										<asp:LinkButton Text="キャンセル" runat="server" CommandArgument="<%# Container.ItemIndex %>" OnClick="lbHideShippingDate_Click" class="btn" />
										<input type="hidden" id="parentShippingDateRepeater" name="parentShippingDateRepeater" value="<%#: Container.UniqueID %>" />
									</div>
									<div id="divShippingDateUpdateExecFroms" style="display: none"> 
										更新中です...
									</div>
									<small id="sErrorMessageShippingDate" runat="server" class="error" style="padding: 2px;"></small>
								</td>
							</tr>
							<tr style="display: none;" runat="server" visible="<%# this.DisplayScheduledShippingDate %>">
								<th>出荷予定日</th>
								<td>
									<%#: DateTimeUtility.ToStringFromRegion(GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SCHEDULED_SHIPPING_DATE), DateTimeUtility.FormatType.LongDateWeekOfDay2Letter, ReplaceTag("@@DispText.shipping_date_list.none@@")) %>
								</td>
							</tr>
							<tr style="display: none;" runat="server" visible='<%# (string)GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_DELIVERYCOMPANY_SHIPPING_TIME_SET_FLG) == Constants.FLG_DELIVERYCOMPANY_SHIPPING_TIME_SET_FLG_VALID %>'>
								<th>配送希望時間帯</th>
								<td>
									<asp:DropDownList ID="ddlShippingTimeList" Visible="false" runat="server" DataSource='<%# GetShippingTimeList((string)GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_DELIVERY_COMPANY_ID)) %>' DataTextField="text" DataValueField="value" ></asp:DropDownList>
									<div id="dvShippingTimeText"  runat="server"><%#: (w2.Common.Util.Validator.IsNullEmpty(GetKeyValue(((Hashtable)Container.DataItem)["row"], "shipping_time_message")) == false)　　? GetKeyValue(((Hashtable)Container.DataItem)["row"], "shipping_time_message") : ReplaceTag("@@DispText.shipping_time_list.none@@") %></div>
									<div style="text-align:right; float:right;">
										<asp:LinkButton CommandArgument="<%# Container.ItemIndex %>" Text="配送時間帯変更" runat="server" OnClick="lbDisplayInputShippingTime_Click" Enabled="<%# this.IsModifyShippingTimes[Container.ItemIndex] %>" class="btn" />
									</div>
									<div style="text-align:right; padding-top:30px;"><%#: this.ExplanationShippingTimes[Container.ItemIndex] %></div>
								</td>
							</tr>
							<tr style="display: none;" id="trShippingTimeInput" visible='false'  runat="server">
								<th></th>
								<td>
									<div id="divShippingTimeUpdateButtons" style="display: block"> 
										<asp:LinkButton Text="情報更新" runat="server" ValidationGroup="OrderShipping" CommandArgument="<%# Container.ItemIndex %>" OnClientClick="return AlertUpdateShippingTime(this);" OnClick="lbUpdateShippingTime_Click" class="btn" ></asp:LinkButton>
										<asp:LinkButton Text="キャンセル" runat="server" CommandArgument="<%# Container.ItemIndex %>" OnClick="lbHideShippingTime_Click" class="btn" />
										<input type="hidden" id="parentShippingTimeRepeater" name="parentShippingTimeRepeater" value="<%#: Container.UniqueID %>" />
									</div>
									<div id="divShippingTimeUpdateExecFroms" style="display: none"> 
										更新中です...
									</div>
									<small id="sErrorMessageShippingTime" runat="server" class="error" style="padding: 2px;"></small>
								</td>
							</tr>
						</div>
						<tr visible='<%# (string)GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_CHECK_NO) != "" %>' runat="server">
							<th>配送伝票番号</th>
							<td>
								<%#: GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_SHIPPING_CHECK_NO) %>
							</td>
						</tr>
						<tbody visible='<%# Constants.GIFTORDER_OPTION_ENABLED %>' runat="server">
						<tbody visible='<%# StringUtility.ToEmpty(this.OrderModel.GiftFlg) == Constants.FLG_ORDER_GIFT_FLG_ON %>' runat="server">
						<tr visible='<%# StringUtility.ToEmpty(this.ShopShippingModel.WrappingPaperFlg) == Constants.FLG_SHOPSHIPPING_WRAPPING_PAPER_FLG_VALID %>' runat="server">
							<th>のし種類</th>
							<td>
								<%#: (string.IsNullOrEmpty((string)GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_WRAPPING_PAPER_TYPE)) == false) ? WebSanitizer.HtmlEncodeChangeToBr(GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_WRAPPING_PAPER_TYPE)) : "なし" %>
							</td>
						</tr>
						<tr visible='<%# StringUtility.ToEmpty(this.ShopShippingModel.WrappingPaperFlg) == Constants.FLG_SHOPSHIPPING_WRAPPING_PAPER_FLG_VALID %>' runat="server">
							<th>のし差出人</th>
							<td>
								<%#: (string.IsNullOrEmpty((string)GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_WRAPPING_PAPER_NAME)) == false) ? WebSanitizer.HtmlEncodeChangeToBr(GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_WRAPPING_PAPER_NAME)) : "なし" %>
							</td>
						</tr>
						<tr visible='<%# StringUtility.ToEmpty(this.ShopShippingModel.WrappingPaperFlg) == Constants.FLG_SHOPSHIPPING_WRAPPING_BAG_FLG_VALID %>' runat="server">
							<th>包装種類</th>
							<td>
								<%#: (string.IsNullOrEmpty((string)GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_WRAPPING_BAG_TYPE)) == false) ? WebSanitizer.HtmlEncodeChangeToBr(GetKeyValue(((Hashtable)Container.DataItem)["row"], Constants.FIELD_ORDERSHIPPING_WRAPPING_BAG_TYPE)) : "なし" %>
							</td>
						</tr>
						</tbody>
						</tbody>
					</table>
				</div>
				<%} %>
				
				<%-- 購入商品一覧 --%>
				<div class="registWrap_box--input pdgT0">
					<table class="inputBox tableInputBox inputBox_confirm orderDetailArea">
						<tr class="noBorderB">
							<th class="inputBox_left">商品情報</th>
							<td class="inputBox_right">
								<asp:Repeater ID="rOrderShippingItem" DataSource='<%# ((Hashtable)Container.DataItem)["childs"] %>' Runat="server">
									<ItemTemplate>

										<div visible='<%# (((string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_SET_ID)).Length == 0) %>' runat="server" class="itemTtl">
											<p class="itemTtl_name">
												<%-- 一致する商品IDが現在も存在する場合、商品詳細ページへのリンクを表示する --%>
												<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailVariationUrl(Container.DataItem)) %>' target="_blank" runat="server" Visible="<%# IsProductValid((DataRowView)Container.DataItem) %>">
													<%#: Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME) %>
												</a>
												<%# (IsProductValid((DataRowView)Container.DataItem) == false) ? WebSanitizer.HtmlEncode(Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME)) : ""%>
											</p>
											<p class="itemTtl_pdc" visible='<%# (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_OPTION_TEXTS) != "" %>' runat="server">
												価格　：<%#: CurrencyManager.ToPrice(Eval(Constants.FIELD_ORDERITEM_PRODUCT_PRICE)) %>（税込）<br>
												数量　：<%#: StringUtility.ToNumeric(Eval(Constants.FIELD_ORDERITEM_ITEM_QUANTITY)) %><br>
												<%#: Eval(Constants.FIELD_ORDERITEM_PRODUCT_OPTION_TEXTS).ToString().Replace("　", "\r\n") %>
											</p>
										</div>

									</ItemTemplate>
								</asp:Repeater>

								<div class="orderDetailSumBox">
									<dl class="orderSum" id="orderSum">
										<dt>商品合計<span class="taxSmall">（税込）</span></dt>
										<dd><%#: CurrencyManager.ToPrice(this.OrderModel.OrderPriceSubtotal) %></dd>
										<asp:Repeater ID="rOrderSetPromotion" DataSource="<%# this.OrderSetPromotions %>" runat="server">
										<ItemTemplate>
											<span visible="<%# (string)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PRODUCT_DISCOUNT_FLG] == Constants.FLG_SETPROMOTION_PRODUCT_DISCOUNT_FLG_ON %>" runat="server">
											<dt>
											<%#: ((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_SETPROMOTION_DISP_NAME] %>
											</dt>
											<dd style="color: #ff0000;">
												<%#: (((decimal)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PRODUCT_DISCOUNT_AMOUNT] > 0) ? "-" : "") + CurrencyManager.ToPrice((decimal)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PRODUCT_DISCOUNT_AMOUNT]) %>
											</dd>
											</span>
											<asp:HiddenField ID="hfOrderSetPromotionPaymentChargeFreeFlg" Value="<%# (string)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PAYMENT_CHARGE_FREE_FLG] %>" runat="server" />
										</ItemTemplate>
										</asp:Repeater>

										<dt>送料</dt>
										<dd runat="server" style='<%# (this.OrderModel.ShippingPriceSeparateEstimatesFlg == Constants.FLG_SHOPSHIPPING_SHIPPING_PRICE_SEPARATE_ESTIMATES_FLG_VALID) ? "display:none;" : "" %>'>
											<%#: CurrencyManager.ToPrice(this.OrderModel.OrderPriceShipping) %></dd>
										<dd runat="server" style='<%# (this.OrderModel.ShippingPriceSeparateEstimatesFlg == Constants.FLG_SHOPSHIPPING_SHIPPING_PRICE_SEPARATE_ESTIMATES_FLG_INVALID) ? "display:none;" : "" %>'>
											<%#: this.ShopShippingModel.ShippingPriceSeparateEstimatesMessage %></dd>
										<asp:Repeater DataSource="<%# this.OrderSetPromotions %>" runat="server">
										<ItemTemplate>
											<span visible="<%# (string)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_SHIPPING_CHARGE_FREE_FLG] == Constants.FLG_SETPROMOTION_SHIPPING_CHARGE_FREE_FLG_ON %>" runat="server">
											<dt>
											<%#: ((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_SETPROMOTION_DISP_NAME] %>(送料割引)
											</dt>
											<dd style="color: #ff0000;">
												<%#: (((decimal)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_SHIPPING_CHARGE_DISCOUNT_AMOUNT] > 0) ? "-" : "") + CurrencyManager.ToPrice((decimal)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_SHIPPING_CHARGE_DISCOUNT_AMOUNT]) %>
											</dd>
											</span>
										</ItemTemplate>
										</asp:Repeater>

										<%-- 会員ランク情報リスト(有効な場合) --%>
										<%if (Constants.MEMBER_RANK_OPTION_ENABLED) { %>
											<dt style="display: none;" class="discountTxt">会員ランク割引額</dt>
											<dd style="display: none;" class="discountTxt"><span><%#: ((this.OrderModel.MemberRankDiscountPrice > 0) ? "-" : "") + CurrencyManager.ToPrice(this.OrderModel.MemberRankDiscountPrice) %></span></dd>
										<%} %>

										<%-- 定期会員割引額(有効な場合) --%>
										<%if (Constants.MEMBER_RANK_OPTION_ENABLED && Constants.FIXEDPURCHASE_OPTION_ENABLED) { %>
											<dt style="display: none;" class="couponUse">定期会員割引額</dt>
											<dd style="display: none;" class="couponUse"><span><%#: ((this.OrderModel.FixedPurchaseMemberDiscountAmount > 0) ? "-" : "") + CurrencyManager.ToPrice(this.OrderModel.FixedPurchaseMemberDiscountAmount) %></span></dd>
										<%} %>

										<%-- クーポン情報リスト(有効な場合) --%>
										<%if (Constants.W2MP_COUPON_OPTION_ENABLED) { %>
											<dt class="discountTxt">クーポン利用</dt>
											<dd class="discountTxt"><span><%#: ((this.OrderModel.OrderCouponUse > 0) ? "-" : "") + CurrencyManager.ToPrice(this.OrderModel.OrderCouponUse) %></span></dd>
										<%} %>
										<%-- ポイント情報リスト(有効な場合) --%>
										<%if (Constants.W2MP_POINT_OPTION_ENABLED) { %>
											<dt style="display: none;" class="discountTxt">ポイント利用</dt>
											<dd style="display: none;" class="discountTxt"><span><%#: ((this.OrderModel.OrderPointUseYen > 0) ? "-" : "") + CurrencyManager.ToPrice(this.OrderModel.OrderPointUseYen) %></span></dd>
										<%} %>
										<%-- 定期購入割引(有効な場合) --%>
										<%if (this.IsFixedPurchase) { %>
											<dt style="margin-top: 8px; width: 150px; text-align: right; line-height: 1.4em; display: none;" runat="server">定期購入割引額</dt>
											<dd style="color: #ff0000; display: none;" runat="server">
												<span><%#: ((this.OrderModel.FixedPurchaseDiscountPrice > 0) ? "-" : "") + CurrencyManager.ToPrice(this.OrderModel.FixedPurchaseDiscountPrice) %></span>
											</dd>
										<%} %>
										<div visible='<%# (this.OrderModel.OrderPriceRegulation != 0) %>' runat="server">
											<dt style="margin-top: 8px; width: 150px; text-align: right; line-height: 1.4em; display: none;">調整金額</dt>
											<dd style="color: #ff0000; display: none;" runat="server"><span><%#: ((this.OrderModel.OrderPriceRegulation < 0) ? "-" : "") %><%#: CurrencyManager.ToPrice(Math.Abs(this.OrderModel.OrderPriceRegulation)) %></span></dd>
										</div>
										<dt style="display: none;">決済手数料</dt>
										<dd style="display: none;"><%#: CurrencyManager.ToPrice(this.OrderModel.OrderPriceExchange) %></dd>
										<asp:Repeater DataSource="<%# this.OrderSetPromotions %>" runat="server">
										<ItemTemplate>
											<span visible="<%# (string)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PAYMENT_CHARGE_FREE_FLG] == Constants.FLG_SETPROMOTION_PAYMENT_CHARGE_FREE_FLG_ON %>" runat="server">
											<dt>
											<%#: ((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_SETPROMOTION_DISP_NAME] %>(決済手数料割引)
											</dt>
											<dd style="color: #ff0000;">
												<%#: (((decimal)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PAYMENT_CHARGE_DISCOUNT_AMOUNT] > 0) ? "-" : "") + CurrencyManager.ToPrice((decimal)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PAYMENT_CHARGE_DISCOUNT_AMOUNT]) %>
											</dd>
											</span>
										</ItemTemplate>
										</asp:Repeater>
										<%if (this.ProductIncludedTaxFlg == false) { %>
											<dt>消費税</dt>
											<dd><%#: CurrencyManager.ToPrice(this.OrderModel.OrderPriceTax) %></dd>
										<%} %>
									</dl>
									<dl class="orderSum resultOrder">
										<dt>合計<span class="taxSmall">（税込）</span></dt>
										<dd><%#: CurrencyManager.ToPrice(this.OrderModel.OrderPriceTotal) %></dd>
									</dl>
								</div>
							</td>
						</tr>
					</table>
				</div>
			</ItemTemplate>
		</asp:Repeater>

		</div>
		
		<div class="submitBtnBox">
			<a href="javascript:history.back()" class="prevBtn">戻る</a>
		</div>
</div>
<asp:HiddenField ID="hfTotalPrice" runat="server" />
<asp:HiddenField ID="hfPaymentNameSelected" runat="server" />
<asp:HiddenField ID="hfPaymentTotalPriceNew" runat="server" />
<asp:HiddenField ID="hfShippingTotalPriceNew" runat="server" />
<asp:HiddenField ID="hfConfirmSenderId" runat="server"/>
<asp:HiddenField ID="hfIsCheckFixedPurchaseFirstTime" runat="server"/>

</ContentTemplate>
</asp:UpdatePanel>
<%-- UpdatePanel終了 --%>

<script type="text/javascript">
	<%-- UpdataPanelの更新時のみ処理を行う --%>
	function bodyPageLoad() {
		if (Sys.WebForms == null) return;
		var isAsyncPostback = Sys.WebForms.PageRequestManager.getInstance().get_isInAsyncPostBack();
		if (isAsyncPostback) {
			bindEvent();

			if (document.getElementById("<%= hfConfirmSenderId.ClientID %>").value != "") {
				document.getElementById('divOrderShippingUpdateButtons').style.display = "none";
				document.getElementById('divOrderShippingUpdateExecFroms').style.display = "block";
				if (confirm('<%: WebMessages.GetMessages(WebMessages.ERRMSG_FRONT_NOT_FIXED_PRODUCT_ORDER_LIMIT) %>' + "\nよろしいですか？")) {
					__doPostBack(document.getElementById("<%= hfConfirmSenderId.ClientID %>").value, "");
				} else {
					document.getElementById("<%= hfConfirmSenderId.ClientID %>").value = "";
					document.getElementById("<%= hfIsCheckFixedPurchaseFirstTime.ClientID %>").value = "";
					document.getElementById('divOrderShippingUpdateButtons').style.display = "block";
					document.getElementById('divOrderShippingUpdateExecFroms').style.display = "none";
				}
			}
		}
	}

	<%-- イベントをバインドする --%>
	function bindEvent() {
		bindExecAutoKana();
		bindZipCodeSearch();
	}

	<%-- 氏名（姓・名）の自動振り仮名変換のイベントをバインドする --%>
	function bindExecAutoKana() {
		<% foreach (RepeaterItem ri in rOrderShipping.Items)  { %>
		execAutoKanaWithKanaType(
			$('#<%= ((TextBox)ri.FindControl("tbShippingName1")).ClientID %>'),
			$('#<%= ((TextBox)ri.FindControl("tbShippingNameKana1")).ClientID %>'),
			$('#<%= ((TextBox)ri.FindControl("tbShippingName2")).ClientID %>'),
			$('#<%= ((TextBox)ri.FindControl("tbShippingNameKana2")).ClientID %>'));
		<%} %>
	}

	function ValidateAndConfirm(validationGroup, message) {
		if (typeof (Page_ClientValidate) != 'function' || window.Page_ClientValidate(validationGroup)) {
			return confirm(message);
		}
		else {
			return false;
		}
	}

	function Validate(validationGroup) {
		if (typeof (Page_ClientValidate) != 'function' || window.Page_ClientValidate(validationGroup)) {
			return true;
		}
		else {
			return false;
		}
	}

	//お支払い方法変更時の確認フォーム
	function AlertPaymentChange(priceTotalOld, priceTotalNew, showMessage) {
		var messagePayment;
		
		messagePayment = 'お支払方法を「' + document.getElementById("<%= hfPaymentNameSelected.ClientID %>").value + '」に変更します。';
		if (showMessage) {
			messagePayment += '\nまた、お支払い方法変更に伴い、請求金額が変更されます。\n\n'
				+ '    変更前の請求金額：' + priceTotalOld + '\n'
				+ '    変更後の請求金額：' + priceTotalNew + '\n\n';
		}

		messagePayment += 'よろしいですか？\n\n';

		<% if (this.IsFixedPurchase && (this.FixedPurchaseModel.IsCancelFixedPurchaseStatus == false)) { %>
		if (document.getElementById("<%: cbIsUpdateFixedPurchaseByOrderPayment.ClientID %>").checked)
		{
			messagePayment += "この設定は今後の定期注文につきましても反映されます"
		}
		<% } %>
		var exec = ValidateAndConfirm("OrderPayment", messagePayment);
		if (exec) {
			document.getElementById('divOrderPaymentUpdateButtons').style.display = "none";
			document.getElementById('divOrderPaymentUpdateExecFroms').style.display = "block";
			document.getElementById('<%= sErrorMessagePayment.ClientID %>').style.display = "none";

			onErrorScript = "document.getElementById('divOrderPaymentUpdateButtons').style.display = 'block';"
				+ "document.getElementById('divOrderPaymentUpdateExecFroms').style.display = 'none';"
				+ "document.getElementById('<%= sErrorMessagePayment.ClientID %>').style.display = 'block';";
		}
		return exec;
	}

	//利用ポイント変更時の確認フォーム
	function AlertUpdateOrderPointUse(priceTotalOld, priceTotalNew, showMessage) {
		var messagePoint;

		messagePoint = 'ご利用ポイントを下記に変更します。\n\n    ご利用ポイント： ' + Separate(parseFloat(document.getElementById("<%= tbOrderPointUse.ClientID %>").value)) + '<%: Constants.CONST_UNIT_POINT_PT %>\n\n';
		if (showMessage) {
			messagePoint += 'また、ご利用ポイントの変更に伴い、請求金額が変更されます。\n\n'
				+ '    変更前の請求金額：' + priceTotalOld + '\n'
				+ '    変更後の請求金額：' + priceTotalNew + '\n\n';
		}
		messagePoint += 'よろしいですか？';

		var exec = ValidateAndConfirm("", messagePoint);
		if (exec) {
			document.getElementById('divOrderPointUpdateButtons').style.display = "none";
			document.getElementById('divOrderPointUpdateExecFroms').style.display = "block";
			document.getElementById('<%= slErrorMessagePointUse.ClientID %>').style.display = "none";
		}
		return exec;
	}

	//数値にカンマを付与
	function Separate(num) {
		return String(num).replace(/(\d)(?=(\d\d\d)+(?!\d))/g, '$1,');
	}

	//お届け先変更時の確認フォーム
	function AlertUpdateShippingInfo(priceTotalOld, priceTotalNew, showMessage, e) {
		var parentRepeaterId = $(e.parentNode).children('#parentShippingRepeater').val().replace(/\$/g, '_');
		var tbShippingName1 = $("#" + parentRepeaterId + "_" + "tbShippingName1");
		var tbShippingName2 = $("#" + parentRepeaterId + "_" + "tbShippingName2");
		var tbShippingZip1 = $("#" + parentRepeaterId + "_" + "tbShippingZip1");
		var tbShippingZip2 = $("#" + parentRepeaterId + "_" + "tbShippingZip2");
		var tbShippingZipGlobal = $("#" + parentRepeaterId + "_" + "tbShippingZipGlobal");
		var ddlShippingCountry = $("#" + parentRepeaterId + "_" + "ddlShippingCountry");
		var ddlShippingAddr1 = $("#" + parentRepeaterId + "_" + "ddlShippingAddr1");
		var tbShippingAddr2 = $("#" + parentRepeaterId + "_" + "tbShippingAddr2");
		var tbShippingAddr3 = $("#" + parentRepeaterId + "_" + "tbShippingAddr3");
		var tbShippingAddr4 = $("#" + parentRepeaterId + "_" + "tbShippingAddr4");
		var tbShippingAddr5 = $("#" + parentRepeaterId + "_" + "tbShippingAddr5");
		var ddlShippingAddr5 = $("#" + parentRepeaterId + "_" + "ddlShippingAddr5");
		var tbShippingTel1_1 = $("#" + parentRepeaterId + "_" + "tbShippingTel1_1");
		var tbShippingTel1_2 = $("#" + parentRepeaterId + "_" + "tbShippingTel1_2");
		var tbShippingTel1_3 = $("#" + parentRepeaterId + "_" + "tbShippingTel1_3");
		var tbShippingTel1Global = $("#" + parentRepeaterId + "_" + "tbShippingTel1Global");

		var shippingCountryName = "";
		var shippingAddr1 = "";
		var shippingAddr5 = "";
		var shippingZip = "";
		var shippingTel = "";
		var validateName = "OrderShipping";

		<% if (Constants.GLOBAL_OPTION_ENABLE) { %>
		shippingCountryName = ddlShippingCountry.children("option:selected").text();

			if (ddlShippingCountry.val() != "<%= Constants.COUNTRY_ISO_CODE_JP %>") {
				shippingAddr5 = (ddlShippingCountry.val() == "<%= Constants.COUNTRY_ISO_CODE_US %>")
					? ddlShippingAddr5.val()
					: tbShippingAddr5.val();

				shippingZip = tbShippingZipGlobal.val();
				shippingTel = tbShippingTel1Global.val();
				shippingAddr1 = "";

				validateName = "OrderShippingGlobal";

			} else {
				shippingZip = tbShippingZip1.val() + '-' + tbShippingZip2.val();
				shippingTel = tbShippingTel1_1.val() + '-' + tbShippingTel1_2.val() + '-' + tbShippingTel1_3.val();
				shippingAddr1 = ddlShippingAddr1.val();
			}

		<% } else { %>
			shippingZip = tbShippingZip1.val() + '-' + tbShippingZip2.val();
			shippingTel = tbShippingTel1_1.val() + '-' + tbShippingTel1_2.val() + '-' + tbShippingTel1_3.val();
			shippingAddr1 = ddlShippingAddr1.val();
		<% } %>

		var messageShipping;
		messageShipping = 'お届け先を下記に変更します。\n\n'
			+ '    <%: ReplaceTag("@@User.name.name@@") %>： ' + tbShippingName1.val() + ' ' + tbShippingName2.val() + '\n'
			+ '    <%: ReplaceTag("@@User.zip.name@@") %>： ' + shippingZip + '\n'
			+ '    <%: ReplaceTag("@@User.addr.name@@") %>： ' + shippingAddr1 + ' ' + tbShippingAddr2.val() + ' ' + tbShippingAddr3.val() + '\n'
			+ '           ' + tbShippingAddr4.val() + ' ' + shippingAddr5 + ' ' + shippingCountryName + '\n';

		<% if (Constants.DISPLAY_CORPORATION_ENABLED) { %>
		var tbShippingCompanyName = $("#" + parentRepeaterId + "_" + "tbShippingCompanyName");
		var tbShippingCompanyPostName = $("#" + parentRepeaterId + "_" + "tbShippingCompanyPostName");
		messageShipping += '    <%: ReplaceTag("@@User.company_name.name@@") %>： ' + tbShippingCompanyName.val() + '\n'
			+ '    <%: ReplaceTag("@@User.company_post_name.name@@") %>： ' + tbShippingCompanyPostName.val() + '\n';
		<% } %>

		messageShipping += '    <%: ReplaceTag("@@User.tel1.name@@") %>： ' + shippingTel + '\n\n';

		if (showMessage) {
			messageShipping += 'また、お届け先変更に伴い、請求金額が変更されます。\n\n'
				+ ' 変更前の請求金額：' + priceTotalOld + '\n'
				+ ' 変更後の請求金額：' + priceTotalNew + '\n\n';
		}

		messageShipping += 'よろしいですか？\n\n';

		<% if (this.IsFixedPurchase && (this.FixedPurchaseModel.IsCancelFixedPurchaseStatus == false)) { %>
		if (document.getElementById("<%#: rOrderShipping.Items[0].FindControl("cbIsUpdateFixedPurchaseByOrderShippingInfo").ClientID %>").checked) {
			messageShipping += "この設定は今後の定期注文につきましても反映されます"
		}
		<% } %>

		var exec = true;
		var execUs = true;
		if ((ddlShippingCountry.val() != "<%= Constants.COUNTRY_ISO_CODE_US %>")
			&& (ddlShippingCountry.val() != "<%= Constants.COUNTRY_ISO_CODE_TW %>"))
		{
			exec = ValidateAndConfirm(validateName, messageShipping);
		} else {
			exec = Validate(validateName);
			execUs = ValidateAndConfirm("OrderHistoryDetailGlobal", messageShipping);
		}

		if (exec && execUs) {
			document.getElementById('divOrderShippingUpdateButtons').style.display = "none";
			document.getElementById('divOrderShippingUpdateExecFroms').style.display = "block";
		}
		return (exec && execUs);
	}
	
	//配送希望日・時間帯変更時の確認フォーム
	function AlertUpdateShippingDate(e) {
		var parentRepeaterId = $(e.parentNode).children('#parentShippingDateRepeater').val().replace(/\$/g, '_');
		var ddlShippingDateList = $("#" + parentRepeaterId + "_" + "ddlShippingDateList option:selected");
		var messageShippingDate;
		messageShippingDate = '配送希望日を下記に変更します。\n\n'
			+ '    配送希望日： ' + ddlShippingDateList.text() + '\n\n';

		messageShippingDate += 'よろしいですか？';
		var exec = ValidateAndConfirm("OrderShipping", messageShippingDate);
		if (exec) {
			document.getElementById('divShippingDateUpdateButtons').style.display = "none";
			document.getElementById('divShippingDateUpdateExecFroms').style.display = "block";
		}
		return exec;
	}

	//配送希望日・時間帯変更時の確認フォーム
	function AlertUpdateShippingTime(e) {
		var parentRepeaterId = $(e.parentNode).children('#parentShippingTimeRepeater').val().replace(/\$/g, '_');
		var ddlShippingTimeList = $("#" + parentRepeaterId + "_" + "ddlShippingTimeList option:selected");
		var messageShippingTime;
		messageShippingTime = '配送希望時間帯を下記に変更します。\n\n'
			+ '    配送希望時間帯： ' + ddlShippingTimeList.text() + '\n\n';

		messageShippingTime += 'よろしいですか？';
		var exec = ValidateAndConfirm("OrderShipping", messageShippingTime);
		if (exec) {
			document.getElementById('divShippingTimeUpdateButtons').style.display = "none";
			document.getElementById('divShippingTimeUpdateExecFroms').style.display = "block";
		}
		return exec;
	}

	var bindTargetForAddr1 = "";
	var bindTargetForAddr2 = "";
	var bindTargetForAddr3 = "";
	var multiAddrsearchTriggerType = "";
	<%-- 郵便番号検索のイベントをバインドする --%>
	function bindZipCodeSearch() {
		<% foreach (RepeaterItem ri in rOrderShipping.Items) { %>
			$('#<%= ((TextBox)ri.FindControl("tbShippingZip2")).ClientID %>').keyup(function (e) {
				if (isValidKeyCodeForKeyEvent(e.keyCode) == false) return;
				checkZipCodeLengthAndExecPostback(
					$('#<%= ((TextBox)ri.FindControl("tbShippingZip1")).ClientID %>'),
					$('#<%= ((TextBox)ri.FindControl("tbShippingZip2")).ClientID %>'),
					"<%= ((TextBox)ri.FindControl("tbShippingZip2")).UniqueID %>",
					'<%= Constants.PATH_ROOT + Constants.PAGE_FRONT_ZIPCODE_SEARCHER_GET_ADDR_JSON %>',
					"<%= '#' + (ri.FindControl("sShippingZipError")).ClientID %>"
				);
				bindTargetForAddr1 = "<%= ((DropDownList)ri.FindControl("ddlShippingAddr1")).ClientID %>";
				bindTargetForAddr2 = "<%= ((TextBox)ri.FindControl("tbShippingAddr2")).ClientID %>";
				bindTargetForAddr3 = "<%= ((TextBox)ri.FindControl("tbShippingAddr3")).ClientID %>";
				$("#search-result-layer").css("top", $(this).position().top + 20);
				$("#search-result-layer").css("left", $(this).position().left - 72);
				multiAddrsearchTriggerType = "shipping";
			});
			$('#<%= ((LinkButton)ri.FindControl("lbSearchShippingAddr")).ClientID %>').on('click', function () {
				checkZipCodeLengthAndExecPostback(
					$('#<%= ((TextBox)ri.FindControl("tbShippingZip1")).ClientID %>'),
					$('#<%= ((TextBox)ri.FindControl("tbShippingZip2")).ClientID %>'),
					"<%= ((LinkButton)ri.FindControl("lbSearchShippingAddr")).UniqueID %>",
					'<%= Constants.PATH_ROOT + Constants.PAGE_FRONT_ZIPCODE_SEARCHER_GET_ADDR_JSON %>',
					"<%= '#' + (ri.FindControl("sShippingZipError")).ClientID %>"
				);
				bindTargetForAddr1 = "<%= ((DropDownList)ri.FindControl("ddlShippingAddr1")).ClientID %>";
				bindTargetForAddr2 = "<%= ((TextBox)ri.FindControl("tbShippingAddr2")).ClientID %>";
				bindTargetForAddr3 = "<%= ((TextBox)ri.FindControl("tbShippingAddr3")).ClientID %>";
				$("#search-result-layer").css("top", $(this).position().top + 23);
				$("#search-result-layer").css("left", $(this).position().left - 135);
				multiAddrsearchTriggerType = "shipping";
			});
		<%} %>
	}

	$(document).on('click', '.search-result-layer-close', function () {
		closePopupAndLayer();
	});

	$(document).on('click', '.search-result-layer-addr', function (e) {
		bindSelectedAddr($('li.search-result-layer-addr').index(this), multiAddrsearchTriggerType);
	});

	<%-- 複数住所検索結果からの選択値を入力フォームにバインドする --%>
	function bindSelectedAddr(selectedIndex, multiAddrsearchTriggerType) {
		var selectedAddr = $('.search-result-layer-addrs li').eq(selectedIndex);
		if (multiAddrsearchTriggerType == "shipping") {
			<% foreach (RepeaterItem ri in rOrderShipping.Items) { %>
			$('#' + bindTargetForAddr1).val(selectedAddr.find('.addr').text());
			$('#' + bindTargetForAddr2).val(selectedAddr.find('.city').text() + selectedAddr.find('.town').text());
			$('#' + bindTargetForAddr3).focus();
			<%} %>
		}
		closePopupAndLayer();
	}

	<%-- 変更後の表示通貨価格取得 --%>
	function AlertDataChange(kbnName, e) {
		var priceTotalOld = parseFloat(document.getElementById("<%= hfTotalPrice.ClientID %>").value);
		var priceTotalOldStr = '<%= CurrencyManager.ToPrice(hfTotalPrice.Value) %>';
		var priceTotalNew = '';
		var orderUsePointNew = 0;

		switch (kbnName) {
			case "Payment":
				priceTotalNew = parseFloat(document.getElementById("<%= hfPaymentTotalPriceNew.ClientID %>").value);
				break;

			case "OrderPointUse":
				orderUsePointNew = parseFloat(document.getElementById("<%= tbOrderPointUse.ClientID %>").value);
				priceTotalNew = priceTotalOld + <%#: this.OrderModel.OrderPointUse %> -orderUsePointNew;
				if (isNaN(orderUsePointNew) || (orderUsePointNew < 0)) return;
				break;

			case "Shipping":
				priceTotalNew = parseFloat(document.getElementById("<%= hfShippingTotalPriceNew.ClientID %>").value);
				break;

			default:
				return;
		}

		if (isNaN(priceTotalOld) || isNaN(priceTotalNew) || (priceTotalNew < 0)) return;
		

		var showMessage = (priceTotalOld != priceTotalNew);

		var exec = false;
		$.ajax({
			type: "POST",
			url: "<%= Constants.PATH_ROOT %>Form/OrderHistory/OrderHistoryDetail.aspx/GetPriceString",
			data: JSON.stringify({ price: priceTotalNew }),
			contentType: "application/json; charset=utf-8",
			dataType: "json",
			cache: false,
			async: false,
			success: function(data) {
				switch (kbnName) {
					case "Payment":
						exec = AlertPaymentChange(priceTotalOldStr, data.d, showMessage);
						break;

					case "OrderPointUse":
						exec = AlertUpdateOrderPointUse(priceTotalOldStr, data.d, showMessage);
						break;

					case "Shipping":
						exec = AlertUpdateShippingInfo(priceTotalOldStr, data.d, showMessage, e);
						break;

					default:
						return;
				}
			}
		});
		return exec;
	}
</script>

<%--▼▼ クレジットカードToken用スクリプト ▼▼--%>
<script type="text/javascript">
	var getTokenAndSetToFormJs = "<%= CreateGetCreditTokenAndSetToFormJsScript().Replace("\"", "\\\"") %>";
	var maskFormsForTokenJs = "<%= CreateMaskFormsForCreditTokenJsScript().Replace("\"", "\\\"") %>";
</script>
<uc:CreditToken runat="server" ID="CreditToken" />
<%--▲▲ クレジットカードToken用スクリプト ▲▲--%>

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
			<a href="/Form/OrderHistory/OrderHistoryList.aspx">
				購入履歴
			</a>
		</li>
		<li> >
			<a href="#">
				詳細
			</a>
		</li>
	</ul>
</div>
</asp:Content>