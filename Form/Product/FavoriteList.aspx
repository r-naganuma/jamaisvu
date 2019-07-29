<%--
=========================================================================================================
  Module      : お気に入り一覧画面(FavoriteList.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="BodyProductVariationImages" Src="~/Form/Common/Product/BodyProductVariationImages.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductRecommendByRecommendEngine" Src="~/Form/Common/Product/BodyProductRecommendByRecommendEngine.ascx" %>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_Product_FavoriteList, App_Web_favoritelist.aspx.1e99e05" title="お気に入りページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<link href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + "Css/product.css")%>" rel="stylesheet" type="text/css" media="all" />
<%-- △編集可能領域△ --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>お気に入りリスト</h2>

	<div class="registWrap_box">
		<!-- ///// お気に入りリスト一覧 ///// -->
			<asp:Repeater id="rFavoriteList" runat="server">
				<HeaderTemplate>
					<div class="favoriteArea">
				</HeaderTemplate>
				<ItemTemplate>
						<ul>
							<li class="favoriteAreaPic">
								<div class="favoriteProductImage">
									<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl(Container.DataItem)) %>'>
									<w2c:ProductImage ImageSize="L" ProductMaster="<%# Container.DataItem %>" IsVariation="false" runat="server" /></a>
								</div>
							</li>
							<li class="favoriteAreaName">
								<a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl(Container.DataItem)) %>">
									<%# WebSanitizer.HtmlEncode(Eval(Constants.FIELD_PRODUCT_NAME)) %></a>
							</li>
							<li class="favoriteAreaPrice">
								<%-- ▽商品会員ランク価格有効▽ --%>
								<p visible='<%# ProductPage.GetProductMemberRankPriceValid(Container.DataItem) %>' runat="server">
								<span style="text-decoration: line-through"><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>(tax in)</span><br />
								<span style="color: #f00;"><%#: CurrencyManager.ToPrice(ProductPage.GetProductMemberRankPrice(Container.DataItem)) %>(tax in)</span>
								</p>

								<%-- ▽商品セール価格有効▽ --%>
								<p visible='<%# ProductPage.GetProductTimeSalesValid(Container.DataItem) %>' runat="server" class="special">
								<span style="text-decoration: line-through"><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>(tax in)</span><br />
								<span style="color: #f00;"><%#: CurrencyManager.ToPrice(ProductPage.GetProductTimeSalePriceNumeric(Container.DataItem)) %>(tax in)</span>
								</p>
								<%-- △商品セール価格有効△ --%>

								<%-- ▽商品特別価格有効▽ --%>
								<p visible='<%# ProductPage.GetProductSpecialPriceValid(Container.DataItem) %>' runat="server">
								<span style="text-decoration: line-through"><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %><span class="price_tax">（<%# WebSanitizer.HtmlEncode(ProductPage.GetTaxIncludeString(Container.DataItem)) %>)</span></span><br />
								<span style="color: #f00;"><%#: CurrencyManager.ToPrice(ProductPage.GetProductSpecialPriceNumeric(Container.DataItem)) %>(tax in)</span>
								</p>

								<%-- ▽商品通常価格有効▽ --%>
								<p visible='<%# ProductPage.GetProductNormalPriceValid(Container.DataItem) %>' runat="server">
								<%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>(tax in)
								</p>

								<%-- ▽商品定期購入価格▽ --%>
								<% if (Constants.FIXEDPURCHASE_OPTION_ENABLED) {%>
								<p visible='<%# (StringUtility.ToValue(ProductPage.GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_FIXED_PURCHASE_FLG), "").ToString() != Constants.FLG_PRODUCT_FIXED_PURCHASE_FLG_INVALID) %>' runat="server">
									<span visible='<%# ProductPage.IsProductFixedPurchaseFirsttimePriceValid(Container.DataItem) %>' runat="server">
										定期初回:<%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchaseFirsttimePrice(Container.DataItem)) %><span class="price_tax">（<%#: ProductPage.GetTaxIncludeString(Container.DataItem) %>）</span>
										<br />
									</span>
									定期通常:<%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchasePrice(Container.DataItem)) %><span class="price_tax">（<%#: ProductPage.GetTaxIncludeString(Container.DataItem) %>）</span>
								</p>
								<% } %>
								<%-- △商品定期購入価格△ --%>
							</li>
							<li class="favoriteAreaDelete">
								<!-- ///// お気に入りから削除 ///// -->
								<asp:LinkButton id="lbDelete" CommandArgument="<%# Eval(Constants.FIELD_FAVORITE_PRODUCT_ID) %>" OnClientClick="return confirm('本当に削除してもよろしいですか？')" OnClick="lbDelete_Click" runat="server"><img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_star_favo.png" alt="削除"></asp:LinkButton>
							</li>
						</ul>
				</ItemTemplate>
				<FooterTemplate>
					</div>
				</FooterTemplate>
			</asp:Repeater>
		<%-- エラーメッセージ --%>
		<% if (StringUtility.ToEmpty(this.ErrorMessage) != ""){ %>
			<p><%= this.ErrorMessage %></p>
		<% } %>

		<!-- ///// ページャ ///// -->
		<!-- <div id="pagination" class="below clearFix"><%= this.PagerHtml %></div> -->

		<div class="submitBtnBox">
			<a href="javascript:history.back()" class="prevBtn">戻る</a>
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
				お気に入りリスト
			</a>
		</li>
	</ul>
</div>
</asp:Content>