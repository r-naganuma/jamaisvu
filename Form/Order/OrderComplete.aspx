<%--
=========================================================================================================
  Module      : 注文完了画面(OrderComplete.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="BodyProductRecommendByRecommendEngine" Src="~/Form/Common/Product/BodyProductRecommendByRecommendEngine.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyRecommend" Src="~/Form/Common/BodyRecommendAtOrderComplete.ascx" %>
<%@ Register TagPrefix="uc" TagName="Criteo" Src="~/Form/Common/Criteo.ascx" %>
<%@ page language="C#" masterpagefile="~/Form/Common/OrderPage.master" autoeventwireup="true" inherits="Form_Order_OrderComplete, App_Web_ordercomplete.aspx.bf558b1b" title="注文完了｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="注文完了ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>

<%@ Import Namespace="w2.Common.Extensions" %>


<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%
       rTag.DataSource = rOrderHistory.DataSource;
       rTag.DataBind();
%>
<asp:Repeater runat="server" id="rTag">
   <ItemTemplate>
     <script>
           window.dataLayer = window.dataLayer || []
           dataLayer.push({
                  'transactionId': '<%#: ((IList)Container.DataItem).Cast<DataRowView>().Select(x => x[Constants.FIELD_ORDER_ORDER_ID]).First() %>',
                  'transactionAffiliation': '',
                  'transactionTotal': <%#:((IList)Container.DataItem).Cast<DataRowView>().Select(x => x[Constants.FIELD_ORDER_ORDER_PRICE_TOTAL]).First().ToPriceString() %>,
                  'transactionTax':<%#: ((IList)Container.DataItem).Cast<DataRowView>().Select(x => (decimal)x[Constants.FIELD_ORDER_ORDER_PRICE_SUBTOTAL_TAX] + (decimal)x[Constants.FIELD_ORDER_ORDER_PRICE_SHIPPING_TAX] + (decimal)x[Constants.FIELD_ORDER_ORDER_PRICE_EXCHANGE_TAX]).First().ToPriceString() %>,
                  'transactionShipping': <%#:((IList)Container.DataItem).Cast<DataRowView>().Select(x => x[Constants.FIELD_ORDER_ORDER_PRICE_SHIPPING]).First().ToPriceString() %>,
                  'transactionProducts': [{
                         'sku': '<%#: string.Join(",", ((IList)Container.DataItem).Cast<DataRowView>().Select(x => x[Constants.FIELD_ORDERITEM_VARIATION_ID])) %>',
                         'name': '<%#: string.Join(",", ((IList)Container.DataItem).Cast<DataRowView>().Select(x => x[Constants.FIELD_ORDERITEM_PRODUCT_NAME])) %>',
                         'category': '<%#: string.Join(",", ((IList)Container.DataItem).Cast<DataRowView>().Select(x => GetProductCategoryName(x.ToHashtable()))) %>',
                         'price': <%#: string.Join(",", ((IList)Container.DataItem).Cast<DataRowView>().Select(x => x[Constants.FIELD_ORDERITEM_PRODUCT_PRICE].ToPriceString())) %>,
                         'quantity': <%#: ((IList)Container.DataItem).Count %>
                  }]
           });
    </script>
   </ItemTemplate>
</asp:Repeater>


<!--アフィリエイトタグ出力-->
<asp:Repeater ID="rAffiliateTag" runat="server" Visible="<%# Constants.SETTING_PRODUCTION_ENVIRONMENT %>">
	<ItemTemplate>
		<%# Container.DataItem %>
	</ItemTemplate>
</asp:Repeater>
<script>
$(function(){
	$("#Contents").addClass("cart5");
});
</script>
<link href="../../Css/rp/OrderComplete.css" rel="stylesheet">
<!-- <style>
/*====================================================================
  03 OrderPayment
====================================================================*/
@font-face {
  font-family: 'baskerville';
  src: url("../Font/baskerville.otf") format("opentype"); }

@font-face {
  font-family: 'gillsans';
  src: url("../Font/gillsans.otf") format("opentype"); }

a {
  text-decoration: none;
  -webkit-transition: all 0.2s linear;
  -moz-transition: all 0.2s linear;
  -ms-transition: all 0.2s linear;
  -o-transition: all 0.2s linear;
  transition: all 0.2s linear;
  display: block; }
  a:hover {
    opacity: 0.8; }

* {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  -o-box-sizing: border-box;
  -ms-box-sizing: border-box;
  box-sizing: border-box;
  /* form clear */
  /*   -webkit-appearance: none !important;*/ }

strong {
  font-weight: bold; }

.hide {
  display: none !important; }

/* clear fix */
.cf {
  min-height: 1px;
  overflow: hidden; }
  .cf:after {
    content: ".";
    display: block;
    clear: both;
    height: 0;
    visibility: hidden; }

* html .cf {
  height: 1px; }

input[type="submit"], input[type="text"], input[type="email"], input[type="button"] {
  border-radius: 0;
  -webkit-box-sizing: content-box;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  border: none;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  outline: none; }

textarea {
  border-radius: 0;
  -webkit-box-sizing: content-box;
  -webkit-appearance: none;
  -moz-appearance: none;
  appearance: none;
  border: none;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  outline: none; }

input[type="submit"]::-webkit-search-decoration, input[type="text"]::-webkit-search-decoration, input[type="email"]::-webkit-search-decoration, input[type="button"]::-webkit-search-decoration {
  display: none; }

input[type="submit"]::focus, input[type="text"]::focus, input[type="email"]::focus, input[type="button"]::focus {
  outline-offset: -2px; }

textarea::focus {
  outline-offset: -2px; }

/*====================================================================
*    mixin
/*==================================================================*/
/*====================================================================
*    Responsive
/*==================================================================*/
.pc_contents {
  display: block !important; }
  @media (max-width: 768px) {
    .pc_contents {
      display: none !important; } }

.sp_contents {
  display: none !important; }
  @media (max-width: 768px) {
    .sp_contents {
      display: block !important; } }

.pc_flex {
  display: -webkit-box !important;
  display: -ms-flexbox !important;
  display: flex !important; }
  @media (max-width: 768px) {
    .pc_flex {
      display: none !important; } }

.sp_flex {
  display: none !important; }
  @media (max-width: 768px) {
    .sp_flex {
      display: -webkit-box !important;
      display: -ms-flexbox !important;
      display: flex !important; } }

.cart5 {
  padding-top: 125px; }
  .cart5 h2.ttlA {
    font-size: 14px !important;
    font-weight: bold;
    max-width: 1280px;
    margin: 0 0 5px !important;
    padding: 0 0 0 40px !important;
    height: auto !important;
    border: none !important; }
    @media (max-width: 768px) {
      .cart5 h2.ttlA {
        font-size: 13px !important;
        padding: 0 0 0 0 !important; } }
  .cart5 label {
    font-size: 14px !important;
    font-weight: normal; }
    @media (max-width: 768px) {
      .cart5 label {
        font-size: 13px !important; } }
  .cart5 .main.clearFix {
    display: none; }
  .cart5 div.main {
    width: 100% !important;
    padding: 0 !important;
    margin: 0 !important;
    background: none !important;
    position: relative; }
  .cart5 div.submain {
    width: 100% !important;
    margin: 0 0 100px; }
    @media (max-width: 768px) {
      .cart5 div.submain {
        margin: 0 0 0px; } }
  .cart5 p.conplete {
    font-size: 14px;
    line-height: 2 !important;
    text-align: center;
    padding: 20px 0 0 0; }
    @media (max-width: 768px) {
      .cart5 p.conplete {
        font-size: 13px;
        padding: 60px 5vw 0; } }
  .cart5 a.conplete__a {
    width: 320px;
    height: 50px;
    border: 1px solid #2E0E02;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: center;
    -ms-flex-pack: center;
    justify-content: center;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    margin: 80px auto 100px; }
    @media (max-width: 768px) {
      .cart5 a.conplete__a {
        width: 58.6vw; } }

.conplete_Wrap {
  display: none; }

#Foot {
  border: none; }

</style> -->
<div id="CartList">

<h2 class="cart1_h2">ショッピングカート</h2>

<p id="CartFlow" class="pc_contents"><img src="../../Contents/ImagesPkg/order/cart_step04.png" alt="注文完了 " width="781" height="58" /></p>
<p id="" class="CartFlow sp_contents"><img src="../../Contents/ImagesPkg/order/sp_flow5.png" alt="注文完了 " width="781"/></p>


<p class="conplete">
商品のご注文が完了しました。<br>
ご登録のメールアドレス宛に明細をお送りいたしましたので、ご確認くださいませ。<br><br>

引き続き、JAMAIS VU 公式ブランドサイトでのお買い物をお楽しみください。
</p>
<a href="/" class="conplete__a">トップページへ戻る</a>


<div class=conplete_Wrap>
	

<div class="orderComplete">
注文内容を記載したEメールをお送りしました。届かない場合など御座いましたらご連絡ください。<br />
<%if (Constants.PAYMENT_EBANK_KBN == Constants.PaymentEbank.Zeus) {%>
後で銀行振込決済を行う場合は、お送りしたEメールに記載してあるURLから決済を行ってください。<br /><br />
<%} %>
今後とも当店のご利用を心よりお待ち申し上げております。<br />
<%if (this.IsLoggedIn == false) { %>
	<%if (Constants.W2MP_POINT_OPTION_ENABLED) { %>
	<br />
	今ご登録頂けると、<%= WebSanitizer.HtmlEncode(GetNumeric(PointOptionUtility.GetAddPoint((List<CartObject>)Session[Constants.SESSION_KEY_USER_REGIST_AFTER_ORDER_CART_LIST])))%>ポイントが加算されます。<br />
	<%} %>
	<br />
	<div align="center">
		<a href="<%= WebSanitizer.UrlAttrHtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_REGIST_REGULATION) %>" class="btn btn-large btn-inverse">
			会員登録を行う</a>
	</div>
<%} %>

<%-- 外部決済キャンセルは注文確認画面へ戻る --%>
<% if ((this.CartList.Items.Count != 0) && (rErrorMesseges.Visible == false)) { %>
	<br />
	<div class="error_inline" align="center">
	注文が完了していないカートがあります。続けて注文を行う場合はこちら。<br />
	<asp:LinkButton runat="server" OnClick="lbRetryOrder_Click">続けて注文を行う</asp:LinkButton><br />
	</div>
<%} %>

<%-- ▼エラー情報▼ --%>
<asp:Repeater ID="rErrorMesseges" runat="server">
<HeaderTemplate>
<span class="error_inline">
<br />
※一部の注文にエラーが発生致しました。<br />
</HeaderTemplate>
<ItemTemplate>
	<%# WebSanitizer.HtmlEncode(Container.DataItem) %><br />
</ItemTemplate>
<FooterTemplate>
</span>
</FooterTemplate>
</asp:Repeater>
<asp:LinkButton ID="lbRetryOrder" runat="server" OnClick="lbRetryOrder_Click">失敗した注文をやり直す<br /></asp:LinkButton>
<%-- ▲エラー情報▲ --%>
</div>

<%-- ▼ドコモケータイ払い用決済情報▼ --%>
<asp:PlaceHolder ID="pfDocomoPayment" runat="server">
<div class="orderComplete">
<div class="background">
<div class="bottom">
<h3></h3>
<div class="orderDetail2">
<div class="suborderDetail">
<img src="../../Contents/ImagesPkg/order/h2_docomo_payment_mail.gif" alt="ドコモケータイ払い" /><br /><br />
<%-- ドコモケータイ払い注文（目立たせたいため完了情報よりも上に配置） --%>
<p>
	ドコモケータイ払いの決済は、携帯電話で行っていただく必要があります。<br />
	決済を行う携帯電話のメールアドレスを入力し、送信ボタンを押してください。<br />
	決済処理は、メールに記載されている内容にしたがって進めてください。<br />
	ドメイン指定受信を設定されている方は、必ず「<%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopMailDomain")) %>」を受信できるように設定してください。<br />
	<asp:TextBox ID="tbMobileMailAddr" MaxLength="240" Width="150" runat="server"></asp:TextBox>@docomo.ne.jp
	&nbsp;&nbsp;<asp:Button ID="bSendDocomoPaymentMail" runat="server" OnClick="bSendDocomoPaymentMail_Click" Text="  送信  " /><br />
	<strong><%= this.DocomoPaymentErrorMessage %></strong>
</p>
</div>
</div>
</div>
</div>
</div>
</asp:PlaceHolder>
<%-- ▲ドコモケータイ払い用決済情報▲ --%>

<uc:BodyRecommend runat="server" OrderList="<%# this.OrderList %>" />
<asp:Repeater ID="rOrderHistory" runat="server">
<ItemTemplate>
	<div class="orderComplete">
	<div class="background">
	<div class="bottom">
	<h3>ご注文明細 <%# WebSanitizer.HtmlEncode(((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_GIFT_FLG) == Constants.FLG_ORDER_GIFT_FLG_ON) ? "(ギフト)" : "") %>
		<%# WebSanitizer.HtmlEncode(((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_DIGITAL_CONTENTS_FLG) == Constants.FLG_ORDER_DIGITAL_CONTENTS_FLG_ON) ? "(デジタルコンテンツ)" : "") %>
	</h3>
	
	<%-- ▼注文情報▼ --%>
	<div class="orderDetail">
	<div class="suborderDetail">
	<%-- ▽基本情報１▽ --%>
	<div class="left">
	<em>注文番号：&nbsp;<%# WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_ID)) %></em>
	<div>
	<dl>
	<dt>注文日時：</dt>
	<dd><%#: DateTimeUtility.ToStringFromRegion(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_DATE), DateTimeUtility.FormatType.LongDateHourMinute1Letter) %></dd>
	<dt>合計金額：</dt>
	<dd><%#: CurrencyManager.ToPrice(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_PRICE_TOTAL)) %></dd>
	<%if (Constants.GLOBAL_OPTION_ENABLE) { %>
	<dt>決済金額：</dt>
	<dd><%#: GetSettlementAmount(((IList)Container.DataItem)[0]) %></dd>
	<% } %>
	<dt>注文者：</dt>
	<dd><%# WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDEROWNER_OWNER_NAME1)) %><%# WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDEROWNER_OWNER_NAME2)) %>&nbsp;様<br />
		<%#: IsCountryJp((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_COUNTRY_ISO_CODE))
			? "(" + DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDEROWNER_OWNER_NAME_KANA1) + DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDEROWNER_OWNER_NAME_KANA2) + " さま)" 
			: ""%>
	</dd>
	<dt>お支払方法：</dt>
	<dd><%# WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], "order_payment_kbn_name")) %><%# (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_CARD_INSTALLMENTS_CODE) != "" ? "(" + WebSanitizer.HtmlEncode(ValueText.GetValueText(Constants.TABLE_ORDER, OrderCommon.CreditInstallmentsValueTextFieldName, DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_CARD_INSTALLMENTS_CODE))) + ")" : "" %></dd>
	<dd class="paymentinfo">
	<%-- コンビニ決済用 --%>
	<span visible='<%# IsCvs((string)GetKeyValue(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_PAYMENT_KBN)) %>' runat="server">
		<%# GetKeyValue(this.OrderInfos[Container.ItemIndex], "payment_message_html") %>
	</span>
	<%-- 銀行振込（ゼウス）用 --%>
	<%if (Constants.PAYMENT_EBANK_KBN == Constants.PaymentEbank.Zeus) {%>
	<span visible='<%# IsBank((string)GetKeyValue(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_PAYMENT_KBN)) %>' runat="server">
		<a href="<%--# (((IList)Container.DataItem)[0])["payment_message_html"]--%>" target="_self">すぐに銀行振込決済を行う場合はこちら</a><br />
	</span>	
	<%} %>
	</dd>
	</dl>
	<div visible='<%# ((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_GIFT_FLG) == Constants.FLG_ORDER_GIFT_FLG_ON) == false %>' class="right" runat="server">
	<div visible='<%# (DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_MEMO).ToString().Trim() != "")  %>' class="right" runat="server">
	<em>注文メモ</em>
	<p><%# WebSanitizer.HtmlEncodeChangeToBr(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_MEMO)) %></p>
	</div>
	</div>
	<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
	</div>
	</div><!--left-->
	<%-- △基本情報１△ --%>
	<%-- ▽基本情報２（ギフトオフ かつ デジタルコンテンツでない）▽ --%>
	<div visible='<%# (((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_GIFT_FLG) == Constants.FLG_ORDER_GIFT_FLG_ON) == false) && ((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_DIGITAL_CONTENTS_FLG) == Constants.FLG_ORDER_DIGITAL_CONTENTS_FLG_OFF) %>' class="right" runat="server">
	<em>配送先情報</em>
	<div>
	<dl>
	<dt><%: ReplaceTag("@@User.addr.name@@") %>：</dt>
	<dd>
		<p>
			<%#: IsCountryJp((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_COUNTRY_ISO_CODE))
				? "〒" + DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ZIP)
				: "" %><br />
			<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR1) %>
			<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR2) %><br />
			<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR3) %>
			<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR4) %><br />
			<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR5) %>
			<%# (IsCountryJp((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_COUNTRY_ISO_CODE)) == false)
				? WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ZIP)) + "<br />"
				: "" %>
			<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_COUNTRY_NAME) %>
		</p>
	</dd>
	<% if (Constants.DISPLAY_CORPORATION_ENABLED){ %>
	<dt><%: ReplaceTag("@@User.company_name.name@@")%>・
		<%: ReplaceTag("@@User.company_post_name.name@@")%>：</dt>
	<dd><%# WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_COMPANY_NAME)) %>&nbsp
		<%# WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_COMPANY_POST_NAME)) %></dd>
	<%} %>
	<%-- 氏名 --%>
	<dt><%: ReplaceTag("@@User.name.name@@") %>：</dt>
	<dd><%# WebSanitizer.HtmlEncodeChangeToBr(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_NAME1)) %><%# WebSanitizer.HtmlEncodeChangeToBr(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_NAME2)) %>&nbsp;様<br />
		<%#: IsCountryJp((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_COUNTRY_ISO_CODE))
			? "(" + DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_NAME_KANA1) + DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_NAME_KANA2) + " さま)"
			: "" %>
	</dd>
	<%-- 電話番号 --%>
	<dt><%: ReplaceTag("@@User.tel1.name@@") %>：</dt>
	<dd><%# WebSanitizer.HtmlEncodeChangeToBr(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_TEL1)) %></dd>
	<dt>配送方法：</dt>
	<dd>
		<%# WebSanitizer.HtmlEncode(ValueText.GetValueText(Constants.TABLE_ORDERSHIPPING, Constants.FIELD_ORDERSHIPPING_SHIPPING_METHOD, (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_METHOD))) %>
	</dd>
	<dt visible='<%# (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_SHOPSHIPPING_SHIPPING_DATE_SET_FLG) == Constants.FLG_SHOPSHIPPING_SHIPPING_DATE_SET_FLG_VALID %>' runat="server">
		配送希望日：</dt>
	<dd visible='<%# (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_SHOPSHIPPING_SHIPPING_DATE_SET_FLG) == Constants.FLG_SHOPSHIPPING_SHIPPING_DATE_SET_FLG_VALID %>' runat="server">
		<%#: (w2.Common.Util.Validator.IsNullEmpty(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_DATE)) == false)
				? DateTimeUtility.ToStringFromRegion(((DateTime)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_DATE)), DateTimeUtility.FormatType.LongDateWeekOfDay1Letter)
				: ReplaceTag("@@DispText.shipping_date_list.none@@") %></dd>
	<dt visible='<%# (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_DELIVERYCOMPANY_SHIPPING_TIME_SET_FLG) == Constants.FLG_DELIVERYCOMPANY_SHIPPING_TIME_SET_FLG_VALID %>' runat="server">
		配送希望時間帯：</dt>
	<dd visible='<%# (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_DELIVERYCOMPANY_SHIPPING_TIME_SET_FLG) == Constants.FLG_DELIVERYCOMPANY_SHIPPING_TIME_SET_FLG_VALID %>' runat="server">
		<%# WebSanitizer.HtmlEncode(
				(w2.Common.Util.Validator.IsNullEmpty(DataBinder.Eval(((IList)Container.DataItem)[0], "shipping_time_message")) == false)
							? DataBinder.Eval(((IList)Container.DataItem)[0], "shipping_time_message") : ReplaceTag("@@DispText.shipping_time_list.none@@")) %></dd>
	</dl>
	<em visible="<%# m_lFixedPurchaseFlgs[Container.ItemIndex] %>" runat="server">定期配送情報</em>
	<dl visible="<%# m_lFixedPurchaseFlgs[Container.ItemIndex] %>" runat="server">
		<dt>配送パターン：</dt>
		<dd><%# WebSanitizer.HtmlEncode(m_lFixedPurchasePatternStrings[Container.ItemIndex])%></dd>
		<dt>初回配送予定：</dt>
		<dd><%#: DateTimeUtility.ToStringFromRegion(m_lFixedPurchaseFirstShippingDates[Container.ItemIndex], DateTimeUtility.FormatType.LongDateWeekOfDay1Letter)%></dd>
		<dt>今後の配送予定：</dt>
		<dd><%#: DateTimeUtility.ToStringFromRegion(m_lFixedPurchaseNextShippingDates[Container.ItemIndex], DateTimeUtility.FormatType.LongDateWeekOfDay1Letter)%></dd>
		<dt></dt>
		<dd><%# DateTimeUtility.ToStringFromRegion(m_lFixedPurchaseNextNextShippingDates[Container.ItemIndex], DateTimeUtility.FormatType.LongDateWeekOfDay1Letter)%></dd>
		<dt visible='<%# m_lShippingTimeSetFlgs[Container.ItemIndex] %>' runat="server">配送希望時間帯：</dt>
		<dd visible='<%# m_lShippingTimeSetFlgs[Container.ItemIndex] %>' runat="server"><%# WebSanitizer.HtmlEncode(m_lShippingTimeMessages[Container.ItemIndex]) %></dd>
	</dl>
	<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
	</div>
	</div><!--right-->
	<%-- △基本情報２（ギフトオフ）△ --%>
	<%-- ▽基本情報２（ギフトオン）▽ --%>
	<div visible='<%# ((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_GIFT_FLG) == Constants.FLG_ORDER_GIFT_FLG_ON) %>' class="right" runat="server">
	<div visible='<%# (DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_MEMO).ToString().Trim() != "")  %>' class="right" runat="server">
	<em>注文メモ</em>
	<p><%# WebSanitizer.HtmlEncodeChangeToBr(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_MEMO)) %></p>
	</div>
	</div>
	<br class="clr" />
	</div><!--suborderDetail-->
	</div><!--orderDetail-->
	<%-- ▲注文情報▲ --%>

	<%-- ▼注文内容▼ --%>
	<%-- ▽商品一覧（ギフトオフ）▽ --%>
	<div visible='<%# (((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_GIFT_FLG) == Constants.FLG_ORDER_GIFT_FLG_ON) == false) %>' runat="server">
	<h4>注文内容</h4>
	<div class="productList">
	<asp:Repeater DataSource="<%# Container.DataItem %>" runat="server">
	<ItemTemplate>
		<%-- 通常商品 --%>
		<div class="product" visible='<%# ((string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_SET_ID) == "") && (StringUtility.ToEmpty(Eval(Constants.FIELD_ORDERITEM_ORDER_SETPROMOTION_ITEM_NO)) == "") %>' runat="server">
		<div>
		<dl class="name">
		<dt>
			<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), "", "", "", (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME), "")) %>' runat="server" Visible="<%# IsProductValid((DataRowView)Container.DataItem) %>">
				<w2c:ProductImage ProductMaster="<%# GetProduct((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID)) %>" ImageSize="M" IsVariation="true" runat="server" />
			</a>
			<w2c:ProductImage ProductMaster="<%# GetProduct((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID)) %>" ImageSize="M" IsVariation="true" runat="server"  Visible="<%# (IsProductValid((DataRowView)Container.DataItem) == false) %>" />
		</dt>
		<dd>
			<span>
				<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), "", "", "", (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME), "")) %>' runat="server"  Visible='<%# IsProductValid((DataRowView)Container.DataItem) %>'>
				<%#: GetOrderItemProductTranslationName(Container.DataItem) %>
				</a>
				<%# (IsProductValid((DataRowView)Container.DataItem) == false) ? WebSanitizer.HtmlEncode(Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME)) : ""%>
			</span>
		</dd>
		<dd visible='<%# (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_OPTION_TEXTS) != ""%>'>
			<%# WebSanitizer.HtmlEncode(Eval(Constants.FIELD_ORDERITEM_PRODUCT_OPTION_TEXTS)).Replace("　", "<br />")%>
		</dd>
		<dd >
			<small>
				<asp:Repeater DataSource='<%# this.OrderItemSerialKeys[((string)Eval(Constants.FIELD_ORDER_ORDER_ID)) + (Eval(Constants.FIELD_ORDERITEM_ORDER_ITEM_NO).ToString())] %>' runat="server">
				<ItemTemplate>
					<br />
					&nbsp;シリアルキー:&nbsp;<%# Eval(Constants.FIELD_SERIALKEY_SERIAL_KEY)%>
				</ItemTemplate>
				</asp:Repeater>
			</small>
		</dd>
		</dl>
		<p class="quantity"><%#: CurrencyManager.ToPrice(Eval(Constants.FIELD_ORDERITEM_PRODUCT_PRICE)) %> x <%# WebSanitizer.HtmlEncode(StringUtility.ToNumeric(Eval(Constants.FIELD_ORDERITEM_ITEM_QUANTITY))) %></p>
		<p class="subtotal">&nbsp;<%#: CurrencyManager.ToPrice(Eval(Constants.FIELD_ORDERITEM_ITEM_PRICE)) %>(<%#: this.ProductPriceTextPrefix %>)</p>
		</div>
		<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
		</div>
		<%-- セットプロモーション商品 --%>
		<div class="product" visible='<%# (StringUtility.ToEmpty(Eval(Constants.FIELD_ORDERITEM_ORDER_SETPROMOTION_ITEM_NO)) != "") && ((int)Eval(Constants.FIELD_ORDERITEM_ORDER_SETPROMOTION_ITEM_NO) == 1) %>' runat="server">
		<div>
		<asp:Repeater DataSource="<%# GetOrderSetPromotionItemList((DataRowView)Container.DataItem) %>" runat="server">
		<HeaderTemplate>
			<table cellpadding="0" cellspacing="0" summary="ショッピングカート" width="100%">
		</HeaderTemplate>
		<ItemTemplate>
			<tr>
				<td width="286" class="name">
					<dl>
						<dt>
							<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), "", "", "", (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME), "")) %>' runat="server" Visible="<%# IsProductValid((DataRowView)Container.DataItem) %>">
								<w2c:ProductImage ProductMaster="<%# GetProduct((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID)) %>" ImageSize="M" IsVariation="true" runat="server" />
							</a>
							<w2c:ProductImage ProductMaster="<%# GetProduct((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID)) %>" ImageSize="M" IsVariation="true" runat="server" Visible="<%# (IsProductValid((DataRowView)Container.DataItem) == false) %>" />
						</dt>
						<dd>
							<span>
								<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), "", "", "", (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME), "")) %>' runat="server" Visible="<%# IsProductValid((DataRowView)Container.DataItem) %>">
									<%# WebSanitizer.HtmlEncode(Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME)) %>
								</a>
								<%# (IsProductValid((DataRowView)Container.DataItem) == false) ? WebSanitizer.HtmlEncode(Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME)) : ""%>
							</span>
						</dd>
						<dd visible='<%# (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_OPTION_TEXTS) != ""%>'>
							<%# WebSanitizer.HtmlEncode(Eval(Constants.FIELD_ORDERITEM_PRODUCT_OPTION_TEXTS)).Replace("　", "<br />")%>
						</dd>
						<dd >
							<small>
								<asp:Repeater DataSource='<%# this.OrderItemSerialKeys[((string)Eval(Constants.FIELD_ORDER_ORDER_ID)) + (Eval(Constants.FIELD_ORDERITEM_ORDER_ITEM_NO).ToString())] %>' runat="server">
								<ItemTemplate>
									<br />
									&nbsp;シリアルキー:&nbsp;<%# Eval(Constants.FIELD_SERIALKEY_SERIAL_KEY)%>
								</ItemTemplate>
								</asp:Repeater>
							</small>
						</dd>
					</dl>

				</td>
				<td width="200">
					<%#: CurrencyManager.ToPrice(Eval(Constants.FIELD_ORDERITEM_PRODUCT_PRICE)) %> x <%# WebSanitizer.HtmlEncode(StringUtility.ToNumeric(Eval(Constants.FIELD_ORDERITEM_ITEM_QUANTITY))) %>
				</td>
				<td class="subtotal" width="299" rowspan="<%# ((IList)((Repeater)Container.Parent).DataSource).Count %>" visible="<%# Container.ItemIndex == 0 %>" runat="server">
					<%#: GetOrderSetPromotionDispNameTranslationName(Container.DataItem) %><br />
					<span visible="<%# (decimal)Eval(Constants.FIELD_ORDERSETPROMOTION_PRODUCT_DISCOUNT_AMOUNT) != 0 %>" runat="server">
					<strike><%#: CurrencyManager.ToPrice((decimal)Eval(Constants.FIELD_ORDERSETPROMOTION_UNDISCOUNTED_PRODUCT_SUBTOTAL)) %>(<%#: this.ProductPriceTextPrefix %>)</strike><br />
					</span>
					<%#: CurrencyManager.ToPrice((decimal)Eval(Constants.FIELD_ORDERSETPROMOTION_UNDISCOUNTED_PRODUCT_SUBTOTAL) - (decimal)Eval(Constants.FIELD_ORDERSETPROMOTION_PRODUCT_DISCOUNT_AMOUNT)) %>(<%#: this.ProductPriceTextPrefix %>)
				</td>
			</tr>
		</ItemTemplate>
		<FooterTemplate>
			</table>
		</FooterTemplate>
		</asp:Repeater>
		</div>
		</div>
		<%-- セット商品 --%>
		<div class="product" visible='<%# CheckTopSetItem(Container.DataItem) %>' runat="server">
		<div>
		<asp:Repeater DataSource='<%# GetSetItemList(Container.DataItem) %>' runat="server">
		<HeaderTemplate>
			<table cellpadding="0" cellspacing="0" summary="ショッピングカート" width="100%">
		</HeaderTemplate>
		<ItemTemplate>
			<tr>
			<td width="286" class="name">
			<dl>
			<dt>
				<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), "", "", "", (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME), "")) %>' runat="server" Visible="<%# IsProductValid((DataRowView)Container.DataItem) %>">
					<w2c:ProductImage ProductMaster="<%# GetProduct((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID)) %>" ImageSize="M" IsVariation="true" runat="server" />
				</a>
				<w2c:ProductImage ProductMaster="<%# GetProduct((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID)) %>" ImageSize="M" IsVariation="true" runat="server" Visible="<%# (IsProductValid((DataRowView)Container.DataItem) == false) %>" />
			</dt>
			<dd>
				<span>
					<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), "", "", "", (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME), "")) %>' runat="server" Visible="<%# IsProductValid((DataRowView)Container.DataItem) %>">
						<%# WebSanitizer.HtmlEncode(Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME)) %>
					</a>
					<%# (IsProductValid((DataRowView)Container.DataItem) == false) ? WebSanitizer.HtmlEncode(Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME)) : "" %>
				</span>
			</dd>
			</dl></td>
			<td width="200"><%#: CurrencyManager.ToPrice(Eval(Constants.FIELD_ORDERITEM_PRODUCT_PRICE)) %> x <%# WebSanitizer.HtmlEncode(StringUtility.ToNumeric(Eval(Constants.FIELD_ORDERITEM_ITEM_QUANTITY_SINGLE))) %></td>
			<td width="120" rowspan="<%# ((IList)((Repeater)Container.Parent).DataSource).Count %>" visible="<%# CheckTopSetItem(Container.DataItem) %>" class="quantity" runat="server">数量&nbsp;&nbsp;&nbsp;<%# WebSanitizer.HtmlEncode(StringUtility.ToNumeric(Eval(Constants.FIELD_ORDERITEM_PRODUCT_SET_COUNT))) %></td>
			<td width="179" rowspan="<%# ((IList)((Repeater)Container.Parent).DataSource).Count %>" visible="<%# CheckTopSetItem(Container.DataItem) %>" class="subtotal" runat="server"><%#: CurrencyManager.ToPrice(StringUtility.ToNumeric(GetProductSetPrice(Container.DataItem))) %> (<%#: this.ProductPriceTextPrefix %>)</td>
			</tr>
		</ItemTemplate>
		<FooterTemplate>
			</table>
		</FooterTemplate>
		</asp:Repeater>
		</div>
		<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
		</div>
	</ItemTemplate>
	</asp:Repeater>
	</div>
	</div>
	<%-- △商品一覧（ギフトオフ）△ --%>

	<%-- ▽配送先・商品一覧（ギフトオン）▽  --%>
	<div visible='<%# ((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_GIFT_FLG) == Constants.FLG_ORDER_GIFT_FLG_ON) %>' runat="server">
	<asp:Repeater ID="rCartShippings" DataSource="<%# CreteShippingsAndItems(Container.DataItem)%>" runat="server">
	<ItemTemplate>	
		<h4>配送情報 <%# IsGift(((RepeaterItem)GetOuterControl(Container, typeof(RepeaterItem))).DataItem) ? (Container.ItemIndex + 1).ToString() : ""%></h4>
		<div class="productList">
		<%-- ▽商品情報▽ --%>
		<asp:Repeater ID="rCartProducts" DataSource="<%# Container.DataItem %>" runat="server">
		<ItemTemplate>
		<div class="product2" visible='<%# (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_SET_ID) == "" %>' runat="server">
		<div>
		<dl class="name">
		<dt>
			<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), "", "", "", (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME), "")) %>' runat="server" Visible="<%# IsProductValid((DataRowView)Container.DataItem) %>">
				<w2c:ProductImage ID="ProductImage1" ProductMaster="<%# GetProduct((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID)) %>" ImageSize="S" IsVariation="true" runat="server" />
			</a>
			<w2c:ProductImage ProductMaster="<%# GetProduct((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID)) %>" ImageSize="M" IsVariation="true" runat="server" Visible="<%# (IsProductValid((DataRowView)Container.DataItem) == false) %>" />
		</dt>
		<dd>
			<span>
				<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl((string)Eval(Constants.FIELD_ORDERITEM_SHOP_ID), "", "", "", (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_ID), (string)Eval(Constants.FIELD_ORDERITEM_VARIATION_ID), (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME), "")) %>' runat="server" Visible="<%# IsProductValid((DataRowView)Container.DataItem) %>">
					<%# WebSanitizer.HtmlEncode(Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME)) %>
				</a>
				<%# (IsProductValid((DataRowView)Container.DataItem) == false) ? WebSanitizer.HtmlEncode(Eval(Constants.FIELD_ORDERITEM_PRODUCT_NAME)) : ""%>
			</span>
		</dd>
		<dd visible='<%# (string)Eval(Constants.FIELD_ORDERITEM_PRODUCT_OPTION_TEXTS) != ""%>'>
			<%# WebSanitizer.HtmlEncode(Eval(Constants.FIELD_ORDERITEM_PRODUCT_OPTION_TEXTS)).Replace("　", "<br />")%>
		</dd>
		<dd >
			<small>
				<asp:Repeater DataSource='<%# this.OrderItemSerialKeys[((string)Eval(Constants.FIELD_ORDER_ORDER_ID)) + (Eval(Constants.FIELD_ORDERITEM_ORDER_ITEM_NO).ToString())] %>' runat="server">
				<ItemTemplate>
					<br />
					&nbsp;シリアルキー:&nbsp;<%# Eval(Constants.FIELD_SERIALKEY_SERIAL_KEY)%>
				</ItemTemplate>
				</asp:Repeater>
			</small>
		</dd>
		</dl>
		<p class="quantity"><%#: CurrencyManager.ToPrice(Eval(Constants.FIELD_ORDERITEM_PRODUCT_PRICE)) %> x <%# WebSanitizer.HtmlEncode(StringUtility.ToNumeric(Eval(Constants.FIELD_ORDERITEM_ITEM_QUANTITY))) %></p>
		</div>
		<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
		</div>
		</ItemTemplate>
		</asp:Repeater>
		<%-- △商品情報△ --%>
		</div>

		<%-- ▽（デジタルコンテンツでない）▽  --%>
		<div class="orderDetail" visible='<%# ((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_DIGITAL_CONTENTS_FLG) == Constants.FLG_ORDER_DIGITAL_CONTENTS_FLG_OFF) %>' runat="server">
		<%-- ▽送り主▽ --%>
		<div class="box">
		<em>
		送り主
		</em>
		<dl>
		<%-- 氏名 --%>
		<dt><%: ReplaceTag("@@User.name.name@@") %>：</dt>

		<dd><%# WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_NAME1))%><%# WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_NAME2))%>&nbsp;様<br />
		<%#: IsCountryJp((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_COUNTRY_ISO_CODE))
			? "(" + DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_NAME_KANA1) + DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_NAME_KANA2) + " さま)"
			: "" %>
			<br />
		</dd>
		<dt>
			<%: ReplaceTag("@@User.addr.name@@") %>：
		</dt>
		<dd>
		<%#: IsCountryJp((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_COUNTRY_ISO_CODE))
			? DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_ZIP)
			: ""%>
		<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_ADDR1)%> <%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_ADDR2)%><br />
		<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_ADDR3)%> <%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_ADDR4)%><br />
		<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_ADDR5)%>
		<%#: (IsCountryJp((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_COUNTRY_ISO_CODE)) == false)
			? DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_ZIP)
			: "" %><br />
		<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_COUNTRY_NAME)%>
		</dd>
		<% if (Constants.DISPLAY_CORPORATION_ENABLED){ %>
		<dt><%: ReplaceTag("@@User.company_name.name@@")%>・<%: ReplaceTag("@@User.company_post_name.name@@")%>：</dt>
		<dd>
		<%# WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_COMPANY_NAME)) %><br />
		<%# WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_COMPANY_POST_NAME)) %>
		</dd>
		<%} %>
		<%-- 電話番号 --%>
		<dt><%: ReplaceTag("@@User.tel1.name@@") %>：</dt>
		<dd>
		<%# WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SENDER_TEL1))%>
		</dd>
		</dl>
		</div>
		<%-- △送り主△ --%>

		<%-- ▽配送先▽ --%>
		<div class="box">
		<em>配送先</em>
		<dl>
		<%-- 氏名 --%>
		<dt><%: ReplaceTag("@@User.name.name@@") %>：</dt>
		<dd>
		<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_NAME1) %> <%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_NAME2) %>&nbsp;様
		<%#: IsCountryJp((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_COUNTRY_ISO_CODE)) ? (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_NAME_KANA1) + (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_NAME_KANA2) + " さま" : "" %>
		<br />
		</dd>
		<dt>
			<%: ReplaceTag("@@User.addr.name@@") %>：
		</dt>
		<dd>
		<%#: IsCountryJp((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_COUNTRY_ISO_CODE))
			? DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ZIP)
			: ""%>
		<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ZIP)%><br />
		<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR1)%> <%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR2)%><br />
		<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR3)%> <%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR4)%><br />
		<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ADDR5)%>
		<%#: (IsCountryJp((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_COUNTRY_ISO_CODE)) == false)
			? DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_ZIP)
			: ""%><br />
		<%#: DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_COUNTRY_NAME)%><br />
		</dd>
		<% if (Constants.DISPLAY_CORPORATION_ENABLED){ %>
		<dt><%: ReplaceTag("@@User.company_name.name@@")%>・<%: ReplaceTag("@@User.company_post_name.name@@")%>：</dt>
		<dd>
		<%# WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_COMPANY_NAME))%><br />
		<%# WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_COMPANY_POST_NAME))%>
		</dd>
		<%} %>
		<%-- 電話番号 --%>
		<dt><%: ReplaceTag("@@User.tel1.name@@") %>：</dt>
		<dd>
		<%# WebSanitizer.HtmlEncode(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_TEL1))%>
		</dd>
		</div>
		<%-- △配送先△ --%>

		<%-- ▽配送希望▽ --%>
		<div class="box" visible="<%# ((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_SHOPSHIPPING_SHIPPING_DATE_SET_FLG) == Constants.FLG_SHOPSHIPPING_SHIPPING_DATE_SET_FLG_VALID) || ((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_DELIVERYCOMPANY_SHIPPING_TIME_SET_FLG) == Constants.FLG_DELIVERYCOMPANY_SHIPPING_TIME_SET_FLG_VALID) %>" runat="server">
		<em>配送希望</em>
		<dl>
		<dt visible='<%# (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_SHOPSHIPPING_SHIPPING_DATE_SET_FLG) == Constants.FLG_SHOPSHIPPING_SHIPPING_DATE_SET_FLG_VALID %>' runat="server">
			配送希望日：</dt>
		<dd id="Dd1" visible='<%# (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_SHOPSHIPPING_SHIPPING_DATE_SET_FLG) == Constants.FLG_SHOPSHIPPING_SHIPPING_DATE_SET_FLG_VALID %>' runat="server">
			<%#: (w2.Common.Util.Validator.IsNullEmpty(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_DATE)) == false)
					? DateTimeUtility.ToStringFromRegion(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_SHIPPING_DATE), DateTimeUtility.FormatType.LongDateWeekOfDay1Letter)
					: ReplaceTag("@@DispText.shipping_date_list.none@@") %></dd>
		<dt visible='<%# (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_DELIVERYCOMPANY_SHIPPING_TIME_SET_FLG) == Constants.FLG_DELIVERYCOMPANY_SHIPPING_TIME_SET_FLG_VALID %>' runat="server">
			配送希望時間帯：</dt>
		<dd visible='<%# (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_DELIVERYCOMPANY_SHIPPING_TIME_SET_FLG) == Constants.FLG_DELIVERYCOMPANY_SHIPPING_TIME_SET_FLG_VALID %>' runat="server">
			<%# WebSanitizer.HtmlEncode(
				(w2.Common.Util.Validator.IsNullEmpty(DataBinder.Eval(((IList)Container.DataItem)[0], "shipping_time_message")) == false)
					? DataBinder.Eval(((IList)Container.DataItem)[0], "shipping_time_message") : ReplaceTag("@@DispText.shipping_time_list.none@@")) %></dd>
		</dl>
		</div>
		<%-- △配送希望△ --%>

		<%-- ▽定期購入情報▽ --%>
		<div class="box" visible="<%# m_lFixedPurchaseFlgs[((RepeaterItem)Container.Parent.Parent.Parent).ItemIndex] %>" runat="server">
		<em>定期配送情報</em>
		<dl>
			<dt>配送パターン：</dt>
			<dd><%# WebSanitizer.HtmlEncode(m_lFixedPurchasePatternStrings[((RepeaterItem)Container.Parent.Parent.Parent).ItemIndex])%></dd>
			<dt>初回配送予定：</dt>
			<dd><%#: DateTimeUtility.ToStringFromRegion(m_lFixedPurchaseFirstShippingDates[((RepeaterItem)Container.Parent.Parent.Parent).ItemIndex], DateTimeUtility.FormatType.LongDateWeekOfDay1Letter)%></dd>
			<dt>今後の配送予定：</dt>
			<dd><%#: DateTimeUtility.ToStringFromRegion(m_lFixedPurchaseNextShippingDates[((RepeaterItem)Container.Parent.Parent.Parent).ItemIndex], DateTimeUtility.FormatType.LongDateWeekOfDay1Letter)%></dd>
			<dt></dt>
			<dd><%#: DateTimeUtility.ToStringFromRegion(m_lFixedPurchaseNextNextShippingDates[((RepeaterItem)Container.Parent.Parent.Parent).ItemIndex], DateTimeUtility.FormatType.LongDateWeekOfDay1Letter)%></dd>
			<dt visible='<%# m_lShippingTimeSetFlgs[((RepeaterItem)Container.Parent.Parent.Parent).ItemIndex] %>' runat="server">配送希望時間帯：</dt>
			<dd visible='<%# m_lShippingTimeSetFlgs[((RepeaterItem)Container.Parent.Parent.Parent).ItemIndex] %>' runat="server"><%# WebSanitizer.HtmlEncode(m_lShippingTimeMessages[((RepeaterItem)Container.Parent.Parent.Parent).ItemIndex])%></dd>
		</dl>
		</div>
		<%-- △定期購入情報△ --%>

		<%-- ▽のし・包装情報▽ --%>
		<div class="box" visible='<%# ((string)this.OrderList[((RepeaterItem)GetOuterControl(Container, typeof(RepeaterItem))).ItemIndex][Container.ItemIndex][Constants.FIELD_SHOPSHIPPING_WRAPPING_PAPER_FLG] == Constants.FLG_SHOPSHIPPING_WRAPPING_PAPER_FLG_VALID) || ((string)this.OrderList[((RepeaterItem)GetOuterControl(Container, typeof(RepeaterItem))).ItemIndex][Container.ItemIndex][Constants.FIELD_SHOPSHIPPING_WRAPPING_BAG_FLG] == Constants.FLG_SHOPSHIPPING_WRAPPING_BAG_FLG_VALID) %>' runat="server">
		<em>のし・包装情報</em>
		<span visible='<%# (string)this.OrderList[((RepeaterItem)GetOuterControl(Container, typeof(RepeaterItem))).ItemIndex][Container.ItemIndex][Constants.FIELD_SHOPSHIPPING_WRAPPING_PAPER_FLG] == Constants.FLG_SHOPSHIPPING_WRAPPING_PAPER_FLG_VALID %>' runat="server">
		<dt>のし種類：</dt>
		<dd>
			<%# WebSanitizer.HtmlEncode(((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_WRAPPING_PAPER_TYPE) == "") ? "なし" : (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_WRAPPING_PAPER_TYPE))%>
		</dd>
		<dt>のし差出人：</dt>
		<dd>
			<%# WebSanitizer.HtmlEncode(((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_WRAPPING_PAPER_NAME) == "") ? "なし" : (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_WRAPPING_PAPER_NAME))%>
		</dd>
		</span>
		<span visible='<%# (string)this.OrderList[((RepeaterItem)GetOuterControl(Container, typeof(RepeaterItem))).ItemIndex][Container.ItemIndex][Constants.FIELD_SHOPSHIPPING_WRAPPING_BAG_FLG] == Constants.FLG_SHOPSHIPPING_WRAPPING_BAG_FLG_VALID %>' runat="server">
		<dt>包装種類：</dt>
		<dd>
			<%# WebSanitizer.HtmlEncode(((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_WRAPPING_BAG_TYPE) == "") ? "なし" : (string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERSHIPPING_WRAPPING_BAG_TYPE))%>
		</dd>
		</span>
		</div>
		<%-- △のし・包装情報△ --%>

		</div>
		<%-- △（デジタルコンテンツでない）△  --%>

	</ItemTemplate>
	</asp:Repeater>
	</div>
	<%-- △配送先・商品一覧（ギフトオン）△  --%>

	<div class="productList">
	<div class="cartOrder">
	<div class="subcartOrder">
	<%if (Constants.W2MP_POINT_OPTION_ENABLED && this.IsLoggedIn) { %>
	<div class="sumBox">
	<dl>
	<dt>獲得ポイント</dt>
	<dd><%# WebSanitizer.HtmlEncode(GetNumeric(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_POINT_ADD))) %>pt</dd>
	</dl>
	<small>※ 1pt = <%: CurrencyManager.ToPrice(1m) %></small>
	</div><!--sum-->
	<%} %>
	<div class="priceList">
	<div>
	<dl class="bgc">
	<dt>小計(<%#: this.ProductPriceTextPrefix %>)</dt>
	<dd><%#: CurrencyManager.ToPrice(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_PRICE_SUBTOTAL)) %></dd>
	</dl>
	<asp:Repeater DataSource='<%# GetOrderSetPromotions((DataView)Container.DataItem) %>' runat="server">
	<ItemTemplate>
		<span visible="<%# (string)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PRODUCT_DISCOUNT_FLG] == Constants.FLG_SETPROMOTION_PRODUCT_DISCOUNT_FLG_ON %>" runat="server">
		<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
			<dt><%#: GetOrderSetPromotionDispNameTranslationName(Container.DataItem) %></dt>
			<dd class='<%# ((decimal)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PRODUCT_DISCOUNT_AMOUNT] > 0) ? "minus" : "" %>'><%# ((decimal)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PRODUCT_DISCOUNT_AMOUNT] > 0) ? "-" : ""%><%#: CurrencyManager.ToPrice(StringUtility.ToNumeric(((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PRODUCT_DISCOUNT_AMOUNT])) %></dd>
		</dl>
		</span>
	</ItemTemplate>
	</asp:Repeater>
	<%if (Constants.MEMBER_RANK_OPTION_ENABLED && this.IsLoggedIn) { %>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
	<dt>会員ランク割引額</dt>
	<dd class='<%# ((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_MEMBER_RANK_DISCOUNT_PRICE) > 0) ? "minus" : "" %>'><%# ((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_MEMBER_RANK_DISCOUNT_PRICE) > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_MEMBER_RANK_DISCOUNT_PRICE)) %></dd>
	</dl>
	<%} %>
	<%if (Constants.MEMBER_RANK_OPTION_ENABLED && Constants.FIXEDPURCHASE_OPTION_ENABLED && this.IsLoggedIn) { %>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
	<dt>定期会員割引額</dt>
	<dd class='<%# ((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_FIXED_PURCHASE_MEMBER_DISCOUNT_AMOUNT) > 0) ? "minus" : "" %>'><%# ((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_FIXED_PURCHASE_MEMBER_DISCOUNT_AMOUNT) > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_FIXED_PURCHASE_MEMBER_DISCOUNT_AMOUNT)) %></dd>
	</dl>
	<%} %>
	<%if (Constants.W2MP_COUPON_OPTION_ENABLED) { %>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
	<dt>クーポン割引額</dt>
	<dd class='<%# ((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_COUPON_USE) > 0) ? "minus" : "" %>'><%# ((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_COUPON_USE) > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_COUPON_USE)) %></dd>
	</dl>
	<%} %>
	<%if (Constants.W2MP_POINT_OPTION_ENABLED && this.IsLoggedIn) { %>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
	<dt>ポイント利用額</dt>
	<dd class='<%# ((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_POINT_USE_YEN) > 0) ? "minus" : "" %>'><%# ((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_POINT_USE_YEN) > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_POINT_USE_YEN)) %></dd>
	</dl>
	<%} %>
	<%if (Constants.FIXEDPURCHASE_OPTION_ENABLED) { %>
	<span runat="server" visible='<%# ((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDERITEM_FIXED_PURCHASE_PRODUCT_FLG) == "1") %>'>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
	<dt>定期購入割引額</dt>
	<dd class='<%# ((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_FIXED_PURCHASE_DISCOUNT_PRICE) > 0) ? "minus" : "" %>'><%#: ((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_FIXED_PURCHASE_DISCOUNT_PRICE) > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_FIXED_PURCHASE_DISCOUNT_PRICE)) %></dd>
	</dl>
	</span>
	<%} %>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
	<dt>配送料金</dt>
	<dd runat="server" style='<%# ((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_SHIPPING_PRICE_SEPARATE_ESTIMATES_FLG) == Constants.FLG_SHOPSHIPPING_SHIPPING_PRICE_SEPARATE_ESTIMATES_FLG_VALID) ? "display:none;" : ""%>'>
		<%#: CurrencyManager.ToPrice((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_PRICE_SHIPPING)) %></dd>
	<dd runat="server" style='<%# ((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_SHIPPING_PRICE_SEPARATE_ESTIMATES_FLG) == Constants.FLG_SHOPSHIPPING_SHIPPING_PRICE_SEPARATE_ESTIMATES_FLG_INVALID) ? "display:none;" : ""%>'>
		<%# WebSanitizer.HtmlEncode((string)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_SHOPSHIPPING_SHIPPING_PRICE_SEPARATE_ESTIMATES_MESSAGE)) %></dd>
	</dl>
	<asp:Repeater DataSource='<%# GetOrderSetPromotions((DataView)Container.DataItem) %>' runat="server">
	<ItemTemplate>
		<span visible="<%# (string)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_SHIPPING_CHARGE_FREE_FLG] == Constants.FLG_SETPROMOTION_SHIPPING_CHARGE_FREE_FLG_ON %>" runat="server">
		<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
			<dt><%#: GetOrderSetPromotionDispNameTranslationName(Container.DataItem) %>(送料割引)</dt>
			<dd class='<%# ((decimal)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_SHIPPING_CHARGE_DISCOUNT_AMOUNT] > 0) ? "minus" : "" %>'><%# ((decimal)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_SHIPPING_CHARGE_DISCOUNT_AMOUNT] > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(StringUtility.ToNumeric(((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_SHIPPING_CHARGE_DISCOUNT_AMOUNT])) %></dd>
		</dl>
		</span>
	</ItemTemplate>
	</asp:Repeater>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
	<dt>決済手数料</dt>
	<dd><%#: CurrencyManager.ToPrice((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_PRICE_EXCHANGE)) %></dd>
	</dl>
	<asp:Repeater DataSource='<%# GetOrderSetPromotions((DataView)Container.DataItem) %>' runat="server">
	<ItemTemplate>
		<span visible="<%# (string)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PAYMENT_CHARGE_FREE_FLG] == Constants.FLG_SETPROMOTION_PAYMENT_CHARGE_FREE_FLG_ON %>" runat="server">
		<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
			<dt><%#: GetOrderSetPromotionDispNameTranslationName(Container.DataItem) %>(決済手数料割引)</dt>
			<dd class='<%# ((decimal)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PAYMENT_CHARGE_DISCOUNT_AMOUNT] > 0) ? "minus" : "" %>'><%# ((decimal)((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PAYMENT_CHARGE_DISCOUNT_AMOUNT] > 0) ? "-" : ""%><%#: CurrencyManager.ToPrice(StringUtility.ToNumeric(((Hashtable)Container.DataItem)[Constants.FIELD_ORDERSETPROMOTION_PAYMENT_CHARGE_DISCOUNT_AMOUNT])) %></dd>
		</dl>
		</span>
	</ItemTemplate>
	</asp:Repeater>
	<%if (this.ProductIncludedTaxFlg == false) { %>
		<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
			<dt>消費税</dt>
			<dd><%#: CurrencyManager.ToPrice((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_PRICE_TAX)) %></dd>
		</dl>
	<%} %>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>' visible="<%# (((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_PRICE_REGULATION)) != 0) %>" runat="server">
	<dt>調整金額</dt>
		<dd class='<%#: (((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_PRICE_REGULATION)) < 0) ? "minus" : "" %>'>
			<%#: ((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_PRICE_REGULATION) < 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(Math.Abs((decimal)DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_PRICE_REGULATION))) %>
		</dd>
	</dl>
	</div>

	<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
	<div>
	<dl class="result">
	<dt>合計(税込)</dt>
	<dd><%#: CurrencyManager.ToPrice(DataBinder.Eval(((IList)Container.DataItem)[0], Constants.FIELD_ORDER_ORDER_PRICE_TOTAL)) %></dd>
	<%if (Constants.GLOBAL_OPTION_ENABLE) { %>
	<dt>決済金額：</dt>
	<dd><%#: GetSettlementAmount(((IList)Container.DataItem)[0]) %></dd>
	<% } %>
	</dl>
	</div>
	</div><!--priceList-->
	<br class="clr" />
	</div><!--subcartOrder-->
	</div><!--cartOrder-->
	</div><!--productList-->
	</div><!--bottom-->
	</div><!--background-->
	</div><!--orderComplete-->
	<%-- ▲注文内容▲ --%>

	<%-- ▼獲得ポイント表示▼ --%>
	<div class="orderCompleteSum" visible="<%# (((IList)((Repeater)Container.Parent).DataSource).Count == (Container.ItemIndex + 1)) %>" runat="server">
	<div class="suborderCompleteSum">
	<%if (Constants.W2MP_POINT_OPTION_ENABLED && this.IsLoggedIn) { %>
	<div class="left">
	<div class="sumBox">
	<dl>
	<dt>総獲得ポイント</dt>
	<dd><%# GetNumeric(GetOrderPointAddTotal((IList)((Repeater)Container.Parent).DataSource)) %> pt</dd>
	</dl>
	<small>※ 1pt = <%: CurrencyManager.ToPrice(1m) %></small>
	</div><!--sum-->
	</div><!--left-->
	<%} %>
	<div class="right">
	<div class="sumBox">
	<div class="subSumBoxB">
	<p><img src="../../Contents/ImagesPkg/common/ttl_sum.gif" alt="総合計" width="52" height="16" /><strong><%#: CurrencyManager.ToPrice(GetOrderPriceTotalSummary((IList)((Repeater)Container.Parent).DataSource)) %></strong></p>
	<small class="InternationalShippingAttention" runat="server" visible="<%# IsDisplayProductTaxExcludedMessage(Container.DataItem) %>">※国外配送をご希望の場合関税・商品消費税は料金に含まれず、商品到着後、現地にて税をお支払いいただくこととなりますのでご注意ください。</small>
	</div>
	</div><!--sum-->
	<span class="btn_continue_shopping"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT) %>" class="btn btn-large btn-inverse"><small>買い物を続ける</small></a></span>
	</div><!--right-->
	<br class="clr" />
	</div><!--suborderCompleteSum-->
	</div><!--orderCompleteSum-->
	<%-- ▲獲得ポイント表示▲ --%>
</ItemTemplate>
</asp:Repeater>

<uc:BodyProductRecommendByRecommendEngine runat="server" RecommendCode="p015" ItemCode="<%# GetLastAddedCartProduct() %>" MaxDispCount="6" ImageSize="M"  />
<uc:BodyProductRecommendByRecommendEngine runat="server" RecommendCode="p016" MaxDispCount="6" ImageSize="M" Visible="false" />

<%-- ▼GoogleAnalyticsログ出力（UniversalAnalytics版）▼ --%>
<% if ((Constants.GOOGLEANALYTICS_ENABLED) && (Constants.SETTING_PRODUCTION_ENVIRONMENT)) { %>
<script type="text/javascript" charset="Shift_JIS" src="<%= Constants.PATH_ROOT %>Js/jquery.cookie.js"></script>
<asp:Repeater ID="rGoogleAnalytics" runat="server">
<HeaderTemplate>
	<%-- e コマース プラグイン読み込み --%>
	<script type='text/javascript'>
		(function (i,s,o,g,r,a,m) {
			i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date(); a = s.createElement(o),
			m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
		})(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');
		ga('create', '<%= Constants.GOOGLEANALYTICS_PROFILE_ID %>', 'auto');
		ga('send', 'pageview');
	</script>
</HeaderTemplate>
<ItemTemplate>
	<script type='text/javascript'>
	<%-- GoogleAnalyticsタグ制御用注文IDが存在する？--%>
	    var cookieKey = '<%# Constants.COOKIE_KEY_GOOGLEANALYTICS_ORDER_ID + (string)((Hashtable)Container.DataItem)[Constants.FIELD_ORDER_ORDER_ID] %>';
	    if (!$.cookie(cookieKey)) {

			<%-- 注文明細 --%>
		    ga('require', 'ecommerce', 'ecommerce.js');
		    ga('ecommerce:addTransaction', { 
			// OrderID
		        'id':'<%# WebSanitizer.HtmlEncode(((Hashtable)Container.DataItem)[Constants.FIELD_ORDER_ORDER_ID]) %>',
			// Affiliation
		        'affiliation':'',
			// Total
		        'revenue':'<%#: ((Hashtable)Container.DataItem)[Constants.FIELD_ORDER_ORDER_PRICE_TOTAL].ToPriceString() %>',
			// Shipping
			    'shipping':'<%#: ((Hashtable)Container.DataItem)[Constants.FIELD_ORDER_ORDER_PRICE_SHIPPING].ToPriceString() %>',
		        // Tax
		        'tax':'',
			// City
		        //'<%# WebSanitizer.HtmlEncode(((Hashtable)Container.DataItem)[Constants.FIELD_ORDEROWNER_OWNER_ADDR2]) %>',
			// State
		        //'<%# WebSanitizer.HtmlEncode(((Hashtable)Container.DataItem)[Constants.FIELD_ORDEROWNER_OWNER_ADDR1]) %>',
			// Country
		        'currency':'JPY'
		    });

			<%-- 注文商品明細 --%>
		<asp:Repeater DataSource='<%# ((Hashtable)Container.DataItem)["order_items"] %>' runat="server">
		<ItemTemplate>
				ga('ecommerce:addItem', { 
			// Order ID
				    'id':'<%# WebSanitizer.HtmlEncode(((Hashtable)Container.DataItem)[Constants.FIELD_ORDER_ORDER_ID]) %>',
				    // Product Name
				    'name':'<%# WebSanitizer.HtmlEncode(((Hashtable)Container.DataItem)[Constants.FIELD_ORDERITEM_PRODUCT_NAME]) %>',
			// SKU
				    'sku':'<%# WebSanitizer.HtmlEncode(((Hashtable)Container.DataItem)[Constants.FIELD_ORDERITEM_VARIATION_ID]) %>',
			// Brand + Category
				    'category':'<%# WebSanitizer.HtmlEncode(GetProductBrandName((Hashtable)Container.DataItem) + GetProductCategoryName((Hashtable)Container.DataItem)) %>',
			// Price
				    'price':'<%#: ((Hashtable)Container.DataItem)[Constants.FIELD_ORDERITEM_PRODUCT_PRICE].ToPriceString() %>',
			// Quantity
				    'quantity':'<%# WebSanitizer.HtmlEncode(((Hashtable)Container.DataItem)[Constants.FIELD_ORDERITEM_ITEM_QUANTITY]) %>'
				});
		</ItemTemplate>
		</asp:Repeater>

            $.cookie(cookieKey, null);
        }
	</script>
</ItemTemplate>
<FooterTemplate>
	<script type='text/javascript'>
		ga('ecommerce:send');
	</script>
</FooterTemplate>
</asp:Repeater>
<%} %>
<%-- ▲GoogleAnalyticsログ出力（UniversalAnalytics版）▲ --%>

<%-- CRITEOタグ（引数：注文情報） --%>
<uc:Criteo ID="criteo" runat="server" Datas="<%# this.OrderList %>" />

</div>
</div>
</asp:Content>
