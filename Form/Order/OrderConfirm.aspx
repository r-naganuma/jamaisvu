<%--
=========================================================================================================
  Module      : 注文確認画面(OrderConfirm.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="BodyRecommend" Src="~/Form/Common/BodyRecommend.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyFixedPurchaseOrderPrice" Src="~/Form/Common/BodyFixedPurchaseOrderPrice.ascx" %>
<%@ page language="C#" masterpagefile="~/Form/Common/OrderPage.master" autoeventwireup="true" inherits="Form_Order_OrderConfirm, App_Web_orderconfirm.aspx.bf558b1b" title="注文確認ページ" maintainscrollpositiononpostback="true" %>
<%@ Register TagPrefix="uc" TagName="PaymentDescriptionCvsDef" Src="~/Form/Common/Order/PaymentDescriptionCvsDef.ascx" %>
<%@ Register TagPrefix="uc" TagName="PaypalScriptsForm" Src="~/Form/Common/PayPalScriptsForm.ascx" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%
	// 注文完了ボタン押下した際のJavascript処理追加
	this.CompleteButtonList.ForEach(button =>
	{
		button.OnClientClick = (this.HideOrderButtonWithClick) ? "return exec_submit(true)" : "return exec_submit(false)";
	});
%>
<%-- 注文ボタン押下した際の処理 --%>
<script type="text/javascript">
<!--
	var submitted = false;
	function exec_submit(clearSubmitButton)
	{
		if (submitted) return false;
		<% if(Constants.PRODUCT_ORDER_LIMIT_ENABLED){ %>
		var confirmMessage = '<%: WebMessages.GetMessages(WebMessages.ERRMSG_FRONT_NOT_FIXED_PRODUCT_ORDER_LIMIT) %>' + "\nよろしいですか？";
		<% } %>
		<% if (this.HasOrderHistorySimilarShipping) { %>
			if (confirm(confirmMessage) == false) return false;
		<% } %>

		submitted = true;

		// カード決済があるときのみボタン消去制御を利用
		<% if( this.WrCartList.Items.Count >= 1) { %>
		if (clearSubmitButton)
		{
			// ボタン消去
			<% foreach (var button in this.CompleteButtonList) { %>
				if (document.getElementById('<%= button.ClientID %>') != null) document.getElementById('<%= button.ClientID %>').style.display = "none";
				if (document.getElementById('<%= lbCart.ClientID %>') != null) document.getElementById('<%= lbCart.ClientID %>').style.display = "none";
			<% } %>
			// 処理中文言表示
			if (document.getElementById('processing1') != null) document.getElementById('processing1').style.display = "inline";
			if (document.getElementById('processing2') != null) document.getElementById('processing2').style.display = "inline";
		}
		<% } %>

		return true;
	}
//-->
</script>
<style>
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

</style>
<link href="../../Css/rp/OrderConfirm.css" rel="stylesheet">
<div class="load_wrap"></div>
<h2 class="cart1_h2">ショッピングカート</h2>

<p id="CartFlow" class="pc_contents"><img src="../../Contents/ImagesPkg/order/cart_step03.png" alt="お支払い方法入力 " width="781" height="58" /></p>
<p id="" class="CartFlow sp_contents"><img src="../../Contents/ImagesPkg/order/sp_flow4.png" alt="お支払い方法入力 " width="781"/></p>

<script>
$(function(){
	$("#Contents").addClass("topSpace").addClass("cart4");
	$(".bottom dt").each(function(x){
		$(this).addClass("box_dt"+x)
	});
	if($(".box_dt10").next().text().trim()==""){
		$(".box_dt10").next().css("display","none");
	}
	$(".main").each(function(){
		$(".first_wrap__innar__top",this).append($(".singleProduct",this).clone());
	});
  $(".priceList").each(function(v){
    $(this).addClass("priceList_"+v)
  });
  $(".priceList_0 dl").each(function(y){
    $(this).addClass("p_dl"+y)
  });
  $(".priceList_1 dl").each(function(a){
    $(this).addClass("p_dl"+a)
  });

  $(".main").each(function(y){
    $(this).addClass("main"+y);
  });

  $(".main0 .first_wrap__innar").append($(".priceList_0").clone());
  $(".main1 .first_wrap__innar").append($(".priceList_1").clone());
  $(".shoppingCart__title").html($(".subSumBox p").html());
  $(".shoppingCart").each(function(x){
    $(this).addClass("sc"+x);
  });
  $(".sc1").css("display","none");
  // $(".sc1").css("display","none");
  // if($(".main").length > 1){
  //   if($(window).width() < 768){
  //     $(".sc0").hide()
  //     $(".sc1").show()
  //   }else{

  //   }
  // }else{

  // }
  $(".add_cart_box").append($(".sc0").clone());

  
  $(window).scroll(function () {
      if ($(this).scrollTop() > 250) {
          $('.shoppingCart').addClass('is-fixed');
      } else {
          $('.shoppingCart').removeClass('is-fixed');
      }
  });
});
</script>
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

.cart4 h2.ttlA {
  font-size: 14px !important;
  font-weight: bold;
  max-width: 1280px;
  margin: 0 0 5px !important;
  padding: 0 0 0 40px !important;
  height: auto !important;
  border: none !important; }
  @media (max-width: 768px) {
    .cart4 h2.ttlA {
      font-size: 13px !important;
      padding: 0 0 0 0 !important; } }

.cart4 label {
  font-size: 14px !important;
  font-weight: normal; }
  @media (max-width: 768px) {
    .cart4 label {
      font-size: 13px !important; } }

.cart4 .main.clearFix {
  display: none; }

.cart4 div.main {
  width: 100% !important;
  padding: 0 !important;
  margin: 0 !important;
  background: none !important;
  position: relative; }

.cart4 div.submain {
  width: 100% !important;
  margin: 0 0 100px; }
  @media (max-width: 768px) {
    .cart4 div.submain {
      margin: 0 0 0px; } }

.cart4 #CartList {
  padding: 0 6.25%;
  margin: auto;
  max-width: 1280px; }
  @media (max-width: 768px) {
    .cart4 #CartList {
      padding: 0; } }
  .cart4 #CartList div.btmbtn {
    clear: both;
    margin-top: 33px;
    border-top: none;
    display: block !important;
    margin: 0; }
  @media (max-width: 768px) {
    .cart4 #CartList {
      margin: 50px auto; } }
  .cart4 #CartList div.column {
    width: 71.42857% !important; }
    @media (max-width: 768px) {
      .cart4 #CartList div.column {
        width: 100% !important;
        padding: 0 6.25%; } }
  .cart4 #CartList h3 {
    color: #FFFFFF;
    font-size: 12px;
    padding: 6px 14px 5px 14px;
    background-color: #fff;
    padding: 0 !important;
    border: none !important;
    display: none; }
  .cart4 #CartList .orderBox {
    background: none;
    margin: 0; }
    .cart4 #CartList .orderBox h4 {
      border: 0;
      background-color: #fff;
      color: #333333;
      padding: 0 0 17px 40px;
      font-size: 12px;
      border-bottom: 1px solid #EAE6E5;
      display: -webkit-box;
      display: -ms-flexbox;
      display: flex;
      margin: 0 0 25px;
      -webkit-box-align: center;
      -ms-flex-align: center;
      align-items: center;
      -webkit-box-pack: justify;
      -ms-flex-pack: justify;
      justify-content: space-between; }
      @media (max-width: 768px) {
        .cart4 #CartList .orderBox h4 {
          padding: 0 0 5px 4px;
          margin: 0 0 20px;
          font-size: 13px; } }
      .cart4 #CartList .orderBox h4 span {
        font-size: 14px;
        letter-spacing: 0.08em;
        font-weight: bold; }
      .cart4 #CartList .orderBox h4 > div {
        width: 64px !important; }
    .cart4 #CartList .orderBox .last .box {
      padding: 0 0 15px 0px;
      margin: 0 0 15px; }
    .cart4 #CartList .orderBox div.box {
      border: none;
      padding: 0 0 15px 0px;
      margin: 0 0 60px;
      border-bottom: 1px solid #EAE6E5; }
      .cart4 #CartList .orderBox div.box div {
        width: 100%;
        margin: 0 0 0 40px; }
        @media (max-width: 768px) {
          .cart4 #CartList .orderBox div.box div {
            margin: 0 0 0 0px; } }
      .cart4 #CartList .orderBox div.box dl {
        width: 100%;
        margin: 0;
        padding: 0; }
      .cart4 #CartList .orderBox div.box dt {
        display: none;
        width: 190px; }
      .cart4 #CartList .orderBox div.box dd {
        padding: 0;
        padding: 1px 0px 1px 0px;
        font-size: 14px;
        letter-spacing: 0.08em;
        line-height: 1.8; }
        @media (max-width: 768px) {
          .cart4 #CartList .orderBox div.box dd {
            font-size: 13px; } }
      .cart4 #CartList .orderBox div.box .box_dt0 + dd,
      .cart4 #CartList .orderBox div.box .box_dt7 + dd {
        margin: 0 0 25px; }
      .cart4 #CartList .orderBox div.box .box_dt5, .cart4 #CartList .orderBox div.box .box_dt5 + dd {
        display: none; }
      .cart4 #CartList .orderBox div.box dt.box_dt10 + dd {
        margin: 15px 0 1px; }
    .cart4 #CartList .orderBox .last {
      border: none;
      padding: 0 0 5px 0px;
      margin: 0 0 60px;
      border-bottom: 1px solid #EAE6E5; }
      .cart4 #CartList .orderBox .last div.box dt {
        display: block; }
      .cart4 #CartList .orderBox .last div.box dd {
        padding: 0 0 0 130px; }
      .cart4 #CartList .orderBox .last span.radioBtn {
        display: block;
        margin: 10px 0 0px 40px; }
        @media (max-width: 768px) {
          .cart4 #CartList .orderBox .last span.radioBtn {
            margin: 15px 0 0 0; } }
    .cart4 #CartList .orderBox .Div2_box1 {
      display: none; }
    .cart4 #CartList .orderBox .bottom {
      background: none; }
      .cart4 #CartList .orderBox .bottom dt, .cart4 #CartList .orderBox .bottom dd, .cart4 #CartList .orderBox .bottom p, .cart4 #CartList .orderBox .bottom a {
        font-size: 14px;
        letter-spacing: 0.08em; }
        @media (max-width: 768px) {
          .cart4 #CartList .orderBox .bottom dt, .cart4 #CartList .orderBox .bottom dd, .cart4 #CartList .orderBox .bottom p, .cart4 #CartList .orderBox .bottom a {
            font-size: 13px; } }
    .cart4 #CartList .orderBox p.btn_change {
      width: 64px; }
      .cart4 #CartList .orderBox p.btn_change a {
        color: #2E0E02 !important;
        width: 64px;
        height: 32px;
        -webkit-box-shadow: none;
        box-shadow: none;
        border: none;
        border-radius: 0;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: center;
        -ms-flex-pack: center;
        justify-content: center;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        font-size: 12px;
        letter-spacing: 0.08em; }
        .cart4 #CartList .orderBox p.btn_change a span {
          font-weight: normal !important; }
          @media (max-width: 768px) {
            .cart4 #CartList .orderBox p.btn_change a span {
              font-size: 12px !important; } }
    .cart4 #CartList .orderBox div#ctl00_ContentPlaceHolder1_rCartList_ctl00_rCartShippings_ctl00_hgcChangeShippingInfoBtn,
    .cart4 #CartList .orderBox div#ctl00_ContentPlaceHolder1_rCartList_ctl01_rCartShippings_ctl00_hgcChangeShippingInfoBtn {
      display: none; }
  .cart4 #CartList span.radioBtn {
    display: block;
    margin: 10px 0 40px; }
  .cart4 #CartList dt#ctl00_ContentPlaceHolder1_rCartList_ctl00_rCartShippings_ctl00_Dt1 {
    display: block !important; }
  .cart4 #CartList dt#ctl00_ContentPlaceHolder1_rCartList_ctl00_rCartShippings_ctl00_Dt2 {
    display: block !important; }
  .cart4 #CartList dt.box_dt12 {
    display: block !important; }
  .cart4 #CartList .shoppingCart {
    width: 23.92%;
    float: right;
    background: #EAE6E5;
    padding: 25px 25px 40px 25px;
    position: relative; }
    @media (max-width: 768px) {
      .cart4 #CartList .shoppingCart {
        width: 100%; } }
    .cart4 #CartList .shoppingCart h2 {
      display: none; }
    .cart4 #CartList .shoppingCart .sumBox.mrg_topA {
      display: none; }
    .cart4 #CartList .shoppingCart .block {
      padding: 0 !important;
      background: none; }
    .cart4 #CartList .shoppingCart div.subCartList {
      background: none; }
    .cart4 #CartList .shoppingCart .singleProduct {
      margin: 0 0 20px; }
      .cart4 #CartList .shoppingCart .singleProduct > div {
        width: 100%;
        background: none; }
      .cart4 #CartList .shoppingCart .singleProduct dl {
        width: 100%;
        padding: 0;
        margin: 0;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex; }
      .cart4 #CartList .shoppingCart .singleProduct dt {
        width: 22.7%;
        float: left; }
        .cart4 #CartList .shoppingCart .singleProduct dt a {
          width: 100%; }
      .cart4 #CartList .shoppingCart .singleProduct dd {
        padding: 0;
        width: 77.3%;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex;
        -webkit-box-pack: space-evenly;
        -ms-flex-pack: space-evenly;
        justify-content: space-evenly;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center; }
        .cart4 #CartList .shoppingCart .singleProduct dd strong {
          display: none; }
        .cart4 #CartList .shoppingCart .singleProduct dd > p {
          font-size: 12px;
          letter-spacing: 0.08em; }
        .cart4 #CartList .shoppingCart .singleProduct dd > p + p {
          font-size: 14px;
          letter-spacing: 0.08em; }
    .cart4 #CartList .shoppingCart .priceList {
      width: 100%;
      clear: both;
      border-top: 1px solid #2E0E02;
      margin: 20px 0 0; }
      @media (max-width: 768px) {
        .cart4 #CartList .shoppingCart .priceList {
          border-top: 1px solid  #EAE6E5; } }
      .cart4 #CartList .shoppingCart .priceList > div {
        width: 100%; }
      .cart4 #CartList .shoppingCart .priceList dl {
        width: 100%;
        -webkit-box-align: center;
        -ms-flex-align: center;
        align-items: center;
        display: -webkit-box;
        display: -ms-flexbox;
        display: flex; }
      .cart4 #CartList .shoppingCart .priceList dt {
        width: 70%;
        text-align: left;
        font-size: 14px;
        letter-spacing: 0.08em; }
        @media (max-width: 768px) {
          .cart4 #CartList .shoppingCart .priceList dt {
            font-size: 13px; } }
      .cart4 #CartList .shoppingCart .priceList dd {
        width: 30%;
        padding: 0;
        text-align: right;
        font-size: 14px;
        letter-spacing: 0.08em;
        font-weight: normal; }
        @media (max-width: 768px) {
          .cart4 #CartList .shoppingCart .priceList dd {
            font-size: 14px; } }
      .cart4 #CartList .shoppingCart .priceList dl.bgc {
        background: none; }
      .cart4 #CartList .shoppingCart .priceList dl.result {
        font-size: 12px !important;
        margin-top: 15px;
        background: none;
        border-top: 1px solid #2E0E02;
        padding: 15px 0 0 0; }
        @media (max-width: 768px) {
          .cart4 #CartList .shoppingCart .priceList dl.result dt {
            font-size: 14px !important; }
          .cart4 #CartList .shoppingCart .priceList dl.result dd {
            font-size: 16px !important; } }
    .cart4 #CartList .shoppingCart .pointBox {
      width: 100%; }
      .cart4 #CartList .shoppingCart .pointBox div.box {
        width: 100%;
        margin: 0 0 10px;
        background: none; }
        .cart4 #CartList .shoppingCart .pointBox div.box > p img {
          height: auto; }
      .cart4 #CartList .shoppingCart .pointBox .boxbtm {
        width: 100%;
        background: none; }
        .cart4 #CartList .shoppingCart .pointBox .boxbtm > div {
          width: 100%; }
        .cart4 #CartList .shoppingCart .pointBox .boxbtm dl {
          width: 100%; }
        .cart4 #CartList .shoppingCart .pointBox .boxbtm dt {
          float: none; }
        .cart4 #CartList .shoppingCart .pointBox .boxbtm dd {
          float: none;
          text-align: left;
          width: 100%;
          margin: 10px 0 0; }
    .cart4 #CartList .shoppingCart .couponBox {
      width: 100%; }
      .cart4 #CartList .shoppingCart .couponBox div.box {
        width: 100%;
        margin: 0 0 10px;
        background: none; }
        .cart4 #CartList .shoppingCart .couponBox div.box > p img {
          height: auto; }
      .cart4 #CartList .shoppingCart .couponBox .boxbtm {
        width: 100%;
        background: none; }
        .cart4 #CartList .shoppingCart .couponBox .boxbtm > div {
          width: 100%; }
        .cart4 #CartList .shoppingCart .couponBox .boxbtm dl {
          width: 100%; }
        .cart4 #CartList .shoppingCart .couponBox .boxbtm dt {
          float: none; }
        .cart4 #CartList .shoppingCart .couponBox .boxbtm dd {
          float: none;
          text-align: left;
          width: 100%;
          margin: 10px 0 0; }
    .cart4 #CartList .shoppingCart input#ctl00_ContentPlaceHolder1_rCartList_ctl00_tbCouponCode {
      margin: 10px 0 0; }
    .cart4 #CartList .shoppingCart .bottom {
      background: none; }
    .cart4 #CartList .shoppingCart .p_red {
      color: #AD2E24; }
  .cart4 #CartList .sumBox {
    display: none; }

@media (max-width: 768px) {
  .cart4 .btmbtn ul {
    width: 58.6vw !important;
    max-width: 220px;
    margin: 40px auto 0 !important; } }

.cart4 .btmbtn__innar {
  background: #EAE6E5;
  padding: 40px 20px 0px;
  height: auto; }
  .cart4 .btmbtn__innar a {
    text-decoration: none; }

.cart4 div.productList dl.name dd {
  width: 68%; }

.cart4 div.btmbtn ul li {
  margin: 0; }

.cart4 a.btn.btn-large.btn-success {
  padding: 0;
  font-size: 12px !important;
  width: 100%;
  border-radius: 0;
  height: 48px;
  background: #2E0E02;
  display: -webkit-box !important;
  display: -ms-flexbox !important;
  display: flex !important;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  letter-spacing: 0.08em;
  margin: 0 0 25px; }

.cart4 a.btn.btn-large.btn-success2 {
  padding: 0;
  font-size: 12px !important;
  width: 100%;
  border-radius: 0;
  height: 48px;
  background: none;
  border: 1px solid #2E0E02;
  color: #2E0E02;
  display: -webkit-box !important;
  display: -ms-flexbox !important;
  display: flex !important;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  letter-spacing: 0.08em;
  margin: 0 0 25px; }

.cart4 a.btn.btn-large.btn-org-gry {
  padding: 0;
  background: no-repeat;
  border: none;
  -webkit-box-shadow: none;
  box-shadow: none;
  width: 100%;
  font-size: 12px !important;
  letter-spacing: 0.08em;
  margin: 20px 25px 0 0; }

.cart4 a.btn.btn-large.btn-gry {
  padding: 0;
  background: no-repeat;
  border: none;
  -webkit-box-shadow: none;
  box-shadow: none;
  width: 100%;
  font-size: 12px !important;
  letter-spacing: 0.08em;
  margin: 20px 25px 0 0;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  text-decoration: none !important; }

.cart4 a.btn.btn-large.btn-gry span {
  display: inline-block !important;
  margin: 0 20px 0 0; }

.cart4 div.btmbtn.below {
  height: auto; }

.cart4 .btmbtn__innar dl.btmbtn__innar__dl10 {
  margin: 0 0 40px; }

.cart4 .btmbtn__innar dl {
  width: 100%;
  display: -webkit-box !important;
  display: -ms-flexbox !important;
  display: flex !important;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center; }
  .cart4 .btmbtn__innar dl dt {
    font-size: 14px;
    width: 50%;
    text-align: left; }
    .cart4 .btmbtn__innar dl dt span {
      font-size: 12px;
      display: inline-block !important;
      margin: 0 0 0 6px; }
  .cart4 .btmbtn__innar dl dd {
    font-size: 14px;
    width: 50%;
    text-align: right; }

.cart4 .btn-large {
  border: 1px solid #2e0d02; }

.cart4 p.btn-gry__wrap {
  position: absolute;
  bottom: -44px; }
  @media (max-width: 768px) {
    .cart4 p.btn-gry__wrap {
      right: 0;
      left: 0; } }

.cart4 p.btn-gry__wrap a {
  background: none;
  border: none;
  /* position: relative; */
  top: 94px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  padding: 0 0;
  text-decoration: none !important;
  -webkit-box-shadow: none;
  box-shadow: none; }

.cart4 img.creicon {
  width: 450px !important;
  margin: 15px 0 0 67px; }
  @media (max-width: 768px) {
    .cart4 img.creicon {
      width: 100% !important;
      margin: 15px 0 0vw 0;
      padding: 0 0 0 8vw; } }

.cart4 .pay_dl {
  width: 470px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center; }
  @media (max-width: 768px) {
    .cart4 .pay_dl {
      width: 100% !important;
      display: block !important; }
      .cart4 .pay_dl dt {
        font-weight: normal !important; }
        .cart4 .pay_dl dt strong {
          font-size: 13px;
          font-weight: normal !important; } }
  .cart4 .pay_dl dt {
    padding: 0 !important;
    width: 180px;
    border: none !important;
    font-size: 14px !important;
    letter-spacing: 0.08em;
    font-weight: normal !important; }
    .cart4 .pay_dl dt strong {
      font-weight: normal !important; }
  .cart4 .pay_dl dd {
    padding: 0 !important;
    width: 290px; }
  .cart4 .pay_dl input {
    height: 32px;
    padding: 0 0 0 10px;
    border: 1px solid #C0B6B3; }
  @media (max-width: 768px) {
    .cart4 .pay_dl input {
      height: 40px; }
    .cart4 .pay_dl select {
      height: 40px; } }

.cart4 .box_dt16 {
  width: 190px !important; }
  @media (max-width: 768px) {
  .cart4 .box_dt16 {
    width: 100% !important; }
    }
.cart4 .box_dt35 {
  width: 190px !important; }

@media (max-width: 768px) {
  .cart4 .box_dt16 + dd {
    padding: 10px 0 0 0 !important; }
  .cart4 .box_dt35 + dd {
    padding: 10px 0 0 0 !important; } }

.cart4 .divUserCreditCardName__wrap {
  margin: 10px 0 25px 72px; }
  @media (max-width: 768px) {
    .cart4 .divUserCreditCardName__wrap {
      margin: 10px 0 25px 8vw; } }

.cart4 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl01_tbUserCreditCardName {
  width: 268px;
  height: 32px;
  height: 32px;
  padding: 0 0 0 10px;
  border: 1px solid #C0B6B3; }
  @media (max-width: 768px) {
    .cart4 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl01_tbUserCreditCardName {
      width: 100%;
      height: 40px; } }

.cart4 div.btmbtn ul {
  text-align: right;
  position: static;
  right: 0;
  top: 0;
  margin: 40px 0 0; }

.cart4 .btmbtn.below a {
  text-decoration: none; }

.cart4 a#ctl00_ContentPlaceHolder1_rCartList_ctl00_lbCart {
  border: 1px solid #2e0d02;
  /* color: red; */ }

.cart4 .shoppingCart__wrap a.btn.btn-mini {
  color: #2E0E02 !important;
  width: 64px;
  height: 32px;
  -webkit-box-shadow: none;
  box-shadow: none;
  border: none;
  border-radius: 0;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  font-size: 12px;
  letter-spacing: 0.08em;
  margin: 30px 0 0;
  float: right; }

.cart4 .radioBtn > input {
  display: none; }

.cart4 .radioBtn input + label {
  padding-left: 28px;
  vertical-align: middle;
  position: relative;
  padding-top: 3px;
  margin-right: 66px; }

.cart4 .radioBtn input + label::before {
  content: "";
  display: block;
  position: absolute;
  top: 0;
  left: 0;
  width: 20px;
  height: 20px;
  border: 1px solid #C0B6B3;
  border-radius: 3px;
  background: #fff;
  -webkit-box-sizing: border-box;
  box-sizing: border-box; }

.cart4 .radioBtn input:checked + label::after {
  content: "";
  display: block;
  position: absolute;
  top: 4px;
  left: 4px;
  width: 12px;
  height: 12px;
  background: #2E0E02;
  border-radius: 3px; }

.cart4 .radioBtn input:checked + label.on::after {
  content: ""; }

.cart4 .Coupon_box {
  border: none;
  padding: 0 0 30px 0px;
  margin: 0 0 60px;
  border-bottom: 1px solid #EAE6E5; }
  .cart4 .Coupon_box dl {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    padding: 0 0 0 40px; }
    @media (max-width: 768px) {
      .cart4 .Coupon_box dl {
        display: block;
        padding: 0 0 0 0px; } }
  .cart4 .Coupon_box dt {
    width: 190px !important; }
    @media (max-width: 768px) {
      .cart4 .Coupon_box dt {
        width: 100%;
        padding: 0 0 14px 0px; } }
  @media (max-width: 768px) {
    .cart4 .Coupon_box dd {
      padding: 0 0 0 30px;
      line-height: 2; } }

.cart4 p.oc_text {
  font-size: 12px;
  line-height: 2 !important;
  margin: 0px 0 40px 40px;
  letter-spacing: 0.08em; }
  @media (max-width: 768px) {
    .cart4 p.oc_text {
      margin: 0px 0 40px 0px;
      letter-spacing: 0.08em; } }

.cart4 .c_on dt,
.cart4 .c_on dd {
  color: #AD2E24; }

#Foot {
  border: none; }

.first_wrap {
  margin: 0 0 60px; }
  .first_wrap h4 {
    margin: 0; }
  .first_wrap .singleProduct {
    padding: 25px 0 25px;
    border-bottom: 1px solid #eae6e5; }

.shoppingCart .singleProduct {
  display: none; }

.box h4 {
  padding: 0 0 10px 35px !important; }
  @media (max-width: 768px) {
    .box h4 {
      padding: 0 0 10px 0px !important; } }

.first_wrap__innar__top .s_dl__wrap {
  display: block !important; }
  @media (max-width: 768px) {
    .first_wrap__innar__top .s_dl__wrap {
      display: none !important; } }

.first_wrap__innar__top .s_dl__wrap {
  padding: 15px 0 0 20px; }

.first_wrap__innar__top .s_dl {
  display: block !important;
  width: 100%; }
  .first_wrap__innar__top .s_dl div {
    font-size: 11px;
    display: inline-block !important;
    font-weight: normal !important; }

.first_wrap__innar__top .s_dt:after {
  content: ":";
  display: inline-block;
  margin: 0 3px 0; }

.first_wrap__innar__top dd.color_box {
  margin: 20px 0 0; }

.first_wrap__innar__top .s_dl.s1 {
  margin: 0 0 5px !important;
  display: block; }

.first_wrap__innar__top dl {
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex; }
  @media (max-width: 768px) {
    .first_wrap__innar__top dl {
      display: block; } }

.first_wrap__innar__top dt {
  width: 145px;
  padding: 0 0 0 40px; }
  @media (max-width: 768px) {
    .first_wrap__innar__top dt {
      width: 100%;
      padding: 0 0 0 0px; } }

.first_wrap__innar__top dd {
  width: 100%;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-pack: start;
  -ms-flex-pack: start;
  justify-content: flex-start; }

.first_wrap__innar__top .clone_2 {
  width: 280px;
  font-size: 13px;
  text-decoration: none;
  padding: 0 0 0 20px; }
  @media (max-width: 768px) {
    .first_wrap__innar__top .clone_2 {
      width: 100%;
      text-decoration: none;
      padding: 0 0 0 0; } }

.first_wrap__innar__top .clone_4 {
  width: 150px;
  padding: 0 0 0 20px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center; }

.first_wrap__innar__top .clone_5 {
  width: 150px;
  padding: 0 0 0 20px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center; }

@media (max-width: 768px) {
  .first_wrap__innar__top .clone_1 {
    width: 23.5%;
    text-decoration: none; } }

.first_wrap__innar__top .itemcart_detail.d1 {
  padding: 15px 0 0 20px;
  font-size: 11px; }

.first_wrap__innar__top .itemcart_detail.d2 {
  padding: 5px 0 0 20px;
  font-size: 11px; }

@media (max-width: 768px) {
  .first_wrap__innar__top .itemcart_detail.d1 {
    padding: 15px 0 0 0px;
    font-size: 11px; }
  .first_wrap__innar__top .itemcart_detail.d2 {
    padding: 0px 0 0 00px;
    font-size: 11px; } }

@media (max-width: 768px) {
  .first_wrap__innar__top dt {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between; }
    .first_wrap__innar__top dt .sp_contents {
      width: 70%; }
  .first_wrap__innar__top .pc_set {
    display: none; } }

div#ctl00_ContentPlaceHolder1_rCartList_ctl00_hgcCouponBox tr {
  padding: 0; }

div#ctl00_ContentPlaceHolder1_rCartList_ctl00_hgcCouponBox th {
  padding: 15px 0 !important;
  font-size: 13px;
  line-height: 1.4; }

@media (max-width: 768px) {
  div#ctl00_ContentPlaceHolder1_hgcCompleteMessage {
    text-align: left !important;
    padding: 15px 6.35% !important; }
  #dvOrderBox #dvCartSelect table .productImg {
    width: 23%;
    text-align: center; } }

</style> -->

<div style="color: red; font-weight: bold">
	<asp:Label id="lblDeliveryPatternAlert" runat="server" visible="false">配送パターンを選択してください</asp:Label>
</div>
<div style="text-align: left">
	<asp:Label id="lblPaymentAlert" runat="server">
		注文同梱後の金額が各決済方法の上限額を超えました。<br />お手数ですが、カートに戻って別の注文と同梱、または同梱せずに注文実行してください。
	</asp:Label>
</div>
<div style="color: red; font-weight: bold">
	<asp:Label id="lblNotFirstTimeFixedPurchaseAlert" runat="server" visible="false"></asp:Label>
</div>

<% if (this.IsChangedProductPriceByOrderCombine) { %>
<div style="color: red; font-weight: bold">
	注文同梱により商品価格が変更になりました。
</div>
<% } %>
<% if (this.IsChangedFixedPurchaseByOrderCombine) { %>
<div style="color: red; font-weight: bold">
	注文同梱により既存の定期購入情報が変更されます。
</div>
<% } %>

<div id="CartList">
	
<%-- ▼PayPalログインここから▼ --%>
<%if (Constants.PAYPAL_LOGINPAYMENT_ENABLED) {%>
<%if (SessionManager.IsPayPalOrderfailed) {%>
	<%
		ucPaypalScriptsForm.LogoDesign = "Payment";
		ucPaypalScriptsForm.AuthCompleteActionControl = lbPayPalAuthComplete;
	%>
	<uc:PaypalScriptsForm ID="ucPaypalScriptsForm" runat="server" />
	<div id="paypal-button" style="height: 25px"></div>
	<%if (SessionManager.PayPalCooperationInfo != null) {%>
		<%: (SessionManager.PayPalCooperationInfo != null) ? SessionManager.PayPalCooperationInfo.AccountEMail : "" %> 連携済<br/>
	<%} %>
	<br /><asp:LinkButton ID="lbPayPalAuthComplete" runat="server" OnClick="lbPayPalAuthComplete_Click"></asp:LinkButton>
	<% SessionManager.IsPayPalOrderfailed = false; %>
<%} %>
<%} %>
<%-- ▲PayPalログインここまで▲ --%>

<asp:Repeater id="rCartList" Runat="server" OnItemCommand="rCartList_ItemCommand">
<ItemTemplate>
	<div class="main">
	<div class="submain">
	
	<%-- ▼注文内容▼ --%>
	<div class="column">
		<div class="btmbtn above cartstep">
			<h2 class="ttlA"></h2>
		<!-- 	<ul>
				<li><asp:LinkButton id="lbComplete1" runat="server" onclick="lbComplete_Click" class="btn btn-success">注文を確定する</asp:LinkButton>
				<span id="processing1" style="display:none"><center><strong>ただいま決済処理中です。<br />画面が切り替わるまでそのままお待ちください。</strong></center></span></li>
			</ul> -->
		</div>

	<div id="Div1" visible="<%# Container.ItemIndex == 0 %>" runat="server">
<!-- 	<h2><img src="../../Contents/ImagesPkg/order/sttl_cash_confirm.gif" alt="注文情報" width="64" height="16" /></h2> -->
	<!--<p class="pdg_bottomA">以下の内容をご確認のうえ、「注文する」ボタンを<br />クリックしてください。</p>-->
	</div>
	
	<div class="orderBox">




	<h3>
		カート番号<%# Container.ItemIndex + 1 %>
		<%# WebSanitizer.HtmlEncode(DispCartDecolationString(Container.DataItem, "（ギフト）", "（デジタルコンテンツ）"))%>
	</h3>
	<div class="bottom">
		<div class="first_wrap">
			    <p class="ttlA" visible='<%# ((CartObject)Container.DataItem).ShippingType == "100" %>' runat="server"><span>【通常配送商品】</span></p>
          <p class="ttlA" visible='<%# ((CartObject)Container.DataItem).ShippingType == "1001" %>' runat="server"><span>【予約商品】</span></p>
          <h4 class="ttlA"><span>商品情報</span></h4>
			<div class="first_wrap__innar">
				<div class="first_wrap__innar__top">
					
				</div>
			</div>

		</div>




	<div id="Div2" class="box Div2_box1" visible="<%# Container.ItemIndex == 0 %>" runat="server">
	<h4><span>本人情報確認</span>
		<div id="hgcChangeUserInfoBtn" runat="server">
		<p class="btn_change"><asp:LinkButton ID="LinkButton1" CommandName="GotoShipping" runat="server" class="btn btn-mini"><span>変更</span></asp:LinkButton></p>
		</div>
	</h4>
	<div>
	<dl class="">
	<%-- 氏名 --%>
	<dt class="">
		<%: ReplaceTag("@@User.name.name@@") %>：
	</dt>
	<dd><%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Owner.Name1) %><%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Owner.Name2) %>&nbsp;様</dd>
	<%-- 氏名（かな） --%>
	<dt <%# (((CartObject)Container.DataItem).Owner.IsAddrJp) ? "" : "style=\"display:none;\"" %>>
		<%: ReplaceTag("@@User.name_kana.name@@") %>：
	</dt>
	<dd <%# (((CartObject)Container.DataItem).Owner.IsAddrJp) ? "" : "style=\"display:none;\"" %>><%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Owner.NameKana1) %><%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Owner.NameKana2) %>&nbsp;さま</dd>
	<dt>
		<%: ReplaceTag("@@User.mail_addr.name@@") %>：
	</dt>
	<dd><%# ((((CartObject)Container.DataItem).Owner.MailAddr) != "") ? WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Owner.MailAddr) : "-&nbsp;" %></dd>
	<% if (Constants.EITHER_ENTER_MAIL_ADDRESS_ENABLED) { %>
	<dt>
		<%: ReplaceTag("@@User.mail_addr2.name@@") %>：
	</dt>
	<dd><%# ((((CartObject)Container.DataItem).Owner.MailAddr2) != "") ? WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Owner.MailAddr2):"-&nbsp;" %></dd><br />
	<% } %>
	<dt>
		<%: ReplaceTag("@@User.addr.name@@") %>：
	</dt>
	<dd>
		<p>
			<%# (((CartObject)Container.DataItem).Owner.IsAddrJp) ? WebSanitizer.HtmlEncode("〒" + ((CartObject)Container.DataItem).Owner.Zip) + "<br />" : "" %>
			<%#: ((CartObject)Container.DataItem).Owner.Addr1 %> <%#: ((CartObject)Container.DataItem).Owner.Addr2 %>
			<%#: ((CartObject)Container.DataItem).Owner.Addr3 %> <%#: ((CartObject)Container.DataItem).Owner.Addr4 %>
			<%#: ((CartObject)Container.DataItem).Owner.Addr5 %> <%# (((CartObject)Container.DataItem).Owner.IsAddrJp == false) ? WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Owner.Zip) + "<br />" : "" %>
			<%#: ((CartObject)Container.DataItem).Owner.AddrCountryName %><br />
		</p>
	</dd>
	<% if (Constants.DISPLAY_CORPORATION_ENABLED){ %>
	<dt><%: ReplaceTag("@@User.company_name.name@@")%>・
		<%: ReplaceTag("@@User.company_post_name.name@@")%>：</dt>
	<dd><%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Owner.CompanyName) %><br />
		<%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Owner.CompanyPostName) %></dd>
	<%} %>
	<%-- 電話番号 --%>
	<dt><%: ReplaceTag("@@User.tel1.name@@") %>：</dt>
	<dd>TEL : <%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Owner.Tel1) %></dd>
	<dt><%: ReplaceTag("@@User.tel2.name@@") %>：</dt>
	<dd>TEL : <%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Owner.Tel2) %>&nbsp;</dd>
	<dt><%: ReplaceTag("@@User.mail_flg.name@@") %></dt>
	<dd><%# WebSanitizer.HtmlEncode(ValueText.GetValueText(Constants.TABLE_USER, Constants.FIELD_USER_MAIL_FLG, ((CartObject)Container.DataItem).Owner.MailFlg ? Constants.FLG_USER_MAILFLG_OK : Constants.FLG_USER_MAILFLG_NG))%><br />&nbsp;</dd>
	</dl>
	<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
	</div>
	

	</div><!--box-->


	<asp:Repeater id="rCartShippings" DataSource='<%# Eval("Shippings") %>' OnItemCommand="rCartShippings_ItemCommand" runat="server">
	<ItemTemplate>
	<div class="box">
	<h4><span>お届け先・お届け日時</span>
	<span id="Span1" visible="<%# FindCart(Container.DataItem).IsGift %>" runat="server"><%# Container.ItemIndex + 1 %></span>

	<div id="hgcChangeFixedPurchaseShippingInfoBtn" runat="server">
	<p class="btn_change"><asp:LinkButton ID="lbGotoShipping2" CommandName="GotoShipping" CommandArgument="Shipping2" runat="server" class="btn btn-mini"><span>変更</span></asp:LinkButton></p>
	</div>
	</h4>

	<div>
	<dl>
	<span visible="<%# (FindCart(Container.DataItem).IsDigitalContentsOnly == false) %>" runat="server">
		<dt><%: ReplaceTag("@@User.name.name@@") %>：</dt>
		<dd><%# WebSanitizer.HtmlEncode(Eval("Name1")) %><%# WebSanitizer.HtmlEncode(Eval("Name2")) %>&nbsp;様</dd>
<!-- 		<%-- 氏名（かな） --%>
		<dt <%# ((bool)Eval("IsShippingAddrJp")) ? "" : "style=\"display:none;\"" %>><%: ReplaceTag("@@User.name_kana.name@@") %>：</dt>
		<dd <%# ((bool)Eval("IsShippingAddrJp")) ? "" : "style=\"display:none;\"" %>><%# WebSanitizer.HtmlEncode(Eval("NameKana1")) %><%# WebSanitizer.HtmlEncode(Eval("NameKana2")) %>&nbsp;さま</dd> -->

		<dt>
			<%: ReplaceTag("@@User.addr.name@@") %>：
		</dt>
		<dd>
			<p>
				<%# ((bool)Eval("IsShippingAddrJp")) ? WebSanitizer.HtmlEncode("〒" + Eval("Zip")) + "<br />" : ""  %>
				<%#: Eval("Addr1") %><%#: Eval("Addr2") %><%#: Eval("Addr3") %><br><%#: Eval("Addr4") %>
				<%#: Eval("Addr5") %> <%# ((bool)Eval("IsShippingAddrJp") == false) ? WebSanitizer.HtmlEncode(Eval("Zip")) + "<br />" : ""  %>
				<%#: Eval("ShippingCountryName") %>
			</p>
		</dd>
		<% if (Constants.DISPLAY_CORPORATION_ENABLED){ %>
		<dt><%: ReplaceTag("@@User.company_name.name@@")%>・
			<%: ReplaceTag("@@User.company_post_name.name@@")%>：</dt>
		<dd>
			<%# WebSanitizer.HtmlEncode(Eval("CompanyName"))%>&nbsp<%# WebSanitizer.HtmlEncode(Eval("CompanyPostName"))%></dd>
		<%} %>
		<%-- 氏名 --%>


		<%-- 電話番号 --%>
		<dt><%: ReplaceTag("@@User.tel1.name@@") %>：</dt>
		<dd>TEL : <%# WebSanitizer.HtmlEncode(Eval("Tel1")) %></dd>
		<span id="Span2" visible="<%# FindCart(Container.DataItem).IsGift %>" class="sender" runat="server">
		<dt>送り主：</dt>
		<dd>
			<p>
				<%# ((bool)Eval("IsSenderAddrJp")) ? "〒" + Eval("SenderZip") + "<br />" : ""  %>
				<%#: Eval("SenderAddr1")%><%#: Eval("SenderAddr2")%><br />
				<%#: Eval("SenderAddr3")%><%#: Eval("SenderAddr4")%><br />
				<%#: Eval("SenderAddr5")%><%# ((bool)Eval("IsSenderAddrJp") == false) ? WebSanitizer.HtmlEncode(Eval("SenderZip")) + "<br />"  : ""  %>
				<%#: Eval("SenderCountryName")%>
				<% if (Constants.DISPLAY_CORPORATION_ENABLED){ %>
				<br />
				<%# WebSanitizer.HtmlEncode(Eval("SenderCompanyName"))%>&nbsp<%# WebSanitizer.HtmlEncode(Eval("SenderCompanyPostName"))%>
				<%} %>
			</p>
		</dd>
		<dd><%# WebSanitizer.HtmlEncode(Eval("SenderName1"))%><%# WebSanitizer.HtmlEncode(Eval("SenderName2"))%>&nbsp;様</dd>
		<dd <%# ((bool)Eval("IsSenderAddrJp")) ? "" : "style=\"display:none;\"" %>><%# WebSanitizer.HtmlEncode(Eval("SenderNameKana1"))%><%# WebSanitizer.HtmlEncode(Eval("SenderNameKana2"))%>&nbsp;さま</dd>
		<dd <%# ((bool)Eval("IsSenderAddrJp")) ? "" : "style=\"display:none;\"" %>><%# WebSanitizer.HtmlEncode(Eval("SenderTel1"))%></dd>
		</span>
		<% if (this.IsLoggedIn && ((Constants.GIFTORDER_OPTION_ENABLED == false) && (this.IsAmazonLoggedIn == false))) {%>
		<br />
		<td><asp:CheckBox id="cbDefaultShipping" GroupName='<%# "DefaultShippingSetting_" + Container.ItemIndex %>' Text="この住所をメインのお届け先にする" CssClass="radioBtn" runat="server"  OnCheckedChanged="cbDefaultShipping_OnCheckedChanged" AutoPostBack="true"/></td>
		<%} %>
		<div id="hgcChangeShippingInfoBtn" runat="server">
		<p class="btn_change"><asp:LinkButton ID="lbGotoShipping" CommandName="GotoShipping" CommandArgument="Shipping" runat="server" class="btn btn-mini"><span>変更</span></asp:LinkButton><br /></p>
		</div>
	</span>
	<span id="hcProducts" visible="<%# FindCart(Container.DataItem).IsGift %>" runat="server">
		<dt>商品：</dt>
		<dd>
		<asp:Repeater ID="rProductCount" DataSource="<%# ((CartShipping)Container.DataItem).ProductCounts %>" runat="server">
		<ItemTemplate>
			<dd><strong>
				<%# WebSanitizer.HtmlEncode(((CartProduct)Eval("Product")).ProductJointName) %></strong>
				<%# (((CartProduct)Eval("Product")).GetProductTag("tag_cart_product_message").Length != 0) ? "<small>" + WebSanitizer.HtmlEncode(((CartProduct)Eval("Product")).GetProductTag("tag_cart_product_message")) + "</small>" : ""%>
			<p id="P1" visible='<%# ((CartProduct)Eval("Product")).ProductOptionSettingList.IsSelectedProductOptionValueAll %>' runat="server">
			<asp:Repeater ID="rProductOptionSettings" DataSource='<%#((CartProduct)Eval("Product")).ProductOptionSettingList %>' runat="server">
				<ItemTemplate>
				<%# (((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue() != "") ? "<strong>" : "" %>
				<%# WebSanitizer.HtmlEncode(((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue()) %>
				<%# (((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue() != "") ? "</strong>" : "" %>
				</ItemTemplate>
			</asp:Repeater>
			</p>
			<p>&nbsp;&nbsp;&nbsp;&nbsp; <%#: CurrencyManager.ToPrice(((CartProduct)Eval("Product")).Price) %> (<%#: this.ProductPriceTextPrefix %>)&nbsp;&nbsp;x&nbsp;<%# WebSanitizer.HtmlEncode(Eval("Count")) %></p></dd>
		</ItemTemplate>
		</asp:Repeater>
		</dd>	
	</span>
	<span visible="<%# FindCart(Container.DataItem).IsDigitalContentsOnly == false %>" runat="server">
		<dt>配送方法：</dt>
		<dd>
			<%# WebSanitizer.HtmlEncode(ValueText.GetValueText(Constants.TABLE_ORDERSHIPPING, Constants.FIELD_ORDERSHIPPING_SHIPPING_METHOD, ((CartShipping)Container.DataItem).ShippingMethod)) %>
		</dd>
		<dt id="Dt1" visible='<%# Eval("SpecifyShippingDateFlg") %>' runat="server">
			配送希望日：</dt>
		<dd id="Dd1" visible='<%# Eval("SpecifyShippingDateFlg") %>' runat="server"><%# WebSanitizer.HtmlEncode(GetShippingDate((CartShipping)Container.DataItem)) %></dd>
		<dt id="Dt2" visible='<%# Eval("SpecifyShippingTimeFlg") %>' runat="server">
			配送希望時間帯：</dt>
		<dd id="Dd2" visible='<%# Eval("SpecifyShippingTimeFlg") %>' runat="server"><%# WebSanitizer.HtmlEncode(GetShippingTime((CartShipping)Container.DataItem)) %></dd>
	</span>
	<span>
		<dt id="Dt3" visible='<%# ((CartShipping)Container.DataItem).CartObject.GetOrderMemosForOrderConfirm().Trim() != ""  %>' runat="server">
			注文メモ：</dt>
		<dd id="Dd3" visible='<%# ((CartShipping)Container.DataItem).CartObject.GetOrderMemosForOrderConfirm().Trim() != ""  %>' runat="server">
			<%# WebSanitizer.HtmlEncodeChangeToBr(((CartShipping)Container.DataItem).CartObject.GetOrderMemosForOrderConfirm()) %></dd>
		<span id="Span3" visible='<%# (bool)Eval("WrappingPaperValidFlg") && ((CartObject)Eval("CartObject")).IsGift %>' runat="server">
		<dt>のし種類：</dt>
		<dd>
			<%# WebSanitizer.HtmlEncode(string.IsNullOrEmpty(((CartShipping)Container.DataItem).WrappingPaperType) ? "なし" : ((CartShipping)Container.DataItem).WrappingPaperType) %>
		</dd>
		<dt>のし差出人：</dt>
		<dd>
			<%# WebSanitizer.HtmlEncode(string.IsNullOrEmpty(((CartShipping)Container.DataItem).WrappingPaperName) ? "なし" : ((CartShipping)Container.DataItem).WrappingPaperName) %>
		</dd>
		</span>
		<span id="Span4" visible='<%# (bool)Eval("WrappingBagValidFlg") && ((CartObject)Eval("CartObject")).IsGift %>' runat="server">
		<dt>包装種類：</dt>
		<dd>
			<%# WebSanitizer.HtmlEncode(string.IsNullOrEmpty(((CartShipping)Container.DataItem).WrappingBagType) ? "なし" : ((CartShipping)Container.DataItem).WrappingBagType )%>
		</dd>
		</span>
	</span>
	</dl>
	</div>
	<div visible="<%# (((FindCart(Container.DataItem).HasFixedPurchase) || (FindCart(Container.DataItem).IsBeforeCombineCartHasFixedPurchase))
		&& (this.IsShowDeliveryPatternInputArea(FindCart(Container.DataItem)) == false)) %>" runat="server">
	<em id="Em1" visible="<%# FindCart(Container.DataItem).HasFixedPurchase %>" runat="server">定期配送情報</em>
	<div id="Div1" visible="<%# FindCart(Container.DataItem).HasFixedPurchase %>" runat="server">
		<dl>
		<dt>配送パターン：</dt>
		<dd><%# WebSanitizer.HtmlEncode(((CartShipping)Container.DataItem).GetFixedPurchaseShippingPatternString()) %></dd>
		<dt>初回配送予定：</dt>
		<dd><%#: DateTimeUtility.ToStringFromRegion(((CartShipping)Container.DataItem).GetFirstShippingDate(), DateTimeUtility.FormatType.LongDateWeekOfDay1Letter) %></dd>
		<dt>今後の配送予定：</dt>
		<dd><%#: DateTimeUtility.ToStringFromRegion(((CartShipping)Container.DataItem).NextShippingDate, DateTimeUtility.FormatType.LongDateWeekOfDay1Letter) %></dd>
		<dt></dt>
		<dd><%#: DateTimeUtility.ToStringFromRegion(((CartShipping)Container.DataItem).NextNextShippingDate, DateTimeUtility.FormatType.LongDateWeekOfDay1Letter)%></dd>
		<dt id="Dt4" visible='<%# ((CartShipping)Container.DataItem).SpecifyShippingTimeFlg %>' runat="server">配送希望時間帯：</dt>
		<dd id="Dd4" visible='<%# ((CartShipping)Container.DataItem).SpecifyShippingTimeFlg %>' runat="server"><%# WebSanitizer.HtmlEncode(GetShippingTime((CartShipping)Container.DataItem)) %></dd>
		</dl>
	<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
	</div>
	</div>

	</div><!--box-->	
	</ItemTemplate>
	</asp:Repeater>

	<div class="box" visible="<%# (this.IsShowDeliveryPatternInputArea((CartObject)Container.DataItem)) %>" runat="server">
		<div class="fixed">
		<%-- 定期購入 + 通常注文の注文同梱向け、定期購入配送パターン入力欄 --%>
		<em>定期購入 配送パターンの指定</em>
		<div>
			<div visible="<%# (GetFixedPurchaseKbnEnabled(Container.ItemIndex, 1) && (GetFixedPurchaseIntervalDropdown(Container.ItemIndex, true).Length > 1)) %>" runat="server">
				<asp:RadioButton ID="rbFixedPurchaseMonthlyPurchase_Date" 
					Text="月間隔日付指定" Checked="<%# GetFixedPurchaseKbnInputChecked(Container.ItemIndex, 1) %>" 
					GroupName="FixedPurchaseShippingPattern" OnCheckedChanged="rbFixedPurchaseShippingPattern_OnCheckedChanged" AutoPostBack="true" runat="server" />
				<div id="ddFixedPurchaseMonthlyPurchase_Date" visible="<%# (GetFixedPurchaseKbnInputChecked(Container.ItemIndex, 1) && (GetFixedPurchaseIntervalDropdown(Container.ItemIndex, true).Length > 1)) %>" runat="server">　
					<asp:DropDownList ID="ddlFixedPurchaseMonth"
						DataSource="<%# GetFixedPurchaseIntervalDropdown(Container.ItemIndex, true) %>"
						DataTextField="Text" DataValueField="Value" SelectedValue='<%# GetFixedPurchaseSelectedValue(Container.ItemIndex, Constants.FIXED_PURCHASE_SETTING_MONTH) %>'
						OnSelectedIndexChanged="ddlFixedPurchaseShippingPatternItem_OnCheckedChanged" AutoPostBack="true" 
						runat="server">
					</asp:DropDownList>
					ヶ月ごと
					<asp:DropDownList ID="ddlFixedPurchaseMonthlyDate"
						DataSource="<%# ValueText.GetValueItemArray(Constants.TABLE_SHOPSHIPPING, Constants.FIELD_SHOPSHIPPING_FIXED_PURCHASE_SETTING_DATE_LIST) %>"
							DataTextField="Text" DataValueField="Value" SelectedValue='<%# GetFixedPurchaseSelectedValue(Container.ItemIndex, Constants.FIXED_PURCHASE_SETTING_MONTHLY_DATE) %>'
						OnSelectedIndexChanged="ddlFixedPurchaseShippingPatternItem_OnCheckedChanged"  AutoPostBack="true" runat="server">
					</asp:DropDownList>
					日に届ける
					<small><asp:CustomValidator runat="Server" 
						ControlToValidate="ddlFixedPurchaseMonth" 
						ValidationGroup="OrderShipping" 
						ValidateEmptyText="true" 
						SetFocusOnError="true" 
						CssClass="error_inline" />
					</small>
					<small><asp:CustomValidator runat="Server" 
						ControlToValidate="ddlFixedPurchaseMonthlyDate" 
						ValidationGroup="OrderShipping" 
						ValidateEmptyText="true" 
						SetFocusOnError="true" 
						CssClass="error_inline" />
					</small>
				</div>
			</div>
			<div visible="<%# GetFixedPurchaseKbnEnabled(Container.ItemIndex, 2) %>" runat="server">
				<asp:RadioButton ID="rbFixedPurchaseMonthlyPurchase_WeekAndDay" 
					Text="週・曜日指定" Checked="<%# GetFixedPurchaseKbnInputChecked(Container.ItemIndex, 2) %>" 
					GroupName="FixedPurchaseShippingPattern" OnCheckedChanged="rbFixedPurchaseShippingPattern_OnCheckedChanged" AutoPostBack="true" runat="server" />
				<div id="ddFixedPurchaseMonthlyPurchase_WeekAndDay" visible="<%# GetFixedPurchaseKbnInputChecked(Container.ItemIndex, 2) %>" runat="server">
					　毎月
					<asp:DropDownList ID="ddlFixedPurchaseWeekOfMonth"
						DataSource="<%# ValueText.GetValueItemArray(Constants.TABLE_SHOPSHIPPING, Constants.FIELD_SHOPSHIPPING_FIXED_PURCHASE_SETTING_WEEK_LIST) %>"
						DataTextField="Text" DataValueField="Value" SelectedValue='<%#: GetFixedPurchaseSelectedValue(Container.ItemIndex, Constants.FIXED_PURCHASE_SETTING_WEEK_OF_MONTH) %>'
						OnSelectedIndexChanged="ddlFixedPurchaseShippingPatternItem_OnCheckedChanged"  AutoPostBack="true" runat="server">
					</asp:DropDownList>
					<asp:DropDownList ID="ddlFixedPurchaseDayOfWeek"
						DataSource="<%# ValueText.GetValueItemArray(Constants.TABLE_SHOPSHIPPING, Constants.FIELD_SHOPSHIPPING_FIXED_PURCHASE_SETTING_DAY_LIST) %>"
						DataTextField="Text" DataValueField="Value" SelectedValue='<%#: GetFixedPurchaseSelectedValue(Container.ItemIndex, Constants.FIXED_PURCHASE_SETTING_DAY_OF_WEEK) %>'
						OnSelectedIndexChanged="ddlFixedPurchaseShippingPatternItem_OnCheckedChanged"  AutoPostBack="true" runat="server">
					</asp:DropDownList>
					に届ける
					<small><asp:CustomValidator runat="Server" 
						ControlToValidate="ddlFixedPurchaseWeekOfMonth" 
						ValidationGroup="OrderShipping" 
						ValidateEmptyText="true" 
						SetFocusOnError="true" 
						CssClass="error_inline" />
					</small>
					<small><asp:CustomValidator runat="Server" 
						ControlToValidate="ddlFixedPurchaseDayOfWeek" 
						ValidationGroup="OrderShipping" 
						ValidateEmptyText="true" 
						SetFocusOnError="true" 
						CssClass="error_inline" />
					</small>
				</div>
			</div>
			<div visible="<%# (GetFixedPurchaseKbnEnabled(Container.ItemIndex, 3) && (GetFixedPurchaseIntervalDropdown(Container.ItemIndex, false).Length > 1)) %>" runat="server">
				<asp:RadioButton ID="rbFixedPurchaseRegularPurchase_IntervalDays" 
					Text="配送日間隔指定" Checked="<%# GetFixedPurchaseKbnInputChecked(Container.ItemIndex, 3) %>" 
					GroupName="FixedPurchaseShippingPattern" OnCheckedChanged="rbFixedPurchaseShippingPattern_OnCheckedChanged" AutoPostBack="true" runat="server" />
				<div id="ddFixedPurchaseRegularPurchase_IntervalDays" visible="<%# (GetFixedPurchaseKbnInputChecked(Container.ItemIndex, 3) && (GetFixedPurchaseIntervalDropdown(Container.ItemIndex, false).Length > 1)) %>" runat="server">　
					<asp:DropDownList ID="ddlFixedPurchaseIntervalDays"
						DataSource='<%# GetFixedPurchaseIntervalDropdown(Container.ItemIndex, false) %>'
						DataTextField="Text" DataValueField="Value" SelectedValue='<%# GetFixedPurchaseSelectedValue(Container.ItemIndex, Constants.FIXED_PURCHASE_SETTING_INTERVAL_DAYS) %>'
						OnSelectedIndexChanged="ddlFixedPurchaseShippingPatternItem_OnCheckedChanged"  AutoPostBack="true" runat="server">
					</asp:DropDownList>
					日ごとに届ける
					<small><asp:CustomValidator runat="Server" 
						ControlToValidate="ddlFixedPurchaseIntervalDays" 
						ValidationGroup="OrderShipping" 
						ValidateEmptyText="true" 
						SetFocusOnError="true" 
						CssClass="error_inline" />
					</small>
				</div>
			</div>
			<asp:HiddenField ID="hfFixedPurchaseDaysRequired" Value="<%#: this.ShopShippingList[Container.ItemIndex].FixedPurchaseShippingDaysRequired %>" runat="server" />
			<asp:HiddenField ID="hfFixedPurchaseMinSpan" Value="<%#: this.ShopShippingList[Container.ItemIndex].FixedPurchaseMinimumShippingSpan %>" runat="server" />
		</div>
		</div>
	</div>

	<div class="last">
	<div class="box">
	<h4><span>お支払い方法</span>
	<div id="hgcChangePaymentInfoBtn" runat="server">
	<p class="btn_change"><asp:LinkButton ID="LinkButton2" CommandName="GotoPayment" runat="server" class="btn btn-mini"><span>変更</span></asp:LinkButton></p>
	</div>
	</h4>
	<div>
	<dl>
	<dt>お支払い：</dt>
	<dd><%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Payment.PaymentName) %></dd>
	<dt id="Dt4" visible='<%# StringUtility.ToEmpty(((CartObject)Container.DataItem).Payment.PaymentId) == Constants.FLG_PAYMENT_PAYMENT_ID_CVS_PRE %>' runat="server">支払先コンビニ名</dt>
	<dd id="Dd4" visible='<%# StringUtility.ToEmpty(((CartObject)Container.DataItem).Payment.PaymentId) == Constants.FLG_PAYMENT_PAYMENT_ID_CVS_PRE %>' runat="server"><%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).GetPaymentCvsName()) %></dd>
	<dt id="dtCvsDef" visible="<%# StringUtility.ToEmpty(((CartObject)Container.DataItem).Payment.PaymentId) == Constants.FLG_PAYMENT_PAYMENT_ID_CVS_DEF %>" runat="server">
		<uc:PaymentDescriptionCvsDef runat="server" ID="ucPaymentDescriptionCvsDef"  />
	</dt>
	<dt id="Dt5" visible='<%# StringUtility.ToEmpty(((CartObject)Container.DataItem).Payment.CreditCardCompany) != "" %>' runat="server">カード会社：</dt>
	<dd id="Dd5" visible='<%# StringUtility.ToEmpty(((CartObject)Container.DataItem).Payment.CreditCardCompany) != "" %>' runat="server"><%#: ((CartObject)Container.DataItem).Payment.CreditCardCompanyName %></dd>
	<dt id="Dt6" visible='<%# StringUtility.ToEmpty(((CartObject)Container.DataItem).Payment.CreditCardNo) != "" %>' runat="server">カード番号：</dt>
	<dd id="Dd6" visible='<%# StringUtility.ToEmpty(((CartObject)Container.DataItem).Payment.CreditCardNo) != "" %>' runat="server">XXXXXXXXXXXX<%# WebSanitizer.HtmlEncode(GetCreditCardDispString(((CartObject)Container.DataItem).Payment)) %></dd>
	<dt id="Dt7" visible='<%# StringUtility.ToEmpty(((CartObject)Container.DataItem).Payment.CreditCardNo) != "" %>' runat="server">有効期限：</dt>
	<dd id="Dd7" visible='<%# StringUtility.ToEmpty(((CartObject)Container.DataItem).Payment.CreditCardNo) != "" %>' runat="server"><%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Payment.CreditExpireMonth) %>/<%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Payment.CreditExpireYear) %> (月/年)</dd>
	<dt id="Dt8" visible='<%# StringUtility.ToEmpty(((CartObject)Container.DataItem).Payment.CreditCardNo) != "" %>' runat="server">支払い回数：</dt>
	<dd id="Dd8" visible='<%# StringUtility.ToEmpty(((CartObject)Container.DataItem).Payment.CreditCardNo) != "" %>' runat="server"><%# WebSanitizer.HtmlEncode(ValueText.GetValueText(Constants.TABLE_ORDER, OrderCommon.CreditInstallmentsValueTextFieldName, ((CartObject)Container.DataItem).Payment.CreditInstallmentsCode))%></dd>
	<dt id="Dt9" visible='<%# StringUtility.ToEmpty(((CartObject)Container.DataItem).Payment.CreditCardNo) != "" %>' runat="server">カード名義：</dt>
	<dd id="Dd9" visible='<%# StringUtility.ToEmpty(((CartObject)Container.DataItem).Payment.CreditCardNo) != "" %>' runat="server"><%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).Payment.CreditAuthorName) %></dd>
	<dt id="Dt10" visible='<%# ((CartObject)Container.DataItem).Payment.UserCreditCardRegistable %>' runat="server">登録：</dt>
	<dd id="Dd10" visible='<%# ((CartObject)Container.DataItem).Payment.UserCreditCardRegistable %>' runat="server"><%# WebSanitizer.HtmlEncode((((CartObject)Container.DataItem).Payment.UserCreditCardRegistFlg) ? "する" : "しない") %>
        <%# WebSanitizer.HtmlEncode((((CartObject)Container.DataItem).Payment.UserCreditCardRegistFlg) ? ("（" + ((CartObject)Container.DataItem).Payment.UserCreditCardName + "）") : "") %>
	</dd>
	</dl>
	<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
	</div>
	<% if (this.IsLoggedIn && (this.CartList.Items[0].Payment.PaymentId != Constants.FLG_PAYMENT_PAYMENT_ID_AMAZON_PAYMENT)) { %>
	<td><asp:CheckBox id="cbDefaultPayment" GroupName="DefaultPaymentSetting" Text=" 通常の支払方法に設定する" CssClass="radioBtn" runat="server" OnCheckedChanged="cbDefaultPayment_OnCheckedChanged" AutoPostBack="true"/></td>
	<% } %>

	</div><!--box-->
	</div><!--last-->
<!-- 	<div class="Coupon_box">
		<h4><span>クーポン</span></h4>
		<dl>
			<dt>クーポン利用</dt>
      <dd><%#: GetCouponDispName(((CartObject)Container.DataItem).Coupon) %></dd>
		</dl>
	</div> -->
	</div>

  <!--bottom-->


	</div><!--orderBox-->
	</div><!--column-->
	<%-- ▲注文内容▲ --%>

	<div class="shoppingCart__wrap">
	<%-- ▼カート情報▼ --%>
	<div class="shoppingCart">
  <p class="shoppingCart__title"></p>
	<div id="Div3" visible="<%# Container.ItemIndex == 0 %>" runat="server">
	<h2><img src="../../Contents/ImagesPkg/common/ttl_shopping_cart.gif" alt="ショッピングカート" width="141" height="16" /></h2>
	<div class="sumBox mrg_topA">
	<div class="subSumBoxB">
	<p>総合計
		<strong><%#: CurrencyManager.ToPrice(this.CartList.PriceCartListTotal) %></strong></p>
	</div>
	</div><!--sum-->
	</div>
	
	<div class="subCartList">
	<div class="bottom">
	<h3>
		カート番号<%# Container.ItemIndex + 1 %>
		<%# WebSanitizer.HtmlEncode(DispCartDecolationString(Container.DataItem, "（ギフト）", "（デジタルコンテンツ）"))%>
	</h3>
	<div class="block">
	<asp:Repeater ID="rCart" DataSource="<%# ((CartObject)Container.DataItem).Items %>" runat="server">
	<ItemTemplate>
		<%-- 通常商品 --%>
		<div class="singleProduct" visible="<%# ((CartProduct)Container.DataItem).IsSetItem == false && ((CartProduct)Container.DataItem).QuantitiyUnallocatedToSet != 0 %>" runat="server">
		<div>
		<dl>
		<dt>
			<a class="clone_1" href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
				<w2c:ProductImage ProductMaster="<%# Container.DataItem %>" ImageSize="M" runat="server" /></a>
			<w2c:ProductImage ProductMaster="<%# Container.DataItem %>" ImageSize="M" runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false %>" />

			<div class="data_box" style="display: none;">
				<div class="data1">
				<p id="P1" visible='<%# ((CartProduct)Container.DataItem).ProductOptionSettingList.IsSelectedProductOptionValueAll %>' runat="server">
				<asp:Repeater ID="rProductOptionSettings" DataSource='<%# ((CartProduct)Container.DataItem).ProductOptionSettingList %>' runat="server">
					<ItemTemplate>
					<%# (((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue() != "") ? "<span>" : "" %>
					<%# WebSanitizer.HtmlEncode(((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue()) %>
					<%# (((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue() != "") ? "</span>" : "" %>
					</ItemTemplate>
				</asp:Repeater>
				</p>
				</div>
			</div>

			<div class="sp_contents">
				<div class="sp_flex_box">
					<a class="clone_2" href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
						<%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) %></a>
					<%# (((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false) ? WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) : "" %>
						<div class="itemcart_detail d1">
							<div class="d_dt">サイズ</div>
							<div class="d_dd"></div>
						</div>
						<div class="itemcart_detail d2">
							<div class="d_dt">カラー</div>
							<div class="d_dd"></div>
						</div>
						<div class="itemcart_detail">
							<div class="d_dt">価格（税込）</div>
							<div class="d_dd"><%#: CurrencyManager.ToPrice(((CartProduct)Container.DataItem).Price * ((CartProduct)Container.DataItem).QuantitiyUnallocatedToSet) %></div>
						</div>
						<div class="itemcart_detail amount">
							<div class="d_dt">数量</div>
							<div class="d_dd">
								<p class="quantity sp_set">
									<%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).QuantitiyUnallocatedToSet) %>
								</p>
							</div>
						</div>
						<p class="delete sp_set">

						</p>
					</div>
			</div>

		</dt>
		<script>
		$(function(){
		function bodyPageLoad(){

    }
    $(".load_wrap").addClass("active");
		 $(".first_wrap__innar .singleProduct").each(function(){
				var kana = $(".clone_3 .clone_2",this).text()
				console.log(kana)
				kana = kana.match(/\((.+)\)/)[1];
				$(".s1 .s_dd",this).text(kana);
				$(".d1 .d_dd",this).text(kana);


				var text=$(".clone_3 .clone_2",this).text();

				var nstr = text.replace(/\([^\)]*\)/g,"");

				$(".clone_2",this).html(nstr);

				// var str = $(".data1 p",this).text().trim();
				// str = str.replace(/色：/g, ''); // "bcbc"
    //     str = str.replace(/カラー：/g, ''); // "bcbc"
    //     str = str.replace(/配送時期：11月上旬/g, ''); // "bcbc"]



        var str = $(".data1 span:nth-child(1)",this).text().trim();
        str = str.replace(/カラー：/g, ''); // "bcbc"
        str = str.replace(/カラー：/g, ''); // "bcbc"

        $(".s2 .s_dd",this).text(str);
        $(".d2 .d_dd",this).text(str);

        var str = $(".data1 span:nth-child(2)",this).text().trim();
        str = str.replace(/配送時期：/g, ''); // "bcbc"

        $(".s3 .s_dd",this).text(str);
        $(".d3 .d_dd",this).text(str);

		 })


		})

		</script>
		<dd class="pc_set">

			<div class="clone_3">
				<a class="clone_2" href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
					<%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) %></a>
				<%# (((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false) ? WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) : "" %>

				<%# (((CartProduct)Container.DataItem).GetProductTag("tag_cart_product_message").Length != 0) ? "<small>" + WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).GetProductTag("tag_cart_product_message")) + "</small>" : "" %>
				<div class="pc_contents">
					<div class="s_dl__wrap">
						<div class="s_dl s1">
							<div class="s_dt">
								サイズ
							</div>
							<div class="s_dd"> </div>
						</div>
						<div class="s_dl s2">
							<div class="s_dt">
								カラー
							</div>
							<div class="s_dd"></div>
						</div>
          <div class="s_dl s3 itemcart_detail d3">
            <div class="s_dt">配送時期</div>
            <div class="s_dd"></div>
          </div>
					</div>
				</div>	

			</div>


		<p class="clone_4">数量：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).QuantitiyUnallocatedToSet) %></p>
		<p class="clone_5"><%#: CurrencyManager.ToPrice(((CartProduct)Container.DataItem).Price) %> </p>
		
		</dd>
		</dl>
		</div>
		</div><!--singleProduct-->
		<%-- セット商品 --%>
		<div class="multiProduct" visible="<%# (((CartProduct)Container.DataItem).IsSetItem) && (((CartProduct)Container.DataItem).ProductSetItemNo == 1) %>" runat="server">
		<asp:Repeater id="rProductSet" DataSource="<%# (((CartProduct)Container.DataItem).ProductSet != null) ? ((CartProduct)Container.DataItem).ProductSet.Items : null %>" runat="server">
		<ItemTemplate>
			<div>
			<dl>
			<dt>
				<a href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
					<w2c:ProductImage ProductMaster="<%# Container.DataItem %>" ImageSize="M" runat="server" /></a>
				<w2c:ProductImage ProductMaster="<%# Container.DataItem %>" ImageSize="M" runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false %>" />
			</dt>
			<dd>
				<strong>
					<a href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
						<%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) %></a>
					<%# (((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false) ? WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) : "" %>
				</strong>
				<%# (((CartProduct)Container.DataItem).GetProductTag("tag_cart_product_message").Length != 0) ? "<small>" + WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).GetProductTag("tag_cart_product_message")) + "</small>" : "" %>
			<p><%#: CurrencyManager.ToPrice(((CartProduct)Container.DataItem).Price) %> (<%#: this.ProductPriceTextPrefix %>)&nbsp;&nbsp;x&nbsp;&nbsp;<%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).CountSingle) %></p></dd>
			</dl>
			</div>
			<table id="Table1" visible="<%# (((CartProduct)Container.DataItem).ProductSetItemNo == ((CartProduct)Container.DataItem).ProductSet.Items.Count) %>" width="297" cellpadding="0" cellspacing="0" class="clr" runat="server">
			<tr>
			<th width="38">セット：</th>
			<th width="50"><%# GetProductSetCount((CartProduct)Container.DataItem) %></th>
			<th width="146"><%#: CurrencyManager.ToPrice(GetProductSetPriceSubtotal((CartProduct)Container.DataItem)) %> (<%#: this.ProductPriceTextPrefix %>)</th>
			<td width="61"></td>
			</tr>
			</table>
		</ItemTemplate>
		</asp:Repeater>
		</div><!--multiProduct-->
	</ItemTemplate>
	</asp:Repeater>

	<%-- セットプロモーション商品 --%>
	<asp:Repeater ID="rCartSetPromotion" DataSource="<%# ((CartObject)Container.DataItem).SetPromotions %>" runat="server">
	<ItemTemplate>
		<div class="multiProduct">
			<asp:Repeater ID="rCartSetPromotionItem" DataSource="<%# ((CartSetPromotion)Container.DataItem).Items %>" runat="server">
			<ItemTemplate>
				<div>
					<dl>
						<dt>
							<a href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
								<w2c:ProductImage ProductMaster="<%# Container.DataItem %>" ImageSize="M" runat="server" /></a>
							<w2c:ProductImage ProductMaster="<%# Container.DataItem %>" ImageSize="M" runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false %>" />
						</dt>
						<dd>
							<strong>
								<a href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
									<%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) %></a>
								<%# (((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false) ? WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) : "" %>
							</strong>
							<p visible='<%# ((CartProduct)Container.DataItem).ProductOptionSettingList.IsSelectedProductOptionValueAll %>' runat="server">
							<asp:Repeater ID="rProductOptionSettings" DataSource='<%# ((CartProduct)Container.DataItem).ProductOptionSettingList %>' runat="server">
								<ItemTemplate>
								<%# (((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue() != "") ? "<strong>" : "" %>
								<%# WebSanitizer.HtmlEncode(((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue()) %>
								<%# (((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue() != "") ? "</strong>" : "" %>
								</ItemTemplate>
							</asp:Repeater>
							</p>
							<p>数量：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).QuantityAllocatedToSet[((CartSetPromotion)((RepeaterItem)Container.Parent.Parent).DataItem).CartSetPromotionNo]) %></p>
							<p><%#: CurrencyManager.ToPrice(((CartProduct)Container.DataItem).Price) %> (<%#: this.ProductPriceTextPrefix %>)</p>
						</dd>
					</dl>
				</div>
			</ItemTemplate>
			</asp:Repeater>
			<dl class="setpromotion">
				<dt><%# WebSanitizer.HtmlEncode(((CartSetPromotion)Container.DataItem).SetpromotionDispName) %></dt>
				<dd>
					<span visible="<%# ((CartSetPromotion)Container.DataItem).IsDiscountTypeProductDiscount %>" runat="server">
						<strike><%#: CurrencyManager.ToPrice(((CartSetPromotion)Container.DataItem).UndiscountedProductSubtotal) %> (<%#: this.ProductPriceTextPrefix %>)</strike><br />
					</span>
					<%#: CurrencyManager.ToPrice(((CartSetPromotion)Container.DataItem).UndiscountedProductSubtotal - ((CartSetPromotion)Container.DataItem).ProductDiscountAmount) %> (<%#: this.ProductPriceTextPrefix %>)
				</dd>
			</dl>
		</div>
	</ItemTemplate>
	</asp:Repeater>

	<div class="priceList">
	<div>
	<dl class="bgc">
	<dt>小計(<%#: this.ProductPriceTextPrefix %>)</dt>
	<dd><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).PriceSubtotal) %></dd>
	</dl>
    <dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
  <dt>配送料金<span visible="<%# ((CartObject)Container.DataItem).IsGift %>" runat="server">合計</span></dt>
  <dd runat="server" style='<%# (((CartObject)Container.DataItem).ShippingPriceSeparateEstimateFlg) ? "display:none;" : ""%>'>
    <%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).PriceShipping) %></dd>
  <dd runat="server" style='<%# (((CartObject)Container.DataItem).ShippingPriceSeparateEstimateFlg == false) ? "display:none;" : ""%>'>
    <%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).ShippingPriceSeparateEstimateMessage)%></dd>
  </dl>
	<%-- セットプロモーション割引額(商品割引) --%>
	<asp:Repeater DataSource="<%# ((CartObject)Container.DataItem).SetPromotions %>" runat="server">
	<ItemTemplate>
		<span visible="<%# ((CartSetPromotion)Container.DataItem).IsDiscountTypeProductDiscount %>" runat="server">
		<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
		<dt><%# WebSanitizer.HtmlEncode(((CartSetPromotion)Container.DataItem).SetpromotionDispName) %></dt>
		<dd class='<%# (((CartSetPromotion)Container.DataItem).ProductDiscountAmount > 0) ? "minus" : "" %>'><%# (((CartSetPromotion)Container.DataItem).ProductDiscountAmount > 0) ? "-" : ""%><%#: CurrencyManager.ToPrice(((CartSetPromotion)Container.DataItem).ProductDiscountAmount) %></dd>
		</dl>
		</span>
	</ItemTemplate>
	</asp:Repeater>
	<%if (Constants.MEMBER_RANK_OPTION_ENABLED && this.IsLoggedIn){ %>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>' style="display: none;">
	<dt>会員ランク割引額</dt>
	<dd class='<%# (((CartObject)Container.DataItem).MemberRankDiscount > 0) ? "minus" : "" %>'><%# (((CartObject)Container.DataItem).MemberRankDiscount > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).MemberRankDiscount * ((((CartObject)Container.DataItem).MemberRankDiscount < 0) ? -1 : 1)) %></dd>
	</dl>
	<%} %>
	<%if (Constants.MEMBER_RANK_OPTION_ENABLED && Constants.FIXEDPURCHASE_OPTION_ENABLED && this.IsLoggedIn) { %>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>' style="display: none;">
	<dt>定期会員割引額</dt>
	<dd class='<%# (((CartObject)Container.DataItem).FixedPurchaseMemberDiscountAmount > 0) ? "minus" : "" %>'><%# (((CartObject)Container.DataItem).FixedPurchaseMemberDiscountAmount > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).FixedPurchaseMemberDiscountAmount* ((((CartObject)Container.DataItem).FixedPurchaseMemberDiscountAmount < 0) ? -1 : 1)) %></dd>
	</dl>
	<%} %>
	<%if (Constants.FIXEDPURCHASE_OPTION_ENABLED) { %>
	<div runat="server" visible="<%# (((CartObject)Container.DataItem).HasFixedPurchase) %>">
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>' style="display: none;">
	<dt>定期購入割引額</dt>
	<dd class='<%# (((CartObject)Container.DataItem).FixedPurchaseDiscount > 0) ? "minus" : "" %>'><%#: (((CartObject)Container.DataItem).FixedPurchaseDiscount > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).FixedPurchaseDiscount * ((((CartObject)Container.DataItem).FixedPurchaseDiscount < 0) ? -1 : 1)) %></dd>
	</dl>
	</div>
	<%} %>
	<%if (Constants.W2MP_COUPON_OPTION_ENABLED){ %>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %> c_on'>
	<dt>クーポン割引額</dt>
	<dd class='<%# (((CartObject)Container.DataItem).UseCouponPrice > 0) ? "minus" : "" %>'><%# (((CartObject)Container.DataItem).UseCouponPrice > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).UseCouponPrice * ((((CartObject)Container.DataItem).UseCouponPrice < 0) ? -1 : 1)) %></dd>
	</dl>
	<%} %>
	<%if (Constants.W2MP_POINT_OPTION_ENABLED && this.IsLoggedIn){ %>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>' style="display: none;">
	<dt>ポイント利用額</dt>
	<dd class='<%# (((CartObject)Container.DataItem).UsePointPrice > 0) ? "minus" : "" %>'><%# (((CartObject)Container.DataItem).UsePointPrice > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).UsePointPrice * ((((CartObject)Container.DataItem).UsePointPrice < 0) ? -1 : 1)) %></dd>
	</dl>
	<%} %>

	<%-- セットプロモーション割引額(配送料割引) --%>
	<asp:Repeater DataSource="<%# ((CartObject)Container.DataItem).SetPromotions %>" runat="server">
	<ItemTemplate>
		<span visible="<%# ((CartSetPromotion)Container.DataItem).IsDiscountTypeShippingChargeFree %>" runat="server">
		<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
			<dt><%# WebSanitizer.HtmlEncode(((CartSetPromotion)Container.DataItem).SetpromotionDispName) %>(送料割引)</dt>
			<dd class='<%# (((CartSetPromotion)Container.DataItem).ShippingChargeDiscountAmount > 0) ? "minus" : "" %>'><%# (((CartSetPromotion)Container.DataItem).ShippingChargeDiscountAmount > 0) ? "-" : ""%><%#: CurrencyManager.ToPrice(((CartSetPromotion)Container.DataItem).ShippingChargeDiscountAmount) %></dd>
		</dl>
		</span>
	</ItemTemplate>
	</asp:Repeater>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>' style="display: none;">
	<dt>決済手数料</dt>
	<dd><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).Payment.PriceExchange) %></dd>
	</dl>
	<%-- セットプロモーション割引額(決済手数料料割引) --%>
	<asp:Repeater DataSource="<%# ((CartObject)Container.DataItem).SetPromotions %>" runat="server">
	<ItemTemplate>
		<span visible="<%# ((CartSetPromotion)Container.DataItem).IsDiscountTypePaymentChargeFree %>" runat="server">
		<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
			<dt><%# WebSanitizer.HtmlEncode(((CartSetPromotion)Container.DataItem).SetpromotionDispName) %>(決済手数料割引)</dt>
			<dd class='<%# (((CartSetPromotion)Container.DataItem).PaymentChargeDiscountAmount > 0) ? "minus" : "" %>'><%# (((CartSetPromotion)Container.DataItem).PaymentChargeDiscountAmount > 0) ? "-" : ""%><%#: CurrencyManager.ToPrice(((CartSetPromotion)Container.DataItem).PaymentChargeDiscountAmount) %></dd>
		</dl>
		</span>
	</ItemTemplate>
	</asp:Repeater>
	<%if (this.ProductIncludedTaxFlg == false) { %>
		<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
			<dt>消費税</dt>
			<dd><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).PriceTax) %></dd>
		</dl>
	<%} %>
	<dl class='<%=: (this.DispNum++ % 2 == 0) ? "" : "bgc" %>' visible="<%# (((CartObject)Container.DataItem).PriceRegulation != 0) %>" runat="server">
	<dt>調整金額</dt>
	<dd class='<%#: (((CartObject)Container.DataItem).PriceRegulation < 0) ? "minus" : "" %>'>
		<%#: (((CartObject)Container.DataItem).PriceRegulation < 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(Math.Abs(((CartObject)Container.DataItem).PriceRegulation)) %></dd>
	</dl>
	</div>
	<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
	<div>
	<dl class="result">
	<dt>合計(税込)</dt>
	<dd><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).PriceTotal) %></dd>
	<%if (Constants.GLOBAL_OPTION_ENABLE) { %>
	<dt>決済金額(税込)</dt>
	<dd><%#:GetSettlementAmount(((CartObject)Container.DataItem)) %></dd>
	<small style="color: red"><%#: string.Format(WebMessages.GetMessages(WebMessages.ERRMSG_MANAGER_AMOUNT_VARIES_WITH_RATE),((CartObject)Container.DataItem).SettlementCurrency) %></small>
	<% } %>
	</dl>
	<small class="InternationalShippingAttention" runat="server" visible="<%# IsDisplayProductTaxExcludedMessage((CartObject)Container.DataItem) %>">※国外配送をご希望の場合関税・商品消費税は料金に含まれず、商品到着後、現地にて税をお支払いいただくこととなりますのでご注意ください。</small>
	</div>
	<div id="hgcChangeCartInfoBtn" runat="server">
	<p><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_CART_LIST) %>" class="btn btn-mini" style="text-decoration:none;">変更</a></p>
	</div>
	</div><!--priceList-->

	</div><!--block-->
	</div><!--bottom-->
	</div><!--subCartList-->
	
	<div id="Div6" visible="<%# ((CartObjectList)((Repeater)Container.Parent).DataSource).Items.Count == Container.ItemIndex + 1 %>" runat="server">
	<div class="sumBox">
	<div class="subSumBox">
	<p>総合計
		<strong><%#: CurrencyManager.ToPrice(this.CartList.PriceCartListTotal) %></strong></p>
	</div>
	<%if (Constants.W2MP_POINT_OPTION_ENABLED && this.IsLoggedIn) { %>
	<dl>
	<dt id="Dt11" Visible="<%# ((CartObject)Container.DataItem).FirstBuyPoint != 0 %>" runat="server">初回購入獲得ポイント</dt>
	<dd id="Dd11" Visible="<%# ((CartObject)Container.DataItem).FirstBuyPoint != 0 %>" runat="server"><%# WebSanitizer.HtmlEncode(GetNumeric(((CartObjectList)((Repeater)Container.Parent).DataSource).TotalFirstBuyPoint)) %>pt</dd>
	<dt>購入後獲得ポイント</dt>
	<dd><%# WebSanitizer.HtmlEncode(GetNumeric(((CartObjectList)((Repeater)Container.Parent).DataSource).TotalBuyPoint)) %>pt</dd>
	</dl>
	<small>※ 1pt = <%: CurrencyManager.ToPrice(1m) %></small>
	<%} %>
	</div><!--sumBox-->

	</div>

	<!-- レコメンド設定 -->
	<uc:BodyRecommend runat="server" Cart="<%# (CartObject)Container.DataItem %>" Visible="<%# this.IsOrderCombined == false %>" />

	<!-- 定期注文購入金額 -->
	<uc:BodyFixedPurchaseOrderPrice runat="server" Cart="<%# (CartObject)Container.DataItem %>" Visible="<%# ((CartObject)Container.DataItem).HasFixedPurchase %>" />

	<div class="btmbtn below">
	<ul>

		<li><asp:LinkButton id="lbComplete2" runat="server" onclick="lbComplete_Click" class="btn btn-large btn-success">注文を確定する</asp:LinkButton>
		<span id="processing2" style="display:none"><center><strong>ただいま決済処理中です。<br />画面が切り替わるまでそのままお待ちください。</strong></center></span></li>
		<li><asp:LinkButton id="lbCart" runat="server" OnClick="lbCart_Click" class="btn btn-large btn-org-gry btn-success2">カートへ戻る</asp:LinkButton></li>
	</ul>
	</div>
    <p class="btn-gry__wrap"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT) %>" class="btn btn-large btn-gry"><span><</span>ショッピングへ戻る</a></p>
	</div><!--shoppingCart-->
	<%-- ▲カート情報▲ --%>


	</div><!--shoppingCart__wrap-->

	<br class="clr" />
	</div><!--submain-->
	</div><!--main-->

</ItemTemplate>
</asp:Repeater>

<!-- <div style="text-align:right;padding:10px 0;" id="hgcCompleteMessage" runat="server">
	以下の内容をご確認のうえ、「注文を確定する」ボタンをクリックしてください。
</div> -->
<div class="oc_text__wrap">
  <p class="oc_text oct1">※ご注文前に必ずサイズ・カラー・価格・数量のご確認をお願い致します。 <br>
  商品状態により返品・交換をお受けできない場合がございます。  <br>
  <a href="https://jamaisvu.co.jp/Page/userGuide/">返品・交換について</a></p>
  <p class="oc_text oct2">ご注文確認メールはご注文完了と同時に自動送信させて頂いておりますが、 <br>
  迷惑メールなどに振り分けられている可能性もございますので、 <br>
  お手数おかけいたしますが当社のドメイン「@jamaisvu.co.jp」を受信できるようにメールの設定をお願いいたします。</p>
</div>
<div class="sp_contents">
  <div class="add_cart_box">
  
  </div>
</div>

<div style="text-align: right">
	<asp:Label id="lblOrderCombineAlert" runat="server">「カートへ戻る」ボタンを押下すると、同梱が解除されます。</asp:Label>
</div>

<!-- <div class="btmbtn below">
<ul>
	<li><asp:LinkButton id="lbCart" runat="server" OnClick="lbCart_Click" class="btn btn-large btn-org-gry">カートへ戻る</asp:LinkButton></li>
	<li><asp:LinkButton id="lbComplete2" runat="server" onclick="lbComplete_Click" class="btn btn-large btn-success">注文を確定する</asp:LinkButton>
	<span id="processing2" style="display:none"><center><strong>ただいま決済処理中です。<br />画面が切り替わるまでそのままお待ちください。</strong></center></span></li>
</ul>
</div>
 -->
</div>

</asp:Content>