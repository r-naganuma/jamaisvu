<%--
=========================================================================================================
  Module      : 注文配送先入力画面(OrderShipping.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="UserRegistRegulationMessage" Src="~/Form/User/UserRegistRegulationMessage.ascx" %>
<%@ Register TagPrefix="uc" TagName="Layer" Src="~/Form/Common/Layer/SearchResultLayer.ascx" %>
<%@ page language="C#" masterpagefile="~/Form/Common/OrderPage.master" autoeventwireup="true" inherits="Form_Order_OrderShipping, App_Web_ordershipping.aspx.bf558b1b" title="配送先情報入力ページ" maintainscrollpositiononpostback="true" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<script>
$(function(){
	$("#Contents").addClass("topSpace").addClass("cart2");
	// $("small").each(function(x){
	// 	$(this).addClass("small"+x)
	// });
  $(".uB1 dl").each(function(x){
    $(this).addClass("small"+x);
    if($(this).html().trim()==""){
      $(this).addClass("remove");
    }
  });
  $(".orderBox .uL2 dl").each(function(x){
    $(this).addClass("small2"+x);
    if($(this).html().trim()==""){
      $(this).addClass("remove");
    }
  });
  $(".orderBox .uL3 dl").each(function(x){
    $(this).addClass("small3"+x);
    if($(this).html().trim()==""){
      $(this).addClass("remove");
    }
  });
	$(".userList select").change(function(){

	});
});
</script>
<style>
@charset "UTF-8";
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

/*====================================================================
*    Cart 
/*==================================================================*/
/* 共通 */
h2.cart1_h2 {
  font-size: 18px;
  letter-spacing: 0.04em;
  display: block;
  margin: auto;
  text-align: center;
  font-weight: bold;
  margin: 0 0 40px; }

#CartFlow {
  text-align: center;
  width: 715px;
  margin: 0 auto 60px; }

@media (max-width: 768px) {
  #CartFlow {
    width: 100%; } }

#CartFlow img {
  height: auto; }

.CartFlow img {
  padding: 0 5.3vw; }

.cart1 {
  margin-bottom: 90px;
  overflow: hidden; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel .list {
    padding: 15px 6.25% !important;
    margin: 5px 0 0 0; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList {
  padding: 0 6.25%;
  margin: auto;
  max-width: 1280px;
  position: relative; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList {
    padding: 0; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList div.product div {
  margin: 0;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList div.product div {
    display: block; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .product {
  position: relative; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .name + .pc_contents_sub {
  width: 48.75%; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .name + .pc_contents_sub {
    width: 41%; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .name + .pc_contents_sub > div {
  width: 100%; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .name + .pc_contents_sub > div {
    width: 41%;
    position: absolute;
    bottom: 28px;
    right: 0; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .sub_contents {
  display: -webkit-box !important;
  display: -ms-flexbox !important;
  display: flex !important;
  -webkit-box-pack: justify;
  -ms-flex-pack: justify;
  justify-content: space-between; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList dl.name {
  width: 45.25%; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList dl.name dt {
  max-width: 100px;
  width: 28%; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList dl.name dd a {
  font-size: 13px;
  line-height: 1.5;
  font-weight: 100; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList dl.name dd a {
    margin: 0 0 15px; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList p.price {
  font-size: 14px;
  padding: 0;
  width: auto; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .quantity {
  padding: 0;
  width: auto; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList p.subtotal {
  font-size: 14px;
  font-weight: 100 !important;
  padding: 0;
  width: auto; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .delete {
  padding: 0;
  width: auto; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList {
  padding: 0; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList div.product p.delete a {
  font-size: 11px;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList div.product p.delete {
    position: absolute;
    bottom: 0;
    right: 0; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.btmbtn {
  clear: none;
  margin-top: 18px;
  border-top: none;
  width: 24.3%;
  float: right;
  height: auto;
  position: absolute;
  right: 0;
  top: 0; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.btmbtn {
    width: 100%;
    margin: auto;
    float: none;
    position: static; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .btmbtn__innar {
  background: #EAE6E5;
  padding: 40px 20px 30px;
  height: auto; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList dl.name dd {
  width: 68%; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.btmbtn ul li {
  margin: 0; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList a.btn.btn-large.btn-success {
  padding: 0;
  font-size: 12px;
  width: 100%;
  border-radius: 0;
  height: 48px;
  background: #2E0E02;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  letter-spacing: 0.08em;
  margin: 0 0 0; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList a.btn.btn-large.btn-success {
    width: 58.6vw !important;
    max-width: 220px;
    margin: auto !important; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList div.product {
  border-top: 1px solid #EAE6E5;
  padding: 25px 0; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList div.subcartOrder {
  padding: 15px;
  background: #fff;
  border-top: 1px solid #EAE6E5;
  padding: 30px 0;
  position: relative;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList div.subcartOrder {
    display: block;
    background: #EAE6E5; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList div.priceList {
  width: 248px !important;
  border: none;
  background-color: #FFFFFF;
  padding: 0 !important;
  float: right; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList div.priceList {
    width: 100% !important;
    float: none;
    background: none; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.cartOrder div.priceList dl {
  width: 248px !important;
  font-size: 14px; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.cartOrder div.priceList dl {
    width: 100% !important;
    float: none; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .priceList dl.bgc {
  background-color: #fff; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .priceList dl.bgc {
    background: none; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .priceList dl.result {
  font-size: 12px !important;
  margin-top: 13px;
  background: none;
  border-top: 1px solid #2E0E02;
  padding: 10px 0 0; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList a.btn.btn-large.btn-gry {
  padding: 0;
  background: no-repeat;
  border: none;
  -webkit-box-shadow: none;
  box-shadow: none;
  width: 100%;
  font-size: 12px !important;
  letter-spacing: 0.08em;
  margin: 20px 25px 0 0; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList a.btn.btn-large.btn-gry span {
  display: inline-block !important;
  /* margin: 0 15px 0; */
  margin: 0 15px 0 0; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList dl.name {
    width: 100% !important;
    position: relative; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .priceList dt {
  width: 130px;
  font-size: 14px;
  letter-spacing: 0.08em; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .priceList dt {
    font-size: 13px; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .priceList dd {
  font-weight: normal;
  font-size: 14px;
  letter-spacing: 0.08em; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList .priceList dd {
    font-size: 14px; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList dl.result dd {
  font-weight: bold;
  font-size: 16px; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.productList div.couponBox {
    display: none; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel .productList {
  width: 71.42857% !important;
  float: left; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel .productList {
    width: 100% !important;
    margin: auto;
    float: none;
    padding: 0; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel .productList h3 {
  display: none; }

#ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox {
  opacity: 0;
  visibility: hidden; }

#ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox .box {
  background: none; }

#ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox .boxbtm {
  background: none; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox {
    float: none;
    padding: 0 !important;
    margin: 0 0 20px;
    width: 100%; }
  #ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox .box {
    margin: 10px 0px;
    background: none;
    width: 100%;
    border: none !important; }
  #ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox .box div {
    width: 100% !important; }
  #ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox .boxbtm {
    font-size: 13px;
    background: none;
    padding: 10px;
    width: 100% !important; }
  #ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox .boxbtm div {
    width: 100%; }
  #ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox .boxbtm dl {
    width: 100%; }
  #ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox .boxbtm dt {
    width: 100px; }
  #ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox .boxbtm dd {
    float: right;
    text-align: right;
    width: 65%;
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center; }
  #ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox .boxbtm dd input {
    height: 32px;
    width: 100% !important; }
  #ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox dl#ctl00_ContentPlaceHolder1_rCartList_ctl00_hgcCouponCodeInputArea {
    display: -webkit-box;
    display: -ms-flexbox;
    display: flex;
    -webkit-box-align: center;
    -ms-flex-align: center;
    align-items: center;
    -webkit-box-pack: justify;
    -ms-flex-pack: justify;
    justify-content: space-between; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox p.coupon_text {
  font-size: 14px;
  padding: 0 10px;
  font-weight: bold; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel .couponBox p.coupon_text {
    font-size: 13px;
    padding: 0 2.7vw;
    font-weight: bold; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel .btmbtn.above.cartstep {
  display: none; }

#ctl00_ContentPlaceHolder1_upUpdatePanel p.sum {
  display: none; }

#ctl00_ContentPlaceHolder1_upUpdatePanel div.btmbtn.below ul {
  top: 10px;
  position: static; }

#ctl00_ContentPlaceHolder1_upUpdatePanel .ttl_cart {
  position: relative;
  height: 20px;
  margin: 0 0 22px; }

#ctl00_ContentPlaceHolder1_upUpdatePanel p.ttl_01 {
  position: absolute;
  left: 22%;
  top: 0; }

#ctl00_ContentPlaceHolder1_upUpdatePanel p.ttl_02 {
  position: absolute;
  left: 50%; }

#ctl00_ContentPlaceHolder1_upUpdatePanel p.ttl_03 {
  position: absolute;
  left: 64%; }

#ctl00_ContentPlaceHolder1_upUpdatePanel p.ttl_04 {
  position: absolute;
  right: 18%; }

#ctl00_ContentPlaceHolder1_upUpdatePanel .selectValiation__innar1 {
  width: 48%; }

#ctl00_ContentPlaceHolder1_upUpdatePanel .s_dl__wrap {
  display: block !important; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel .s_dl__wrap {
    display: none !important; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel .s_dl {
  display: -webkit-box !important;
  display: -ms-flexbox !important;
  display: flex !important;
  -webkit-box-pack: normal !important;
  -ms-flex-pack: normal !important;
  justify-content: normal !important;
  width: 100%; }

#ctl00_ContentPlaceHolder1_upUpdatePanel .s_dl div {
  font-size: 11px;
  display: inline-block !important;
  font-weight: normal !important; }

#ctl00_ContentPlaceHolder1_upUpdatePanel .s_dt:after {
  content: ":";
  position: absolute;
  top: 0;
  right: 4px; }

#ctl00_ContentPlaceHolder1_upUpdatePanel dd.color_box {
  margin: 20px 0 0; }

#ctl00_ContentPlaceHolder1_upUpdatePanel .s_dl.s1,
#ctl00_ContentPlaceHolder1_upUpdatePanel .s_dl.s2 {
  margin: 0 0 5px !important;
  display: block; }

#ctl00_ContentPlaceHolder1_upUpdatePanel .pointBox {
  display: none; }

#ctl00_ContentPlaceHolder1_upUpdatePanel p.no_cart_ {
  width: 670px;
  margin: 100px auto 0; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel p.no_cart_ {
    width: 100%;
    margin: 100px 5.5vw; } }

.footer_logo {
  width: 100% !important;
  padding-right: 247px;
  -webkit-box-sizing: border-box;
  box-sizing: border-box;
  position: absolute;
  bottom: 55px;
  left: 0;
  padding: 0 0 0 23px;
  width: 140px !important; }

#ctl00_ContentPlaceHolder1_upUpdatePanel select#ctl00_ContentPlaceHolder1_rCartList_ctl00_ddlCouponList {
  height: 32px;
  background: url(../../Contents/ImagesPkg/user/common/arrow_down.svg) no-repeat 90% 12px #fff;
  width: 100% !important;
  -moz-appearance: none;
  -webkit-appearance: none;
  appearance: none;
  border-radius: 0 !important;
  padding: 0 0 0 10px;
  border: 1px solid #C0B6B3; }

#ctl00_ContentPlaceHolder1_upUpdatePanel a#ctl00_ContentPlaceHolder1_rCartList_ctl00_lbShowCouponBox {
  margin: 15px 0 0; }

#ctl00_ContentPlaceHolder1_upUpdatePanel .productList h4 {
  font-size: 14px;
  font-weight: bold;
  letter-spacing: 0.08em;
  padding: 0 0 30px; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel .productList h4 {
    font-size: 14px;
    font-weight: bold;
    letter-spacing: 0.08em;
    padding: 0 0 0px;
    /* border-bottom: 1px solid #eee; */
    margin: 80px 5.333% 0; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel .productList h4 span {
  font-size: 10px;
  display: inline-block;
  margin: 0 0 0 14px;
  font-weight: normal; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel .productList h4 span {
    display: block;
    margin: 5px 0 0 0; } }

#ctl00_ContentPlaceHolder1_upUpdatePanel .productList {
  margin: 0 0 80px; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel .productList {
    margin: 0 0 40px; } }

span.error_message {
  width: 800px;
  display: block; }

@media (max-width: 768px) {
  span.error_message {
    width: 100%;
    display: block; }
  .ttl {
    display: none; }
  .itemcart_detail {
    display: -webkit-box !important;
    display: -ms-flexbox !important;
    display: flex !important;
    -webkit-box-pack: start !important;
    -ms-flex-pack: start !important;
    justify-content: flex-start !important;
    margin: 0 0 4px !important; }
  .itemcart_detail .d_dt {
    width: 80px;
    font-size: 11px;
    font-weight: 100;
    position: relative; }
  .itemcart_detail .d_dt:before {
    content: ":";
    position: absolute;
    right: 0;
    top: 0; }
  .itemcart_detail .d_dd {
    font-size: 11px;
    font-weight: 100;
    margin: 0 0 0 7px !important; }
  p.quantity.sp_set {
    width: auto !important;
    padding: 0px 0 0 0 !important; }
  p.quantity.sp_set a {
    margin: 0 !important; }
  .itemcart_detail.amount {
    margin: 12px 0 0 !important; }
  p.delete.sp_set a {
    margin: auto !important; } }

@media (max-width: 768px) {
  .footer_logo {
    position: absolute;
    bottom: 55px;
    width: 128px !important;
    padding: 0 0 0 5vw; } }

<div class="load_wrap"></div>
<h2 class="cart1_h2">ショッピングカート</h2>

<p id="CartFlow" class="pc_contents"><img src="../../Contents/ImagesPkg/order/cart_step01.png" alt="カート内容確認 " width="781" height="58" /></p>
<p id="" class="CartFlow sp_contents"><img src="../../Contents/ImagesPkg/order/sp_flow2.png" alt="カート内容確認 " width="781"/></p>


<!-- <p id="CartFlow"><img src="../../Contents/ImagesPkg/order/cart_step01.gif" alt="お届け先情報入力" width="781" height="58" /></p> -->


<%-- エラーメッセージ（デフォルト注文方法用） --%>
<span style="color:red;text-align:center;display:block;"><asp:Literal ID="lOrderErrorMessage" runat="server"></asp:Literal></span>
	
<div id="CartList">

<div class="main clearFix" style="margin-bottom:0;">
<div class="submain">
<div class="column">
<h2><img src="../../Contents/ImagesPkg/order/sttl_user.gif" alt="注文者情報" width="80" height="16" /></h2>
<%if (this.IsEasyUser) {%>
<p style="margin:5px;padding:5px;text-align:center;background-color:#ffff80;border:1px solid #D4440D;border-color:#E5A500;color:#CC7600;">ご購入手続きに必要な会員情報が不足しています。</p>
<%} %>
<p>以下の項目をご入力ください。<br />
<%if (this.IsLoggedIn) {%>
（入力した注文者情報で会員情報が更新されます。）<br />
<%} %></p>
<span class="fred">※</span>&nbsp;は必須入力です。<br /></div><!--column-->

<%if (Constants.GIFTORDER_OPTION_ENABLED == false) { %>
<div class="columnRight">
<h2><img src="../../Contents/ImagesPkg/order/sttl_esd.gif" alt="配送先情報" width="80" height="16" /></h2>
<p>「注文者情報」で入力した住所宛にお届けする場合は、以下の「注文者情報の住所へ配送する」にチェックを入れてください。<br /><span class="fred">※</span>&nbsp;は必須入力です。</p>
</div><!--columnRight-->
<%} %>

<br class="clr" />
</div><!--submain-->
</div><!--main-->

<%-- 次へイベント用リンクボタン --%>
<% lbNext.ValidationGroup = this.IsLoggedIn ? "OrderShipping" : "OrderShippingGuest"; %>
<asp:LinkButton ID="lbNext" OnClick="lbNext_Click" ValidationGroup="OrderShipping" runat="server"></asp:LinkButton>
<%-- 戻るイベント用リンクボタン --%>
<asp:LinkButton ID="lbBack" OnClick="lbBack_Click" runat="server"></asp:LinkButton>

<%-- UPDATE PANEL開始 --%>
<asp:UpdatePanel ID="upUpdatePanel" runat="server">
<ContentTemplate>

<% this.CartItemIndexTmp = -1; %>

<div class="main" style="margin-top:0;">
<div class="submain">
<div class="btmbtn above cartstep">
	
<!-- 	<ul>
		<li><a onclick="<%= this.NextOnClick %>" href="<%= WebSanitizer.HtmlEncode(this.NextEvent) %>" class="btn btn-success"><%: (this.IsNextConfirmPage) ? "ご注文内容確認へ" : "お支払方法入力へ" %></a></li>
	</ul> -->
</div>
<asp:Repeater id="rCartList" Runat="server">

<ItemTemplate>
<%-- ▼注文者情報▼ --%>
<div id="divOwnerColumn" class="column" visible='<%# Container.ItemIndex == 0 %>' runat="server">
<%
	this.CartItemIndexTmp++;
	var ownerAddrCountryIsoCode = GetOwnerAddrCountryIsoCode(this.CartItemIndexTmp);
	var isOwnerAddrCountryJp = IsCountryJp(ownerAddrCountryIsoCode);
	var isOwnerAddrCountryUs = IsCountryUs(ownerAddrCountryIsoCode);
	var isOwnerAddrZipNecessary = IsAddrZipcodeNecessary(ownerAddrCountryIsoCode);
%>
	<h2 class="ttlA">ご注文者情報</h2>
	<div class="userBox">
	<div class="top">
	<div class="bottom uB1">
		<dl>
		<%-- 注文者：氏名 --%>
		<dt>
			<%: ReplaceTag("@@User.name.name@@", ownerAddrCountryIsoCode) %>
			&nbsp;<span class="fred">必須</span><span id="efo_sign_name"/>
		</dt>
		<dd>
		<div class="name_wrap">
			<div class="name_wrap__innnar">
				<span class="sei">姓</span><asp:TextBox placeholder="伊藤" ID="tbOwnerName1" Text="<%# this.CartList.Owner.Name1 %>" CssClass="input_widthA input_border" MaxLength='<%# GetMaxLength("@@User.name1.length_max@@") %>' runat="server"></asp:TextBox>
				</div>
			&nbsp;&nbsp;
			<div class="name_wrap__innnar">
			<span class="mei">名</span><asp:TextBox placeholder="忠太郎" ID="tbOwnerName2" Text="<%# this.CartList.Owner.Name2 %>" CssClass="input_widthA input_border" MaxLength='<%# GetMaxLength("@@User.name2.length_max@@") %>' runat="server"></asp:TextBox>
			</div>
		</div>
		<small>
		<asp:CustomValidator
			ID="cvOwnerName1"
			runat="Server"
			ControlToValidate="tbOwnerName1"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" />
		<asp:CustomValidator
			ID="cvOwnerName2"
			runat="Server"
			ControlToValidate="tbOwnerName2"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" /></small>
		</dd>
		</dl>
		<dl>
		<%-- 注文者：氏名（かな） --%>
		<% if (isOwnerAddrCountryJp) { %>
		<dt>
			<!-- <%: ReplaceTag("@@User.name_kana.name@@", ownerAddrCountryIsoCode) %> -->
			ふりがな
			&nbsp;<span class="fred">必須</span><span id="efo_sign_kana"/>
		</dt>
		<dd class="<%= ReplaceTag("@@User.name_kana.type@@") %>">
			<div class="name_wrap">
				<div class="name_wrap__innnar">
					<span class="sei_kana">せい</span><asp:TextBox placeholder="いとう" ID="tbOwnerNameKana1" Text="<%# this.CartList.Owner.NameKana1 %>" CssClass="input_widthA input_border" MaxLength='<%# GetMaxLength("@@User.name_kana1.length_max@@") %>' runat="server"></asp:TextBox>
				</div>
				&nbsp;&nbsp;
				<div class="name_wrap__innnar">
					<span class="sei_kana">めい</span><asp:TextBox placeholder="ちゅうたろう" ID="tbOwnerNameKana2" Text="<%# this.CartList.Owner.NameKana2 %>" CssClass="input_widthA input_border" MaxLength='<%# GetMaxLength("@@User.name_kana2.length_max@@") %>' runat="server"></asp:TextBox>
				</div>
			</div>
		<small>
		<asp:CustomValidator
			ID="cvOwnerNameKana1"
			runat="Server"
			ControlToValidate="tbOwnerNameKana1"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" />
		<asp:CustomValidator
			ID="cvOwnerNameKana2"
			runat="Server"
			ControlToValidate="tbOwnerNameKana2"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" /></small>
		</dd>
		</dl>
		<dl>
		<%-- 注文者：性別 --%>
		<dt>
			<%: ReplaceTag("@@User.sex.name@@", ownerAddrCountryIsoCode) %>
			&nbsp;<%if (this.IsLoggedIn) {%><span class="fred">必須</span><% } %>
		</dt>
		<dd class="input_align">
		<asp:RadioButtonList ID="rblOwnerSex" DataSource='<%# this.OrderOwnerSex %>' SelectedValue='<%# GetCorrectSexForDataBind(this.CartList.Owner.Sex) %>' DataTextField="Text" DataValueField="Value" RepeatDirection="Horizontal" CellSpacing="5" RepeatLayout="Flow" CssClass="input_radio" runat="server" />
		<small>
		<asp:CustomValidator
			ID="cvOwnerSex"
			runat="Server"
			ControlToValidate="rblOwnerSex"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			EnableClientScript="false"
			CssClass="error_inline" /></small>
		</dd>
		</dl>
		<dl class="data_birthday">
		<%} %>
		<%-- 注文者：生年月日 --%>
		<dt>
			<%: ReplaceTag("@@User.birth.name@@", ownerAddrCountryIsoCode) %>
			&nbsp;<%if (this.IsLoggedIn) {%><% } %>
      <span class="fred">必須</span><span id="efo_sign_birth"/>
		</dt>
		<dd>
		<asp:DropDownList ID="ddlOwnerBirthYear" DataSource='<%# this.OrderOwnerBirthYear %>' SelectedValue='<%# (this.CartList.Owner.Birth.HasValue ) ? this.CartList.Owner.BirthYear.ToString() : "" %>' CssClass="input_border" runat="server"></asp:DropDownList>&nbsp;&nbsp;年&nbsp;&nbsp;
		<asp:DropDownList ID="ddlOwnerBirthMonth" DataSource='<%# this.OrderOwnerBirthMonth %>' SelectedValue='<%# (this.CartList.Owner.Birth.HasValue ) ? this.CartList.Owner.Birth.Value.Month.ToString() : "" %>' CssClass="input_widthA input_border" runat="server"></asp:DropDownList>&nbsp;&nbsp;月&nbsp;&nbsp;
		<asp:DropDownList ID="ddlOwnerBirthDay" DataSource='<%# this.OrderOwnerBirthDay %>' SelectedValue='<%# (this.CartList.Owner.Birth.HasValue) ? this.CartList.Owner.Birth.Value.Day.ToString() : "" %>' CssClass="input_widthA input_border" runat="server"></asp:DropDownList>&nbsp;&nbsp;日
		<small>
		<asp:CustomValidator
			ID="cvOwnerBirth"
			runat="Server"
			ControlToValidate="ddlOwnerBirthDay"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			EnableClientScript="false"
			CssClass="error_inline" /></small>
		</dd>
		</dl>

		<dl>
		<%-- 注文者：電話番号1 --%>
		<% if (isOwnerAddrCountryJp) { %>
		<dt>
			<%: ReplaceTag("@@User.tel1.name@@", ownerAddrCountryIsoCode) %>
			&nbsp;<span class="fred">必須</span><span id="efo_sign_tel1"/>
		</dt>
		<dd>
			<div class="name_wrap">
				<asp:TextBox placeholder="012" ID="tbOwnerTel1_1" Text="<%# this.CartList.Owner.Tel1_1 %>" CssClass="input_widthA input_border" MaxLength="6" runat="server" Type="tel"></asp:TextBox>
			<span class="line_form"></span>
			<asp:TextBox placeholder="3456" ID="tbOwnerTel1_2" Text="<%# this.CartList.Owner.Tel1_2 %>" CssClass="input_widthA input_border" MaxLength="4" runat="server" Type="tel"></asp:TextBox>
			<span class="line_form"></span>
			<asp:TextBox placeholder="7890" ID="tbOwnerTel1_3" Text="<%# this.CartList.Owner.Tel1_3 %>" CssClass="input_widthA input_border" MaxLength="4" runat="server" Type="tel"></asp:TextBox>
			</div>
		<small>
		<asp:CustomValidator
			ID="cvOwnerTel1_1"
			runat="Server"
			ControlToValidate="tbOwnerTel1_1"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" />
		<asp:CustomValidator
			ID="cvOwnerTel1_2"
			runat="Server"
			ControlToValidate="tbOwnerTel1_2"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" />
		<asp:CustomValidator
			ID="cvOwnerTel1_3"
			runat="Server"
			ControlToValidate="tbOwnerTel1_3"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" /></small>
		</dd>
		</dl>
		<dl>
		<%-- 注文者：電話番号2 --%>
		<dt>
			<%: ReplaceTag("@@User.tel2.name@@", ownerAddrCountryIsoCode) %>
		</dt>
		<dd>
			<asp:TextBox ID="tbOwnerTel2_1" Text="<%# this.CartList.Owner.Tel2_1 %>" CssClass="input_widthA input_border" MaxLength="6" runat="server"></asp:TextBox>&nbsp;-
			<asp:TextBox ID="tbOwnerTel2_2" Text="<%# this.CartList.Owner.Tel2_2 %>" CssClass="input_widthA input_border" MaxLength="4" runat="server"></asp:TextBox>&nbsp;-
			<asp:TextBox ID="tbOwnerTel2_3" Text="<%# this.CartList.Owner.Tel2_3 %>" CssClass="input_widthA input_border" MaxLength="4" runat="server"></asp:TextBox>
			<small>
				<asp:CustomValidator
					ID="cvOwnerTel2_1"
					runat="Server"
					ControlToValidate="tbOwnerTel2_1"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="false"
					SetFocusOnError="true"
					ClientValidationFunction="ClientValidate"
					CssClass="error_inline" />
			<asp:CustomValidator
					ID="cvOwnerTel2_2"
					runat="Server"
					ControlToValidate="tbOwnerTel2_2"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="false"
					SetFocusOnError="true"
					ClientValidationFunction="ClientValidate"
					CssClass="error_inline" />
			<asp:CustomValidator
					ID="cvOwnerTel2_3"
					runat="Server"
					ControlToValidate="tbOwnerTel2_3"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="false"
					SetFocusOnError="true"
					ClientValidationFunction="ClientValidate"
					CssClass="error_inline" />
			</small>
		</dd>
		<% } %>
		</dl>
		<dl>
		<% if (isOwnerAddrCountryJp == false) { %>
		<%-- 注文者：電話番号1（海外向け） --%>
		<dt>
			<%: ReplaceTag("@@User.tel1.name@@", ownerAddrCountryIsoCode) %>
			&nbsp;<span class="fred">必須</span>
		</dt>
		<dd>
			<asp:TextBox ID="tbOwnerTel1Global" Text="<%# this.CartList.Owner.Tel1 %>" MaxLength="30" runat="server" Type="tel"></asp:TextBox>
			<small>
				<asp:CustomValidator
					ID="cvOwnerTel1Global"
					runat="Server"
				ControlToValidate="tbOwnerTel1Global"
				ValidationGroup="OrderShippingGlobal"
					ValidateEmptyText="true"
				SetFocusOnError="true"
				ClientValidationFunction="ClientValidate"
				CssClass="error_inline" />
			</small>
		</dd>
		</dl>
		<dl>
		<%-- 注文者：電話番号2（海外向け） --%>
		<dt>
			<%: ReplaceTag("@@User.tel2.name@@", ownerAddrCountryIsoCode) %>
		</dt>
		<dd>
			<asp:TextBox ID="tbOwnerTel2Global" Text="<%# this.CartList.Owner.Tel2 %>" MaxLength="30" runat="server" Type="tel"></asp:TextBox>
			<small>
				<asp:CustomValidator
					ID="cvOwnerTel2Global"
					runat="Server"
				ControlToValidate="tbOwnerTel2Global"
				ValidationGroup="OrderShippingGlobal"
				ValidateEmptyText="false"
				SetFocusOnError="true"
				ClientValidationFunction="ClientValidate"
				CssClass="error_inline" />
			</small>
		</dd>
		<% } %>
		</dl>

		<dl>
		<%-- 注文者：メールアドレス --%>
		<dt>
			<!-- <%: ReplaceTag("@@User.mail_addr.name@@", ownerAddrCountryIsoCode) %> -->
			メールアドレス
			&nbsp;<span class="fred">必須</span><span id="efo_sign_mail_addr"/>
		</dt>
		<dd><asp:TextBox placeholder="jamaisvu@xxx.co.jp" ID="tbOwnerMailAddr" Text="<%# this.CartList.Owner.MailAddr %>" CssClass="input_widthE input_border" MaxLength="256" runat="server" Type="email"></asp:TextBox><br />
		<small>
		<asp:CustomValidator
			ID="cvOwnerMailAddr"
			runat="Server"
			ControlToValidate="tbOwnerMailAddr"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" />
		<asp:CustomValidator
			ID="cvOwnerMailAddrForCheck"
			runat="Server"
			ControlToValidate="tbOwnerMailAddr"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			CssClass="error_inline" />
		</small>
		</dd>
		</dl>
		<dl>
		<%-- 注文者：メールアドレス（確認用） --%>
		<dt>
			メールアドレス(確認用)
			<!-- <%: ReplaceTag("@@User.mail_addr.name@@", ownerAddrCountryIsoCode) %>（確認用） -->
			&nbsp;<span class="fred">必須</span><span id="efo_sign_mail_addr_conf"/>
		</dt>
		<dd><asp:TextBox placeholder="jamaisvu@xxx.co.jp" ID="tbOwnerMailAddrConf" Text="<%# this.CartList.Owner.MailAddr %>" CssClass="input_widthE input_border" MaxLength="256" runat="server" Type="email"></asp:TextBox><br />
		<small>
		<asp:CustomValidator runat="Server"
			ID="cvOwnerMailAddrConf"
			ControlToValidate="tbOwnerMailAddrConf"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" /></small>
		</dd>
		</dl>
		<dl>
		<% if (Constants.EITHER_ENTER_MAIL_ADDRESS_ENABLED) { %>
		<%-- 注文者：モバイルメールアドレス --%>
		<dt>
			<%: ReplaceTag("@@User.mail_addr2.name@@", ownerAddrCountryIsoCode) %>
			&nbsp;<span class="fred">必須</span>
		</dt>
		<dd><asp:TextBox ID="tbOwnerMailAddr2" Text="<%# this.CartList.Owner.MailAddr2 %>" CssClass="input_widthE input_border" MaxLength="256" runat="server" Type="email"></asp:TextBox><br />
		<small>
		<asp:CustomValidator runat="Server"
			ID="cvOwnerMailAddr2"
			ControlToValidate="tbOwnerMailAddr2"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" /></small>
		</dd>
		</dl>
		<dl>
		<%-- 注文者：モバイルメールアドレス（確認用） --%>
		<dt>
			<%: ReplaceTag("@@User.mail_addr2.name@@", ownerAddrCountryIsoCode) %>（確認用）
			&nbsp;<span class="fred">必須</span>
		</dt>
		<dd><asp:TextBox ID="tbOwnerMailAddr2Conf" Text="<%# this.CartList.Owner.MailAddr2 %>" CssClass="input_widthE input_border" MaxLength="256" runat="server" Type="email"></asp:TextBox><br />
		<small>
		<asp:CustomValidator runat="Server"
			ID="cvOwnerMailAddr2Conf"
			ControlToValidate="tbOwnerMailAddr2Conf"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" /></small>
		</dd>
		<% } %>
		</dl>
		<dl>
		<% if (Constants.GLOBAL_OPTION_ENABLE) { %>

		<%-- 注文者：国 --%>
		<dt>
			<%: ReplaceTag("@@User.country.name@@", ownerAddrCountryIsoCode) %>
			&nbsp;<span class="fred">必須</span>
		</dt>
		<dd>
			<asp:DropDownList id="ddlOwnerCountry" runat="server" AutoPostBack="true" SelectedValue="<%# this.CartList.Owner.AddrCountryIsoCode %>" DataSource="<%# this.UserCountryDisplayList %>" DataTextField="Text" DataValueField="Value" OnSelectedIndexChanged="ddlOwnerCountry_SelectedIndexChanged"/><br/>
			<span id="countryAlertMessage" class="notes" runat="server" Visible='false'>※Amazonログイン連携では国はJapan以外選択できません。</span>
		</dd>
		<% } %>
		</dl>
		<dl>
		<%-- 注文者：郵便番号 --%>
		<% if (isOwnerAddrCountryJp) {%>
		<dt>
			<%: ReplaceTag("@@User.zip.name@@", ownerAddrCountryIsoCode) %>
			&nbsp;<span class="fred">必須</span><span id="efo_sign_zip"/>
		</dt>
		<dd>
		<p class="pdg_topC">
		<asp:TextBox placeholder="012" ID="tbOwnerZip1" Text="<%# this.CartList.Owner.Zip1 %>" CssClass="input_widthA input_border" MaxLength="3" runat="server" Type="tel"></asp:TextBox><span class="line_form"></span><asp:TextBox placeholder="3456" ID="tbOwnerZip2" Text="<%# this.CartList.Owner.Zip2 %>" CssClass="input_widthA input_border" MaxLength="4" runat="server" Type="tel"  OnTextChanged="lbSearchOwnergAddr_Click"></asp:TextBox></p>
		<span class="btn_add_sea"><asp:LinkButton ID="lbSearchOwnergAddr" runat="server" onclick="lbSearchOwnergAddr_Click" class="btn btn-mini" OnClientClick="return false;">住所検索</asp:LinkButton></span>
		<%--検索結果レイヤー--%>
		<uc:Layer ID="ucLayerForOwner" runat="server" />
		<p class="clr">
		<small class="fred">
		<asp:CustomValidator
			ID="cvOwnerZip1"
			runat="Server"
			ControlToValidate="tbOwnerZip1"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" />
		<asp:CustomValidator
			ID="cvOwnerZip2"
			runat="Server"
			ControlToValidate="tbOwnerZip2"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" /></small>
		<small id="sOwnerZipError" runat="server" class="fred"></small>
		</p></dd>
		</dl>
		<dl>
		<%-- 注文者：都道府県 --%>
		<dt>
			<%: ReplaceTag("@@User.addr1.name@@", ownerAddrCountryIsoCode) %>
			&nbsp;<span class="fred">必須</span><span id="efo_sign_addr1"/>
		</dt>
		<dd><asp:DropDownList placeholder="港区" ID="ddlOwnerAddr1" DataSource="<%# this.Addr1List %>" DataTextField="Text" DataValueField="Value" SelectedValue="<%# this.CartList.Owner.Addr1 %>" runat="server"></asp:DropDownList>
		<small>
		<asp:CustomValidator
			ID="cvOwnerAddr1"
			runat="Server"
			ControlToValidate="ddlOwnerAddr1"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" /></small>
		</dd>
		<% } %>
		</dl>
		<dl>
		<%-- 注文者：市区町村 --%>
		<dt>
			住所（市区町村）
			<!-- <%: ReplaceTag("@@User.addr2.name@@", ownerAddrCountryIsoCode) %> -->
			&nbsp;<span class="fred">必須</span><% if (isOwnerAddrCountryJp) { %><span id="efo_sign_addr2"/><% } %>
		</dt>
		<dd><asp:TextBox placeholder="六本木7-3-16" ID="tbOwnerAddr2" Text="<%# this.CartList.Owner.Addr2 %>" CssClass="input_widthD input_border" MaxLength='<%# GetMaxLength("@@User.addr2.length_max@@") %>' runat="server"></asp:TextBox><br />
		<small>
		<asp:CustomValidator
			ID="cvOwnerAddr2"
			runat="Server"
			ControlToValidate="tbOwnerAddr2"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" /></small>
		</dd>
		</dl>
		<dl>
		<%-- 注文者：番地 --%>
		<dt>
			住所（番地以降）
			<!-- <%: ReplaceTag("@@User.addr3.name@@", ownerAddrCountryIsoCode) %> -->
			<% if (isOwnerAddrCountryJp) { %>&nbsp;<span class="fred">必須</span><span id="efo_sign_addr3"/><% } %>
		</dt>
		<dd><asp:TextBox placeholder="六本木インターナショナルアネックスビル4F" ID="tbOwnerAddr3" Text="<%# this.CartList.Owner.Addr3 %>" CssClass="input_widthD input_border" MaxLength='<%# GetMaxLength("@@User.addr3.length_max@@") %>' runat="server"></asp:TextBox><br />
		<small>
		<asp:CustomValidator
			ID="cvOwnerAddr3"
			runat="Server"
			ControlToValidate="tbOwnerAddr3"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" /></small>
		</dd>
		</dl>
		<dl>
		<%-- 注文者：ビル・マンション名 --%>
		<dt>
			住所（建物名）
			<!-- <%: ReplaceTag("@@User.addr4.name@@", ownerAddrCountryIsoCode) %> -->
			<% if (isOwnerAddrCountryJp == false) { %><span class="fred">*</span><% } %>
		</dt>
		<dd><asp:TextBox ID="tbOwnerAddr4" Text="<%# this.CartList.Owner.Addr4 %>" CssClass="input_widthD input_border" MaxLength='<%# GetMaxLength("@@User.addr4.length_max@@") %>' runat="server"></asp:TextBox><br />
		<small>
		<asp:CustomValidator
			ID="cvOwnerAddr4"
			runat="Server"
			ControlToValidate="tbOwnerAddr4"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" /></small>
		</dd>
		</dl>
		<dl>
		<%-- 注文者：州  --%>
		<% if (isOwnerAddrCountryJp == false) { %>
		<dt>
			<%: ReplaceTag("@@User.addr5.name@@", ownerAddrCountryIsoCode) %>
			<% if (isOwnerAddrCountryUs) { %>&nbsp;<span class="fred">*</span><% } %>
		</dt>
		<dd>
			<% if (isOwnerAddrCountryUs) { %>
			<asp:DropDownList runat="server" ID="ddlOwnerAddr5" DataSource="<%# this.UserStateList %>"></asp:DropDownList>
			<% } else { %>
			<asp:TextBox runat="server" ID="tbOwnerAddr5" Text="<%# this.CartList.Owner.Addr5 %>" ></asp:TextBox>
			<asp:CustomValidator
				ID="cvOwnerAddr5"
				runat="Server"
				ControlToValidate="tbOwnerAddr5"
				ValidationGroup="OrderShippingGlobal"
				ValidateEmptyText="true"
				SetFocusOnError="true"
				ClientValidationFunction="ClientValidate"
				CssClass="error_inline" />
			<% } %>
		</dd>
		</dl>
		<dl>
		<%-- 注文者：郵便番号（海外向け） --%>
		<dt>
			<%: ReplaceTag("@@User.zip.name@@", ownerAddrCountryIsoCode) %>
			<% if (isOwnerAddrZipNecessary) { %>&nbsp;<span class="fred">必須</span><% } %>
		</dt>
		<dd>
			<asp:TextBox ID="tbOwnerZipGlobal" Text="<%# this.CartList.Owner.Zip %>" MaxLength="30" runat="server" Type="tel"></asp:TextBox>
			<asp:CustomValidator
				ID="cvOwnerZipGlobal"
				runat="Server"
					ControlToValidate="tbOwnerZipGlobal"
					ValidationGroup="OrderShippingGlobal"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					ClientValidationFunction="ClientValidate"
					CssClass="error_inline" />
		</dd>
		<% } %>
		</dl>
		<dl>
		<% if (Constants.DISPLAY_CORPORATION_ENABLED){ %><%} %>
		<%-- 注文者：企業名 --%>
		<dt>
			<%: ReplaceTag("@@User.company_name.name@@") %>
			&nbsp;<!-- <span class="fred"></span> -->
		</dt>
		<dd><asp:TextBox ID="tbOwnerCompanyName" Text="<%# this.CartList.Owner.CompanyName %>" CssClass="input_widthD input_border" MaxLength='<%# GetMaxLength("@@User.company_name.length_max@@") %>' runat="server"></asp:TextBox><br />
		<small>
		<asp:CustomValidator
			ID="cvOwnerCompanyName"
			runat="Server"
			ControlToValidate="tbOwnerCompanyName"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" /></small>
		</dd>
		</dl>
		<dl>
		<%-- 注文者：部署名 --%>
		<dt>
			<%: ReplaceTag("@@User.company_post_name.name@@") %>
			&nbsp;<!-- <span class="fred"></span> -->
		</dt>
		<dd><asp:TextBox ID="tbOwnerCompanyPostName" Text="<%# this.CartList.Owner.CompanyPostName %>" CssClass="input_widthD input_border" MaxLength='<%# GetMaxLength("@@User.company_post_name.length_max@@") %>' runat="server"></asp:TextBox><br />
		<small>
		<asp:CustomValidator
			ID="cvOwnerCompanyPostName"
			runat="Server"
			ControlToValidate="tbOwnerCompanyPostName"
			ValidationGroup="OrderShipping"
			ValidateEmptyText="true"
			SetFocusOnError="true"
			ClientValidationFunction="ClientValidate"
			CssClass="error_inline" /></small>
		</dd>
		
		</dl>

		<dl>
		<dt>
			<!-- <%: ReplaceTag("@@User.mail_flg.name@@") %> -->
      ニュースレター配信
		</dt>
		<dd><asp:CheckBox ID="cbOwnerMailFlg" Checked="<%# this.CartList.Owner.MailFlg %>" Text="希望する" CssClass="checkBox" runat="server" /></dd>
		</dl>
	</div><!--bottom-->
	</div><!--top-->
	</div><!--userBox-->
<% this.CartItemIndexTmp = -1; %>
</div><!--column-->
<%-- ▲注文者情報▲ --%>

<%-- ▼配送先情報▼ --%>
<%if (Constants.GIFTORDER_OPTION_ENABLED == false) { %>
<div class="columnRight" visible='<%# Container.ItemIndex == 0 %>'>

    <h2 class="ttlA" visible='<%# ((CartObject)Container.DataItem).ShippingType == "100" %>' runat="server">【通常商品】お届け先情報</h2>
    <h2 class="ttlA" visible='<%# ((CartObject)Container.DataItem).ShippingType == "1001" %>' runat="server">【予約商品】お届け先情報</h2>
  
  

	<div class="orderBox">
	<!-- <h3>
		<div class="cartNo">カート番号<%# Container.ItemIndex + 1 %><%# WebSanitizer.HtmlEncode(DispCartDecolationString(Container.DataItem, "（ギフト）", "（デジタルコンテンツ）"))%></div>
		<div class="cartLink"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_CART_LIST) %>">カートへ戻る</a></div>
	</h3> -->
	<div class="bottom">
	<%
		this.CartItemIndexTmp++;
	%>
	<div class="userProduct">
		<asp:Repeater id="rCart" DataSource="<%# ((CartObject)Container.DataItem).Items %>" Runat="server">
		<ItemTemplate>
			<div class="<%# (((IList)((Repeater)Container.Parent).DataSource).Count == Container.ItemIndex + 1) ? "last" : "" %>">
			<dl>
			<dt>
				<a href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
					<w2c:ProductImage ProductMaster="<%# Container.DataItem %>" ImageSize="S" runat="server" /></a>
				<w2c:ProductImage ProductMaster="<%# Container.DataItem %>" ImageSize="S" runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false %>" />
			</dt>
			<dd>
				<strong>
					<a href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
						<%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) %></a>
					<%# (((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false) ? WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) : "" %>
				</strong>
				<%# (((CartProduct)Container.DataItem).GetProductTag("tag_cart_product_message").Length != 0) ? "<small>" + WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).GetProductTag("tag_cart_product_message")) + "</small>" : "" %>
			<p id="P1" visible='<%# ((CartProduct)Container.DataItem).ProductOptionSettingList.IsSelectedProductOptionValueAll %>' runat="server">
				<b>
				<asp:Repeater ID="rProductOptionSettings" DataSource='<%# ((CartProduct)Container.DataItem).ProductOptionSettingList %>' runat="server">
					<ItemTemplate>
						<%# WebSanitizer.HtmlEncode(((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue()) %>
						<%# (((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue() != "") ? "<br />" : "" %>
					</ItemTemplate>
				</asp:Repeater>
				</b>
			</p>
			</dl>
			<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
			</div>
		</ItemTemplate>
		</asp:Repeater>
	</div><!--userProduct-->

	<asp:HiddenField id="hcShowShippingInputForm" value="<%# CanInputShippingTo(Container.ItemIndex) %>" runat="server" />

	<div id="divShipToCart1Address" class="userList" Visible="<%# CanInputShippingTo(Container.ItemIndex) && (Container.ItemIndex != 0) %>" runat="server">
		<asp:CheckBox id="cbShipToCart1Address" Text="カート１の配送先へ配送する" OnCheckedChanged="cbShipToCart1Address_OnCheckedChanged" AutoPostBack="true" Checked="<%# ((CartObject)Container.DataItem).Shippings[0].IsSameShippingAsCart1 %>" CssClass="checkBox" runat="server" />
	</div>

	<div id="divShippingInputForm" class="userList uL2" runat="server">
		<asp:DropDownList ID="ddlShippingKbnList" DataSource="<%# this.UserShippingList %>" DataTextField="text" DataValueField="value" SelectedValue="<%# ((CartObject)Container.DataItem).Shippings[0].ShippingAddrKbn %>" OnSelectedIndexChanged="ddlShippingKbnList_OnSelectedIndexChanged" AutoPostBack="true" runat="server"></asp:DropDownList><br />
		<span style="color:red;display:block;"><asp:Literal ID="lShippingCountryErrorMessage" runat="server"></asp:Literal></span>

		<%-- ▽配送先表示▽ --%>
		<div id="divShippingDisp" visible="<%# GetShipToOwner(((CartObject)Container.DataItem).Shippings[0]) %>" runat="server">
			<%
				var shippingAddrCountryIsoCode = GetShippingAddrCountryIsoCode(this.CartItemIndexTmp);
				var isShippingAddrCountryJp = IsCountryJp(shippingAddrCountryIsoCode);
				var isShippingAddrCountryUs = IsCountryUs(shippingAddrCountryIsoCode);
				var isShippingAddrZipNecessary = IsAddrZipcodeNecessary(shippingAddrCountryIsoCode);
			%>
			<dl>
				<%-- 配送先：氏名 --%>
				<dt>
					<%: ReplaceTag("@@User.name.name@@", shippingAddrCountryIsoCode) %>
				</dt>
				<dd>
				<asp:Literal ID="lShippingName1" runat="server"></asp:Literal><asp:Literal ID="lShippingName2" runat="server"></asp:Literal>&nbsp;様
				<%if (isShippingAddrCountryJp) {%>（<asp:Literal ID="lShippingNameKana1" runat="server"></asp:Literal><asp:Literal ID="lShippingNameKana2" runat="server"></asp:Literal>&nbsp;さま）<%} %>
					<br />
				</dd>
        </dl>
        <dl>
				<%-- 配送先：住所 --%>
				<dt>
					<%: ReplaceTag("@@User.addr.name@@") %>
				</dt>
				<dd>
				<%if (isShippingAddrCountryJp) {%><asp:Literal ID="lShippingZip" runat="server"></asp:Literal><br /><%} %>
				<asp:Literal ID="lShippingAddr1" runat="server"></asp:Literal> <asp:Literal ID="lShippingAddr2" runat="server"></asp:Literal><br />
				<asp:Literal ID="lShippingAddr3" runat="server"></asp:Literal> <asp:Literal ID="lShippingAddr4" runat="server"></asp:Literal><br />
				<asp:Literal ID="lShippingAddr5" runat="server"></asp:Literal> <asp:Literal ID="lShippingZipGlobal" runat="server"></asp:Literal> <asp:Literal ID="lShippingCountryName" runat="server"></asp:Literal>
				</dd>
        </dl>
        <dl>
				<% if (Constants.DISPLAY_CORPORATION_ENABLED){ %>
				<%-- 配送先：企業名・部署名 --%>
				<dt><%: ReplaceTag("@@User.company_name.name@@") %>・<%: ReplaceTag("@@User.company_post_name.name@@")%></dt>
				<dd>
				<asp:Literal ID="lShippingCompanyName" runat="server"></asp:Literal>&nbsp<asp:Literal ID="lShippingCompanyPostName" runat="server"></asp:Literal>
				</dd>
				<%} %>
        </dl>
        <dl>
				<%-- 配送先：電話番号 --%>
				<dt><%: ReplaceTag("@@User.tel1.name@@", shippingAddrCountryIsoCode) %></dt>
				<dd>
				<asp:Literal ID="lShippingTel1" runat="server"></asp:Literal>
				</dd>
			</dl>
		</div>
		<%-- △配送先表示△ --%>

		<%-- ▽入力フォーム▽ --%>
		<div id="divShippingInputFormInner" visible="<%# GetShipToOwner(((CartObject)Container.DataItem).Shippings[0]) == false %>" runat="server">
			<%
				var shippingAddrCountryIsoCode = GetShippingAddrCountryIsoCode(this.CartItemIndexTmp);
				var isShippingAddrCountryJp = IsCountryJp(shippingAddrCountryIsoCode);
				var isShippingAddrCountryUs = IsCountryUs(shippingAddrCountryIsoCode);
				var isShippingAddrZipNecessary = IsAddrZipcodeNecessary(shippingAddrCountryIsoCode);
			%>
			<dl>
				<%-- 配送先：氏名 --%>
				<dt>
					<%: ReplaceTag("@@User.name.name@@", shippingAddrCountryIsoCode) %>
					&nbsp;<span class="fred">必須</span><span id="<%# "efo_sign_ship_name" + Container.ItemIndex %>"/>
				</dt>
				<dd>
				<div class="name_wrap">
					<div class="name_wrap__innnar">
						<span class="sei">姓</span><asp:TextBox placeholder="伊藤" ID="tbShippingName1" Text="<%# GetShippingValue((CartObject)Container.DataItem, Constants.FIELD_ORDERSHIPPING_SHIPPING_NAME1) %>" CssClass="input_widthA input_border" MaxLength='<%# GetMaxLength("@@User.name1.length_max@@") %>' runat="server"></asp:TextBox>
					</div>
					&nbsp;&nbsp;
					<div class="name_wrap__innnar">
						<span class="mei">名</span><asp:TextBox placeholder="忠太郎" ID="tbShippingName2" Text="<%# GetShippingValue((CartObject)Container.DataItem, Constants.FIELD_ORDERSHIPPING_SHIPPING_NAME2) %>" CssClass="input_widthA input_border" MaxLength='<%# GetMaxLength("@@User.name2.length_max@@") %>' runat="server"></asp:TextBox>
					</div>
				</div>
				<small>
				<asp:CustomValidator
					ID="cvShippingName1"
					runat="Server"
					ControlToValidate="tbShippingName1"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					ClientValidationFunction="ClientValidate"
					CssClass="error_inline" />
				<asp:CustomValidator
					ID="cvShippingName2"
					runat="Server"
					ControlToValidate="tbShippingName2"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					ClientValidationFunction="ClientValidate"
					CssClass="error_inline" /></small>
				</dd>
			</dl>
			<dl>
				<%-- 配送先：氏名（かな） --%>
				<% if (isShippingAddrCountryJp) { %>
				<dt>
					ふりがな
					<!-- <%: ReplaceTag("@@User.name_kana.name@@", shippingAddrCountryIsoCode) %> -->
					&nbsp;<span class="fred">必須</span><span id="<%# "efo_sign_ship_kana" + Container.ItemIndex %>"/>
				</dt>
				<dd>
				<div class="name_wrap">	
					<div class="name_wrap__innnar">
						<span class="sei_kana">せい</span><asp:TextBox placeholder="いとう" ID="tbShippingNameKana1"  Text="<%# GetShippingValue((CartObject)Container.DataItem, Constants.FIELD_ORDERSHIPPING_SHIPPING_NAME_KANA1) %>" CssClass="input_widthA input_border" MaxLength='<%# GetMaxLength("@@User.name_kana1.length_max@@") %>' runat="server"></asp:TextBox>
					</div>
					&nbsp;&nbsp;
					<div class="name_wrap__innnar">
						<span class="sei_kana">めい</span><asp:TextBox placeholder="ちゅうたろう" ID="tbShippingNameKana2"  Text="<%# GetShippingValue((CartObject)Container.DataItem, Constants.FIELD_ORDERSHIPPING_SHIPPING_NAME_KANA2) %>" CssClass="input_widthA input_border" MaxLength='<%# GetMaxLength("@@User.name_kana2.length_max@@") %>' runat="server"></asp:TextBox>
					</div>
				</div>
				<small>
				<asp:CustomValidator
					ID="cvShippingNameKana1"
					runat="Server"
					ControlToValidate="tbShippingNameKana1"
					ClientValidationFunction="ClientValidate"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					ValidationGroup="OrderShipping"
					CssClass="error_inline" />
				<asp:CustomValidator
					ID="cvShippingNameKana2"
					runat="Server"
					ControlToValidate="tbShippingNameKana2"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					ClientValidationFunction="ClientValidate"
					CssClass="error_inline" /></small>
				</dd>
				<% } %>
				</dl>
				<dl class="phone_area">
				<%-- 配送先：電話番号 --%>
				<% if (isShippingAddrCountryJp) { %>
				<dt>
					<%: ReplaceTag("@@User.tel1.name@@", shippingAddrCountryIsoCode) %>
					&nbsp;<span class="fred">必須</span><span id="<%# "efo_sign_ship_tel1" + Container.ItemIndex %>"/>
				</dt>
				<dd>
				<div class="name_wrap">
					<asp:TextBox placeholder="012" ID="tbShippingTel1_1" Text="<%# GetShippingValue((CartObject)Container.DataItem, CartShipping.FIELD_ORDERSHIPPING_SHIPPING_TEL1_1) %>" CssClass="input_widthA input_border" MaxLength="6" runat="server" Type="tel"></asp:TextBox>
					<span class="line_form"></span>
					<asp:TextBox placeholder="3456" ID="tbShippingTel1_2" Text="<%# GetShippingValue((CartObject)Container.DataItem, CartShipping.FIELD_ORDERSHIPPING_SHIPPING_TEL1_2) %>" CssClass="input_widthA input_border" MaxLength="4" runat="server" Type="tel"></asp:TextBox>
					<span class="line_form"></span>
					<asp:TextBox placeholder="7890" ID="tbShippingTel1_3" Text="<%# GetShippingValue((CartObject)Container.DataItem, CartShipping.FIELD_ORDERSHIPPING_SHIPPING_TEL1_3) %>" CssClass="input_widthA input_border" MaxLength="4" runat="server" Type="tel"></asp:TextBox>
				</div>
				<small>
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
					CssClass="error_inline" /></small>
				</dd>
				<% } else { %>
				<%-- 配送先：電話番号1（海外向け） --%>
				<dt>
					<%: ReplaceTag("@@User.tel1.name@@", shippingAddrCountryIsoCode) %>
					&nbsp;<span class="fred">必須</span>
				</dt>
				<dd>
					<asp:TextBox ID="tbShippingTel1Global" Text="<%# GetShippingValue((CartObject)Container.DataItem, Constants.FIELD_ORDERSHIPPING_SHIPPING_TEL1) %>" MaxLength="30" runat="server" Type="tel"></asp:TextBox>
					<small>
					<asp:CustomValidator
						ID="cvShippingTel1Global"
						runat="Server"
						ControlToValidate="tbShippingTel1Global"
						ValidationGroup="OrderShippingGlobal"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" /></small>
				</dd>
				<% } %>
				
			</dl>
				<dl>
				<%-- 配送先：国  --%>
				<% if (Constants.GLOBAL_OPTION_ENABLE) { %>
				<dt>
					<%: ReplaceTag("@@User.country.name@@", shippingAddrCountryIsoCode) %>
				</dt>
				<dd>
					<asp:DropDownList id="ddlShippingCountry" runat="server" AutoPostBack="true" DataSource="<%# this.ShippingAvailableCountryDisplayList %>" DataTextField="Text" DataValueField="Value" OnSelectedIndexChanged="ddlShippingCountry_SelectedIndexChanged"></asp:DropDownList>
				</dd>
				<% } %>
				</dl>
				<dl>
				<%-- 配送先：郵便番号 --%>
				<% if (isShippingAddrCountryJp) { %>
				<dt>
					<%: ReplaceTag("@@User.zip.name@@", shippingAddrCountryIsoCode) %>
					&nbsp;<span class="fred">必須</span><span id="<%# "efo_sign_ship_zip" + Container.ItemIndex %>"/>
				</dt>
				<dd>
				<p class="pdg_topC">
				<asp:TextBox placeholder="012" ID="tbShippingZip1" Text="<%# GetShippingValue((CartObject)Container.DataItem, CartShipping.FIELD_ORDERSHIPPING_SHIPPING_ZIP_1) %>" CssClass="input_widthA input_border" MaxLength="3" runat="server" Type="tel"></asp:TextBox><span class="line_form"></span><asp:TextBox placeholder="3456" ID="tbShippingZip2" Text="<%# GetShippingValue((CartObject)Container.DataItem, CartShipping.FIELD_ORDERSHIPPING_SHIPPING_ZIP_2) %>" CssClass="input_widthA input_border" MaxLength="4" runat="server" Type="tel" OnTextChanged="lbSearchShippingAddr_Click"></asp:TextBox></p>
				<span class="btn_add_sea"><asp:LinkButton ID="lbSearchShippingAddr" runat="server" OnClick="lbSearchShippingAddr_Click" class="btn btn-mini" OnClientClick="return false;">住所検索</asp:LinkButton></span>
				<p class="clr">
				<small class="fred">
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
					CssClass="error_inline" /></small>
				<small id="sShippingZipError" runat="server" class="fred"></small>
				</p></dd>
				<% } %>
				</dl>
				<dl>
				<% if (isShippingAddrCountryJp) { %>
				<%-- 配送先：都道府県 --%>
				<dt>
					<%: ReplaceTag("@@User.addr1.name@@", shippingAddrCountryIsoCode) %>
					&nbsp;<span class="fred">必須</span><span id="<%# "efo_sign_ship_addr1" + Container.ItemIndex %>"/>
				</dt>
				<dd><asp:DropDownList placeholder="六本木" ID="ddlShippingAddr1" DataSource="<%# this.Addr1List %>" DataTextField="Text" DataValueField="Value" SelectedValue="<%# GetShippingValue((CartObject)Container.DataItem, Constants.FIELD_USERSHIPPING_SHIPPING_ADDR1) %>" runat="server"></asp:DropDownList>
				<small>
				<asp:CustomValidator
					ID="cvShippingAddr1"
					runat="Server"
					ControlToValidate="ddlShippingAddr1"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					ClientValidationFunction="ClientValidate"
					CssClass="error_inline" /></small>
				</dd>
				<% } %>
				</dl>
				<dl>
				<%-- 配送先：市区町村 --%>
				<dt>
					住所（市区町村）
					<!-- <%: ReplaceTag("@@User.addr2.name@@", shippingAddrCountryIsoCode) %> -->
					&nbsp;<span class="fred">必須</span><% if (isShippingAddrCountryJp) { %><span id="<%# "efo_sign_ship_addr2" + Container.ItemIndex %>"/><% } %>
				</dt>
				<dd><asp:TextBox placeholder="六本木7-3-16" ID="tbShippingAddr2" Text="<%# GetShippingValue((CartObject)Container.DataItem, Constants.FIELD_USERSHIPPING_SHIPPING_ADDR2) %>" CssClass="input_widthD input_border" MaxLength='<%# GetMaxLength("@@User.addr2.length_max@@") %>' runat="server"></asp:TextBox><br />
				<small>
				<asp:CustomValidator
					ID="cvShippingAddr2"
					runat="Server"
					ControlToValidate="tbShippingAddr2"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					ClientValidationFunction="ClientValidate"
					CssClass="error_inline" /></small>
				</dd>
				</dl>
				<dl>
				<%-- 配送先：番地 --%>
				<dt>
					住所（番地以降）
					<!-- <%: ReplaceTag("@@User.addr3.name@@", shippingAddrCountryIsoCode) %> -->
					<% if (isShippingAddrCountryJp) { %>&nbsp;<span class="fred">必須</span><span id="<%# "efo_sign_ship_addr3" + Container.ItemIndex %>"/><% } %>
				</dt>
				<dd><asp:TextBox placeholder="六本木インターナショナルアネックスビル4F" ID="tbShippingAddr3" Text="<%# GetShippingValue((CartObject)Container.DataItem, Constants.FIELD_USERSHIPPING_SHIPPING_ADDR3) %>" CssClass="input_widthD input_border" MaxLength='<%# GetMaxLength("@@User.addr3.length_max@@") %>' runat="server"></asp:TextBox><br />
				<small>
				<asp:CustomValidator
					ID="cvShippingAddr3"
					runat="Server"
					ControlToValidate="tbShippingAddr3"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					ClientValidationFunction="ClientValidate"
					CssClass="error_inline" /></small>
				</dd>
				</dl>
				<dl>
				<%-- 配送先：ビル・マンション名 --%>
				<dt>
					住所（建物名）
					<!-- <%: ReplaceTag("@@User.addr4.name@@", shippingAddrCountryIsoCode) %> -->
					<% if (isShippingAddrCountryJp == false) { %>&nbsp;<span class="fred">必須</span><% } %>
				</dt>
				<dd><asp:TextBox ID="tbShippingAddr4" Text="<%# GetShippingValue((CartObject)Container.DataItem, Constants.FIELD_USERSHIPPING_SHIPPING_ADDR4) %>" CssClass="input_widthD input_border" MaxLength='<%# GetMaxLength("@@User.addr4.length_max@@") %>' runat="server"></asp:TextBox><br />
				<small>
				<asp:CustomValidator
					ID="cvShippingAddr4"
					runat="Server"
					ControlToValidate="tbShippingAddr4"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					ClientValidationFunction="ClientValidate"
					CssClass="error_inline" /></small>
				</dd>
				</dl>
				<dl>
				<%-- 配送先：州 --%>
				<% if (isShippingAddrCountryJp == false) { %>
				<dt>
					<%: ReplaceTag("@@User.addr5.name@@", shippingAddrCountryIsoCode) %>
					<% if (isShippingAddrCountryUs) { %>&nbsp;<span class="fred">必須</span><% } %>
				</dt>
				<dd>
					<% if (isShippingAddrCountryUs) { %>
					<asp:DropDownList ID="ddlShippingAddr5" DataSource="<%# this.UserStateList %>" DataTextField="Text" DataValueField="Value" runat="server"></asp:DropDownList>
					<% } else { %>
					<asp:TextBox ID="tbShippingAddr5" Text="<%# GetShippingValue((CartObject)Container.DataItem, Constants.FIELD_USERSHIPPING_SHIPPING_ADDR5) %>" CssClass="input_widthD input_border" MaxLength='<%# GetMaxLength("@@User.addr4.length_max@@") %>' runat="server"></asp:TextBox>
					<small>
					<asp:CustomValidator
						ID="cvShippingAddr5"
						runat="Server"
						ControlToValidate="tbShippingAddr5"
						ValidationGroup="OrderShippingGlobal"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					</small>
					<% } %>
				</dd>
				<% } %>
				</dl>
				<dl>
				<%-- 配送先：郵便番号（海外向け） --%>
				<% if (isShippingAddrCountryJp == false) { %>
				<dt>
					<%: ReplaceTag("@@User.zip.name@@", shippingAddrCountryIsoCode) %>
					<% if (isShippingAddrZipNecessary) { %>&nbsp;<span class="fred">必須</span><% } %>
				</dt>
				<dd>
					<asp:TextBox ID="tbShippingZipGlobal" Text="<%# GetShippingValue((CartObject)Container.DataItem, Constants.FIELD_ORDERSHIPPING_SHIPPING_ZIP) %>" MaxLength="30" runat="server" Type="tel"></asp:TextBox>
					<small>
					<asp:CustomValidator
						ID="cvShippingZipGlobal"
						runat="Server"
						ControlToValidate="tbShippingZipGlobal"
						ValidationGroup="OrderShippingGlobal"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" /></small>
				</dd>
				<% } %>
				</dl>
				<dl>
				<% if (Constants.DISPLAY_CORPORATION_ENABLED){ %>
				<%-- 配送先：企業名 --%>
				<dt>
					<%: ReplaceTag("@@User.company_name.name@@")%>
					&nbsp;<!-- <span class="fred"></span> -->
				</dt>
				<dd><asp:TextBox ID="tbShippingCompanyName" Text="<%# GetShippingValue((CartObject)Container.DataItem, Constants.FIELD_USERSHIPPING_SHIPPING_COMPANY_NAME) %>" CssClass="input_widthD input_border" MaxLength='<%# GetMaxLength("@@User.company_name.length_max@@") %>' runat="server"></asp:TextBox><br />
				<small>
				<asp:CustomValidator
					ID="cvShippingCompanyName"
					runat="Server"
					ControlToValidate="tbShippingCompanyName"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					ClientValidationFunction="ClientValidate"
					CssClass="error_inline" /></small>
				</dd>
				</dl>
				<dl>
				<%-- 配送先：部署名 --%>
				<dt>
					<%: ReplaceTag("@@User.company_post_name.name@@")%>
					&nbsp;<!-- <span class="fred"></span> -->
				</dt>
				<dd><asp:TextBox ID="tbShippingCompanyPostName" Text="<%# GetShippingValue((CartObject)Container.DataItem, Constants.FIELD_USERSHIPPING_SHIPPING_COMPANY_POST_NAME) %>" CssClass="input_widthD input_border" MaxLength='<%# GetMaxLength("@@User.company_post_name.length_max@@") %>' runat="server"></asp:TextBox><br />
				<small>
				<asp:CustomValidator runat="Server"
					ControlToValidate="tbShippingCompanyPostName"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					ClientValidationFunction="ClientValidate"
					CssClass="error_inline" /></small>
				</dd>
				<%} %>
				</dl>


			<div id="Div1" class="subbox" visible="<%# this.IsLoggedIn %>" runat="server">
				<p>
				<%-- ポストバックCustomValidatorの状態がクリアされてしまうため、JaavScirptで表示非表示を制御する --%>
				<asp:RadioButtonList ID="rblSaveToUserShipping" OnSelectedIndexChanged="rblSaveToUserShipping_OnSelectedIndexChanged" AutoPostBack="true" SelectedValue='<%# ((CartObject)Container.DataItem).Shippings[0].UserShippingRegistFlg ? "1" : "0" %>' RepeatLayout="Flow" CssClass="radioBtn" runat="server">
        <asp:ListItem Text="この住所を配送先リストに登録しない" Value="0"></asp:ListItem>
				<asp:ListItem Text="この住所を配送先リストに登録する" Value="1"></asp:ListItem>
				</asp:RadioButtonList>
				</p>
				<!-- <img src="../../Contents/ImagesPkg/common/btm_sub_boxA.gif" alt="bottom" width="298" height="4" /> -->
			</div>

			<!--subbox-->
			<dl id="dlUserShippingName" visible="false" runat="server">
					<!-- <dt><span>配送先を保存する場合は、以下をご入力ください。</span></dt> -->
					<dt>お届け先名称&nbsp;<span class="fred">必須</span><span id="<%# "efo_sign_ship_addr_name" + Container.ItemIndex %>"/></dt>
					<dd class="last"><asp:TextBox placeholder="例：勤務先" ID="tbUserShippingName" Text="<%# ((CartObject)Container.DataItem).Shippings[0].UserShippingName %>" MaxLength="30" CssClass="input_widthD input_border" runat="server"></asp:TextBox><br />
					<asp:CustomValidator
						ID="cvUserShippingName"
						runat="Server"
						ControlToValidate="tbUserShippingName"
						ValidationGroup="OrderShipping"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" /></small>
					</dd>
			</dl>
		</div>
	</div><!--userList-->

		<h4 visible="<%# CanInputShippingTo(Container.ItemIndex) %>" runat="server">配送方法・配送日時</h4>
		<div visible="<%# CanInputShippingTo(Container.ItemIndex) %>" runat="server" class="userList ddlShippingMethod">
			<!-- 配送方法を選択して下さい。 -->
			<asp:DropDownList ID="ddlShippingMethod" DataSource="<%# this.ShippingMethodList[Container.ItemIndex] %>" OnSelectedIndexChanged="ddlShippingMethodList_OnSelectedIndexChanged" DataTextField="text" DataValueField="value" AutoPostBack="true" runat="server"></asp:DropDownList>
		</div>
		<div id="dvShipppingDateTime" visible="<%# CanInputDateOrTimeSet(Container.ItemIndex) %>" runat="server" class="userList uL3">
		<!-- 	配送希望日時を選択して下さい。 -->
			<div id="dlShipppingDateTime" runat="server">
        <dl class="dlShipppingDateTime__01">
				<dt id="dtShippingDate" visible="<%# CanInputDateSet(Container.ItemIndex) %>" runat="server">配送希望日</dt>
				<dd id="ddShippingDate" visible="<%# CanInputDateSet(Container.ItemIndex) %>" runat="server">
					<asp:DropDownList id="ddlShippingDate" CssClass="input_border" runat="server" DataSource="<%# GetShippingDateList(((CartObject)Container.DataItem), this.ShopShippingList[Container.ItemIndex]) %>" DataTextField="text" DataValueField="value" SelectedValue="<%# GetShippingDate((CartObject)Container.DataItem, this.ShopShippingList[Container.ItemIndex]) %>" 
						OnSelectedIndexChanged="ddlFixedPurchaseShippingDate_OnCheckedChanged" AutoPostBack="true"></asp:DropDownList>
					<br />
					<asp:Label ID="lShippingDateErrorMessage" CssClass="fred" runat="server"></asp:Label>
				</dd>
        </dl class="dlShipppingDateTime__02">
        <dl>
				<dt id="dtShippingTime" visible="<%# CanInputTimeSet(Container.ItemIndex) %>" runat="server">配送希望時間帯</dt>
				<dd id="ddShippingTime" visible="<%# CanInputTimeSet(Container.ItemIndex) %>" runat="server" class="last">
					<asp:DropDownList id="ddlShippingTime" runat="server" DataSource="<%# GetShippingTimeList(Container.ItemIndex) %>" DataTextField="Text" DataValueField="Value" SelectedValue="<%# GetShippingTime((CartObject)Container.DataItem, Container.ItemIndex) %>"></asp:DropDownList>

				</dd>
        </dl>
        <dl class="dlShipppingDateTime__03">
          <dt></dt>
          <dd><p>通常２〜3日ほどでお届けいたします。<br>
          遠隔地は３〜４日ほどでお届けいたします。</p></dd>
        </dl>
			</div>
		</div>

		<h4 id="H2" visible="<%# ((CartObject)Container.DataItem).HasFixedPurchase %>" runat="server">定期購入 配送パターンの指定</h4>
		<%-- ▽デフォルトチェックの設定▽--%>
		<%# SetFixedPurchaseDefaultCheckPriority(Container.ItemIndex, 2, 3, 1) %><%-- ラジオボタンのデータバインド <%#.. より前で呼び出してください。 --%>
		<%-- △ - - - - - - - - - - - △--%>
		<div visible="<%# ((CartObject)Container.DataItem).HasFixedPurchase %>" runat="server" class="userList orderBox list">
			「定期購入」はご希望の配送パターン・配送時間を指定して定期的に商品をお届けするサービスです。下記の配送パターンからお選び下さい。

			<div id="<%# "efo_sign_fixed_purchase" + Container.ItemIndex %>" />
			<dl style="margin-top: 10px;">
				<dt id="Dt1" visible="<%# (GetFixedPurchaseKbnEnabled(Container.ItemIndex, 1) && (GetFixedPurchaseIntervalDropdown(Container.ItemIndex, true).Length > 1)) %>" runat="server">
					<asp:RadioButton ID="rbFixedPurchaseMonthlyPurchase_Date" 
						Text="月間隔日付指定" Checked="<%# GetFixedPurchaseKbnInputChecked(Container.ItemIndex, 1) %>" 
						GroupName="FixedPurchaseShippingPattern" OnCheckedChanged="rbFixedPurchaseShippingPattern_OnCheckedChanged" AutoPostBack="true" runat="server" /><span id="<%# "efo_sign_fixed_purchase_month" + Container.ItemIndex %>" /></dt>
				<dd id="ddFixedPurchaseMonthlyPurchase_Date" visible="<%# (GetFixedPurchaseKbnInputChecked(Container.ItemIndex, 1) && (GetFixedPurchaseIntervalDropdown(Container.ItemIndex, true).Length > 1)) %>" runat="server">　
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
						OnSelectedIndexChanged="ddlFixedPurchaseShippingPatternItem_OnCheckedChanged" AutoPostBack="true" 
						runat="server">
					</asp:DropDownList>
					日に届ける
				</dd>
				<small>
				<asp:CustomValidator
					ID="cvFixedPurchaseMonth"
					runat="Server"
					ControlToValidate="ddlFixedPurchaseMonth"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					CssClass="error_inline"/>
				</small>
				<small>
				<asp:CustomValidator
					ID="cvFixedPurchaseMonthlyDate"
					runat="Server"
					ControlToValidate="ddlFixedPurchaseMonthlyDate"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					CssClass="error_inline"/>
				</small>
				</dl>
				<dl>
				<dt id="Dt2" visible="<%# GetFixedPurchaseKbnEnabled(Container.ItemIndex, 2) %>" runat="server">
					<asp:RadioButton ID="rbFixedPurchaseMonthlyPurchase_WeekAndDay" 
						Text="週・曜日指定" Checked="<%# GetFixedPurchaseKbnInputChecked(Container.ItemIndex, 2) %>" 
						GroupName="FixedPurchaseShippingPattern" OnCheckedChanged="rbFixedPurchaseShippingPattern_OnCheckedChanged" AutoPostBack="true" runat="server" /><span id="<%# "efo_sign_fixed_purchase_week_and_day" + Container.ItemIndex %>" /></dt>
				<dd id="ddFixedPurchaseMonthlyPurchase_WeekAndDay" visible="<%# GetFixedPurchaseKbnInputChecked(Container.ItemIndex, 2) %>" runat="server">　
					毎月
					<asp:DropDownList ID="ddlFixedPurchaseWeekOfMonth"
						DataSource="<%# ValueText.GetValueItemArray(Constants.TABLE_SHOPSHIPPING, Constants.FIELD_SHOPSHIPPING_FIXED_PURCHASE_SETTING_WEEK_LIST) %>"
						DataTextField="Text" DataValueField="Value" SelectedValue='<%# GetFixedPurchaseSelectedValue(Container.ItemIndex, Constants.FIXED_PURCHASE_SETTING_WEEK_OF_MONTH) %>'
						OnSelectedIndexChanged="ddlFixedPurchaseShippingPatternItem_OnCheckedChanged" AutoPostBack="true" 
						runat="server">
					</asp:DropDownList>
					<asp:DropDownList ID="ddlFixedPurchaseDayOfWeek"
						DataSource="<%# ValueText.GetValueItemArray(Constants.TABLE_SHOPSHIPPING, Constants.FIELD_SHOPSHIPPING_FIXED_PURCHASE_SETTING_DAY_LIST) %>"
						DataTextField="Text" DataValueField="Value" SelectedValue='<%# GetFixedPurchaseSelectedValue(Container.ItemIndex, Constants.FIXED_PURCHASE_SETTING_DAY_OF_WEEK) %>'
						OnSelectedIndexChanged="ddlFixedPurchaseShippingPatternItem_OnCheckedChanged" AutoPostBack="true" 
						runat="server">
					</asp:DropDownList>
					に届ける
				</dd>
				<small>
				<asp:CustomValidator
					ID="cvFixedPurchaseWeekOfMonth"
					runat="Server"
					ControlToValidate="ddlFixedPurchaseWeekOfMonth"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					CssClass="error_inline"/>
				</small>
				<small>
				<asp:CustomValidator
					ID="cvFixedPurchaseDayOfWeek"
					runat="Server"
					ControlToValidate="ddlFixedPurchaseDayOfWeek"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					CssClass="error_inline"/>
				</small>
				</dl>
				<dl>
				<dt id="Dt3" visible="<%# (GetFixedPurchaseKbnEnabled(Container.ItemIndex, 3) && (GetFixedPurchaseIntervalDropdown(Container.ItemIndex, false).Length > 1)) %>" runat="server">
					<asp:RadioButton ID="rbFixedPurchaseRegularPurchase_IntervalDays" 
						Text="配送日間隔指定" Checked="<%# GetFixedPurchaseKbnInputChecked(Container.ItemIndex, 3) %>" 
						GroupName="FixedPurchaseShippingPattern" OnCheckedChanged="rbFixedPurchaseShippingPattern_OnCheckedChanged" AutoPostBack="true" runat="server" /><span id="<%# "efo_sign_fixed_purchase_interval_days" + Container.ItemIndex %>" /></dt>
				<dd id="ddFixedPurchaseRegularPurchase_IntervalDays" visible="<%# (GetFixedPurchaseKbnInputChecked(Container.ItemIndex, 3) && (GetFixedPurchaseIntervalDropdown(Container.ItemIndex, false).Length > 1)) %>" runat="server">　
					<asp:DropDownList ID="ddlFixedPurchaseIntervalDays"
						DataSource='<%# GetFixedPurchaseIntervalDropdown(Container.ItemIndex, false) %>'
						DataTextField="Text" DataValueField="Value" SelectedValue='<%# GetFixedPurchaseSelectedValue(Container.ItemIndex, Constants.FIXED_PURCHASE_SETTING_INTERVAL_DAYS) %>'
						OnSelectedIndexChanged="ddlFixedPurchaseShippingPatternItem_OnCheckedChanged" AutoPostBack="true" 
						runat="server">
					</asp:DropDownList>
					日ごとに届ける
				</dd>
				<asp:HiddenField ID="hfFixedPurchaseDaysRequired" Value="<%# this.ShopShippingList[Container.ItemIndex].FixedPurchaseShippingDaysRequired %>" runat="server" />
				<asp:HiddenField ID="hfFixedPurchaseMinSpan" Value="<%# this.ShopShippingList[Container.ItemIndex].FixedPurchaseMinimumShippingSpan %>" runat="server" />
				<small>
				<asp:CustomValidator
					ID="cvFixedPurchaseIntervalDays"
					runat="Server"
					ControlToValidate="ddlFixedPurchaseIntervalDays"
					ValidationGroup="OrderShipping"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					CssClass="error_inline"/>
				</small>
			</dl>
			<small><p class="attention" runat="server" visible="<%# GetAllFixedPurchaseKbnEnabled(Container.ItemIndex) == false %>">同時に定期購入できない商品が含まれております。</p></small>
			<small ID="sErrorMessage" class="fred" runat="server"></small>
			<br /><hr />
			<dl>
				<dt id="dtFirstShippingDate" visible="true" runat="server">初回配送予定日</dt>
				<dd visible="true" runat="server" style="padding-left: 20px;">
					<asp:Label ID="lblFirstShippingDate" runat="server"></asp:Label>
				</dd>
				<dt id="dtNextShippingDate" visible="true" runat="server">2回目の配送日を選択</dt>
				<dd visible="true" runat="server" style="padding-left: 20px;">
					<asp:Label ID="lblNextShippingDate" visible="false" runat="server"></asp:Label>
					<asp:DropDownList ID="ddlNextShippingDate" visible="false" OnDataBound="ddlNextShippingDate_OnDataBound" runat="server"></asp:DropDownList>
				</dd>
			</dl>
			<dl>
				メール便の場合は数日ずれる可能性があります。
			</dl>
		</div>

		<asp:Repeater ID="rMemos" runat="server" DataSource="<%# ((CartObject)Container.DataItem).OrderMemos %>" Visible="<%# ((CartObject)Container.DataItem).OrderMemos.Count != 0 %>">
		<HeaderTemplate>
			<h4>注文メモ</h4>
			<div class="list">
		</HeaderTemplate>
		<ItemTemplate>
			<strong><%# WebSanitizer.HtmlEncode(Eval(CartOrderMemo.FIELD_ORDER_MEMO_NAME)) %></strong>
			<p><asp:TextBox ID="tbMemo"  runat="server" Text="<%# Eval(CartOrderMemo.FIELD_ORDER_MEMO_TEXT) %>" CssClass="<%# Eval(CartOrderMemo.FIELD_ORDER_MEMO_CSS) %>" TextMode="MultiLine"></asp:TextBox><br /></p><br />
			<small id="sErrorMessageMemo" runat="server" class="fred" ></small>
			<%-- IDに"OtherValidator"を含めることで案件毎に追加したtextareaなどでチェック可能 --%>
			<asp:CustomValidator ID="OtherValidator" runat="Server"
				ControlToValidate="tbMemo"
				ValidationGroup="OrderShipping"
				ValidateEmptyText="true"
				SetFocusOnError="true"
				ClientValidationFunction="ClientValidate"/>
		</ItemTemplate>
		<FooterTemplate>
			</div>
		</FooterTemplate>
		</asp:Repeater>

	</div><!--bottom-->
	</div><!--orderBox-->
</div><!--columnRight-->
<%} %>
<%-- ▲配送先情報▲ --%>

</ItemTemplate>
</asp:Repeater>

<br class="clr" />
<%-- UpdatePanel外のイベントを実行したいためこのような呼び出し方となっている --%>
<!-- <div class="btmbtn below">


	<strong>&yen;<%= GetNumeric(this.CartList.PriceCartListTotal) %></strong>
<ul>
	<li><a onclick="<%= this.BackOnClick %>" href="<%= WebSanitizer.HtmlEncode(this.BackEvent) %>" class="btn btn-large btn-org-gry">前のページに戻る</a></li>
	<li><a onclick="<%= this.NextOnClick %>" href="<%= WebSanitizer.HtmlEncode(this.NextEvent) %>" class="btn btn-large btn-success"><%: (this.IsNextConfirmPage) ? "ご注文内容確認へ" : "お支払方法入力へ" %></a></li>
</ul>
</div>
 -->
<div class="btmbtn below">
	<div class="btmbtn__innar">
	<dl class="btmbtn__innar__dl10">
		<dt>合計<span>(税込)</span></dt>
		<dd>&yen;<%= GetNumeric(this.CartList.PriceCartListTotal) %></dd>	
	</dl>
	<ul>
		<li><a onclick="<%= this.NextOnClick %>" href="<%= WebSanitizer.HtmlEncode(this.NextEvent) %>" class="btn btn-large btn-success"><%: (this.IsNextConfirmPage) ? "最終確認にすすむ" : "お支払方法入力へ" %></a></li>
    
		<li class="b2"><a onclick="<%= this.BackOnClick %>" href="<%= WebSanitizer.HtmlEncode(this.BackEvent) %>" class="btn btn-large btn-success2">前のページに戻る</a></li>
	</ul>
		<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
	</div>
	<p class="btn-gry__wrap"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT) %>" class="btn btn-large btn-gry"><span><</span>ショッピングへ戻る</a></p>
</div><!--btmbtn-->

</div><!--submain-->

</div><!--main-->



</ContentTemplate>
</asp:UpdatePanel>
<%-- UPDATE PANELここまで --%>

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
		set_cart2();
	}

	function set_cart2(){
		$("#Contents").addClass("topSpace").addClass("cart2");
		$("small").each(function(x){
			$(this).addClass("small"+x)
		});
  $(".uB1 dl").each(function(x){
    $(this).addClass("small"+x);
    if($(this).html().trim()==""){
      $(this).addClass("remove");
    }
  });
  $(".orderBox .uL2 dl").each(function(x){
    $(this).addClass("small2"+x);
    if($(this).html().trim()==""){
      $(this).addClass("remove");
    }
  });
  $(".orderBox .uL3 dl").each(function(x){
    $(this).addClass("small3"+x);
    if($(this).html().trim()==""){
      $(this).addClass("remove");
    }
  });

		$(".userList select").change(function(){

		});
    $(".load_wrap").addClass("active");
	}



	<%-- 氏名（姓・名）の自動振り仮名変換のイベントをバインドする --%>
	function bindExecAutoKana() {
		<% foreach (RepeaterItem ri in rCartList.Items) { %>
		execAutoKanaWithKanaType(
			$('#<%= ((TextBox)ri.FindControl("tbOwnerName1")).ClientID %>'),
			$('#<%= ((TextBox)ri.FindControl("tbOwnerNameKana1")).ClientID %>'),
			$('#<%= ((TextBox)ri.FindControl("tbOwnerName2")).ClientID %>'),
			$('#<%= ((TextBox)ri.FindControl("tbOwnerNameKana2")).ClientID %>'));
		execAutoKanaWithKanaType(
			$('#<%= ((TextBox)ri.FindControl("tbShippingName1")).ClientID %>'),
			$('#<%= ((TextBox)ri.FindControl("tbShippingNameKana1")).ClientID %>'),
			$('#<%= ((TextBox)ri.FindControl("tbShippingName2")).ClientID %>'),
			$('#<%= ((TextBox)ri.FindControl("tbShippingNameKana2")).ClientID %>'));
		<%} %>
	}

	var bindTargetForAddr1 = "";
	var bindTargetForAddr2 = "";
	var bindTargetForAddr3 = "";
	var multiAddrsearchTriggerType = "";
	<%-- 郵便番号検索のイベントをバインドする --%>
	function bindZipCodeSearch() {
		<% foreach (RepeaterItem ri in rCartList.Items) { %>
			$('#<%= ((TextBox)ri.FindControl("tbOwnerZip2")).ClientID %>').keyup(function (e) {
				if (isValidKeyCodeForKeyEvent(e.keyCode) == false) return;
				checkZipCodeLengthAndExecPostback(
					$('#<%= ((TextBox)ri.FindControl("tbOwnerZip1")).ClientID %>'),
					$('#<%= ((TextBox)ri.FindControl("tbOwnerZip2")).ClientID %>'),
					"<%= ((TextBox)ri.FindControl("tbOwnerZip2")).UniqueID %>",
					'<%= Constants.PATH_ROOT + Constants.PAGE_FRONT_ZIPCODE_SEARCHER_GET_ADDR_JSON %>',
					"<%= '#' + (ri.FindControl("sOwnerZipError")).ClientID %>"
				);
				$("#search-result-layer").css("top", $(this).position().top + 20);
				$("#search-result-layer").css("left", $(this).position().left - 72);
				multiAddrsearchTriggerType = "owner";
			});
			$('#<%= ((LinkButton)ri.FindControl("lbSearchOwnergAddr")).ClientID %>').on('click', function () {
				checkZipCodeLengthAndExecPostback(
					$('#<%= ((TextBox)ri.FindControl("tbOwnerZip1")).ClientID %>'),
					$('#<%= ((TextBox)ri.FindControl("tbOwnerZip2")).ClientID %>'),
					"<%= ((LinkButton)ri.FindControl("lbSearchOwnergAddr")).UniqueID %>",
					'<%= Constants.PATH_ROOT + Constants.PAGE_FRONT_ZIPCODE_SEARCHER_GET_ADDR_JSON %>',
					"<%= '#' + (ri.FindControl("sOwnerZipError")).ClientID %>"
				);
				$("#search-result-layer").css("top", $(this).position().top + 23);
				$("#search-result-layer").css("left", $(this).position().left - 135);
				multiAddrsearchTriggerType = "owner";
			});
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
		if (multiAddrsearchTriggerType == "owner") {
			<% foreach (RepeaterItem ri in rCartList.Items) { %>
				$('#<%= ((DropDownList)ri.FindControl("ddlOwnerAddr1")).ClientID %>').val(selectedAddr.find('.addr').text());
				$('#<%= ((TextBox)ri.FindControl("tbOwnerAddr2")).ClientID %>').val(selectedAddr.find('.city').text() + selectedAddr.find('.town').text());
				$('#<%= ((TextBox)ri.FindControl("tbOwnerAddr3")).ClientID %>').focus();
			<%} %>
		} else if (multiAddrsearchTriggerType == "shipping") {
			<% foreach (RepeaterItem ri in rCartList.Items) { %>
				$('#' + bindTargetForAddr1).val(selectedAddr.find('.addr').text());
				$('#' + bindTargetForAddr2).val(selectedAddr.find('.city').text() + selectedAddr.find('.town').text());
				$('#' + bindTargetForAddr3).focus();
			<%} %>
		}

		closePopupAndLayer();
	}
//-->
</script>

</asp:Content>