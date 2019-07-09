<%--
=========================================================================================================
  Module      : 商品一覧画面(ProductList.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%@ Register TagPrefix="uc" TagName="BodyProductRecommendAdvanced" Src="~/Form/Common/Product/BodyProductRecommendAdvanced.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductSearchBox" Src="~/Form/Common/Product/BodyProductSearchBox.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductAdvancedSearchBox" Src="~/Form/Common/Product/BodyProductAdvancedSearchBox.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductCategoryTree" Src="~/Form/Common/Product/BodyProductCategoryTree.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyMiniCart" Src="~/Form/Common/BodyMiniCart.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductRecommendByRecommendEngine" Src="~/Form/Common/Product/BodyProductRecommendByRecommendEngine.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyCategoryRecommendByRecommendEngine" Src="~/Form/Common/Product/BodyCategoryRecommendByRecommendEngine.ascx" %>
<%@ Register TagPrefix="uc" TagName="ProductColorSearchBox" Src="~/Form/Common/Product/ProductColorSearchBox.ascx" %>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Register TagPrefix="uc" TagName="BodyProductArrivalMailRegisterTr" Src="~/Form/Common/Product/BodyProductArrivalMailRegisterTr.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductCategoryHtml" Src="~/Form/Common/Product/BodyProductCategoryHtml.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductSortBox" Src="~/Form/Common/Product/BodyProductSortBox.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductCategoryLinks" Src="~/Form/Common/Product/BodyProductCategoryLinks.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductVariationImages" Src="~/Form/Common/Product/BodyProductVariationImages.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductGroupContentsHtml" Src="~/Form/Common/Product/BodyProductGroupContentsHtml.ascx" %>
<%@ Register TagPrefix="uc" TagName="Criteo" Src="~/Form/Common/Criteo.ascx" %>
<%@ page language="C#" masterpagefile="~/Form/Common/DefaultPage.master" autoeventwireup="true" inherits="Form_Product_ProductList, App_Web_productlist.aspx.1e99e05" title="商品一覧ページ" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。In
<%@ FileInfo LastChanged="ｗ２ユーザー" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<meta name="keywords" content="<%# WebSanitizer.HtmlEncode(this.SeoKeywords) %>" />
<meta name="description" content="<%# WebSanitizer.HtmlEncode(this.SeoDescription) %>" />
<link href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT) %>Css/product.css" rel="stylesheet" type="text/css" media="all" />
<link rel="canonical" href="<%# CreateProductListCanonicalUrl() %>" />
<% if (Constants.MOBILEOPTION_ENABLED){%>
	<link rel="Alternate" media="handheld" href="<%= WebSanitizer.HtmlEncode(GetMobileUrl()) %>" />
<% } %>
<%= this.BrandAdditionalDsignTag %>
<%-- △編集可能領域△ --%>
<%# this.PaginationTag %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<script type="text/javascript">
	$(function () {
		$(".sortChange .sortTtl").on("click", function () {
			$(this).toggleClass('on');
			$(".sortChange ul").slideToggle('slow');
			$(".sortItem ul").slideUp('slow');
			$(".sortItem .sortTtl").removeClass('on');
		});
		$(".sortItem .sortTtl").on("click", function () {
			$(this).toggleClass('on');
			$(".sortItem ul").slideToggle('slow');
			$(".sortChange ul").slideUp('slow');
			$(".sortChange .sortTtl").removeClass('on');
		});

		if(!navigator.userAgent.match(/(iPhone|iPad|iPod|Android)/)){
			$(".searchBox_list--ttl").on("click", function () {
				$(this).toggleClass('on');
				$(this).nextAll('.searchBox_list--column').slideToggle('slow');
			});

			$(".searchBox_list--column li").not('on').on("click", function () {
				$(this).siblings().removeClass('on');
				$(this).addClass('on');
			});
		}

		if(navigator.userAgent.match(/(iPhone|iPad|iPod|Android)/)){

			var selectedItem = $(".searchBox_list--column li.on").text()
	        var selectBox = $(".searchBox_list--column")
	        var selectItems = $(".searchBox_list--column li")
	        var display = $(".searchBox_list--ttlSelect")

	        display.text(selectedItem)
	        selectBox.hide();

	        display.on("click",function(){
	            $(this).toggleClass('on');
	            $(this).nextAll(".searchBox_list--column").not('.searchBox_list--color').slideToggle('slow');
	        })

	        selectItems.on("click",function(){
	            $(this).siblings().removeClass("on");
	            $(this).addClass("on");
	            $(this).parent(".searchBox_list--column").not('.searchBox_list--color').slideUp('slow');
	            $(this).parent().siblings(".searchBox_list--ttlSelect").text($(this).text());
	            $(this).parent().siblings(".searchBox_list--ttlSelect").toggleClass('on');
	        })
		}

		$(".searchBtnSp").on("click", function () {
			$(".searchBox").addClass('on');
		});

		$(".searchBtnCloseSp").on("click", function () {
			$(".searchBox").removeClass('on');
		});

		$("span.total_counts").prependTo(".breadcrumb_num span");

		// 商品一覧:詳細検索
		function getUrlVars() {
			var vars = [], hash;
			var hashes = window.location.href.slice(window.location.href.indexOf('?') + 1).split('&');
			for (var i = 0; i < hashes.length; i++) {
				hash = hashes[i].split('=');
				vars.push(hash[0]);
				vars[hash[0]] = hash[1];
			}
			return vars;
		}

		//ソート
		$(".btn-sort-search").click(function () {

			var urlVars = getUrlVars();

			// 店舗ID
			var $shop = (urlVars["<%= Constants.REQUEST_KEY_SHOP_ID %>"] == undefined)
				? "<%= Constants.CONST_DEFAULT_SHOP_ID %>"
				: urlVars["<%= Constants.REQUEST_KEY_SHOP_ID %>"];
			// カテゴリ及びカテゴリ名
			if ($(".sort-category select").val() != "") {
				var $cat = $(".sort-category select").val();
				var $catName = $(".sort-category select option:selected").text();
			} else {
				var $cat = "";
				var $catName = "";
			}
			// ブランド
			var $bid = (urlVars["<%= Constants.REQUEST_KEY_BRAND_ID %>"] == undefined) ? "" : urlVars["<%= Constants.REQUEST_KEY_BRAND_ID %>"];
			var $brand = "<%= this.BrandName %>";
			// Product Group ID
			var $productGroupId = "&<%= Constants.REQUEST_KEY_PRODUCT_GROUP_ID %>=";
			$productGroupId = $productGroupId + ((urlVars["<%= Constants.REQUEST_KEY_PRODUCT_GROUP_ID %>"] == undefined) ? "" : urlVars["<%= Constants.REQUEST_KEY_PRODUCT_GROUP_ID %>"]);
			// キャンペーンアイコン
			var $cicon = "&<%= Constants.REQUEST_KEY_CAMPAINGN_ICOM %>="
				+ ((urlVars["<%= Constants.REQUEST_KEY_CAMPAINGN_ICOM %>"] == undefined)
					? ""
					: urlVars["<%= Constants.REQUEST_KEY_CAMPAINGN_ICOM %>"]);
			// 特別価格商品の表示
			var $dosp = "&<%= Constants.REQUEST_KEY_DISP_ONLY_SP_PRICE %>="
				+ ((urlVars["<%= Constants.REQUEST_KEY_DISP_ONLY_SP_PRICE %>"] == undefined)
					? ""
					: urlVars["<%= Constants.REQUEST_KEY_DISP_ONLY_SP_PRICE %>"]);
			// 表示件数
			if ($("input[name='dpcnt']:checked").val() != "") {
				var $dpcnt = "&<%= Constants.REQUEST_KEY_DISP_PRODUCT_COUNT %>="
					+ $("input[name='dpcnt']:checked").val();
			} else {
				var $dpcnt = "&<%= Constants.REQUEST_KEY_DISP_PRODUCT_COUNT %>="
					+ ((urlVars["<%= Constants.REQUEST_KEY_DISP_IMG_KBN %>"] == "<%= Constants.KBN_REQUEST_DISP_IMG_KBN_ON %>")
						? "<%= Constants.CONST_DISP_CONTENTS_PRODUCT_LIST_IMG_ON %>"
						: "<%= Constants.CONST_DISP_CONTENTS_PRODUCT_LIST_WINDOWSHOPPING %>");
			}
			// 画像表示区分
			var $img = "&<%= Constants.REQUEST_KEY_DISP_IMG_KBN %>="
				+ ((urlVars["<%= Constants.REQUEST_KEY_DISP_IMG_KBN %>"] == undefined)
					? ""
					: urlVars["<%= Constants.REQUEST_KEY_DISP_IMG_KBN %>"]);
			// 価格帯
			if ($("input[name='price']:checked").val() != "") {
				var price = $("input[name='price']:checked").val();
				priceValue = price.split(",");
				var $min = "&<%= Constants.REQUEST_KEY_MIN_PRICE %>=" + priceValue[0];
				var $max = "&<%= Constants.REQUEST_KEY_MAX_PRICE %>=" + priceValue[1];
			} else {
				var $min = "&<%= Constants.REQUEST_KEY_MIN_PRICE %>=";
				var $max = "&<%= Constants.REQUEST_KEY_MAX_PRICE %>=";
			}
			// 表示順
			if ($("input[name='sort']:checked").val() != "") {
				var $sort = "&<%= Constants.REQUEST_KEY_SORT_KBN %>=" + $("input[name='sort']:checked").val();
			} else {
				var $sort = "&<%= Constants.REQUEST_KEY_SORT_KBN %>=<%= Constants.KBN_SORT_PRODUCT_LIST_DEFAULT %>";
			}
			// キーワード
			if ($(".sort-word input").val() != "") {
				var $swrd = "&<%= Constants.REQUEST_KEY_SEARCH_WORD %>=" + $(".sort-word input").val();
			} else {
				var $swrd = "&<%= Constants.REQUEST_KEY_SEARCH_WORD %>=";
			}
			// 在庫
			if ($("input[name='udns']:checked").val() != "") {
				var $udns = "&<%= Constants.REQUEST_KEY_UNDISPLAY_NOSTOCK_PRODUCT %>=" + $("input[name='udns']:checked").val();
			} else {
				var $udns = "&<%= Constants.REQUEST_KEY_UNDISPLAY_NOSTOCK_PRODUCT %>=";
			}
			// 定期購入フィルタ
			if ($("input[name=<%= Constants.FORM_NAME_FIXED_PURCHASE_RADIO_BUTTON %>]:checked").val() != "") {
				var $fpfl = "&<%= Constants.REQUEST_KEY_FIXED_PURCHASE_FILTER %>=" + $("input[name=<%= Constants.FORM_NAME_FIXED_PURCHASE_RADIO_BUTTON %>]:checked").val();
			} else {
				var $fpfl = "&<%= Constants.REQUEST_KEY_FIXED_PURCHASE_FILTER %>=";
			}

			// 指定したURLにジャンプ(1ページ目へ)
			if (("<%= Constants.FRIENDLY_URL_ENABLED %>" == "True") && ($catName != "")) {
				if (("<%= Constants.PRODUCT_BRAND_ENABLED %>" == "True") && ($brand != "")) {
					var rootUrl = "<%= Constants.PATH_ROOT %>" + $brand + "-" + $catName + "/brandcategory/" + $bid + "/" + $shop + "/" + $cat + "/?";
				} else {
					var rootUrl = "<%= Constants.PATH_ROOT %>" + $catName + "/category/" + $shop + "/" + $cat + "/?";
				}
			} else {
				var rootUrl = "<%= Constants.PATH_ROOT %><%= Constants.PAGE_FRONT_PRODUCT_LIST %>?<%= Constants.REQUEST_KEY_SHOP_ID %>=" + $shop
					+ "&<%= Constants.REQUEST_KEY_CATEGORY_ID %>=" + $cat + (($bid != "") ? "&<%= Constants.REQUEST_KEY_BRAND_ID %>=" + $bid : "");
			}
			location.href = rootUrl + $productGroupId + $cicon + $dosp + $dpcnt + $img + $max + $min + $sort + $swrd + $udns + $fpfl + "&<%= Constants.REQUEST_KEY_PAGE_NO %>=1";
		});

	});

	function enterSearch() {
		//EnterキーならSubmit
		if (window.event.keyCode == 13) document.formname.submit();
	}

	$(window).bind("load", function(){
		if(document.URL.match("cat=&")) {
			$('.pdList_conditions dd.pdList_conditions--category').text('すべてのカテゴリ');
			$('.breadcrumb ul li p').text('すべてのカテゴリ');
			$('.searchBox_list--category li:nth-child(1)').addClass("on");
			$('.searchBox_list--category').siblings(".searchBox_list--ttlSelect").text($('.searchBox_list--category li.on').text());
		}
		if(document.URL.match("cat=001")) {
			$('.pdList_conditions dd.pdList_conditions--category').text('トップス');
			$('.breadcrumb ul li p').text('トップス');
			$('.searchBox_list--category li:nth-child(2)').addClass("on");
			$('.searchBox_list--category').siblings(".searchBox_list--ttlSelect").text($('.searchBox_list--category li.on').text());
		}
		if(document.URL.match("cat=002")) {
			$('.pdList_conditions dd.pdList_conditions--category').text('アウター');
			$('.breadcrumb ul li p').text('アウター');
			$('.searchBox_list--category li:nth-child(3)').addClass("on");
			$('.searchBox_list--category').siblings(".searchBox_list--ttlSelect").text($('.searchBox_list--category li.on').text());
		}
		if(document.URL.match("cat=003")) {
			$('.pdList_conditions dd.pdList_conditions--category').text('ワンピース');
			$('.breadcrumb ul li p').text('ワンピース');
			$('.searchBox_list--category li:nth-child(4)').addClass("on");
			$('.searchBox_list--category').siblings(".searchBox_list--ttlSelect").text($('.searchBox_list--category li.on').text());
		}
		if(document.URL.match("cat=004")) {
			$('.pdList_conditions dd.pdList_conditions--category').text('パンツ');
			$('.breadcrumb ul li p').text('パンツ');
			$('.searchBox_list--category li:nth-child(5)').addClass("on");
			$('.searchBox_list--category').siblings(".searchBox_list--ttlSelect").text($('.searchBox_list--category li.on').text());
		}
		if(document.URL.match("cat=005")) {
			$('.pdList_conditions dd.pdList_conditions--category').text('スカート');
			$('.breadcrumb ul li p').text('スカート');
			$('.searchBox_list--category li:nth-child(6)').addClass("on");
			$('.searchBox_list--category').siblings(".searchBox_list--ttlSelect").text($('.searchBox_list--category li.on').text());
		}
		if(document.URL.match("cat=006")) {
			$('.pdList_conditions dd.pdList_conditions--category').text('グッズ');
			$('.breadcrumb ul li p').text('グッズ');
			$('.searchBox_list--category li:nth-child(7)').addClass("on");
			$('.searchBox_list--category').siblings(".searchBox_list--ttlSelect").text($('.searchBox_list--category li.on').text());
		}
		if(document.URL.match("col=blue")) {
			$('.pdList_conditions dd.pdList_conditions--color').text('\u00a0/ 青系');
		}
		if(document.URL.match("col=red")) {
			$('.pdList_conditions dd.pdList_conditions--color').text('\u00a0/ 赤系');
		}
		if(document.URL.match("col=yellow")) {
			$('.pdList_conditions dd.pdList_conditions--color').text('\u00a0/ 黄色系');
		}
		if(document.URL.match("col=black")) {
			$('.pdList_conditions dd.pdList_conditions--color').text('\u00a0/ 黒系');
		}
		if(document.URL.match("col=white")) {
			$('.pdList_conditions dd.pdList_conditions--color').text('\u00a0/ 白系');
		}
		if(document.URL.match("&_material=&")) {
			$('.searchBox_list--material li:nth-child(1)').addClass("on");
		}
		if(document.URL.match("&_material=ハミルトンラムウール")) {
			$('.pdList_conditions dd.pdList_conditions--tag').text('\u00a0/ ハミルトンラムウール');
			$('.searchBox_list--material li:nth-child(2)').addClass("on");
			$('.searchBox_list--material').siblings(".searchBox_list--ttlSelect").text($('.searchBox_list--material li.on').text());
		}
		if(document.URL.match("&_material=ペルビアンコットン")) {
			$('.pdList_conditions dd.pdList_conditions--tag').text('\u00a0/ ペルビアンコットン');
			$('.searchBox_list--material li:nth-child(3)').addClass("on");
			$('.searchBox_list--material').siblings(".searchBox_list--ttlSelect").text($('.searchBox_list--material li.on').text());
		}
		if(document.URL.match("&_material=メリノウール")) {
			$('.pdList_conditions dd.pdList_conditions--tag').text('\u00a0/ メリノウール');
			$('.searchBox_list--material li:nth-child(4)').addClass("on");
			$('.searchBox_list--material').siblings(".searchBox_list--ttlSelect").text($('.searchBox_list--material li.on').text());
		}
		if(document.URL.match("&_material=ワンコットン")) {
			$('.pdList_conditions dd.pdList_conditions--tag').text('\u00a0/ ワンコットン');
			$('.searchBox_list--material li:nth-child(5)').addClass("on");
			$('.searchBox_list--material').siblings(".searchBox_list--ttlSelect").text($('.searchBox_list--material li.on').text());
		}
		if(document.URL.match("&_material=フォークランドウール")) {
			$('.pdList_conditions dd.pdList_conditions--tag').text('\u00a0/ フォークランドウール');
			$('.searchBox_list--material li:nth-child(6)').addClass("on");
			$('.searchBox_list--material').siblings(".searchBox_list--ttlSelect").text($('.searchBox_list--material li.on').text());
		}
		if(document.URL.match("&_material=タスマニアンウール")) {
			$('.pdList_conditions dd.pdList_conditions--tag').text('\u00a0/ タスマニアンウール');
			$('.searchBox_list--material li:nth-child(7)').addClass("on");
			$('.searchBox_list--material').siblings(".searchBox_list--ttlSelect").text($('.searchBox_list--material li.on').text());
		}
	});

</script>

<div class="page topSpace">
	<table id="tblLayout" class="tblLayout_ProductList">
	<tr>
	<td>
	</td>
	<td>
		<%-- ▽レイアウト領域：レフトエリア▽ --%>
		<div class="pageCts_pdList">
			<div class="pageCts_pdList--search">
				<p class="sp_contents searchBtnSp"><img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_search_white.png" alt="">商品を絞り込む</p>
				<uc:BodyProductAdvancedSearchBox runat="server" />
			</div>
				<%-- △レイアウト領域△ --%>

			<%-- ▽編集可能領域：コンテンツ▽ --%>
			<div class="pageCts_pdList--cts">

				<div class="pdList_sortBox">

					<!--▽ ソートコントロール ▽-->
					<uc:BodyProductSortBox CategoryName="<%# this.CategoryName %>" runat="server"></uc:BodyProductSortBox>
					<!--△ ソートコントロール △-->

					<!--▽ 上部カテゴリリンク ▽-->
					<div class="breadcrumb">
						<ul>
							<li>
								<p></p>
							</li>
						</ul>
						<div class="breadcrumb_num"><p><span></span>件</p></div>
					</div>
					<!--△ 上部カテゴリリンク △-->
				</div>

				<div class="pdList_conditions">
					<dl>
						<dt>
							検索条件
						</dt>
						<dd class="pdList_conditions--category">
						</dd>
						<dd class="pdList_conditions--color">
						</dd>
						<dd class="pdList_conditions--tag">
						</dd>
					</dl>
				</div>

				<div class="listProduct">

					<%-- カート投入ボタン押下時にどの画面へ遷移するか？ --%>
					<%-- CART：カート一覧画面 CSCART:クロスセルカート画面 その他：画面遷移しない --%>
					<asp:HiddenField ID="hfIsRedirectAfterAddProduct" Value="CART" runat="server" />

					<%-- お気に入り追加ボタン押下時にどの画面へ遷移するか？ --%>
					<%-- true:ポップアップ表示、false:お気に入り一覧ページへ遷移 --%>
					<% IsDisplayPopupAddFavorite = true; %>
					<div>
					<p id="addFavoriteTip" class="toolTip" style="display: none; position: fixed;">
						<span style="margin: 10px;" id="txt-tooltip"></span>
						<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_FAVORITE_LIST) %>" class="btn btn-mini btn-inverse">お気に入り一覧</a>
					</p>
					</div>

					<!-- 商品一覧ループ(通常表示) -->
					<%-- UPDATE PANEL開始 --%>
					<asp:UpdatePanel runat="server">
					<ContentTemplate>
					<%-- ▽商品一覧ループ(通常表示)▽ --%>
					<asp:Repeater DataSource="<%# this.IsDispImageKbnOn ? this.ProductMasterList : null %>" runat="server" Visible="<%# this.IsDispImageKbnOn %>" OnItemCommand="ProductMasterList_ItemCommand">
					<HeaderTemplate>
					<div class="pdList_list">
					</HeaderTemplate>
					<ItemTemplate>
					<div class="pdList_list--column">
					<ul>
					<!-- 商品画像表示 -->
					<li class="pdList_thumb">
					<% if(Constants.LAYER_DISPLAY_VARIATION_IMAGES_ENABLED){ %>
					<uc:BodyProductVariationImages ImageSize="LL" ProductMaster="<%# Container.DataItem %>" VariationList="<%# this.ProductVariationList %>" VariationNo="<%# Container.ItemIndex.ToString() %>" runat="server" />
					<% } else { %>
					<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl(Container.DataItem, true)) %>'>
					<w2c:ProductImage ImageSize="LL" ProductMaster="<%# Container.DataItem %>" IsVariation="false" runat="server" /></a>
					<% } %>
					<%-- ▽在庫切れ可否▽ --%>
					<p visible='<%# ProductListUtility.IsProductSoldOut(Container.DataItem) %>' runat="server" class="soldout">SOLDOUT</p>
					<%-- ▽在庫切れ可否▽ --%>
					</li>
					<li class="pdList_material">
						<%# WebSanitizer.HtmlEncode(GetProductData(Container.DataItem, "tag_material")) %>
					</li>
					<li class="pdList_name">
					<!-- 商品名表示 -->
					<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl(Container.DataItem, true)) %>'>
					<%# WebSanitizer.HtmlEncode(GetProductData(Container.DataItem, "name")) %></a>
					<!-- TODO:表示テスト -->
					</li>
					<li style="display: none;" class="plExcerpt">
					<!-- 概要表示 -->
					<%# GetProductDataHtml(Container.DataItem, "outline") %>
					</li>
					<li style="display: none;">
					<asp:Repeater ID="rSetPromotion" DataSource="<%# GetSetPromotionByProduct((DataRowView)Container.DataItem) %>" runat="server">
					<ItemTemplate>
					<span visible='<%# ((SetPromotionModel)Container.DataItem).Url != "" %>' runat="server">
						<a href="<%# WebSanitizer.HtmlEncode(Constants.PATH_ROOT + ((SetPromotionModel)Container.DataItem).Url) %>"><%# WebSanitizer.HtmlEncode(((SetPromotionModel)Container.DataItem).SetpromotionDispName) %></a><br />
					</span>
					<span visible='<%# (string)Eval("Url") == "" %>' runat="server">
						<%# WebSanitizer.HtmlEncode(((SetPromotionModel)Container.DataItem).SetpromotionDispName) %><br />
					</span>
					</ItemTemplate>
					</asp:Repeater>
					</li>

					<li class="pdList_price">

					<%-- ▽商品会員ランク価格有効▽ --%>
					<p visible='<%# GetProductMemberRankPriceValid(Container.DataItem) %>' runat="server">
					<span class="productPrice"><strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Container.DataItem)) %>）</strike></span><br />
					<span>会員ランク価格:<%#: CurrencyManager.ToPrice(ProductPage.GetProductMemberRankPrice(Container.DataItem)) %></span>(<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Container.DataItem)) %>)
					</p>
					<%-- △商品会員ランク価格有効△ --%>
					<%-- ▽商品セール価格有効▽ --%>
					<p visible='<%# GetProductTimeSalesValid(Container.DataItem) %>' runat="server">
					<span class="productPrice"><strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Container.DataItem)) %>）</strike></span><br />
					<span>タイムセールス価格:<%#: CurrencyManager.ToPrice(ProductPage.GetProductTimeSalePriceNumeric(Container.DataItem)) %></span>（<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Container.DataItem)) %>）
					</p>
					<%-- △商品セール価格有効△ --%>
					<%-- ▽商品特別価格有効▽ --%>
					<p visible='<%# GetProductSpecialPriceValid(Container.DataItem) %>' runat="server">
					<span class="productPrice"><strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Container.DataItem)) %>）</strike></span><br />
					<span>特別価格:<%#: CurrencyManager.ToPrice(ProductPage.GetProductSpecialPriceNumeric(Container.DataItem)) %></span>（<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Container.DataItem)) %>）
					</p>
					<%-- △商品特別価格有効△ --%>
					<%-- ▽商品通常価格有効▽ --%>
					<p visible='<%# GetProductNormalPriceValid(Container.DataItem) %>' runat="server">
					<span class="productPrice"><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %></span>（<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Container.DataItem)) %>）
					</p>
					<%-- △商品通常価格有効△ --%>
					<%-- ▽商品定期購入価格▽ --%>
					<% if (Constants.FIXEDPURCHASE_OPTION_ENABLED) {%>
					<p visible='<%# (GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_FIXED_PURCHASE_FLG).ToString() != Constants.FLG_PRODUCT_FIXED_PURCHASE_FLG_INVALID) %>' runat="server">
						<span visible='<%# IsProductFixedPurchaseFirsttimePriceValid(Container.DataItem) %>' runat="server">
							<br />
							定期初回価格:<%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchaseFirsttimePrice(Container.DataItem)) %>（<%#: GetTaxIncludeString(Container.DataItem) %>）
						</span>
						<br />
						定期通常価格:<%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchasePrice(Container.DataItem)) %>（<%#: GetTaxIncludeString(Container.DataItem) %>）
					</p>
					<% } %>
					<%-- △商品定期購入価格△ --%>
					<%-- ▽商品加算ポイント▽ --%>
					<p visible='<%# (this.IsLoggedIn && (GetProductAddPointString(Container.DataItem) != "")) %>' runat="server">
					<span class="addPoint">ポイント<%# WebSanitizer.HtmlEncode(GetProductAddPointString(Container.DataItem)) %></span><span visible='<%# ((string)GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_POINT_KBN1)) != Constants.FLG_PRODUCT_POINT_KBN1_NUM %>' runat="server">(<%# WebSanitizer.HtmlEncode(GetProductAddPointCalculateAfterString(Container.DataItem, false, false))%>)
					</span>
					</p>
					<%-- △商品加算ポイント△ --%>

					<%-- ▽商品タグ項目：メーカー▽ --%>
					<p visible='<%# StringUtility.ToEmpty(GetKeyValue(Container.DataItem, "tag_manufacturer")) != "" %>' runat="server">
					メーカー:<%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, "tag_manufacturer")) %>
					</p>
					<%-- △商品タグ項目：メーカー△ --%>

					<%-- ▽お気に入り追加▽ --%>
					<asp:LinkButton ID="lbAddFavorite" runat="server"
					CommandName="FavoriteAdd" CommandArgument="<%# GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_PRODUCT_ID) %>" class="pdList_star">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_star.png" alt="お気に入りアイコン">
					</asp:LinkButton>

					<%-- △お気に入り追加△ --%>
					</li>
					<li class="pdList_icon">
						<p>
							<w2c:ProductIcon IconNo="1" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="2" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="3" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="4" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="5" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="6" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="7" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="8" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="9" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="10" ProductMaster="<%# Container.DataItem %>" runat="server" />
						</p>
					</li>

					<%-- ▽バリエーションリストループ▽ --%>
					<%if (Constants.PRODUCTLIST_VARIATION_DISPLAY_ENABLED) { %>
					<li style="display: none;" id="divProductListMultiVariation">
					<table>
					<tr>
					<th>表示名1</th> <%-- 表示名1 --%>
					<th>表示名2</th> <%-- 表示名2 --%>
					<th>価格</th> <%-- 価格 --%>
					<th>&nbsp;</th> <%-- カート投入ボタン・入荷通知メールボタン --%>
					</tr>
					<asp:Repeater ID="rAddCartVariationList" DataSource="<%# GetProductListVariation((DataRowView)Container.DataItem) %>" onitemcommand="AddCartVariationList_ItemCommand" runat="server">
					<HeaderTemplate>
					</HeaderTemplate>
					<ItemTemplate>
					<tr>

					<%-- 表示名1 --%>
					<td>
					<%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME1)) %>
					</td>

					<%-- 表示名2 --%>
					<td>
					<%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME2)) %>
					</td>

					<%-- 価格 --%>
					<td>
					<%-- ▽商品会員ランク価格有効▽ --%>
					<div visible='<%# GetProductMemberRankPriceValid(Container.DataItem, true) %>' runat="server">
						<p>
						<strike><%#: CurrencyManager.ToPrice(GetProductPriceNumeric(Container.DataItem, true)) %>（<%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, "TaxIncluded")) %>）</strike>
						</p>
						<p>
						会員ランク価格:<%#: CurrencyManager.ToPrice(GetProductMemberRankPrice(Container.DataItem, true)) %>(<%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, "TaxIncluded")) %>)
						</p>
					</div>
					<%-- △商品会員ランク価格有効△ --%>
					<%-- ▽商品セール価格有効▽ --%>
					<div visible='<%# GetProductTimeSalesValid(Container.DataItem) %>' runat="server">
						<p>
						<strike><%#: CurrencyManager.ToPrice(GetProductPriceNumeric(Container.DataItem, true)) %>（<%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, "TaxIncluded")) %>）</strike>
						</p>
						<p>
						タイムセールス価格:<%#: CurrencyManager.ToPrice(ProductPage.GetProductTimeSalePriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, "TaxIncluded")) %>）
						</p>
					</div>
					<%-- △商品セール価格有効△ --%>
					<%-- ▽商品特別価格有効▽ --%>
					<div visible='<%# GetProductSpecialPriceValid(Container.DataItem, true) %>' runat="server">
						<p>
						<strike><%#: CurrencyManager.ToPrice(GetProductPriceNumeric(Container.DataItem, true)) %>（<%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, "TaxIncluded")) %>）</strike>
						</p>
						<p>
					特別価格:<%#: CurrencyManager.ToPrice(GetProductSpecialPriceNumeric(Container.DataItem, true)) %></span>（<%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, "TaxIncluded")) %>）
						</p>
					</div>
					<%-- △商品特別価格有効△ --%>
					<%-- ▽商品通常価格有効▽ --%>
					<p visible='<%# GetProductNormalPriceValid(Container.DataItem, true) %>' runat="server">
					<span class="productPrice"><%#: CurrencyManager.ToPrice(GetProductPriceNumeric(Container.DataItem, true)) %></span>（<%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, "TaxIncluded")) %>）</p>
					<%-- △商品通常価格有効△ --%>
					<%-- ▽商品定期購入価格 --%>
					<% if (Constants.FIXEDPURCHASE_OPTION_ENABLED) {%>
					<p visible='<%# (GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_FIXED_PURCHASE_FLG).ToString() != Constants.FLG_PRODUCT_FIXED_PURCHASE_FLG_INVALID) %>' runat="server">
						<p visible='<%# IsProductFixedPurchaseFirsttimePriceValid(Container.DataItem, true) %>' runat="server">
							定期初回価格:<%#: CurrencyManager.ToPrice(GetProductFixedPurchaseFirsttimePrice(Container.DataItem, true)) %>（<%#: GetKeyValue(Container.DataItem, "TaxIncluded") %>）
						</p>
						<p>
							定期通常価格:<%#: CurrencyManager.ToPrice(GetProductFixedPurchasePrice(Container.DataItem, true)) %>（<%#: GetKeyValue(Container.DataItem, "TaxIncluded") %>）
						</p>
					</p>
					<% } %>
					<%-- △商品定期購入価格△ --%>
					<%-- ▽商品加算ポイント▽ --%>
					<p visible='<%# (this.IsLoggedIn && (GetProductAddPointString(Container.DataItem, true, true) != "")) %>' runat="server">
					<br />
					<span class="addPoint">
					ポイント：<%# WebSanitizer.HtmlEncode(GetProductAddPointString(Container.DataItem, true, true)) %></span><span visible='<%# ((string)GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_POINT_KBN1)) != Constants.FLG_PRODUCT_POINT_KBN1_NUM %>' runat="server">(<%# WebSanitizer.HtmlEncode(GetProductAddPointCalculateAfterString(Container.DataItem, true, true))%>)</span>
					</p>
					<%-- △商品加算ポイント△ --%>
					</td>

					<td>
					<%-- カート投入ボタン --%>
					<p class="addCart">
					<%-- カートに入れるボタン表示 --%>
					<div class="mb5">
					<asp:LinkButton ID="lbCartAddVariationList" runat="server" Visible='<%# GetKeyValue(Container.DataItem, "CanCart") %>' CommandName="CartAdd" class="btn btn-mid btn-inverse">
					カートに入れる
					</asp:LinkButton>
					</div>
					<%-- 定期購入ボタン表示 --%>
					<div>
					<asp:LinkButton ID="lbCartAddFixedPurchaseVariationList" runat="server" Visible='<%# GetKeyValue(Container.DataItem, "CanFixedPurchase") %>' OnClientClick="return add_cart_check_for_fixedpurchase_variationlist();" CommandName="CartAddFixedPurchase" class="btn btn-mid btn-inverse">
					カートに入れる(定期購入)
					</asp:LinkButton>
					</div>
					<%-- ギフト購入ボタン表示 --%>
					<div>
					<asp:LinkButton ID="lbCartAddForGiftVariationList" runat="server" Visible='<%# GetKeyValue(Container.DataItem, "CanGiftOrder") %>' CommandName="CartAddGift" class="btn btn-mid btn-inverse">
					カートに入れる(ギフト購入)
					</asp:LinkButton>
					</div>
					</p>
										
					<%-- 入荷通知メールボタン --%>
					<p class="arrivalMailButton">
					<%-- 再入荷通知メール申し込みボタン表示 --%>
					<div visible='<%# ((string)GetKeyValue(Container.DataItem, "ArrivalMailKbn") == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL) %>' runat="server">
					<asp:LinkButton CommandName="SmartArrivalMail" CommandArgument="Arrival" Runat="server" class="btn btn-mid btn-inverse">
					入荷お知らせメール申込
					</asp:LinkButton>
					</div>
					<%-- 販売開始通知メール申し込みボタン表示 --%>
					<div visible='<%# ((string)GetKeyValue(Container.DataItem, "ArrivalMailKbn") == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE) %>' runat="server">
					<asp:LinkButton CommandName="SmartArrivalMail" CommandArgument="Release" Runat="server" class="btn btn-mid btn-inverse">
					販売開始通知メール申込
					</asp:LinkButton>
					</div>
					<%-- 再販売通知メール申し込みボタン表示 --%>
					<div visible='<%# ((string)GetKeyValue(Container.DataItem, "ArrivalMailKbn") == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE) %>' runat="server">
					<asp:LinkButton CommandName="SmartArrivalMail" CommandArgument="Resale" Runat="server" class="btn btn-mid btn-inverse">
					再販売通知メール申込
					</asp:LinkButton>
					</div>
					<%-- エラー表示 --%>
					<p class="error"><%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, "ErrorMessage")) %></p>
					</p>	

					<p>
					<asp:Repeater ID="rSetPromotionByVariation" DataSource="<%# GetSetPromotionByVariation((Dictionary<string, object>)Container.DataItem) %>" runat="server">
					<ItemTemplate>
					<%# WebSanitizer.HtmlEncode(((SetPromotionModel)Container.DataItem).SetpromotionDispName) %><br />
					</ItemTemplate>
					</asp:Repeater>
					</p>

					<%-- 隠しフィールド --%>
					<asp:HiddenField ID="hfProductId" Value="<%# GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_PRODUCT_ID) %>" runat="server" />
					<asp:HiddenField ID="hfVariationId" Value="<%# GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID) %>" runat="server" />
					<asp:HiddenField ID="hfArrivalMailKbn" Value='<%# GetKeyValue(Container.DataItem, "ArrivalMailKbn") %>' runat="server" />

					</td>
					</tr>

					<%-- 再入荷通知メール登録フォーム表示 --%>
					<uc:BodyProductArrivalMailRegisterTr runat="server" ID="ucBpamrArrival" ArrivalMailKbn="<%#: Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL %>" ProductId="<%#: GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_PRODUCT_ID) %>" VariationId="<%#: GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID) %>" Visible="false" />
					<%-- 販売開始通知メール登録フォーム表示 --%>
					<uc:BodyProductArrivalMailRegisterTr runat="server" ID="ucBpamrRelease" ArrivalMailKbn="<%#: Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE %>" ProductId="<%#: GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_PRODUCT_ID) %>" VariationId="<%#: GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID) %>" Visible="false" />
					<%-- 再販売知メール登録フォーム表示 --%>
					<uc:BodyProductArrivalMailRegisterTr runat="server" ID="ucBpamrResale" ArrivalMailKbn="<%#: Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE %>" ProductId="<%#: GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_PRODUCT_ID) %>" VariationId="<%#: GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID) %>" Visible="false" />

					</ItemTemplate>
					<FooterTemplate>
					</FooterTemplate>
					</asp:Repeater>
					</table>
					</li>
					<% } %>
					<%-- △バリエーションリストループ△ --%>
					</ul>
					</div>
					</ItemTemplate>
					<FooterTemplate>
					</div>
					</FooterTemplate>
					</asp:Repeater>
					</ContentTemplate>
					</asp:UpdatePanel>
					<%-- UPDATE PANELここまで --%>
					<%-- △商品一覧ループ(通常表示)△ --%>

					</div>


					<%-- ▽商品一覧ループ(ウインドウショッピング)▽ --%>
					<asp:Repeater DataSource="<%# (this.IsDispImageKbnWindowsShopping) ? this.ProductMasterList : null %>" runat="server" Visible="<%# this.IsDispImageKbnWindowsShopping %>">
					<HeaderTemplate>
					<div class="pdList_list">
					</HeaderTemplate>
					<ItemTemplate>

					<div class="pdList_list--column">

					<ul>
					<li class="pdList_thumb">
						<% if(Constants.LAYER_DISPLAY_VARIATION_IMAGES_ENABLED){ %>
						<uc:BodyProductVariationImages ImageSize="LL" ProductMaster="<%# Container.DataItem %>" VariationList="<%# this.ProductVariationList %>" VariationNo="<%# Container.ItemIndex.ToString() %>" runat="server" />
						<% } else { %>
						<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl(Container.DataItem, true)) %>'>
						<w2c:ProductImage ImageSize="LL" ProductMaster="<%# Container.DataItem %>" IsVariation="false" runat="server" /></a>
						<% } %><span visible='<%# ProductListUtility.IsProductSoldOut(Container.DataItem) %>' runat="server" class="soldout">SOLDOUT</span>
					</li>
					<li class="pdList_material">
						<%# WebSanitizer.HtmlEncode(GetProductData(Container.DataItem, "tag_material")) %>
					</li>
					<li class="pdList_name"><a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl(Container.DataItem, true)) %>'>
						<%# WebSanitizer.HtmlEncode(GetProductData(Container.DataItem, "name")) %></a>
					</li>
					<li class="pdList_price">

						<%-- ▽商品会員ランク価格有効▽ --%>
						<p visible='<%# GetProductMemberRankPriceValid(Container.DataItem) %>' runat="server">
						<span style="text-decoration: line-through"><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Container.DataItem)) %>）</span><br />
						<span style="color: #f00;"><%#: CurrencyManager.ToPrice(ProductPage.GetProductMemberRankPrice(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Container.DataItem)) %>）</span>
						</p>

						<%-- ▽商品セール価格有効▽ --%>
						<p visible='<%# GetProductTimeSalesValid(Container.DataItem) %>' runat="server">
							<span style="text-decoration: line-through"><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Container.DataItem)) %>）</span><br />
							<span style="color: #f00;"><%#: CurrencyManager.ToPrice(ProductPage.GetProductTimeSalePriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Container.DataItem)) %>）</span>
						</p>

						<%-- ▽商品特別価格有効▽ --%>
						<p visible='<%# GetProductSpecialPriceValid(Container.DataItem) %>' runat="server">
						<span style="text-decoration: line-through"><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Container.DataItem)) %>）</span><br />
						<span style="color: #f00;"><%#: CurrencyManager.ToPrice(ProductPage.GetProductSpecialPriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Container.DataItem)) %>）</span>
						</p>

						<%-- ▽商品通常価格有効▽ --%>
						<p visible='<%# GetProductNormalPriceValid(Container.DataItem) %>' runat="server">
						<%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>（<%# WebSanitizer.HtmlEncode(GetTaxIncludeString(Container.DataItem)) %>）
						</p>
						<%-- ▽定期購入価格有効▽ --%>
						<% if (Constants.FIXEDPURCHASE_OPTION_ENABLED) {%>
						<p id="P1" visible='<%# (GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_FIXED_PURCHASE_FLG).ToString() != Constants.FLG_PRODUCT_FIXED_PURCHASE_FLG_INVALID) %>' runat="server">
							<p visible='<%# IsProductFixedPurchaseFirsttimePriceValid(Container.DataItem) %>' runat="server">
								定期初回:<%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchaseFirsttimePrice(Container.DataItem)) %>（<%#: GetTaxIncludeString(Container.DataItem) %>）
							</p>
							<p>
								定期通常:<%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchasePrice(Container.DataItem)) %>（<%#: GetTaxIncludeString(Container.DataItem) %>）
							</p>
						</p>
						<% } %>
					</li>
					<li class="pdList_icon">
						<p>
							<w2c:ProductIcon IconNo="1" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="2" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="3" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="4" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="5" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="6" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="7" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="8" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="9" ProductMaster="<%# Container.DataItem %>" runat="server" />
							<w2c:ProductIcon IconNo="10" ProductMaster="<%# Container.DataItem %>" runat="server" />
						</p>
					</ul>
					</div>
					</ItemTemplate>
					<FooterTemplate>
					</div>
					</FooterTemplate>
					</asp:Repeater>
					<%-- △商品一覧ループ(ウインドウショッピング)△ --%>
							
					<!--▽ ページャ ▽-->
					<div class="pagination">
					<%# this.PagerHtml %>
					</div>
					<!--△ ページャ △-->

					<div visible="<%# (this.ProductMasterList.Count == 0) %>" runat="server" class="noProduct">
					<!--▽ 商品が1つもなかった場合のエラー文言 ▽-->
					<%# WebSanitizer.HtmlEncode(this.AlertMessage) %>
					<!--△ 商品が1つもなかった場合のエラー文言 △-->
					</div><!-- (this.ProductMasterList.Count != 0) -->

					<uc:BodyProductCategoryLinks runat="server"></uc:BodyProductCategoryLinks>

				</div>
			</div>
		</div>
	<%-- △編集可能領域△ --%>
	</td>
	<td>
	<%-- ▽レイアウト領域：ライトエリア▽ --%>
	<%-- △レイアウト領域△ --%>
	</td>
	</tr>
	</table>
</div>

<script runat="server">
public new void Page_Load(Object sender, EventArgs e)
{
base.Page_Load(sender, e);

var recommendEngineUserControls = WebControlUtility.GetRecommendEngineUserControls(this.Form.FindControl("ContentPlaceHolder1"));
var lProductRecommendByRecommendEngineUserControls = recommendEngineUserControls.Item1;
var lCategoryRecommendByRecommendEngineUserControls = recommendEngineUserControls.Item2;

<%-- ▽編集可能領域：プロパティ設定▽ --%>
// 外部レコメンド連携パーツ設定
// 1つ目の商品レコメンド
if (lProductRecommendByRecommendEngineUserControls.Count > 0)
{
	//レコメンドコードを設定します
	lProductRecommendByRecommendEngineUserControls[0].RecommendCode = "p006";
	//アイテムコードを設定します
	//特定の商品に対する行動履歴から、おすすめ商品を取得したい場合に設定します。
	//「"P"+商品ID」の形式で記述してください。【記述例】P001
	lProductRecommendByRecommendEngineUserControls[0].ItemCode = "";
	//商品最大表示件数を設定します
	lProductRecommendByRecommendEngineUserControls[0].MaxDispCount = 5;
	//商品画像サイズを設定します (S/M/L/LL)
	lProductRecommendByRecommendEngineUserControls[0].ImageSize = "S";
}

// 1つ目のカテゴリレコメンド
if (lCategoryRecommendByRecommendEngineUserControls.Count > 0)
{
	//レコメンドコードを設定します
	lCategoryRecommendByRecommendEngineUserControls[0].RecommendCode = "p007";
	//アイテムコードを設定します
	//特定のカテゴリに対する行動履歴から、おすすめカテゴリを取得したい場合に設定します。
	//「"C"+カテゴリID」の形式で記述してください。【記述例】C001
	lCategoryRecommendByRecommendEngineUserControls[0].ItemCode = "";
	//表示区分を設定します (0:該当カテゴリのみ表示/1:パンくずリスト表示)
	lCategoryRecommendByRecommendEngineUserControls[0].DispKbn = "0";
	//商品最大表示件数を設定します
	lCategoryRecommendByRecommendEngineUserControls[0].MaxDispCount = 5;
}

// 2つ目のカテゴリレコメンド
if (lCategoryRecommendByRecommendEngineUserControls.Count > 1)
{
	//レコメンドコードを設定します
	lCategoryRecommendByRecommendEngineUserControls[1].RecommendCode = "p008";
	//アイテムコードを設定します
	//特定のカテゴリに対する行動履歴から、おすすめカテゴリを取得したい場合に設定します。
	//「"C"+カテゴリID」の形式で記述してください。【記述例】C001
	lCategoryRecommendByRecommendEngineUserControls[1].ItemCode = "C" + Request[Constants.REQUEST_KEY_CATEGORY_ID];
	//表示区分を設定します (0:該当カテゴリのみ表示/1:パンくずリスト表示)
	lCategoryRecommendByRecommendEngineUserControls[1].DispKbn = "0";
	//商品最大表示件数を設定します
	lCategoryRecommendByRecommendEngineUserControls[1].MaxDispCount = 5;
}
<%-- △編集可能領域△ --%>
}
</script>

<script type="text/javascript">
<!--
	// バリエーション選択チェック(定期)
	function add_cart_check_for_fixedpurchase_variationlist() {
		return confirm('定期的に商品が送られてくる「定期購入」で購入します。\nよろしいですか？');
	}

	// 入荷通知登録画面をポップアップウィンドウで開く
	function show_arrival_mail_popup(pid, vid, amkbn) {
		show_popup_window('<%= this.SecurePageProtocolAndHost %><%= Constants.PATH_ROOT %><%= Constants.PAGE_FRONT_USER_PRODUCT_ARRIVAL_MAIL_REGIST %>?<%= Constants.REQUEST_KEY_PRODUCT_ID %>=' + pid + '&<%= Constants.REQUEST_KEY_VARIATION_ID %>=' + vid + '&<%= Constants.REQUEST_KEY_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN %>=' + amkbn, 520, 310, true, true, 'Information');
	}

	// マウスイベントの初期化
	addOnload(function () { init(); });
//-->
</script>

<%-- CRITEOタグ（引数：商品一覧情報） --%>
<uc:Criteo ID="criteo" runat="server" Datas="<%# this.ProductMasterList %>" />

</asp:Content>
