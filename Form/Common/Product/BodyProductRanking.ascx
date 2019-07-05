<%--
=========================================================================================================
  Module      : 商品ランキング出力コントローラ(BodyProductRanking.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="BodyProductVariationImages" Src="~/Form/Common/Product/BodyProductVariationImages.ascx" %>
<%@ control language="C#" autoeventwireup="true" inherits="Form_Common_Product_BodyProductRanking, App_Web_bodyproductranking.ascx.acb385f3" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
タイトルタグはカスタムパーツのみ利用します。
<%@ Page Title="無名のパーツ" %>
<%@ FileInfo LastChanged="ｗ２ユーザー" %>

--%>
<script runat="server">
public new void Page_Init(Object sender, EventArgs e)
{
base.Page_Init(sender, e);

<%-- ▽編集可能領域：プロパティ設定▽ --%>
//商品最大表示件数を設定します (MAX10)
this.MaxDispCount = 6;

//商品画像サイズを設定します (S/M/L/LL)
this.ImageSize = "L";

//表示区分を設定します (SRK,商品ランキングID)
this.DataKbn = "111";
<%-- △編集可能領域△ --%>
}
</script>

<%-- ▽編集可能領域：コンテンツ▽ --%>
	<% if (this.ProductCount > 0) { %>
	<asp:Repeater ID="rProducts" runat="server">
	<HeaderTemplate>

    <div class="sec sec--ranking">
        <div class="sec__inner">
            <h2 class="vertical-title">
                RANKING
            </h2>
            <div class="rankingContent">
                <div class="rankingContent__list">
	</HeaderTemplate>
	<ItemTemplate>
                    <div class="rankingContent__list-item">
                        <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/rank_no<%# Container.ItemIndex+1 %>.png" alt="" class="rankingContent__list-item--num">
                        <% if(Constants.LAYER_DISPLAY_VARIATION_IMAGES_ENABLED){ %>
						<uc:BodyProductVariationImages ImageSize="<%# this.ImageSize %>" ProductMaster="<%# Container.DataItem %>" VariationList="<%# this.ProductVariationList %>" VariationNo="<%# Container.ItemIndex.ToString() %>" runat="server" />
						<% } else { %>
						<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl(Container.DataItem)) %>'>
						<w2c:ProductImage ImageSize="<%# this.ImageSize %>" ProductMaster="<%# Container.DataItem %>" IsVariation="false" runat="server" /></a>
						<% } %>
						<%-- ▽在庫切れ可否▽ --%>
						<span visible='<%# ProductListUtility.IsProductSoldOut(Container.DataItem) %>' runat="server" class="soldout">SOLDOUT</span>
						<%-- △在庫切れ可否△ --%>

                        <a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl(Container.DataItem)) %>" class="rankingContent__itemName"><%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_NAME)) %></a>

                    	<%-- ▽商品会員ランク価格有効▽ --%>
						<p visible='<%# ProductPage.GetProductMemberRankPriceValid(Container.DataItem) %>' runat="server" class="rankingContent__price">
						<span style="text-decoration: line-through"><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(ProductPage.GetTaxIncludeString(Container.DataItem)) %>）</span><br />
						<span style="color: #f00;"><%#: CurrencyManager.ToPrice(ProductPage.GetProductMemberRankPrice(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(ProductPage.GetTaxIncludeString(Container.DataItem)) %>）</span>
						</p>

						<%-- ▽商品セール価格有効▽ --%>
						<p visible='<%# ProductPage.GetProductTimeSalesValid(Container.DataItem) %>' runat="server" class="special rankingContent__price">
						<span style="text-decoration: line-through"><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(ProductPage.GetTaxIncludeString(Container.DataItem)) %>）</span><br />
						<span style="color: #f00;"><%#: CurrencyManager.ToPrice(ProductPage.GetProductTimeSalePriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(ProductPage.GetTaxIncludeString(Container.DataItem)) %>）</span>
						</p>
						<%-- △商品セール価格有効△ --%>

						<%-- ▽商品特別価格有効▽ --%>
						<p visible='<%# ProductPage.GetProductSpecialPriceValid(Container.DataItem) %>' runat="server" class="rankingContent__price">
						<span style="text-decoration: line-through"><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(ProductPage.GetTaxIncludeString(Container.DataItem)) %>)</span><br />
						<span style="color: #f00;"><%#: CurrencyManager.ToPrice(ProductPage.GetProductSpecialPriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(ProductPage.GetTaxIncludeString(Container.DataItem)) %>）</span>
						</p>

						<%-- ▽商品通常価格有効▽ --%>
						<p visible='<%# ProductPage.GetProductNormalPriceValid(Container.DataItem) %>' runat="server" class="rankingContent__price">
						<%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(ProductPage.GetTaxIncludeString(Container.DataItem)) %>）
						</p>

						<%-- ▽商品定期購入価格▽ --%>
						<% if (Constants.FIXEDPURCHASE_OPTION_ENABLED) {%>
						<p visible='<%# (StringUtility.ToValue(ProductPage.GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_FIXED_PURCHASE_FLG), "").ToString() != Constants.FLG_PRODUCT_FIXED_PURCHASE_FLG_INVALID) %>' runat="server" class="rankingContent__price">
							<span visible='<%# ProductPage.IsProductFixedPurchaseFirsttimePriceValid(Container.DataItem) %>' runat="server">
								定期初回:<%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchaseFirsttimePrice(Container.DataItem)) %>（<%#: ProductPage.GetTaxIncludeString(Container.DataItem) %>）
								<br />
							</span>
							定期通常:<%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchasePrice(Container.DataItem)) %>（<%#: ProductPage.GetTaxIncludeString(Container.DataItem) %>）
						</p>
						<% } %>
						<%-- △商品定期購入価格△ --%>
                    </div>
	</ItemTemplate>
	<FooterTemplate>
                </div>
            </div>
        </div>
    </div>
	</FooterTemplate>
	</asp:Repeater>
	<% } %>
<%-- △編集可能領域△ --%>