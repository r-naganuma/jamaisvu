<%--
=========================================================================================================
  Module      : 注文履歴一覧画面(OrderHistoryList.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%@ Register TagPrefix="uc" TagName="BodyProductArrivalMailRegisterTr" Src="~/Form/Common/Product/BodyProductArrivalMailRegisterTr.ascx" %>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_Order_OrderHistoryList, App_Web_orderhistorylist.aspx.a8f71c32" title="購入履歴一覧ページ" %>
<asp:Content ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" charset="Shift_JIS" src="<%= Constants.PATH_ROOT %>Js/floatingWindow.js"></script>
</asp:Content>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%-- UPDATE PANEL開始 --%>
<asp:UpdatePanel ID="upUpdatePanel" runat="server">
<ContentTemplate>

<%-- カート投入ボタン押下時にどの画面へ遷移するか？ --%>
<%-- CART：カート一覧画面 CSCART:クロスセルカート画面 その他：画面遷移しない --%>
<asp:HiddenField ID="hfIsRedirectAfterAddProduct" Value="CART" runat="server" />

<div class="registWrap mypageCts">
	<h2>購入履歴</h2>

	<p class="catchTxt">お客様のご購入履歴がご確認いただけます。<br>
	履歴への反映にはお時間がかかる場合がありますので、その場合はお時間を置いて再度ご確認ください。</p>

	<div class="registWrap_box">

		<%-- 注文履歴一覧 --%>
			<asp:Repeater ID="rOrderList" Runat="server">
				<ItemTemplate>
					<h3>
						<%#: ValueText.GetValueText(Constants.TABLE_ORDER, Constants.FIELD_ORDER_ORDER_STATUS, Eval(Constants.FIELD_ORDER_ORDER_STATUS)) %><%#: (string)Eval(Constants.FIELD_ORDER_SHIPPED_CHANGED_KBN) == Constants.FLG_ORDER_SHIPPED_CHANGED_KBN_CHANAGED ? "（変更有り）" : "" %><br class="sp_contents">
						<span class="historyTtlSpan">注文日：<%#: DateTimeUtility.ToStringFromRegion(Eval(Constants.FIELD_ORDER_ORDER_DATE), DateTimeUtility.FormatType.ShortDate2Letter) %></span>
						<span class="historyTtlSpan">発送予定日：<%#: GetScheduledShippingDate(Eval(Constants.FIELD_ORDER_ORDER_ID).ToString()) %></span>
					</h3>
					<div class="registWrap_box--input orderHistoryList">
						<div class="orderHistoryList_left">
							<asp:Repeater ID="rOrderItemList" DataSource="<%# GetOrderItemModels((string)Eval(Constants.FIELD_ORDER_ORDER_ID)) %>" ItemType="w2.Domain.Order.OrderItemModel" Runat="server">
								<ItemTemplate>
									<div class="orderHistoryList_left--column">
										<a href='<%#: Constants.PATH_ROOT + Constants.PAGE_FRONT_ORDER_HISTORY_DETAIL + "?" + Constants.REQUEST_KEY_ORDER_ID + "=" + HttpUtility.UrlEncode((string)DataBinder.Eval(((RepeaterItem)Container.Parent.Parent).DataItem, Constants.FIELD_ORDER_ORDER_ID)) %>'></a>
										<div class="itemImage">
											<w2c:ProductImage ImageSize="L" ProductMaster="<%# Item.DataSource %>" IsVariation="true" runat="server" Visible="true" />
										</div>
										<div class="itemTtl">
											<p class="itemTtl_name"><%#: Item.ProductName %></p>
											<p class="itemTtl_pdc">
												価格　：<%#: Item.ItemPrice %><br>
												数量　：<%#: Item.ItemQuantity %></p>
										</div>
									</div>
								</ItemTemplate>
							</asp:Repeater>
						</div>
						<div class="orderHistoryList_right">
							<dl>
								<dt class="orderNum" colspan="<%#: (Constants.FIXEDPURCHASE_OPTION_ENABLED)? "1": "2" %>">
									<a href='<%#: Constants.PATH_ROOT + Constants.PAGE_FRONT_ORDER_HISTORY_DETAIL + "?" + Constants.REQUEST_KEY_ORDER_ID + "=" + HttpUtility.UrlEncode((string)Eval(Constants.FIELD_ORDER_ORDER_ID)) %>'></a>
									ご注文番号
								</dt>
								<dd>
									<%#: Eval(Constants.FIELD_ORDER_ORDER_ID) %>
								</dd>
								<dt>
									お支払い金額
								</dt>
								<dd>
									<%#: CurrencyManager.ToPrice(Eval(Constants.FIELD_ORDER_ORDER_PRICE_TOTAL)) %>（税込）
								</dd>
								<dt>
									お支払い方法
								</dt>
								<dd>

								</dd>
								<dt>
									配送希望日
								</dt>
								<dd>
									<%# WebSanitizer.HtmlEncodeChangeToBr(GetShippingDate(Eval(Constants.FIELD_ORDER_ORDER_ID).ToString())) %>
								</dd>
							</dl>
							<a href='<%#: Constants.PATH_ROOT + Constants.PAGE_FRONT_ORDER_HISTORY_DETAIL + "?" + Constants.REQUEST_KEY_ORDER_ID + "=" + HttpUtility.UrlEncode((string)Eval(Constants.FIELD_ORDER_ORDER_ID)) %>' class="orderHistoryBtnDetail">購入履歴詳細</a>
						</div>
					</div>
				</ItemTemplate>
			</asp:Repeater>
		
		<%-- 注文商品一覧 --%>
		<div class="dvFavoriteList" style="display: none;">
			<asp:Repeater ID="rOrderProductsList" onitemcommand="AddCartVariationList_ItemCommand" ItemType="DataRowView" Runat="server">
				<HeaderTemplate>
				<div id="sortBox" class="clearFix">
					<%-- 表示切替 --%>
					<p class="title">表示切替</p>
					<ul class="nav clearFix"><!--
						--><li><a href="<%#: this.UrlChangeDisplayType %>">注文一覧</a><li><!--
						--><li class="active">注文商品一覧</li>
					</ul>
				</div>
					<%-- ページャ --%><div id="pagination" class="above clearFix"><%= this.PagerHtml %></div>
				<div>※商品情報が取得できない場合、一覧に表示できないことがあります。</div>
				<table cellspacing="0">
					<tr>
						<th class="orderItemProductName" colspan="2">
							&nbsp;&nbsp;商品名</th>
						<th class="orderItemProductInfo">
							&nbsp;</th>
						<th class="orderNum">
							最近のご購入日</th>
					</tr>
				</HeaderTemplate>
				<ItemTemplate>
					<tr>
						<td class="orderItemProductName">
							<%-- 一致する商品IDが現在も存在する場合、商品詳細ページへのリンクを表示する --%>
							<a href='<%#: CreateProductDetailVariationUrl(Item) %>' runat="server" Visible="<%# IsProductValid(Item) %>">
								<w2c:ProductImage ImageSize="M" ProductMaster="<%# Item %>" IsVariation="false" runat="server" CssClass="imgProductImage"/>
							</a>
							<w2c:ProductImage ImageSize="M" ProductMaster="<%# Item %>" IsVariation="false" runat="server" Visible="<%# (IsProductValid(Item) == false) %>" CssClass="imgProductImage"/>
						</td>
						<td class="orderItemProductName">
							<%-- 一致する商品IDが現在も存在する場合、商品詳細ページへのリンクを表示する --%>
							<a href='<%#: CreateProductDetailVariationUrl(Item) %>' target="_blank" runat="server" Visible="<%# IsProductValid(Item) %>">
								<%#: Eval(CONST_ORDER_ITEM_VARIATION_NAME)%>
							</a>
							<%# (IsProductValid(Item) == false) ? WebSanitizer.HtmlEncode(Eval(CONST_ORDER_ITEM_VARIATION_NAME)) : ""%>
							[&nbsp;<%#: Eval(Constants.FIELD_PRODUCT_PRODUCT_ID) %>&nbsp;]
						</td>
						<td class="orderItemProductInfo">
							<%-- ===================================================== --%>
							<%-- アイコン --%>
							<%-- 
							<w2c:ProductIcon ID="ProductIcon1" IconNo="1" ProductMaster="<%# Item %>" runat="server" />
							<w2c:ProductIcon ID="ProductIcon2" IconNo="2" ProductMaster="<%# Item %>" runat="server" />
							<w2c:ProductIcon ID="ProductIcon3" IconNo="3" ProductMaster="<%# Item %>" runat="server" />
							<w2c:ProductIcon ID="ProductIcon4" IconNo="4" ProductMaster="<%# Item %>" runat="server" />
							<w2c:ProductIcon ID="ProductIcon5" IconNo="5" ProductMaster="<%# Item %>" runat="server" />
							<w2c:ProductIcon ID="ProductIcon6" IconNo="6" ProductMaster="<%# Item %>" runat="server" />
							<w2c:ProductIcon ID="ProductIcon7" IconNo="7" ProductMaster="<%# Item %>" runat="server" />
							<w2c:ProductIcon ID="ProductIcon8" IconNo="8" ProductMaster="<%# Item %>" runat="server" />
							<w2c:ProductIcon ID="ProductIcon9" IconNo="9" ProductMaster="<%# Item %>" runat="server" />
							<w2c:ProductIcon ID="ProductIcon10" IconNo="10" ProductMaster="<%# Item %>" runat="server" />
							<br />
							--%>
							<%-- ===================================================== --%>
							<%-- 価格 --%>
							<li class="plPrice">
							<%-- ▽商品会員ランク価格有効▽ --%>
							<span visible='<%# GetProductMemberRankPriceValid(Item, true) %>' runat="server">
							販売価格:<span class="productPrice"><strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Item, true)) %>（<%#: GetTaxIncludeString(Item) %>）</strike></span><br />
							<span>会員ランク価格:<%#: CurrencyManager.ToPrice(ProductPage.GetProductMemberRankPrice(Item, true)) %></span>(<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Item)) %>)
							</span>
							<%-- △商品会員ランク価格有効△ --%>
							<%-- ▽商品セール価格有効▽ --%>
							<span visible='<%# GetProductTimeSalesValid(Item) %>' runat="server">
							販売価格:<span class="productPrice"><strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Item, true)) %>（<%#: GetTaxIncludeString(Item) %>）</strike></span><br />
							<span>タイムセールス価格:<%#: CurrencyManager.ToPrice(ProductPage.GetProductTimeSalePriceNumeric(Item)) %></span>（<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Item)) %>）
							</span>
							<%-- △商品セール価格有効△ --%>
							<%-- ▽商品特別価格有効▽ --%>
							<span visible='<%# GetProductSpecialPriceValid(Item, true) %>' runat="server">
							販売価格:<span class="productPrice"><strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Item, true)) %>（<%#: GetTaxIncludeString(Item) %>）</strike></span><br />
							<span>特別価格:<%#: CurrencyManager.ToPrice(ProductPage.GetProductSpecialPriceNumeric(Item, true)) %></span>（<%#: GetTaxIncludeString(Item) %>）
							</span>
							<%-- △商品特別価格有効△ --%>
							<%-- ▽商品通常価格有効▽ --%>
							<span visible='<%# GetProductNormalPriceValid(Item, true) %>' runat="server">
							販売価格:<span class="productPrice"><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Item, true)) %></span>（<%#: GetTaxIncludeString(Item) %>）
							</span>
							<%-- △商品通常価格有効△ --%>
							<%-- ▽商品定期購入価格▽ --%>
							<% if (Constants.FIXEDPURCHASE_OPTION_ENABLED) {%>
							<span visible='<%# (GetKeyValue(Item, Constants.FIELD_PRODUCT_FIXED_PURCHASE_FLG).ToString() != Constants.FLG_PRODUCT_FIXED_PURCHASE_FLG_INVALID) %>' runat="server">
								<span visible='<%# IsProductFixedPurchaseFirsttimePriceValid(Item, true) %>' runat="server">
									<br />
									定期初回価格:<%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchaseFirsttimePrice(Item, true)) %>（<%#: GetTaxIncludeString(Item) %>）
								</span>
								<br />
								定期通常価格:<%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchasePrice(Item, true)) %>（<%#: GetTaxIncludeString(Item) %>）
							</span>
							<% } %>
							<%-- △商品定期購入価格△ --%>
							<%-- ▽商品加算ポイント▽ --%>
							<p visible='<%# (this.IsLoggedIn && (GetProductAddPointString(Item) != "")) %>' runat="server">
							<span class="addPoint">ポイント<%#: GetProductAddPointString(Item) %></span><span id="Span5" visible='<%# ((string)GetKeyValue(Item, Constants.FIELD_PRODUCT_POINT_KBN1)) != Constants.FLG_PRODUCT_POINT_KBN1_NUM %>' runat="server">(<%# WebSanitizer.HtmlEncode(GetProductAddPointCalculateAfterString(Item, false, false))%>)
							</span>
							</p>
							<%-- △商品加算ポイント△ --%>

							<%-- ▽在庫切れ可否▽ --%>
							<p visible='<%# ProductListUtility.IsProductSoldOut(Item) %>' runat="server" class="soldout">SOLDOUT</p>
							<%-- △在庫切れ可否△ --%>

							<%-- ▽商品タグ項目：メーカー▽ --%>
							<span visible='<%# StringUtility.ToEmpty(GetKeyValue(Item, "tag_manufacturer")) != "" %>' runat="server">
							メーカー:<%#: GetKeyValue(Item, "tag_manufacturer") %>
							</span>
							<%-- △商品タグ項目：メーカー△ --%>
							</li>
							<%-- ===================================================== --%>
							<%-- カート投入ボタン --%>
							<p class="addCart">
							<%-- カートに入れるボタン表示 --%>
							<%-- カートに入れる処理（商品一覧ページと同じにする ※記述が一部異なるので注意） --%>
							<div>
							<asp:LinkButton ID="lbCartAddVariationList" runat="server" Visible='<%# (bool)GetHistoryItemKeyValue(Container.ItemIndex, "CanCart") && IsProductValid(Item) %>' CommandName="CartAdd" OnClientClick="return actionDisplayAddCartPopup();" class="btn btn-mini btn-inverse">
							カートに入れる
							</asp:LinkButton>
							</div>
							<%-- 定期購入ボタン表示 --%>
							<div style="margin-top:3px">
							<asp:LinkButton ID="lbCartAddFixedPurchaseVariationList" runat="server" Visible='<%# (bool)GetHistoryItemKeyValue(Container.ItemIndex, "CanFixedPurchase") && IsProductValid(Item) %>' OnClientClick="return add_cart_check_for_fixedpurchase_variationlist();" CommandName="CartAddFixedPurchase" class="btn btn-mini btn-inverse">
							カートに入れる(定期購入)
							</asp:LinkButton>
							</div>
							<%-- ギフト購入ボタン表示 --%>
							<%-- 
							<div>
							<asp:LinkButton ID="lbCartAddForGiftVariationList" runat="server" Visible='<%# (bool)GetHistoryItemKeyValue(Container.ItemIndex, "CanGiftOrder") && IsProductValid(Item) %>' CommandName="CartAddGift" >
							カートに入れる(ギフト購入)
							</asp:LinkButton>
							</div>
							--%>
							</p>
							<%-- 在庫文言の表示 --%>
							<p runat="server" visible='<%# GetHistoryItemKeyValue(Container.ItemIndex, "StockMessage").ToString() != "" %>'>
							在庫状況：<%# GetHistoryItemKeyValue(Container.ItemIndex, "StockMessage") %><br />
							</p>
							<%-- ===================================================== --%>
							<%-- 入荷通知メールボタン --%>
							<p class="arrivalMailButton">
							<%-- 再入荷通知メール申し込みボタン表示 --%>
							<div visible='<%# ((string)GetHistoryItemKeyValue(Container.ItemIndex, "ArrivalMailKbn") == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL) %>' runat="server">
							<asp:LinkButton CommandName="SmartArrivalMail" CommandArgument="Arrival" Runat="server" class="btn btn-mini btn-inverse">
							入荷お知らせメール申込
							</asp:LinkButton>
							</div>
							<%-- 販売開始通知メール申し込みボタン表示 --%>
							<%-- 
							<div visible='<%# ((string)GetHistoryItemKeyValue(Container.ItemIndex, "ArrivalMailKbn") == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE) %>' runat="server">
							<asp:LinkButton ID="lbRequestReleaseMailVariationList2" Runat="server" OnClientClick="<%# CreateArivalMail2ClientScript(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE, (string)GetKeyValue(Item, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID), (string)GetKeyValue(Item, Constants.FIELD_PRODUCTVARIATION_PRODUCT_ID)) %>" class="btn btn-mini btn-inverse">
							販売開始通知メール申込
							</asp:LinkButton>
							</div>
							--%>
							<%-- 再販売通知メール申し込みボタン表示 --%>
							<div visible='<%# ((string)GetHistoryItemKeyValue(Container.ItemIndex, "ArrivalMailKbn") == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE) %>' runat="server">
							<asp:LinkButton CommandName="SmartArrivalMail" CommandArgument="Resale" Runat="server" class="btn btn-mini btn-inverse">
							再販売通知メール申込
							</asp:LinkButton>
							</div>
							<%-- エラー表示 --%>
							<p class="error"><%#: GetKeyValue(Item, "ErrorMessage") %></p>
							</p>
							<%-- ===================================================== --%>
							<%-- Repeater用隠しフィールド --%>
							<asp:HiddenField ID="hfProductId" Value="<%# GetKeyValue(Item, Constants.FIELD_PRODUCTVARIATION_PRODUCT_ID) %>" runat="server" />
							<asp:HiddenField ID="hfVariationId" Value="<%# GetKeyValue(Item, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID) %>" runat="server" />
							<asp:HiddenField ID="hfArrivalMailKbn" Value='<%# GetHistoryItemKeyValue(Container.ItemIndex, "ArrivalMailKbn") %>' runat="server" />
							<%-- ===================================================== --%>

						</td>
						<td class="orderDate">
							<%#: DateTimeUtility.ToStringFromRegion(Eval(Constants.FIELD_ORDER_ORDER_DATE), DateTimeUtility.FormatType.ShortDate2Letter) %><br />
							
							<a href='<%#: Constants.PATH_ROOT + Constants.PAGE_FRONT_ORDER_HISTORY_DETAIL + "?" + Constants.REQUEST_KEY_ORDER_ID + "=" + HttpUtility.UrlEncode((string)Eval(Constants.FIELD_ORDER_ORDER_ID)) %>' class="btn btn-mini">
								ご注文時の内容</a>
						</td>
					</tr>
					<%-- 再入荷通知メール登録フォーム表示 --%>
					<uc:BodyProductArrivalMailRegisterTr runat="server" ID="ucBpamrArrival" ArrivalMailKbn="<%#: Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL %>" ProductId="<%#: GetKeyValue(Item, Constants.FIELD_PRODUCT_PRODUCT_ID) %>" VariationId="<%#: GetKeyValue(Item, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID) %>" Visible="false" />
					<%-- 再入荷通知メール登録フォーム表示 --%>
					<uc:BodyProductArrivalMailRegisterTr runat="server" ID="ucBpamrResale" ArrivalMailKbn="<%#: Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE %>" ProductId="<%#: GetKeyValue(Item, Constants.FIELD_PRODUCT_PRODUCT_ID) %>" VariationId="<%#: GetKeyValue(Item, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID) %>" Visible="false" />
				</ItemTemplate>
				<FooterTemplate>
					</table>
				</FooterTemplate>
			</asp:Repeater>
		</div>
		
		<%-- 購入履歴なし--%>
		<% if(StringUtility.ToEmpty(this.AlertMessage) != "") {%>
			<%= this.AlertMessage %>
		<%} %>

		<%-- ページャ--%>
		<!-- <div id="pagination" class="below clearFix"><%= this.PagerHtml %></div> -->
	</div>

	<p class="catchTxt">ログインせずにご注文いただいた場合、こちらの注文履歴には反映されません。<br>
	配信される「注文確定メール」より、内容をご確認ください。</p>

	<div class="submitBtnBox">
		<a href="javascript:history.back()" class="prevBtn">戻る</a>
	</div>
</div>

</ContentTemplate>
</asp:UpdatePanel>
<%-- UPDATE PANELここまで --%>

<%-- ポップアップ表示内容の定義 --%>
<div id="addCartResultPopup">
	<div>
		<div class="popupTitle"><strong>商品をカートに入れる入れました</strong></div>
		<br />
		<br />
		カート画面で、商品数量を<br />
		ご確認の上ご購入ください。<br />
		<br />
		<br />
		<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_CART_LIST) %>">カートを見る</a>&nbsp;&nbsp;&nbsp;<a class="closePopup" onclick="return closeAddcartPopup();">閉じる</a><br />
	</div>
</div>

<script type="text/javascript">
<!--
	// フローティングウィンドウ表示
	function actionDisplayAddCartPopup() {
		displayAddCartPopup($('#<%: hfIsRedirectAfterAddProduct.ClientID %>').val());
	}

	// 入荷通知登録画面をポップアップウィンドウで開く
	function show_arrival_mail_popup(pid, vid, amkbn) {
		show_popup_window('<%= this.SecurePageProtocolAndHost %><%= Constants.PATH_ROOT %><%= Constants.PAGE_FRONT_USER_PRODUCT_ARRIVAL_MAIL_REGIST %>?<%= Constants.REQUEST_KEY_PRODUCT_ID %>=' + pid + '&<%= Constants.REQUEST_KEY_VARIATION_ID %>=' + vid + '&<%= Constants.REQUEST_KEY_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN %>=' + amkbn, 520, 310, true, true, 'Information');
	}
	// マウスイベントの初期化
	addOnload(function () { init(); });

	-->
</script>

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
				購入履歴
			</a>
		</li>
	</ul>
</div>

</asp:Content>