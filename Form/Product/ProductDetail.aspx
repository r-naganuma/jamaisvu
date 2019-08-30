<%--
=========================================================================================================
  Module      : 商品詳細画面(ProductDetail.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%@ Register TagPrefix="uc" TagName="BodyProductCategoryTree" Src="~/Form/Common/Product/BodyProductCategoryTree.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductRanking" Src="~/Form/Common/Product/BodyProductRanking.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductHistory" Src="~/Form/Common/Product/BodyProductHistory.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyMiniCart" Src="~/Form/Common/BodyMiniCart.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductRecommendByRecommendEngine" Src="~/Form/Common/Product/BodyProductRecommendByRecommendEngine.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyCategoryRecommendByRecommendEngine" Src="~/Form/Common/Product/BodyCategoryRecommendByRecommendEngine.ascx" %>
<%@ Register TagPrefix="uc" TagName="ProductColorSearchBox" Src="~/Form/Common/Product/ProductColorSearchBox.ascx" %>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Register TagPrefix="uc" TagName="BodyProductArrivalMailRegister" Src="~/Form/Common/Product/BodyProductArrivalMailRegister.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductArrivalMailRegisterTr" Src="~/Form/Common/Product/BodyProductArrivalMailRegisterTr.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductRecommendByRecommendEngine2" Src="~/Form/Common/Product/BodyProductRecommendByRecommendEngine.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductStockList" Src="~/Form/Common/Product/BodyProductStockList.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductCategoryLinks" Src="~/Form/Common/Product/BodyProductCategoryLinks.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductReview" Src="~/Form/Common/Product/BodyProductReview.ascx" %>
<%@ Register TagPrefix="uc" TagName="Criteo" Src="~/Form/Common/Criteo.ascx" %>
<%@ page language="C#" masterpagefile="~/Form/Common/DefaultPage.master" autoeventwireup="true" inherits="Form_Product_ProductDetail, App_Web_productdetail.aspx.1e99e05" title="商品詳細ページ" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ｗ２ユーザー" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<meta name="keywords" content="<%# WebSanitizer.HtmlEncode(this.SeoKeywords) %>" />
<meta name="description" content="<%# WebSanitizer.HtmlEncode(this.SeoDescription) %>" />


<%-- ▽Open Graph Protocol(ソーシャルログイン連携用)▽ --%>
<meta property="og:title" content='<%# WebSanitizer.HtmlEncode(GetProductData("name")) %>'/>
<meta property="og:type" content="article"/>
<meta property="og:url" content="<%: this.UnsecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_PRODUCT_DETAIL + "?" + Constants.REQUEST_KEY_PRODUCT_ID + "=" + this.ProductId %><%: Constants.PRODUCT_BRAND_ENABLED ? "&" + Constants.REQUEST_KEY_BRAND_ID + "=" + this.BrandId : "" %>"/>
<meta property="og:image" content="<%: this.UnsecurePageProtocolAndHost + Constants.PATH_ROOT %>Contents/ProductImages/0/<%# Server.UrlEncode((string)this.ProductMaster[Constants.FIELD_PRODUCT_IMAGE_HEAD]) %>_M.jpg"/>
<meta property="og:site_name" content="<%: WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopName")) %> "/>
<meta property="og:description" content="<%: WebSanitizer.HtmlEncode(this.SeoDescription) %>" />
<%-- △Open Graph Protocol(ソーシャルログイン連携用)△ --%>
<script type="text/javascript" src="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + "Js/jquery.elevateZoom-3.0.8.min.js") %>"></script>
<link href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + "Css/product.css") %>" rel="stylesheet" type="text/css" media="all" />
<link rel="canonical" href="<%# CreateProductDetailCanonicalUrl() %>" />
<% if ((Constants.MOBILEOPTION_ENABLED)
	&& (this.ProductMaster != null)
	&& ((string)this.ProductMaster[Constants.FIELD_PRODUCT_MOBILE_DISP_FLG] == Constants.FLG_PRODUCT_MOBILE_DISP_FLG_ALL)){%>
	<link rel="Alternate" media="handheld" href="<%= WebSanitizer.HtmlEncode(GetMobileUrl()) %>" />
<% } %>
<%= this.BrandAdditionalDsignTag %>


<!-- <script type="text/javascript">
//<![CDATA[
	$(function () {
		/* 詳細画像切り替え
		var regrep = "_M.jpg";
		$(".subImage li img").mouseover( changePhoto );
		function changePhoto(){
		var setname = $(this).attr("src").replace(regrep,"_L.jpg");
		$("#picture").attr("src",setname).css("opacity","0.2").fadeTo(300,1);
		}*/

		$('#zoomPicture').elevateZoom({
			zoomWindowWidth: 393,
			zoomWindowHeight: 393,
			responsive: true,
			zoomWindowOffetx: 15,
			borderSize: 1,
			cursor: "pointer"
		});

		$('.zoomTarget').click(function (e) {
			var image = $(this).data('image');
			var zoom_image = $(this).data('zoom-image');
			var ez = $('#zoomPicture').data('elevateZoom');
			ez.swaptheimage(image, zoom_image);
		});
	});
//]]>
</script> -->
<%-- △編集可能領域△ --%>

</asp:Content>

<%--
	通常価格・特別価格表示については
	・バリエーションなし			→ 商品バリエーションマスタ参照
	・バリエーションあり・未選択	→ 商品マスタ参照
	・バリエーションあり・選択中	→ 商品バリエーションマスタ参照
	となる。
	
	一方、商品セール価格表示部分は
	・バリエーションなし			→ 商品バリエーションマスタ参照
	・バリエーションあり・未選択	→ 商品バリエーションマスタ参照
	・バリエーションあり・選択中	→ 商品バリエーションマスタ参照
	としたいため、結局は取得出来ているバリエーションを参照する
--%>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<%-- UPDATEPANELによりthickboxが動作しないバグ対応 --%>
<!-- <script type="text/javascript" language="javascript">
	function bodyPageLoad() {
		if (Sys.WebForms == null) return;
		var isAsyncPostback = Sys.WebForms.PageRequestManager.getInstance().get_isInAsyncPostBack();
		if (isAsyncPostback) {
			tb_init('a.thickbox, area.thickbox, input.thickbox');
			$(function () {
				$(".productInfoList").heightLine().biggerlink();
				$('#zoomPicture').elevateZoom({
					zoomWindowWidth: 393,
					zoomWindowHeight: 393,
					responsive: true,
					zoomWindowOffetx: 15,
					borderSize: 1,
					cursor: "pointer"
				});

				$('.zoomTarget').click(function (e) {
					$('.zoomTarget').removeClass('selected');
					$(this).addClass('selected');
					var image = $(this).data('image');
					var zoom_image = $(this).data('zoom-image');
					var ez = $('#zoomPicture').data('elevateZoom');
					ez.swaptheimage(image, zoom_image);
				});
			});
			twttr.widgets.load(); //Reload twitter button

		}
	}
</script> -->
<!-- <style>
div#primary {
	position: relative;
}
.load_wrap {
    width: 100%;
    height: 100%;
    position: absolute;
    top: 0;
    left: 0;
    background: #fff;
    z-index: 100;
	opacity: 1;
    visibility: visible;
}
.load_wrap.active {
    opacity: 0;
    visibility: hidden;
    transition: all 1s 0.5s;
}
@media (max-width: 768px) {
	.load_wrap {
	    top: -95px;
	}
	.tblLayout_ProductDetail {
	    margin: 60px 0 0 0;
	}
}

</style> -->
<table id="tblLayout" class="tblLayout_ProductDetail" data="0">
<tr>
<td>
<div id="secondary">
<%-- ▽レイアウト領域：レフトエリア▽ --%>
<uc:ProductColorSearchBox runat="server" />
<uc:BodyProductCategoryTree runat="server" />
<%-- △レイアウト領域△ --%>
</div>
</td>
<td>
<div id="divTopArea">
<%-- ▽レイアウト領域：トップエリア▽ --%>
<%-- △レイアウト領域△ --%>
</div>
<%-- ▽編集可能領域：コンテンツ▽ --%>
<div id="primary">
<div class="load_wrap"></div>
<%-- カート投入ボタン押下時にどの画面へ遷移するか？ --%>
<%-- CART：カート一覧画面 CSCART:クロスセルカート画面 その他：画面遷移しない --%>
<asp:HiddenField ID="hfIsRedirectAfterAddProduct" Value="CART" runat="server" />

<%-- お気に入り追加ボタン押下時にどの画面へ遷移するか？ --%>
<%-- true:ポップアップ表示、false:お気に入り一覧ページへ遷移 --%>
<% IsDisplayPopupAddFavorite = true; %>



<div id="dvProductDetailArea">
<%-- UPDATE PANEL開始 --%>
<asp:UpdatePanel ID="upUpdatePanel" runat="server">
<ContentTemplate>

<div class="detail_top_wrap">
<div id="detailImage">
	<div class="pc_contents">
	<%-- ↓バリエーション変更時の表示更新領域を指定しています --%>
	<div class="ChangesByVariation" runat="server">
		<!-- 商品画像 -->
		<div class="mainImage">
<!-- 		<p class="mb5"><a href='<%# WebSanitizer.HtmlEncode(Constants.PATH_ROOT + "Form/Product/ProductZoomImage.aspx?" + Constants.REQUEST_KEY_PRODUCT_ID + "=" + Server.UrlEncode(this.ProductId) + "&ihead=" + Server.UrlEncode((string)this.ProductMaster[(this.VariationSelected) ? Constants.FIELD_PRODUCTVARIATION_VARIATION_IMAGE_HEAD : Constants.FIELD_PRODUCT_IMAGE_HEAD]) + "&" + Constants.REQUEST_KEY_SHOP_ID  + "=" +  Server.UrlEncode(this.ShopId) + "&width=640&height=540") %>' title='<%# WebSanitizer.HtmlEncode(GetProductData("name")) %>' class="thickbox btn btn-mini">拡大画像を表示する</a></p> -->

		<w2c:ProductImage ImageTagId="" data-zoom-image="" ImageSize="LL" ProductMaster="<%# this.ProductMaster %>" runat="server" />
<!-- 		<w2c:ProductImage ImageTagId="" data-zoom-image="" ImageSize="LL" IsVariation="<%# (this.VariationSelected) %>" ProductMaster="<%# this.ProductMaster %>" runat="server" /> -->

		<%-- ▽在庫切れ可否▽ --%>
		<span visible='<%# ProductListUtility.IsProductSoldOut(this.ProductMaster) %>' runat="server" class="soldout">SOLDOUT</span>
		<%-- △在庫切れ可否△ --%>
	</div>
	</div>
	<%-- ↑バリエーション変更時の表示更新領域を指定しています --%>
</div>
<script src="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.6.3/jquery.flexslider.js"></script>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/flexslider/2.6.3/flexslider.css" />
<script>
$(function(){});

	// var video = "<%# GetProductDataHtml("desc_detail4") %>";

	// $(".subImage").append('<li><video class="product-video" loop="" autoplay="" poster="" width="100%" height="100%" data-reactid=".0.0.2.1.0.1"><source src="'+video+'" data-reactid=".0.0.2.1.0.1.0"></video></li>');



function bodyPageLoad(){


	
	// if($("#tblLayout").attr("data") == 0){
	// 	$("#tblLayout").attr("data",1); 
	// }else{
	// 	$('.btn_menu').click(function () {
	// 	  $(this).toggleClass('active');
	// 	  $(".header__menu").toggleClass('open');
	// 	  $("#Wrap").toggleClass('open');

	// 	});
	// }

	$(".load_wrap").addClass("active");

	$(".addCart").append($(".detailAddcart_favo__wrap .detailAddcart_favo").clone());
	$(".SmartArrivalMail__wrap").append($(".detailAddcart_favo__wrap .detailAddcart_favo").clone());
	
	if($(".productSellInfo .zaiko_data").text()=="在庫有り"){
		$(".zaiiko_check span").text("あり")
	}else{
		$(".zaiiko_check span").text("なし")
	}

	var video = "<%# GetProductDataHtml("desc_detail4") %>";


	if($(window).width()>768){
		$(".subImage").append('<li><div class="youtube">'
		+'<iframe width="1280" height="1536" src="https://www.youtube.com/embed/'+video+'?showinfo=0&rel=0&controls=0&showinfo=0&modestbranding=1&autoplay=1&loop=1&playlist='+video+'" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" ></iframe>'
		+'</div></li>');
	}else{

	}

	set = "";
	set =  "<li>"+$(".mainImage").html()+"</li>";

	$(".subImage li").each(function(){
		set +=  "<li>"+$(this).html()+"</li>";
	})
	$(".slides").prepend(set);



	$('.flexslider').flexslider({
	    animation: 'slide'  //アニメーションをスライダーに設定
	})
	$(".flexslider .flex-prev").text("");
	$(".flexslider .flex-next").text("");

	$(".detail_change a").click(function(){
		$(".detail_change a").removeClass("active");
		$(this).addClass("active");

		$(".id_description_wrap > div").hide();
		$("."+$(this).attr("data")).show();

		return false;
	});

	$(".rev_innar__box").each(function(){
		$(".rev_innar__box__left",this).append($(".rev_innar__box__right__top",this).clone())
	})

		$(".subImage").prepend($(".variationImage").html())

		$(".hidden_btn").html("");
		$(".hidden_btn").html($(".productCart").clone())
		// $(".hidden_btn").append($(".SmartArrivalMail__wrap").clone());

		    var nav = $('.unit');
		    var dvUpSell =$("#dvUpSell");
			if($("#dvUpSell").length){
			var dvUpSell =$("#dvUpSell");
			}else{
			var dvUpSell = $('#divBottomArea');
			}
		    // メニューのtop座標を取得する
		    var offsetTop = nav.offset().top;
		    var offsetTop_sp = dvUpSell.offset().top;

		    var secNews = $('.sec--news');
		    
		    var height = $(window).height();

		    var floatMenu = function() {
		        // スクロール位置がメニューのtop座標を超えたら固定にする
		        if ($(window).scrollTop() > offsetTop) {
		            $(".hidden_btn").addClass("active")
					        // スクロール位置がメニューのtop座標を超えたら固定にする
				        if ($(window).scrollTop() > secNews.offset().top - height) {
				         	$(".hidden_btn").removeClass("active")

				        } else {
				            $(".hidden_btn").addClass("active")

				        }

		        } else {
		            $(".hidden_btn").removeClass("active")
		        }
		        console.log("pc")
		    }

		    var floatMenu_sp = function() {
		        // スクロール位置がメニューのtop座標を超えたら固定にする
		        if ($(window).scrollTop() > offsetTop_sp) {
		            $(".hidden_btn").addClass("active")
					        // スクロール位置がメニューのtop座標を超えたら固定にする
				        if ($(window).scrollTop() > secNews.offset().top - height) {
				         	$(".hidden_btn").removeClass("active")

				        } else {
				            $(".hidden_btn").addClass("active")

				        }

		        } else {
		            $(".hidden_btn").removeClass("active");
		        }
		        console.log("sp")
		    }
		    if($(window).width()>768){
		    	$(window).scroll(floatMenu);
		    }else{
		    	$(window).scroll(floatMenu_sp);
		    }
		    
		$(".iconspan").each(function(){
	       if($(this).html()==""){
	       	$(this).remove();
	       }
		});

		
		if($("#ctl00_ContentPlaceHolder1_lbRequestArrivalMail2").length || $("a#ctl00_ContentPlaceHolder1_lbCartAdd").length){
			
		}else{
			$(".selectValiation").append("<div class='soldout'>在庫がありません</div>")
		}

		if($("input#ctl00_ContentPlaceHolder1_rProductOptionValueSettings_ctl01_txtProductOptionValueSetting").val() != undefined){
			$(".preorder_text").text($("input#ctl00_ContentPlaceHolder1_rProductOptionValueSettings_ctl01_txtProductOptionValueSetting").val())
			$("a#ctl00_ContentPlaceHolder1_lbCartAdd").text("予約する")
		}else{
			$(".preorder_text__wrap").css("display","none");

		}
		// $(".tblLayout_ProductDetail ul.slides li:nth-last-child(3)").remove()
		if($("#ctl00_ContentPlaceHolder1_lbRequestArrivalMail2").text().trim()=="入荷お知らせメール申込"){
			$(".mainImage .soldout").css("display","none");
		}

		
		if($(".sale_price").html()==""){

		}else{
			$(".productPrice__wrap__detail").addClass("saleWrap")
		}

		$('#ctl00_ContentPlaceHolder1_lbRequestArrivalMail2').click(function () {
			$('body').addClass('active');
		});
		
		$('.my-parts').click(function () {
			$('body').removeClass('active');
		});
		
}

</script>
<style type="text/css" media="screen">

.flexslider .flex-prev { opacity: 0.2; left: 10px; background: url(/Contents/ImagesPkg/user/common/arrow_prev.svg) no-repeat left;
	opacity: 1;

 }
.flexslider .flex-next { opacity: 0.2; right: 10px; background: url(/Contents/ImagesPkg/user/common/arrow_next.svg) no-repeat left;
	opacity: 1;	
	background-position: 25px center;

 }

@media (max-width: 768px) {
	.flex-direction-nav .flex-next{
		right: 10px!important;
	}
}
</style>
<div class="sp_contents">
	<div class="flexslider">
	    <ul class="slides">
	    	<li>
				<div class="youtube">
					<div id="youtube">
						
					</div>
				</div>
	    	</li>

	    </ul>
	</div>
</div>
<script>
// APIの読み込みokje4WaBZ-A
var tag = document.createElement('script');
tag.src = "https://www.youtube.com/iframe_api";
var firstScriptTag = document.getElementsByTagName('script')[0];
firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);

// プレーヤーを埋め込む場所指定
var ytArea = 'youtube';
// 埋め込むYouTube ID指定
var ytID = '<%# GetProductDataHtml("desc_detail4") %>';

// プレーヤーの埋め込み
function onYouTubeIframeAPIReady() {
	ytPlayer = new YT.Player(ytArea, {
		videoId: ytID,
		playerVars: {
			playsinline: 1,
			loop: -1, // ループの設定
			rel: 0,
			controls: 0,
			showinfo: 0,
			wmode: 'transparent'
		},
		events: {
			'onReady': onPlayerReady,
			'onStateChange': onPlayerStateChange
		}
	});
}

// YouTubeの準備完了後
function onPlayerReady(e) {
	ytPlayer.playVideo();
	ytPlayer.mute();
	ytPlayer.setPlaybackQuality('hd1080');
}

// 再生完了後
function onPlayerStateChange(e) {
	var ytStatus = e.target.getPlayerState();
	if (ytStatus == YT.PlayerState.ENDED) {
		ytPlayer.playVideo();
		ytPlayer.mute();
	}
}
	
</script>

<style>

.youtube {
  position: relative;
  width: 100%;
  padding-top: 120%;
  overflow: hidden;
}

iframe {
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    transform: scale(1.5);
    top: -100px;
}
</style>
<%-- 
<ul class="btnListContact">
	<li>
	<!-- お問い合わせリンク -->
	<div class="ChangesByVariation" runat="server">
	<a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductInquiryUrl(this.ProductMaster, this.VariationSelected)) %>">この商品に関する問い合わせ</a>
	</div>
	</li><!-- --><li>
	<asp:LinkButton ID="lbAddFavorite" runat="server" OnClick="lbAddFavorite_Click">お気に入りに追加</asp:LinkButton>
	</li>
</ul>
--%>

<div class="description">

	<!-- キャッチコピー -->
	<h3><%# WebSanitizer.HtmlEncode(GetProductData("catchcopy")) %></h3>




	<!-- ホームページリンク -->
	<div visible='<%# StringUtility.ToEmpty(GetProductData("url")) != "" %>' runat="server">
	<a href="<%# WebSanitizer.HtmlEncode(GetProductData("url")) %>">メーカのホームページへ</a>
	</div>

	<!-- 問い合わせメールリンク -->
	<div visible='<%# StringUtility.ToEmpty(GetProductData("inquire_email")) != "" %>' runat="server">
	<a href="mailto:<%# WebSanitizer.HtmlEncode(GetProductData("inquire_email")) %>">商品のお問合せ</a>
	</div>

	<!-- 電話問い合わせ -->
	<div visible='<%# StringUtility.ToEmpty(GetProductData("inquire_tel")) != "" %>' runat="server">
	お問合せ：<%# WebSanitizer.HtmlEncode(GetProductData("inquire_tel")) %></div>

</div>

</div><!-- detailImage -->

<div class="detailOne_wrap">
<div id="detailOne">

<!-- 商品アイコン -->
<p class="icon">
	<span class="iconspan"><w2c:ProductIcon IconNo="1" ProductMaster="<%# this.ProductMaster %>" runat="server" /></span>
	<span class="iconspan"><w2c:ProductIcon IconNo="2" ProductMaster="<%# this.ProductMaster %>" runat="server" /></span>
	<span class="iconspan"><w2c:ProductIcon IconNo="3" ProductMaster="<%# this.ProductMaster %>" runat="server" /></span>
	<span class="iconspan"><w2c:ProductIcon IconNo="4" ProductMaster="<%# this.ProductMaster %>" runat="server" /></span>
	<span class="iconspan"><w2c:ProductIcon IconNo="5" ProductMaster="<%# this.ProductMaster %>" runat="server" /></span>
	<span class="iconspan"><w2c:ProductIcon IconNo="6" ProductMaster="<%# this.ProductMaster %>" runat="server" /></span>
	<span class="iconspan"><w2c:ProductIcon IconNo="7" ProductMaster="<%# this.ProductMaster %>" runat="server" /></span>
	<span class="iconspan"><w2c:ProductIcon IconNo="8" ProductMaster="<%# this.ProductMaster %>" runat="server" /></span>
	<span class="iconspan"><w2c:ProductIcon IconNo="9" ProductMaster="<%# this.ProductMaster %>" runat="server" /></span>
	<span class="iconspan"><w2c:ProductIcon IconNo="10" ProductMaster="<%# this.ProductMaster %>" runat="server" /></span>
</p>

<%-- ↓バリエーション変更時の表示更新領域を指定しています --%>
<div class="ChangesByVariation" runat="server">
	<!-- 商品名 -->
	<h2><%# WebSanitizer.HtmlEncode(GetProductData("name")) %></h2>
	<div id="dvProductSubInfo" class="clearFix">
		<!-- 商品ID  -->
		<p class="productDetailId">&nbsp;[<span class="productId"><%# WebSanitizer.HtmlEncode(GetProductData("variation_id")) %>]</span></p>
</div>

	<div class="wrapProductPrice">
	<!-- 商品価格・税区分・加算ポイント -->
	<%-- ▽商品会員ランク価格有効▽ --%>
	<div visible='<%# GetProductMemberRankPriceValid(this.ProductMaster, (this.HasVariation == false) || (this.VariationSelected)) %>' runat="server">
		<p class="productPrice"><span><strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(this.ProductMaster, (this.HasVariation == false) || (this.VariationSelected))) %></strike></span>(tax in)</p>
		<p class="productPrice">会員ランク価格:<span><%#: CurrencyManager.ToPrice(ProductPage.GetProductMemberRankPrice(this.ProductMaster)) %></span>(tax in)</p>
	</div>
	<%-- △商品会員ランク価格有効△ --%>
	<%-- ▽商品セール価格有効▽ --%>
	<div visible='<%# GetProductTimeSalesValid(this.ProductMaster, (this.HasVariation == false) || (this.VariationSelected)) %>' runat="server">
		<p class="productPrice"><span><strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(this.ProductMaster, (this.HasVariation == false) || (this.VariationSelected))) %></strike></span>(tax in)</p>
		<p class="productPrice">タイムセールス価格:<span><%#: CurrencyManager.ToPrice(ProductPage.GetProductTimeSalePriceNumeric(this.ProductMaster)) %></span>(tax in)</p>
	</div>
	<%-- △商品セール価格有効△ --%>
	<%-- ▽商品特別価格有効▽ --%>
	<div class="productPrice__wrap__detail" visible='<%# GetProductSpecialPriceValid(this.ProductMaster, (this.HasVariation == false) || (this.VariationSelected)) %>' runat="server">
		
		<p class="productPrice"><span><%#: CurrencyManager.ToPrice(ProductPage.GetProductSpecialPriceNumeric(this.ProductMaster, (this.HasVariation == false) || (this.VariationSelected))) %></span>(tax in)</p>
		<p class="productPrice sale_price"><span><strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(this.ProductMaster, (this.HasVariation == false) || (this.VariationSelected))) %></strike></span>(tax in)</p>
	</div>
	<%-- △商品特別価格有効△ --%>
	<%-- ▽商品通常価格有効▽ --%>
	<div visible='<%# GetProductNormalPriceValid(this.ProductMaster, (this.HasVariation == false) || (this.VariationSelected)) %>' runat="server">
		<p class="productPrice"><span><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(this.ProductMaster, (this.HasVariation == false) || (this.VariationSelected))) %></span>(tax in)</p>
	</div>
	<%-- △商品通常価格有効△ --%>
	<%-- ▽商品定期購入価格▽ --%>
	<% if (Constants.FIXEDPURCHASE_OPTION_ENABLED) {%>
	<div visible='<%# (GetKeyValue(this.ProductMaster, Constants.FIELD_PRODUCT_FIXED_PURCHASE_FLG).ToString() != Constants.FLG_PRODUCT_FIXED_PURCHASE_FLG_INVALID) %>' runat="server">
		<span visible='<%# IsProductFixedPurchaseFirsttimePriceValid(this.ProductMaster, (this.HasVariation == false) || (this.VariationSelected)) %>' runat="server">
			<p class="productPrice">定期初回価格:<span><%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchaseFirsttimePrice(this.ProductMaster, (this.HasVariation == false) || (this.VariationSelected))) %></span>(<%#: GetTaxIncludeString(this.ProductMaster) %>)</p>
		</span>
		<p class="productPrice">定期通常価格:<span><%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchasePrice(this.ProductMaster, (this.HasVariation == false) || (this.VariationSelected))) %></span>(<%#: GetTaxIncludeString(this.ProductMaster) %>）</p>
	</div>
	<% } %>
	<%-- △商品定期購入価格△ --%>
	<%-- ▽商品加算ポイント▽ --%>
	<p visible='<%# (this.IsLoggedIn && (GetProductAddPointString(this.ProductMaster, this.HasVariation, this.VariationSelected) != "")) %>' runat="server">
	<span class="productPoint">ポイント<%# WebSanitizer.HtmlEncode(GetProductAddPointString(this.ProductMaster, this.HasVariation, this.VariationSelected)) %></span><span class="productPoint" visible='<%# (this.IsLoggedIn && ((string)GetKeyValue(this.ProductMaster, Constants.FIELD_PRODUCT_POINT_KBN1)) != Constants.FLG_PRODUCT_POINT_KBN1_NUM) %>' runat="server">(<%# WebSanitizer.HtmlEncode(GetProductAddPointCalculateAfterString(this.ProductMaster, this.HasVariation, this.VariationSelected))%>)
	</span>
</p>
	<%-- △商品加算ポイント△ --%>
	</div>

</div>
<%-- ↑バリエーション変更時の表示更新領域を指定しています --%>

<%-- SNSボタン ※mixiチェックはクライアント毎にデベロッパ登録したキーを設定する必要あり --%>
<ul class="snsList clearFix">
	<li><iframe src="//www.facebook.com/plugins/like.php?href=<%# HttpUtility.UrlEncode(this.UnsecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_PRODUCT_DETAIL + "?" + Constants.REQUEST_KEY_PRODUCT_ID + "=" + this.ProductId) %><%# HttpUtility.UrlEncode(Constants.PRODUCT_BRAND_ENABLED ? "&" + Constants.REQUEST_KEY_BRAND_ID + "=" + this.BrandId : "") %>&amp;send=false&amp;layout=button_count&amp;width=450&amp;show_faces=false&amp;action=like&amp;colorscheme=light&amp;font=tahoma&amp;height=21" scrolling="no" frameborder="0" style="border:none; overflow:hidden; width:100px; height:21px;" allowTransparency="true"></iframe></li>
	<li><a href="javascript:void(0);" onclick='<%# WebSanitizer.HtmlEncode("window.open('http://mixi.jp/share.pl?u=" + HttpUtility.UrlEncode(this.UnsecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_PRODUCT_DETAIL + "?" + Constants.REQUEST_KEY_PRODUCT_ID + "=" + this.ProductId + (Constants.PRODUCT_BRAND_ENABLED ? "&" + Constants.REQUEST_KEY_BRAND_ID + "=" + this.BrandId : "") + "&k=01ac61d95d41a50ea61d0c5ab84adf0cfbf62f7d") + "','share',['width=632','height=456','location=yes','resizable=yes','toolbar=no','menubar=no','scrollbars=no','status=no'].join(','));") %>'><img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/mixi_bt_check_1.png" alt="mixiチェック" border="0" /></a></li>
	<li><a href="https://twitter.com/share" class="twitter-share-button" data-count="none" data-lang="ja">ツイート</a><script type="text/javascript" src="https://platform.twitter.com/widgets.js"></script></li>
</ul>

<div class="ChangesByVariation" runat="server">
<asp:Repeater ID="rSetPromotion" DataSource="<%# this.SetPromotions %>" runat="server">
<ItemTemplate>
<p><%# GetProductDescHtml(((SetPromotionModel)Container.DataItem).DescriptionKbn, ((SetPromotionModel)Container.DataItem).Description) %></p>
</ItemTemplate>
</asp:Repeater>
</div>

<%-- ↓バリエーション変更時の表示更新領域を指定しています --%>
<div class="ChangesByVariation" runat="server">
<div class="productSellInfo">


<div class="tag_material">
	<dl>
		<dt>カラー</dt>
		<dd>
			<%-- ▽商品付帯情報▽ --%>

			<asp:Repeater ID="rProductOptionValueSettings" DataSource='<%# this.ProductOptionSettingList %>' runat="server">
			<ItemTemplate>
			<!-- <%# WebSanitizer.HtmlEncode(((ProductOptionSetting)Container.DataItem).ValueName) %> -->
			<asp:Repeater ID="rCblProductOptionValueSetting" DataSource='<%# ((ProductOptionSetting)Container.DataItem).SettingValuesListItemCollection %>' Visible='<%# ((ProductOptionSetting)Container.DataItem).DisplayKbn == Constants.PRODUCTOPTIONVALUES_DISP_KBN_CHECKBOX %>' runat="server" >
			<ItemTemplate>
				<asp:CheckBox ID="cbProductOptionValueSetting" Text='<%# Eval("Text") %>' Checked='<%# (bool)Eval("Selected") %>' runat="server" />
			</ItemTemplate>
			</asp:Repeater>
			<asp:DropDownList ID="ddlProductOptionValueSetting" DataSource='<%# ((ProductOptionSetting)Container.DataItem).SettingValuesListItemCollection %>'  visible='<%# ((ProductOptionSetting)Container.DataItem).DisplayKbn == Constants.PRODUCTOPTIONVALUES_DISP_KBN_SELECTMENU %>' SelectedValue='<%# ((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectedValue() %>' runat="server" />
			<span class="necessary" runat="server" visible="<%# ((ProductOptionSetting)Container.DataItem).IsNecessary %>">*</span>
			<asp:TextBox ID ="txtProductOptionValueSetting" Text = '<%# ((ProductOptionSetting)Container.DataItem).DefaultValue%>' visible='<%# ((ProductOptionSetting)Container.DataItem).IsTextBox %>' runat="server" />
			<!-- <br /> -->
			<asp:Label ID = "lblProductOptionErrorMessage" runat="server" CssClass="error_inline"/>
			<!-- <br /> -->
			</ItemTemplate>
			</asp:Repeater>

			<%-- △商品付帯情報△ --%>
		</dd>
	</dl>
	<dl>
		<dt>素材</dt>
		<dd><!-- タグ素材　--><%# WebSanitizer.HtmlEncode(GetProductData("tag_material")) %></dd>
	</dl>
	<dl class="preorder_text__wrap">
		<dt>販売期間</dt>
		<dd class="preorder_text"></dd>
	</dl>
</div>
<!-- バリエーション選択 -->
<div class="selectValiation">
<% if(this.HasVariation) {%>
<% if ((this.SelectVariationKbn == Constants.SelectVariationKbn.PANEL)
		|| (this.IsVariationName3 && ((this.SelectVariationKbn == Constants.SelectVariationKbn.DOUBLEDROPDOWNLIST)
			|| (this.SelectVariationKbn == Constants.SelectVariationKbn.MATRIX)
			|| (this.SelectVariationKbn == Constants.SelectVariationKbn.MATRIXANDMESSAGE)))){ %>
	<asp:Repeater ID="rVariationName1List" DataSource="<%# this.ProductVariationName1List %>" runat="server">
		<HeaderTemplate>
			<div class="selectValiation__innar">
				<div>
					<span>サイズ</span><br />
				</div>
				<div style="width:100%" class="si_wrap">
					<!-- <div>&nbsp;</div> -->
					<div>
		</HeaderTemplate>
		<ItemTemplate>
			<div class="selectValiation__innar1">
				<asp:LinkButton ID="lbVariationName1List" OnClick="lbVariationName1List_OnClick" CommandArgument="<%#: Container.DataItem %>" runat="server">
					<div class="<%# (WebSanitizer.HtmlEncode(Container.DataItem) == this.SelectedVariationName1) ? "VariationPanelSelected" : "VariationPanel" %>"><%#: Container.DataItem %></div>
				</asp:LinkButton>
			</div>
		</ItemTemplate>
		<FooterTemplate>
					</div>
				</div>
				<div class="zaiiko_check">
					在庫 :  <span></span>
				</div>
			</div>
		</FooterTemplate>
	</asp:Repeater>
	<br />
	<% if (this.ProductVariationName2List.Count > 0) { %>
	<asp:Repeater ID="rVariationName2List" DataSource="<%# this.ProductVariationName2List %>" runat="server">
		<HeaderTemplate>
			<br />
			<div class="selectValiation__innar2">
				<hr /><br />
				<div style="width:100%">
					<span>Size</span><br />
				</div>
				<div style="width:100%">
					<div>&nbsp;</div>
					<div style="float:left; width:100%">
		</HeaderTemplate>
		<ItemTemplate>
			<div>
				<asp:LinkButton ID="lbVariationName2List" OnClick="lbVariationName2List_OnClick" CommandArgument="<%#: Container.DataItem %>" runat="server">
					<div class="<%# (WebSanitizer.HtmlEncode(Container.DataItem) == this.SelectedVariationName2) ? "VariationPanelSelected" : "VariationPanel" %>"><%#: Container.DataItem %></div>
				</asp:LinkButton>
				<asp:HiddenField ID="hfVariationName2" Value="<%#: Container.DataItem %>" runat="server" />
			</div>
		</ItemTemplate>
		<FooterTemplate>
					</div>
				</div>
			</div>
		</FooterTemplate>
	</asp:Repeater>
	<%} %>
	<% if (this.ProductVariationName3List.Count > 0) { %>
	<br />
	<asp:Repeater ID="rVariationName3List" DataSource="<%# this.ProductVariationName3List %>" runat="server">
		<HeaderTemplate>
			<br />
			<div style="width:100%; padding-bottom:30px; clear:both">
				<hr /><br />
				<div style="width:100%">
					<span>Type</span><br />
				</div>
				<div style="width:100%">
					<div style="padding-left:10px; width:10%; float:left">&nbsp;</div>
					<div style="float:left; width:100%">
		</HeaderTemplate>
		<ItemTemplate>
			<div style="padding-left: 14%">
				<asp:LinkButton ID="lbVariationName3List" OnClick="lbVariationName3List_OnClick" CommandArgument="<%#: Container.DataItem %>" runat="server">
					<div class="<%# (WebSanitizer.HtmlEncode(Container.DataItem) == this.SelectedVariationName3) ? "VariationPanelSelected" : "VariationPanel" %>"><%#: Container.DataItem %></div>
				</asp:LinkButton>
				<asp:HiddenField ID="hfVariationName3" Value="<%#: Container.DataItem %>" runat="server" />
			</div>
		</ItemTemplate>
		<FooterTemplate>
					</div>
				</div>
			</div>
		</FooterTemplate>
	</asp:Repeater>
	<%} %>
<%} else if ((this.SelectVariationKbn == Constants.SelectVariationKbn.STANDARD) || (this.SelectVariationKbn == Constants.SelectVariationKbn.DROPDOWNLIST)) { %>
	<asp:DropDownList ID="ddlVariationSelect" DataSource='<%# this.ProductValirationListItemCollection %>' DataTextField="Text" DataValueField="Value" SelectedValue='<%# (this.HasVariation && this.VariationSelected && ((this.SelectVariationKbn == Constants.SelectVariationKbn.STANDARD) || (this.SelectVariationKbn == Constants.SelectVariationKbn.DROPDOWNLIST))) ? this.VariationId : null %>' Visible="<%# this.HasVariation %>" OnSelectedIndexChanged="ddlVariationId_SelectedIndexChanged" AutoPostBack="True" runat="server"></asp:DropDownList>
<%} else if (this.SelectVariationKbn == Constants.SelectVariationKbn.DOUBLEDROPDOWNLIST) { %>
	<asp:DropDownList ID="ddlVariationSelect1" DataSource='<%# this.ProductValirationListItemCollection %>' DataTextField="Text" DataValueField="Value" SelectedValue='<%# (this.HasVariation && (this.SelectedVariationName1 != "") && (this.SelectVariationKbn == Constants.SelectVariationKbn.DOUBLEDROPDOWNLIST)) ? this.SelectedVariationName1 : null %>' Visible="<%# this.HasVariation %>" OnSelectedIndexChanged="ddlVariationId_SelectedIndexChanged" AutoPostBack="True" runat="server"></asp:DropDownList>
	<asp:DropDownList ID="ddlVariationSelect2" DataSource='<%# this.ProductValirationListItemCollection2 %>' DataTextField="Text" DataValueField="Value" SelectedValue='<%# (this.HasVariation && (this.SelectVariationKbn == Constants.SelectVariationKbn.DOUBLEDROPDOWNLIST)) ? this.SelectedVariationName2 : null %>' Visible="<%# this.HasVariation %>" OnSelectedIndexChanged="ddlVariationId_SelectedIndexChanged" AutoPostBack="True" runat="server"></asp:DropDownList>
<%} else if (this.SelectVariationKbn == Constants.SelectVariationKbn.MATRIX || (this.SelectVariationKbn == Constants.SelectVariationKbn.MATRIXANDMESSAGE)) { %>
	<!--1軸バリエーション-->
	<% if (this.IsPluralVariation == false) { %>
		<table cellspacing="0" border="1">
			<asp:Repeater ID="rVariationSingleList" runat="server">
			<ItemTemplate>
			<tr>
				<td class="selectValiationMatrix">
					<span>&nbsp;<%# WebSanitizer.HtmlEncode(CreateVariationName(Container.DataItem, "", "", Constants.CONST_PRODUCTVARIATIONNAME_PUNCTUATION)) %>&nbsp;</span>
				</td>
				<td align="center" valign="middle">
					<asp:HiddenField ID="hfVariationId" Value='<%# Eval(Constants.FIELD_PRODUCTVARIATION_VARIATION_ID) %>' runat="server" />
					<w2c:RadioButtonGroup ID="rbgVariationId" Checked="<%# (this.VariationId == (string)Eval(Constants.FIELD_PRODUCTVARIATION_VARIATION_ID)) %>" GroupName="Variation" OnCheckedChanged="ddlVariationId_SelectedIndexChanged" AutoPostBack="true" CssClass="radioBtn" runat="server" />
				</td>
			</tr>
			</ItemTemplate>
			</asp:Repeater>
		</table>
	<%} else { %>
	<!--2軸バリエーション-->
		<%--★ 下記aspxファイル上のデータソースやパラメータの値を入れ替えることで縦軸横軸の表示項目を切り替えることが可能です。（例：1→2、2→1に置き換える） ★--%>
		<table cellspacing="0" border="1">
			<%--▽ バリエーションヘッダ ▽--%>
			<asp:Repeater DataSource="<%# this.VariationName2List %>" runat="server">
				<HeaderTemplate>
					<tr><th class="selectValiationMatrix">&nbsp;</th>
				</HeaderTemplate>
				<ItemTemplate>
					<th class="selectValiationMatrix"><span>&nbsp;<%# Container.DataItem %>&nbsp;</span></th>
				</ItemTemplate>
				<FooterTemplate>
					</tr>
				</FooterTemplate>
			</asp:Repeater>
			<%--△ バリエーションヘッダ △--%>
			<%--▽ バリエーションデータ ▽--%>
			<asp:Repeater ID="rVariationMatrixY" DataSource="<%# this.VariationName1List %>" runat="server">
			<ItemTemplate>
				<tr>
				<asp:Repeater ID="rVariationMatrixX" DataSource="<%# this.VariationName2List %>" runat="server">
				<ItemTemplate>
					<th valign="middle" class="selectValiationMatrix" style='<%# (Container.ItemIndex % this.VariationName2List.Count == 0) ? "" : "display:none" %>'>
						<span>&nbsp;<%# ((RepeaterItem)Container.Parent.Parent).DataItem %>&nbsp;</span>
					</th>
					<td align="center" valign="middle">
						<span visible='<%# GetVariationIdForMatrix(Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME1, ((RepeaterItem)Container.Parent.Parent).DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME2, Container.DataItem) != "" %>' runat="server">				
							<asp:HiddenField ID="hfVariationId" Value='<%# GetVariationIdForMatrix(Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME1, ((RepeaterItem)Container.Parent.Parent).DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME2, Container.DataItem) %>' runat="server" />
							<w2c:RadioButtonGroup ID="rbgVariationId" Checked='<%# ((this.VariationId != "") && (this.VariationId == GetVariationIdForMatrix(Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME1, ((RepeaterItem)Container.Parent.Parent).DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME2, Container.DataItem))) %>' GroupName="Variation" OnCheckedChanged="ddlVariationId_SelectedIndexChanged" AutoPostBack="true" CssClass="radioBtn" runat="server" />
							<% if (this.SelectVariationKbn == Constants.SelectVariationKbn.MATRIXANDMESSAGE) { %>
							<%# WebSanitizer.HtmlEncode(GetStockMessageForMatrix(Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME1, ((RepeaterItem)Container.Parent.Parent).DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME2, Container.DataItem)) %>
							<%} %>
						</span>
						<%--▽ バリエーションが存在しない場合（規定は空欄） ▽--%>
						<span visible='<%# GetVariationIdForMatrix(Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME1, ((RepeaterItem)Container.Parent.Parent).DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME2, Container.DataItem) == "" %>' runat="server">&nbsp;</span>
						<%--△ バリエーションが存在しない場合（規定は空欄） △--%>
					</td>
				</ItemTemplate>
				</asp:Repeater>
				</tr>
			</ItemTemplate>
			</asp:Repeater>
			<%--△ バリエーションデータ △--%>
		</table>
	<%} %>
<%} %>
<%} %>
</div>
<!-- <div class="size_detail_check">
	<h3>サイズ</h3>
	<ul>
		<li><a href="">JUST FIT<span>残り２点</span></a></li>
		<li><a href="">LOOSE FIT<span>在庫なし</span></a></li>
	</ul>
</div> -->




<!-- 注文数量指定 -->
<div class="productAmount" style='<%# (this.IsSelectingVariationExist == false) ? "display:none" : "" %>' runat="server">
注文数：<asp:TextBox ID="tbCartAddProductCount" runat="server" Text="1" MaxLength="3" Width="28px" OnTextChanged="ddlVariationId_SelectedIndexChanged" AutoPostBack="true" style="text-align:center;"></asp:TextBox>
</div>

<div visible="<%# this.Buyable %>" runat="server">

<div class="productCart">

<!-- カート投入リンク -->
<div class="addCart">
	<p class="btnCart">
	<asp:LinkButton ID="lbCartAdd" class="btn btn-mid btn-inverse" runat="server" Visible="<%# this.CanAddCart %>" Onclick="lbCartAdd_Click" OnClientClick="return add_cart_check();">
	カートに入れる
</asp:LinkButton>

</p>
	<p class="btnCart">
	<asp:LinkButton ID="lbCartAddFixedPurchase" class="btn btn-mid btn-inverse" runat="server" Visible="<%# (this.CanFixedPurchase) %>" OnClick="lbCartAddFixedPurchase_Click" OnClientClick="return add_cart_check_for_fixedpurchase();">
	カートに入れる(定期購入)
	</asp:LinkButton>
	</p>
	<p class="btnCart">
	<asp:LinkButton ID="lbCartAddForGift" class="btn btn-mid btn-inverse" runat="server" Visible="<%# (this.CanGiftOrder) %>" OnClick="lbCartAddGift_Click" OnClientClick="return add_cart_check();">
	カートに入れる(ギフト購入)
	</asp:LinkButton>
	</p>


</div>

<div visible="<%# (((this.IsSelectingVariationExist) && (this.SelectVariationKbn == Constants.SelectVariationKbn.PANEL))
	|| ((this.IsSelectingVariationExist) && this.IsVariationName3 && ((this.SelectVariationKbn == Constants.SelectVariationKbn.DOUBLEDROPDOWNLIST)
		|| (this.SelectVariationKbn == Constants.SelectVariationKbn.MATRIX)
		|| (this.SelectVariationKbn == Constants.SelectVariationKbn.MATRIXANDMESSAGE)))) %>" runat="server">
	<p class="zaiko_data" style="display:none">在庫有り</p>
</div>

<!--在庫文言表示-->
<%if (this.HasStockMessage) {%>
<%if (this.HasVariation) {%>
<p class="productStock">
	<a href="" onclick='<%# WebSanitizer.HtmlEncode("javascript:show_popup_window('" + CreateProductStockListUrl() + "', 700, 400, true, true, 'ProductStockList'); return false;") %>'>在庫状況</a>
</p>
<%} // (this.HasVariation) %>
<%if (this.HasVariation == false) {%>
<p class="productStock">
在庫状況：<%# WebSanitizer.HtmlEncode(w2.App.Common.Order.ProductCommon.CreateProductStockMessage(this.ProductMaster, true)) %><%} // (this.HasVariation == false) %></p>
<%} // (this.HasStockMessage) %>

<!-- <p>お気に入りの登録人数：<%# this.FavoriteUserCount %>人</p> -->

</div>

</div><!-- <%# this.Buyable %> -->

<%-- ▽お気に入り追加▽ --%>
<div class="detailAddcart_favo__wrap" style="display: none;">

	<div class="detailAddcart_favo">
		<asp:LinkButton ID="lbAddFavorite" runat="server" OnClick="lbAddFavorite_Click">
			<%if (this.IsLoggedIn && (this.IsAlreadyRegisterFavorite(Constants.CONST_DEFAULT_SHOP_ID,　this.LoginUserId,　this.ProductId))) {%>
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/favorite_active.png" alt="お気に入りへ" />
			<% } else {%>
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/detail_favorite.png" alt="お気に入りへ" />
			<% } %>
	　　</asp:LinkButton>
	</div>
</div>
<%-- △お気に入り追加△ --%>

	<!-- 販売期間 -->
	<%if (this.DisplaySell) {%>
	<p>販売期間：<%#: DateTimeUtility.ToStringFromRegion(GetProductData("sell_from"), DateTimeUtility.FormatType.LongDateHourMinute1Letter) %>～<%#: DateTimeUtility.ToStringFromRegion(GetProductData("sell_to"), DateTimeUtility.FormatType.LongDateHourMinute1Letter) %></p>
	<%}%>
<div visible="<%# (this.IsSelectingVariationExist) %>" runat="server">
<p class="error"><%# WebSanitizer.HtmlEncode(this.AlertMessage) %></p>
<div class="error"><%: this.ErrorMessageFixedPurchaseMember %></div>
<p class="error"><%# WebSanitizer.HtmlEncode(this.LimitedPaymentMessages) %></p>
</div>
<!--再入荷通知メール申し込みボタン表示-->
<div class="SmartArrivalMail__wrap">
	<div visible="<%# this.ArrivalMailKbn == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL %>" runat="server">
	<asp:LinkButton ID="lbRequestArrivalMail2" Runat="server" OnCommand="ViewRegsiterArrivalMailForm_Command" CommandArgument="Arrival" class="btn btn-mid btn-inverse">
	入荷お知らせメール申込
	</asp:LinkButton>
	<p>
	<span visible="<%# IsArrivalMailAnyRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL) %>" runat="server"><br />通知登録済み!!</span>
	<span visible="<%# IsArrivalMailPcRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL) %>" runat="server"> [PC]</span>
	<span visible="<%# IsArrivalMailMobileRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL) %>" runat="server"> [モバイル]</span>
	<span visible="<%# IsArrivalMailGuestRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL) %>" runat="server"> [その他]</span>
	</p>
</div>
<%-- 再入荷通知メール登録フォーム表示 --%>
<uc:BodyProductArrivalMailRegister runat="server" ID="ucBpamrArrival" ArrivalMailKbn="<%#: Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL %>" ProductId="<%#: this.ProductId %>" VariationId="<%# this.VariationId %>" HasVariation="<%# this.HasVariation %>" Visible="false" />
</div><!-- <%# this.ArrivalMailKbn == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL %> -->

<!--販売開始通知メール申し込みボタン表示-->
<div visible="<%# this.ArrivalMailKbn == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE %>" runat="server">
<asp:LinkButton ID="lbRequestReleaseMail2" Runat="server" OnCommand="ViewRegsiterArrivalMailForm_Command" CommandArgument="Release" class="btn btn-mid btn-inverse">
販売開始通知メール申込
</asp:LinkButton>
<p>
<span visible="<%# IsArrivalMailAnyRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE) %>" runat="server"><br />通知登録済み!!</span>
<span visible="<%# IsArrivalMailPcRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE) %>" runat="server"> [PC]</span>
<span visible="<%# IsArrivalMailMobileRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE) %>" runat="server"> [モバイル]</span>
<span visible="<%# IsArrivalMailGuestRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE) %>" runat="server"> [その他]</span>
</p>
<%--販売開始通知メール登録フォーム表示 --%>
<uc:BodyProductArrivalMailRegister runat="server" ID="ucBpamrRelease" ArrivalMailKbn="<%#: Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE %>" ProductId="<%#: this.ProductId %>" HasVariation="<%# this.HasVariation %>" Visible="false" />
</div><!-- <%# this.ArrivalMailKbn == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE %> -->

<!-- 再販売通知メール申し込みボタン表示 -->
<div visible="<%# this.ArrivalMailKbn == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE %>" runat="server">
<asp:LinkButton ID="lbRequestResaleMail2" Runat="server" OnCommand="ViewRegsiterArrivalMailForm_Command" CommandArgument="Resale" class="btn btn-mid btn-inverse">
再販売通知メール申込
</asp:LinkButton>
<p>
<span visible="<%# IsArrivalMailAnyRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE) %>" runat="server"><br />通知登録済み!!</span>
<span visible="<%# IsArrivalMailPcRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE) %>" runat="server"> [PC]</span>
<span visible="<%# IsArrivalMailMobileRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE) %>" runat="server"> [モバイル]</span>
<span visible="<%# IsArrivalMailGuestRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE) %>" runat="server"> [その他]</span>
</p>
<%--再販売通知メール登録フォーム表示 --%>
<uc:BodyProductArrivalMailRegister runat="server" ID="ucBpamrResale" ArrivalMailKbn="<%#: Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE %>" ProductId="<%#: this.ProductId %>" HasVariation="<%# this.HasVariation %>" Visible="false" />
</div>
<div visible="<%# (this.IsSelectingVariationExist == false) %>" runat="server">
	<p class="error"><%#: this.AlertMessageVariationNotExist %></p>
</div>
</div><!-- <%# this.ArrivalMailKbn == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE %> -->
<% if (StringUtility.ToEmpty(this.ErrorMessage) != "") {%>
<br /><span class="error_inline"><%: this.ErrorMessage %></span>
<%} %>

<%-- リアル店舗在庫一覧 --%>
<% if (Constants.REALSHOP_OPTION_ENABLED){ %>
<p class="productStock"><a href="" onclick='<%# WebSanitizer.HtmlEncode("javascript:show_popup_window('" + CreateRealShopProductStockListUrl(this.ProductId, (string)this.ProductMaster[Constants.FIELD_PRODUCTVARIATION_VARIATION_ID]) + "', 630, 900, true, true, 'ProductRealShopStockList'); return false;") %>'>リアル店舗在庫状況</a></p>
<%} %>

</div><!-- productSellInfo -->
</div>
</div><!-- detailOne_wrap -->
</div><!-- detail_top_wrap -->



<div class="wrapDetailImage">

<!-- バリエーション画像一覧 -->
<%-- ▽バリエーション画像一覧▽ --%>
<asp:Repeater ID="rVariation" DataSource='<%# this.ProductVariationMasterList %>' Visible="<%# this.HasVariation %>" runat="server" >
<HeaderTemplate>
		<div class="unit">
		<p class="title">バリエーション</p>
	<ul class="variationImage">
</HeaderTemplate>
<ItemTemplate>
<!-- 	<li>
		<asp:LinkButton ID="lbVariationPicture" runat="server" OnClick="lbVariaionImages_OnClick" CommandArgument="<%# Eval(Constants.FIELD_PRODUCTVARIATION_VARIATION_ID) %>">
			<w2c:ProductImage ImageTagId="picture" ImageSize="LL" ProductMaster='<%# Container.DataItem %>' IsVariation="true" runat="server" /></asp:LinkButton>
	</li> -->
</ItemTemplate>
<FooterTemplate>
	</ul>
		</div>
</FooterTemplate>
</asp:Repeater>
<%-- △バリエーション画像一覧△ --%>

	<%-- ▽バリエーション表示名1・2の画像一覧▽ 
<asp:Repeater ID="rVariationImageList" DataSource='<%# this.ProductVariationImageListName2 %>' Visible="<%# this.HasVariation %>" runat="server" >
<HeaderTemplate>
		<div class="unit">
		<p class="title">バリエーション画像</p>
	<ul class="variationImage">
</HeaderTemplate>
<ItemTemplate>
	<li>
			<a href="javascript:void(0);">
			<w2c:ProductImage ImageTagId="picture" ImageSize="LL" ProductMaster='<%# Container.DataItem %>' IsVariation="true" runat="server" />
			</a>
	</li>
</ItemTemplate>
<FooterTemplate>
	</ul>
		</div>
</FooterTemplate>
</asp:Repeater>
	 △バリエーション表示名1・2の画像一覧△ --%>

<div class="pc_contents">
	<!-- サブ画像一覧 -->
	<%-- ▽サブ画像一覧▽ --%>
	<asp:Repeater DataSource="<%# this.ProductSubImageList %>" Visible="<%# (this.ProductSubImageList.Count != 0) %>" runat="server">
	<HeaderTemplate>
			<div class="unit">
			<p class="title">詳細画像</p>
			<ul class="subImage clearFix">
	</HeaderTemplate>
	<ItemTemplate>
			<li visible='<%# IsSubImagesNoLimit((int)Eval(Constants.FIELD_PRODUCTSUBIMAGESETTING_PRODUCT_SUB_IMAGE_NO)) %>' runat="server">
			<a href="javascript:void(0);">
			<!--
				--><img class="" src="<%# WebSanitizer.HtmlEncode(CreateProductSubImageUrl(this.ProductMaster, Constants.PRODUCTIMAGE_FOOTER_LL, (int)Eval(Constants.FIELD_PRODUCTSUBIMAGESETTING_PRODUCT_SUB_IMAGE_NO))) %>" data-image="<%# WebSanitizer.HtmlEncode(CreateProductSubImageUrl(this.ProductMaster, Constants.PRODUCTIMAGE_FOOTER_LL, (int)Eval(Constants.FIELD_PRODUCTSUBIMAGESETTING_PRODUCT_SUB_IMAGE_NO))) %>" data-zoom-image="<%# WebSanitizer.HtmlEncode(CreateProductSubImageUrl(this.ProductMaster, Constants.PRODUCTIMAGE_FOOTER_LL, (int)Eval(Constants.FIELD_PRODUCTSUBIMAGESETTING_PRODUCT_SUB_IMAGE_NO))) %>" /></a>
	</li>
	</ItemTemplate>
	<FooterTemplate>
	</ul>
	</div>
	</FooterTemplate>
	</asp:Repeater>
	<%-- △サブ画像一覧△ --%>
</div>
	<!--
	<div class="btnDetailpopUp">
	<a href="<%# WebSanitizer.HtmlEncode("javascript:show_popup_window('" + CreateProductSubImagePageUrl() + "', 660, 540, false, false, 'ProductImage')") %>" class="btn btn-mini btn-inverse">詳細画像はこちら</a>
	</div>
	-->

</div>
<!-- バリエーション画像一覧 ここまで-->

<div class="sp_contents">
	<div class="detail_change">
		<a href="" class="active" data="id_description_wrap__left">アイテム説明</a>
		<a href="" data="id_description_wrap__right">詳細</a>
	</div>
</div>
<div class="id_description_wrap">
	<div class="id_description_wrap__left">
		<!-- 商品詳細1 -->
		<h2 class="id_title">アイテム説明</h2>
		<div><%# GetProductDataHtml("desc_detail1") %></div>
	</div>
	<div class="id_description_wrap__right">
		<h2 class="id_title">詳細</h2>
		<!-- 商品詳細2 -->
		<div id="detailTwo">
		<%# GetProductDataHtml("desc_detail2") %>
		</div>
		<div class="detail_btn_box">
			<a href="https://jamaisvu.co.jp/Page/Concept/about.aspx" target="_blank">製品へのこだわり<img src="/Contents/ImagesPkg/user/common/detail_arrow_right.svg" alt=""></a>
			<a href="https://jamaisvu.co.jp/Page/sizeGuide/" target="_blank">サイズガイド<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/detail_arrow_right.svg" alt=""></a>
		</div>
	</div>
</div>
<!-- id_description_wrap -->


<div class="rev_description_wrap">
	<!-- <h2 class="id_title">着用レビュー</h2> -->
	<!-- 商品詳細3 -->
	<div id="detailThree">
	<%# GetProductDataHtml("desc_detail3") %>
	</div>

</div>
<!-- id_description_wrap -->






<%-- ↑バリエーション変更時の表示更新領域を指定しています --%>

<div visible='<%# StringUtility.ToEmpty(GetProductData("return_exchange_message")) != "" %>' runat="server">
<!-- 返品交換文言表示 -->
<div class="productSellInfo">
<strong><%# WebSanitizer.HtmlEncodeChangeToBr(GetProductData("return_exchange_message")) %></strong>
<%if (ShopMessage.GetMessage("ReturnSpecialContractPage") != "") {%>
（<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT) %><%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ReturnSpecialContractPage")) %>" target="_blank" style='font-size:10px'>返品特約</a>）
<%} // (ShopMessage.GetMessage("ReturnSpecialContractPage") != "") %>
</div>
</div>

<div>
<p id="addFavoriteTip" class="toolTip" style="display: none;">
	<span style="margin: 10px;" id="txt-tooltip"></span>
	<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_FAVORITE_LIST) %>" class="btn btn-mini btn-inverse">お気に入り一覧</a>
</p>
</div>


<%-- ▽バリエーション毎のカート投入ボタン表示▽ --%>
<div id="divMultiVariation">
<table>
	<tr>
		<th>表示名1</th>
		<th>表示名2</th>
		<th>表示名3</th>
		<th>在庫状況</th>
		<th>&nbsp;</th>
	</tr>
	<asp:Repeater ID="rAddCartVariationList" DataSource="<%# this.ProductVariationAddCartList %>" onitemcommand="rAddCartVariationList_ItemCommand" runat="server">
		<HeaderTemplate>
		</HeaderTemplate>
		<ItemTemplate>
			<tr>
			<td><%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME1)) %></td>
			<td><%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME2)) %></td>
			<td><%#: GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_NAME3) %></td>
			<td>
				<div visible='<%# ((string)GetKeyValue(Container.DataItem, "StockMessage") == "") %>' runat="server">
					在庫数量：<strong><%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTSTOCK_STOCK)) %></strong>
				</div>
				<div visible='<%# ((string)GetKeyValue(Container.DataItem, "StockMessage") != "") %>' runat="server">
					<%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, "StockMessage")) %>
				</div>
			</td>
			<td>

			<div class="addCart">
				<p class="btnCart">
				<asp:LinkButton ID="lbCartAddVariationList" runat="server" Visible='<%# GetKeyValue(Container.DataItem, "CanCart") %>' CommandName="CartAdd" class="btn btn-mid btn-inverse">
				カートに入れる
				</asp:LinkButton>
				</p>
				<p class="btnCart">
				<asp:LinkButton ID="lbCartAddFixedPurchaseVariationList" runat="server" Visible='<%# GetKeyValue(Container.DataItem, "CanFixedPurchase") %>' OnClientClick="return add_cart_check_for_fixedpurchase_variationlist();" CommandName="CartAddFixedPurchase" class="btn btn-mid btn-inverse">
				カートに入れる(定期購入)
				</asp:LinkButton>
				</p>
				<p class="btnCart">
				<asp:LinkButton ID="lbCartAddForGiftVariationList" runat="server" Visible='<%# GetKeyValue(Container.DataItem, "CanGiftOrder") %>' CommandName="CartAddGift" class="btn btn-mid btn-inverse">
				カートに入れる(ギフト購入)
				</asp:LinkButton>
			</p>
			<div>
			<asp:Repeater ID="rSetPromotionVariationList" DataSource='<%# GetKeyValue(Container.DataItem, "SetPromotionList") %>' runat="server">
			<ItemTemplate>
				<%# WebSanitizer.HtmlEncode(((SetPromotionModel)Container.DataItem).SetpromotionDispName) %><br />
			</ItemTemplate>
			</asp:Repeater>
			</div>
			</div>

			<!-- 再入荷通知メール申し込みボタン表示 -->
			<div visible='<%# ((string)GetKeyValue(Container.DataItem, "ArrivalMailKbn") == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL) %>' runat="server">
			<asp:LinkButton CommandName="SmartArrivalMail" CommandArgument="Arrival" Runat="server" class="btn btn-mid btn-inverse">
			お知らせメール申込
			</asp:LinkButton>
			<p>
			<span visible="<%# IsArrivalMailAnyRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL, (string)GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID)) %>" runat="server"><br />通知登録済み!!</span>
			<span visible="<%# IsArrivalMailPcRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL, (string)GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID)) %>" runat="server"> [PC]</span>
			<span visible="<%# IsArrivalMailMobileRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL, (string)GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID)) %>" runat="server"> [モバイル]</span>
			<span visible="<%# IsArrivalMailGuestRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL, (string)GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID)) %>" runat="server"> [その他]</span>
			</p>
			</div>

			<!-- 販売開始通知メール申し込みボタン表示 -->
			<div visible='<%# ((string)GetKeyValue(Container.DataItem, "ArrivalMailKbn") == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE) %>' runat="server">
			<asp:LinkButton CommandName="SmartArrivalMail" CommandArgument="Release" Runat="server"  class="btn btn-mid btn-inverse">
			販売開始通知メール申込
			</asp:LinkButton>
			<p>
			<span visible="<%# IsArrivalMailAnyRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE, (string)GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID)) %>" runat="server"><br />通知登録済み!!</span>
			<span visible="<%# IsArrivalMailPcRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE, (string)GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID)) %>" runat="server"> [PC]</span>
			<span visible="<%# IsArrivalMailMobileRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE, (string)GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID)) %>" runat="server"> [モバイル]</span>
			<span visible="<%# IsArrivalMailGuestRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE, (string)GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID)) %>" runat="server"> [その他]</span>
			</p>
			</div>

			<!-- 再販売通知メール申し込みボタン表示 -->
			<div visible='<%# ((string)GetKeyValue(Container.DataItem, "ArrivalMailKbn") == Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE) %>' runat="server">
			<asp:LinkButton CommandName="SmartArrivalMail" CommandArgument="Resale" Runat="server" class="btn btn-mid btn-inverse">
			再販売通知メール申込
			</asp:LinkButton>
			<p>
			<span visible="<%# IsArrivalMailAnyRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE, (string)GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID)) %>" runat="server"><br />通知登録済み!!</span>
			<span visible="<%# IsArrivalMailPcRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE, (string)GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID)) %>" runat="server"> [PC]</span>
			<span visible="<%# IsArrivalMailMobileRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE, (string)GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID)) %>" runat="server"> [モバイル]</span>
			<span visible="<%# IsArrivalMailGuestRegistered(Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE, (string)GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID)) %>" runat="server"> [その他]</span>
			</p>
			</div>

			<p class="error"><%# WebSanitizer.HtmlEncode(GetKeyValue(Container.DataItem, "ErrorMessage")) %></p>
			<asp:HiddenField ID="hfVariationId" Value="<%# GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID) %>" runat="server" />
			<asp:HiddenField ID="htArrivalMailKbn" Value='<%# GetKeyValue(Container.DataItem, "ArrivalMailKbn") %>' runat="server" />
			</td>
			</tr>
			<%-- 再入荷通知メール登録フォーム表示 --%>
			<uc:BodyProductArrivalMailRegisterTr runat="server" ID="ucBpamrArrival" ArrivalMailKbn="<%#: Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_ARRIVAL %>" ProductId="<%#: GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_PRODUCT_ID) %>" VariationId="<%#: GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID) %>" Visible="false" />
			<%-- 販売開始通知メール登録フォーム表示 --%>
			<uc:BodyProductArrivalMailRegisterTr runat="server" ID="ucBpamrRelease" ArrivalMailKbn="<%#: Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RELEASE %>" ProductId="<%#: GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_PRODUCT_ID) %>" VariationId="<%#: GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID) %>" Visible="false" />
			<%-- 再販売通知メール登録フォーム表示 --%>
			<uc:BodyProductArrivalMailRegisterTr runat="server" ID="ucBpamrResale" ArrivalMailKbn="<%#: Constants.FLG_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN_RESALE %>" ProductId="<%#: GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_PRODUCT_ID) %>" VaridationId="<%#: GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCTVARIATION_VARIATION_ID) %>" Visible="false" />
		</ItemTemplate>
		<FooterTemplate>
		</FooterTemplate>
	</asp:Repeater>
</table>
</div>
<%-- △バリエーション毎のカート投入ボタン表示△ --%>

<!--在庫表表示-->
<div id="dvProductStock" style="display: none;">
<uc:BodyProductStockList ShopId="<%# this.ShopId %>" ProductId="<%# this.ProductId %>" Visible="<%# this.HasStockMessage && this.HasVariation %>" runat="server" />
</div>



<%-- ▽商品タグ項目：メーカー▽ --%>
<span visible='<%# StringUtility.ToEmpty(GetProductData("tag_manufacturer")) != "" %>' runat="server" style="display: none;">
メーカー:<%# WebSanitizer.HtmlEncode(GetProductData("tag_manufacturer")) %><br />
</span>
<%-- △商品タグ項目：メーカー△ --%>
<%-- ▽商品タグ項目：国▽ --%>
<span visible='<%# StringUtility.ToEmpty(GetProductData("tag_country")) != "" %>' runat="server" style="display: none;">
国:<%# WebSanitizer.HtmlEncode(GetProductData("tag_country")) %><br />
</span>
<%-- △商品タグ項目：国△ --%>
<%-- ▽商品タグ項目：年代▽ --%>
<span visible='<%# StringUtility.ToEmpty(GetProductData("tag_year")) != "" %>' runat="server" style="display: none;">
年代:<%# WebSanitizer.HtmlEncode(GetProductData("tag_year")) %><br />
</span>
<%-- △商品タグ項目：年代△ --%>



<!-- 商品クロスセル一覧 -->
<%-- ▽商品クロスセル一覧▽ --%>
<asp:Repeater DataSource=<%# this.ProductCrossSellList %> Visible="<%# this.ProductCrossSellList.Count != 0 %>" runat="server">
<HeaderTemplate>
<div id="dvCrossSell" class="clearFix">
<p class="title">レコメンドアイテム</p>
</HeaderTemplate>
<ItemTemplate>
<div class="productInfoList">
<ul class="clearFix">
<li class="thumnail">
<a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrlUseProductCategory(Container.DataItem, "")) %>">
		<w2c:ProductImage ImageTagId="picture" ImageSize="M" ProductMaster=<%# Container.DataItem %> IsVariation="false" runat="server" /></a>
	<%-- ▽在庫切れ可否▽ --%>
	<span visible='<%# ProductListUtility.IsProductSoldOut(Container.DataItem) %>' runat="server" class="soldout">SOLDOUT</span>
	<%-- △在庫切れ可否△ --%>
	</li>
<li class="productName">
<a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrlUseProductCategory(Container.DataItem, "")) %>"><%# WebSanitizer.HtmlEncode(Eval(Constants.FIELD_PRODUCT_NAME)) %></a>
<%-- ▽商品会員ランク価格有効▽ --%>
	<p visible='<%# GetProductMemberRankPriceValid(Container.DataItem) %>' runat="server">
	<strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>(tax in)</strike><br />
<%#: CurrencyManager.ToPrice(ProductPage.GetProductMemberRankPrice(Container.DataItem, false)) %>(tax in)
	</p>
<%-- △商品会員ランク価格有効△ --%>
<%-- ▽商品セール価格有効▽ --%>
	<p visible='<%# ProductPage.GetProductTimeSalesValid(Container.DataItem) %>' runat="server">
	<strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>(tax in)</strike><br />
<%#: CurrencyManager.ToPrice(ProductPage.GetProductTimeSalePriceNumeric(Container.DataItem)) %>(tax in)
	</p>
<%-- △商品セール価格有効△ --%>
<%-- ▽商品特別価格有効▽ --%>
	<p class="sale_bottom" visible='<%# ProductPage.GetProductSpecialPriceValid(Container.DataItem) %>' runat="server">
	
<%#: CurrencyManager.ToPrice(ProductPage.GetProductSpecialPriceNumeric(Container.DataItem)) %>(tax in)
<strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>(tax in)</strike><br />
	</p>
<%-- △商品特別価格有効△ --%>
<%-- ▽商品通常価格有効▽ --%>
	<p visible='<%# ProductPage.GetProductNormalPriceValid(Container.DataItem) %>' runat="server">
<%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>(tax in)
	</p>
<%-- △商品通常価格有効△ --%>
<%-- ▽定期購入有効▽ --%>
<% if (Constants.FIXEDPURCHASE_OPTION_ENABLED) {%>
	<p visible='<%# (GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_FIXED_PURCHASE_FLG).ToString() != Constants.FLG_PRODUCT_FIXED_PURCHASE_FLG_INVALID) %>' runat="server">
		<span visible='<%# IsProductFixedPurchaseFirsttimePriceValid(Container.DataItem) %>' runat="server">
			<p class="productPrice">定期初回価格:<span><%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchaseFirsttimePrice(Container.DataItem)) %>(tax in)</span></p>
		</span>
		<p class="productPrice">定期通常価格:<span><%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchasePrice(Container.DataItem)) %>(tax in)</span></p>
	</p>
<% } %>
<%-- △定期購入有効△ --%>
</li>
</ul>
</div>
</ItemTemplate>
<FooterTemplate>
</div>
</FooterTemplate>
</asp:Repeater>
<%-- △商品クロスセル一覧△ --%>

<!-- 商品アップセル一覧 -->
<%-- ▽商品アップセル一覧▽ --%>
<asp:Repeater DataSource=<%# this.ProductUpSellList %> Visible="<%# this.ProductUpSellList.Count != 0 %>" runat="server">
<HeaderTemplate>
<div id="dvUpSell" class="clearFix">
<p class="title">関連商品</p>
</HeaderTemplate>
<ItemTemplate>
<div class="productInfoList">
	<ul>
<li class="thumnail">
<a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrlUseProductCategory(Container.DataItem, "")) %>">
		<w2c:ProductImage ImageTagId="picture" ImageSize="M" ProductMaster=<%# Container.DataItem %> IsVariation="false" runat="server" /></a>
	<%-- ▽在庫切れ可否▽ --%>
	<span visible='<%# ProductListUtility.IsProductSoldOut(Container.DataItem) %>' runat="server" class="soldout">SOLDOUT</span>
	<%-- △在庫切れ可否△ --%>
	</li>
<li class="productName">
<a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrlUseProductCategory(Container.DataItem, "")) %>"><%# WebSanitizer.HtmlEncode(Eval(Constants.FIELD_PRODUCT_NAME)) %></a>
<%-- ▽商品会員ランク価格有効▽ --%>
	<p visible='<%# GetProductMemberRankPriceValid(Container.DataItem) %>' runat="server">
	<strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %></strike><br />
<%#: CurrencyManager.ToPrice(ProductPage.GetProductMemberRankPrice(Container.DataItem, false)) %>
	</p>
<%-- △商品会員ランク価格有効△ --%>
<%-- ▽商品セール価格有効▽ --%>
	<p visible='<%# ProductPage.GetProductTimeSalesValid(Container.DataItem) %>' runat="server">
	<strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %></strike><br />
<%#: CurrencyManager.ToPrice(ProductPage.GetProductTimeSalePriceNumeric(Container.DataItem)) %>
	</p>
<%-- △商品セール価格有効△ --%>
<%-- ▽商品特別価格有効▽ --%>
	<p class="sale_bottom" visible='<%# ProductPage.GetProductSpecialPriceValid(Container.DataItem) %>' runat="server">
	<br />
		<%#: CurrencyManager.ToPrice(ProductPage.GetProductSpecialPriceNumeric(Container.DataItem)) %>(tax in)
		<strike><%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>(tax in)</strike>
	</p>
<%-- △商品特別価格有効△ --%>
<%-- ▽商品通常価格有効▽ --%>
	<p visible='<%# ProductPage.GetProductNormalPriceValid(Container.DataItem) %>' runat="server">
<%#: CurrencyManager.ToPrice(ProductPage.GetProductPriceNumeric(Container.DataItem)) %>
	</p>
<%-- △商品通常価格有効△ --%>
<%-- ▽定期購入有効▽ --%>
<% if (Constants.FIXEDPURCHASE_OPTION_ENABLED) {%>
	<p visible='<%# (GetKeyValue(Container.DataItem, Constants.FIELD_PRODUCT_FIXED_PURCHASE_FLG).ToString() != Constants.FLG_PRODUCT_FIXED_PURCHASE_FLG_INVALID) %>' runat="server">
		<span visible='<%# IsProductFixedPurchaseFirsttimePriceValid(Container.DataItem) %>' runat="server">
			<p class="productPrice">定期初回価格:<span><%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchaseFirsttimePrice(Container.DataItem)) %></span></p>
		</span>
		<p class="productPrice">定期通常価格:<span><%#: CurrencyManager.ToPrice(ProductPage.GetProductFixedPurchasePrice(Container.DataItem)) %></span></p>
	</p>
<% } %>
<%-- △定期購入有効△ --%>
</li>
</ul>
</div>
</ItemTemplate>
<FooterTemplate>
</div>
</FooterTemplate>
</asp:Repeater>
<%-- △商品アップセル一覧△ --%>

	
<!-- 商品詳細4 -->
<!-- <div id="detailFour">
<%# GetProductDataHtml("desc_detail4") %>
</div> -->
</ContentTemplate>
</asp:UpdatePanel>
	
<br />
<%-- ▽おすすめ商品▽ --%>
<uc:BodyProductRecommendByRecommendEngine2 ID="BodyProductRecommendByRecommendEngine1" runat="server" RecommendCode="p009" ItemCode="<%# 'P' + this.ProductId %>" MaxDispCount="5" ImageSize="M" />
<%-- △おすすめ商品△ --%>

<%-- ▽最近チェックした商品▽ --%>
<uc:BodyProductHistory runat="server" />
<%-- △最近チェックした商品△ --%>
	
<%-- UPDATE PANELここまで --%>
<!-- 商品レビュー -->
<uc:BodyProductReview Visible="<%# Constants.PRODUCTREVIEW_ENABLED %>" ShopId="<%# this.ShopId %>" ProductId="<%# this.ProductId %>" ProductName="<%# this.ProductName %>" ProductReviewCount="5" runat="server"></uc:BodyProductReview >
	
</div>

<!--▽ 上部カテゴリバー ▽-->
<div id="breadcrumb">
	<uc:BodyProductCategoryLinks runat="server"></uc:BodyProductCategoryLinks>
</div>
<!--△ 上部カテゴリバー △-->

<div class="hidden_btn">
	
</div>
<script type="text/javascript" async="" src="<%= Constants.PATH_ROOT %>Js/jquery.inview.min.js"></script>

<style>
.flexslider {
  margin: 0 0 0px;
  background: #fff;
  border: 0;
  position: relative;
  zoom: 1;
  -webkit-border-radius: 0;
  -moz-border-radius: 0;
  border-radius: 0;
  -webkit-box-shadow: 0;
  -moz-box-shadow: 0;
  box-shadow: 0; }
  @media (max-width: 768px) {
    .flexslider {
      margin: 0 0 15px; } }

.flex-control-paging li a {
  width: 6px;
  height: 6px;
  display: block;
  background: #666;
  background: none;
  cursor: pointer;
  text-indent: -9999px;
  -webkit-box-shadow: 0;
  -moz-box-shadow: 0;
  -o-box-shadow: 0;
  box-shadow: 0;
  -webkit-border-radius: 20px;
  -moz-border-radius: 20px;
  border-radius: 20px;
  border: 1px solid #2E0E02; }

.flex-direction-nav .flex-next {
  right: 0;
  text-align: right; }

.flex-direction-nav a {
  opacity: 1; }

.flex-control-paging li a.flex-active {
  width: 6px;
  height: 6px;
  display: block;
  background: #666;
  background: #2E0E02;
  cursor: pointer;
  text-indent: -9999px;
  -webkit-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.3);
  -moz-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.3);
  -o-box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.3);
  box-shadow: inset 0 0 3px rgba(0, 0, 0, 0.3);
  -webkit-border-radius: 20px;
  -moz-border-radius: 20px;
  border-radius: 20px; }

.flex-control-nav {
  width: 100%;
  position: absolute;
  bottom: 15px;
  text-align: center; }
.flex-direction-nav a:before {
    font-family: "flexslider-icon";
    display: none;
}
@media (max-width: 768px) {
  .flex-control-nav li {
    margin: 0 11px; } }

.rev_innar__box__left .rev_innar__box__right__top {
  display: none; }
  @media (max-width: 768px) {
    .rev_innar__box__left .rev_innar__box__right__top {
      display: block;
      margin: 0 !important; }
      .rev_innar__box__left .rev_innar__box__right__top span {
        display: block;
        margin: 0 0 10px; } }

.rev_innar__box__right .rev_innar__box__right__top {
  display: block; }
  @media (max-width: 768px) {
    .rev_innar__box__right .rev_innar__box__right__top {
      display: none; } }
#dvProductDetailArea #detailImage .mainImage .soldout {
    color: #fff;
    word-wrap: normal;
    display: block;
    position: absolute;
    top: auto;
    text-align: center;
    width: 100%;
    height: 35px;
    line-height: 35px;
    background-color: #000;
    filter: alpha(opacity=50);
    -moz-opacity: 0.5;
    opacity:1;
    bottom: 0;
    display: block;
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 80px;
    background: rgba(46, 14, 2, 0.75);
    line-height: 80px;
    font-size: 18px;
    text-align: center;
    letter-spacing: 0.16em;
    color: #fff;
    border: none;
}
#dvUpSell span.soldout,
#dvCrossSell span.soldout {
    color: #fff;
    word-wrap: normal;
    display: block;
    position: absolute;
    top: auto;
    text-align: center;
    width: 100%;
    height: 48px!important;
    line-height: 35px;
    background-color: #000;
    filter: alpha(opacity=50);
    -moz-opacity: 1;
    opacity: 1! important;
    bottom: 0;
    display: block;
    position: absolute;
    bottom: 0;
    left: 0;
    width: 100%;
    height: 80px;
    background: rgba(46, 14, 2, 0.75)!important;
    line-height: 80px;
    font-size: 14px;
    text-align: center;
    letter-spacing: 0.16em;
    color: #fff;
    border: none;
    top: auto!important;
    line-height: 48px!important;
}

</style>
</div>
<%-- △編集可能領域△ --%>

<div id="divBottomArea">
<%-- ▽レイアウト領域：ボトムエリア▽ --%>
<%-- △レイアウト領域△ --%>
</div>
</td>
<td>
<%-- ▽レイアウト領域：ライトエリア▽ --%>
<%-- △レイアウト領域△ --%>
</td>
</tr>
</table>

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
	lProductRecommendByRecommendEngineUserControls[0].RecommendCode = "p010";
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
	lCategoryRecommendByRecommendEngineUserControls[0].RecommendCode = "p011";
	//アイテムコードを設定します
	//特定のカテゴリに対する行動履歴から、おすすめカテゴリを取得したい場合に設定します。
	//「"C"+カテゴリID」の形式で記述してください。【記述例】C001
	lCategoryRecommendByRecommendEngineUserControls[0].ItemCode = "";
	//表示区分を設定します (0:該当カテゴリのみ表示/1:パンくずリスト表示)
	lCategoryRecommendByRecommendEngineUserControls[0].DispKbn = "0";
	//商品最大表示件数を設定します
	lCategoryRecommendByRecommendEngineUserControls[0].MaxDispCount = 5;
}
<%-- △編集可能領域△ --%>
}
</script>

<script type="text/javascript">
<!--
	var strAlertmessage = '<%= MESSAGE_ERROR_VARIATION_UNSELECTED %>';
	var fixedpurchaseMessage = '定期的に商品が送られてくる「定期購入」で購入します。\nよろしいですか？';

	// バリエーション選択チェック判定
	function variation_selected_check() {
		<% if (this.HasVariation == false) {%>
			return true;
		<%} else {%>
			<% if (this.SelectVariationKbn == Constants.SelectVariationKbn.PANEL) { %>
				return ((document.getElementById('<%# this.VariationId %>').value != ''));
			<%} else if (this.SelectVariationKbn == Constants.SelectVariationKbn.STANDARD) { %>
				return ((document.getElementById('<%# this.WddlVariationSelect.ClientID %>').value != ''));
			<%} else if (this.SelectVariationKbn == Constants.SelectVariationKbn.DROPDOWNLIST) {%>
				return ((document.getElementById('<%# this.WddlVariationSelect.ClientID %>').value != ''));
			<%} else if (this.SelectVariationKbn == Constants.SelectVariationKbn.DOUBLEDROPDOWNLIST) {%>
				var strVariationSelect = '<%# this.WddlVariationSelect1.ClientID %>';
				var strVariationSelect2 = '<%# this.WddlVariationSelect2.ClientID %>';
				return ((document.getElementById(strVariationSelect) != null) &&
						(document.getElementById(strVariationSelect2) != null) && 
						(document.getElementById(strVariationSelect).value != '') &&
						(document.getElementById(strVariationSelect2).value != ''));
			<%} else if ((this.SelectVariationKbn == Constants.SelectVariationKbn.MATRIX)
			|| (this.SelectVariationKbn == Constants.SelectVariationKbn.MATRIXANDMESSAGE)) {%>
				var blSelectChecked = false;
				for (var iLoop = 0; iLoop < document.getElementsByName('Variation').length; iLoop++) {
					if (document.getElementsByName('Variation')[iLoop].checked) {
						blSelectChecked =  true;
					}
				}
				return blSelectChecked;
			<%} %>
		<%} %>
	}

	// バリエーション選択チェック(通常)
	function add_cart_check() {
		if (variation_selected_check()) {
			return true;
		}
		else {
			alert(strAlertmessage);
			return false;
		}
	}

	// バリエーション選択チェック(定期)
	function add_cart_check_for_fixedpurchase() {
		if (variation_selected_check()) {
			return confirm(fixedpurchaseMessage);
		}
		else {
			alert(strAlertmessage);
			return false;
		}
	}

	// バリエーション選択チェック(入荷通知メール申込)
	function request_user_product_arrival_mail_check() {
		if (variation_selected_check()) {
			return true;
		}
		else {
			alert(strAlertmessage);
			return false;
		}
	}

	// バリエーションリスト用選択チェック(定期)
	function add_cart_check_for_fixedpurchase_variationlist() {
		return confirm(fixedpurchaseMessage);
	}

	// 入荷通知登録画面をポップアップウィンドウで開く
	function show_arrival_mail_popup(pid, vid, amkbn) {
		show_popup_window('<%= this.SecurePageProtocolAndHost %><%= Constants.PATH_ROOT %><%= Constants.PAGE_FRONT_USER_PRODUCT_ARRIVAL_MAIL_REGIST %>?<%= Constants.REQUEST_KEY_PRODUCT_ID %>=' + pid + '&<%= Constants.REQUEST_KEY_VARIATION_ID %>=' + vid + '&<%= Constants.REQUEST_KEY_USERPRODUCTARRIVALMAIL_ARRIVAL_MAIL_KBN %>=' + amkbn, 580, 280, false, false, 'Information');
	}

	// マウスイベントの初期化
	addOnload(function () { init(); });
//-->
</script>

<%-- CRITEOタグ --%>
<uc:Criteo ID="criteo" runat="server" Datas="<%# null %>" />

</asp:Content>
