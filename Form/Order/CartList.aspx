<%--
=========================================================================================================
  Module      : カート一覧画面(CartList.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="BodyAnnounceFreeShipping" Src="~/Form/Common/BodyAnnounceFreeShipping.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyRecommendFreeShipping" Src="~/Form/Common/BodyRecommendFreeShipping.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductRecommendByRecommendEngine" Src="~/Form/Common/Product/BodyProductRecommendByRecommendEngine.ascx" %>
<%@ Register TagPrefix="uc" TagName="Criteo" Src="~/Form/Common/Criteo.ascx" %>
<%@ Register Src="~/Form/Common/PayPalScriptsForm.ascx" TagPrefix="uc" TagName="PayPalScriptsForm" %>
<%@ page language="C#" masterpagefile="~/Form/Common/OrderPage.master" autoeventwireup="true" inherits="Form_Order_CartList, App_Web_cartlist.aspx.bf558b1b" title="カート｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="カートページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<%@ Import Namespace="w2.Domain.Coupon.Helper" %>
<%-- ▽▽Amazonペイメントを使う場合はウィジェットを配置するページは必ずSSLでなければいけない▽▽ --%>
<script runat="server">
  public override PageAccessTypes PageAccessType { get { return PageAccessTypes.Https; } }
</script>
<%-- △△Amazonペイメントを使う場合はウィジェットを配置するページは必ずSSLでなければいけない△△ --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" data="0">
<script type="text/javascript">

  function bodyPageLoad() {
    if (Sys.WebForms == null) return;
    var isAsyncPostback = Sys.WebForms.PageRequestManager.getInstance().get_isInAsyncPostBack();
    if (isAsyncPostback) {
      try {
        <%-- Ajax動いてカート内容操作後にウィジェット消える場合のエラーを回避 --%>
        if ($('#AmazonPayButton').length) showButton();
      }
      catch (e) { }
    }
  }
  $(function(){
    $(window).scroll(function () {
        if ($(this).scrollTop() > 230) {
            $('.btmbtn').addClass('is-fixed');
        } else {
            $('.btmbtn').removeClass('is-fixed');
        }
    });
  });
</script>


<%-- UPDATE PANEL開始 --%>
<asp:UpdatePanel ID="upUpdatePanel" runat="server">
<ContentTemplate>

<script>
$(function(){

$(function(){
   if($(".no_cart_").length){
    $(".load_wrap").addClass("active");
    $("#ctl00_ContentPlaceHolder1_upUpdatePanel").addClass("topSpace").addClass("cart1");
   }
})

  // $(".product").each(function(){
  //  if($(window).width()>768){
      
  //    $("p.quantity.sp_set",this).html($(".pc_contents .quantity").html()); // sp数量にPCから生成
  //    $("p.delete.sp_set",this).html($(".pc_contents .delete").html()); // sp数量にPCから生成
  //    $(".quantity.sp_set",this).remove();

  //  }else{
      
  //    $("p.quantity.sp_set",this).html($(".pc_contents .quantity").html()); // sp数量にPCから生成
  //    $("p.delete.sp_set",this).html($(".pc_contents .delete").html()); // sp数量にPCから生成
  //    $(".pc_contents .quantity",this).remove();
  //  }
  // })

});
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

<style type="text/css" media="screen">
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
  width: 268px;
  float: right;
  height: auto;
  position: absolute;
  right: 0;
  top: 0; }

#ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.btmbtn.is-fixed {
  position: fixed;
  top: 75px;
  left:50%;
  margin-left:372px; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.btmbtn {
    width: 100%;
    margin: auto;
    float: none;
    position: static; } }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel #CartList div.btmbtn.is-fixed {
    position: inherit;
    top: inherit;
    left:inherit;
    margin-left:0;
    width: 100%; } }

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

#ctl00_ContentPlaceHolder1_upUpdatePanel .s_dt {
  position: relative;
  width: 56px; }

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
  margin: 100px auto 130px;
  text-align: center;
  font-size: 14px;
  letter-spacing: 0.08em; }

a.all_list_btn {
  font-size: 14px;
  border: 1px solid #2E0E02;
  width: 340px;
  height: 48px;
  margin: auto;
  display: -webkit-box;
  display: -ms-flexbox;
  display: flex;
  -webkit-box-align: center;
  -ms-flex-align: center;
  align-items: center;
  -webkit-box-pack: center;
  -ms-flex-pack: center;
  justify-content: center;
  color: #2E0E02;
  letter-spacing: 0.08em; }

@media (max-width: 768px) {
  #ctl00_ContentPlaceHolder1_upUpdatePanel p.no_cart_ {
    width: 100%;
    margin: 100px 5.5vw;
    font-size: 13px; }
  a.all_list_btn {
    font-size: 12px;
    width: 58.66667vw;
    height: 48px;
    margin: 0 auto 75px;
    max-width: 340px; } }

@media (max-width: 768px) {
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
}
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

#Wrap .userWrap .prevBtn {
  color: #2E0E02;
  text-align: center;
  width: 320px;
  height: 64px;
  line-height: 64px;
  background: #fff;
  position: relative;
  border-radius: 2px;
  border: 1px solid #2E0E02;
  z-index: 0; }

@media (max-width: 768px) {
  #Wrap .userWrap .prevBtn {
    width: 100%;
    height: 48px;
    line-height: 48px; } }

#Wrap .userWrap .prevBtn::after {
  content: "";
  position: absolute;
  top: 0;
  left: 24px;
  bottom: 0;
  margin: auto;
  display: block;
  width: 10px;
  height: 10px;
  -moz-transform: rotate(-135deg);
  -webkit-transform: rotate(-135deg);
  -ms-transform: rotate(-135deg);
  transform: rotate(-135deg);
  border-top: 1.5px solid #2E0E02;
  border-right: 1.5px solid #2E0E02; }

@media (max-width: 768px) {
  #Wrap .userWrap .prevBtn::after {
    width: 6px;
    height: 6px;
    border-top: 1px solid #2E0E02;
    border-right: 1px solid #2E0E02; } }

#Wrap .userWrap .prevBtn:hover::after {
  border-top: 1.5px solid #fff;
  border-right: 1.5px solid #fff; }

#Wrap .userWrap .prevBtn::before {
  content: "";
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: -1;
  background: #2E0E02;
  -webkit-transform-origin: right top;
  -ms-transform-origin: right top;
  transform-origin: right top;
  -webkit-transform: scale(0, 1);
  -ms-transform: scale(0, 1);
  transform: scale(0, 1);
  -webkit-transition: -webkit-transform .3s;
  transition: -webkit-transform .3s;
  -o-transition: transform .3s;
  transition: transform .3s;
  transition: transform .3s, -webkit-transform .3s; }

@media (max-width: 768px) {
  #Wrap .userWrap .prevBtn::before {
    content: none; } }

#Wrap .userWrap .prevBtn:hover::before {
  -webkit-transform-origin: left top;
  -ms-transform-origin: left top;
  transform-origin: left top;
  -webkit-transform: scale(1, 1);
  -ms-transform: scale(1, 1);
  transform: scale(1, 1); }

#Wrap .userWrap .prevBtn:hover {
  opacity: 1;
  color: #fff; }

#Wrap .userWrap .nextBtn {
  color: #fff;
  text-align: center;
  width: 320px;
  height: 64px;
  line-height: 64px;
  background: #2E0E02;
  position: relative;
  border-radius: 2px;
  border: 1px solid #2E0E02;
  z-index: 0; }

@media (max-width: 768px) {
  #Wrap .userWrap .nextBtn {
    width: 100%;
    height: 48px;
    line-height: 48px; } }

#Wrap .userWrap .nextBtn::after {
  content: "";
  position: absolute;
  top: 0;
  right: 24px;
  bottom: 0;
  margin: auto;
  display: block;
  width: 10px;
  height: 10px;
  -moz-transform: rotate(45deg);
  -webkit-transform: rotate(45deg);
  -ms-transform: rotate(45deg);
  transform: rotate(45deg);
  border-top: 1.5px solid #fff;
  border-right: 1.5px solid #fff; }

@media (max-width: 768px) {
  #Wrap .userWrap .nextBtn::after {
    width: 6px;
    height: 6px;
    border-top: 1px solid #fff;
    border-right: 1px solid #fff; } }

#Wrap .userWrap .nextBtn:hover::after {
  border-top: 1.5px solid #2E0E02;
  border-right: 1.5px solid #2E0E02; }

#Wrap .userWrap .nextBtn::before {
  content: "";
  position: absolute;
  top: 0;
  right: 0;
  bottom: 0;
  left: 0;
  z-index: -1;
  background: #fff;
  -webkit-transform-origin: right top;
  -ms-transform-origin: right top;
  transform-origin: right top;
  -webkit-transform: scale(0, 1);
  -ms-transform: scale(0, 1);
  transform: scale(0, 1);
  -webkit-transition: -webkit-transform .3s;
  transition: -webkit-transform .3s;
  -o-transition: transform .3s;
  transition: transform .3s;
  transition: transform .3s, -webkit-transform .3s; }

@media (max-width: 768px) {
  #Wrap .userWrap .nextBtn::before {
    content: none; } }

#Wrap .userWrap .nextBtn:hover::before {
  -webkit-transform-origin: left top;
  -ms-transform-origin: left top;
  transform-origin: left top;
  -webkit-transform: scale(1, 1);
  -ms-transform: scale(1, 1);
  transform: scale(1, 1); }

#Wrap .userWrap .nextBtn:hover {
  opacity: 1;
  color: #2E0E02; }


</style>
<link href="../../Css/rp/CartList.css" rel="stylesheet">
<div class="load_wrap"></div>
<h2 class="cart1_h2">ショッピングカート</h2>

<p id="CartFlow" class="pc_contents"><img src="../../Contents/ImagesPkg/order/cart_step00.png" alt="カート内容確認 " width="781" height="58" /></p>
<p id="" class="CartFlow sp_contents"><img src="../../Contents/ImagesPkg/order/sp_flow1.png" alt="カート内容確認 " width="781"/></p>

<div class="btmbtn above cartstep">
<h2 class="ttlB">
  カート内容確認
</h2>
<ul style="display:<%= (this.CartList.Items.Count != 0) ? "block" : "none" %>">
  <%-- UPDATE PANELの外のイベントを呼び出す --%>
  <%-- ▼PayPalログインここから▼ --%>
  <%if (Constants.PAYPAL_LOGINPAYMENT_ENABLED) {%>
  <%if (this.DispPayPalShortCut) {%>
  <li style="float: left; width: 200px; margin: 0;">
    <%
      ucPaypalScriptsForm.LogoDesign = "Cart";
      ucPaypalScriptsForm.AuthCompleteActionControl = lbPayPalAuthComplete;
      ucPaypalScriptsForm.GetShippingAddress = (this.IsLoggedIn == false);
    %>
    <uc:PaypalScriptsForm ID="ucPaypalScriptsForm" runat="server" />
    <div id="paypal-button"></div>
    <div style="font-size: 9pt; text-align: center;margin: 3px">
    <%if (SessionManager.PayPalCooperationInfo != null) {%>
      <%: (SessionManager.PayPalCooperationInfo != null) ? SessionManager.PayPalCooperationInfo.AccountEMail : "" %> 連携済
    <%} %>
    <asp:LinkButton ID="lbPayPalAuthComplete" runat="server" OnClick="lbPayPalAuthComplete_Click"></asp:LinkButton>
    </div>
  </li>
  <%} %>
  <%} %>
  <%-- ▲PayPalログインここまで▲ --%>
  <li>
    <%if ( this.CanUseAmazonPayment()) { %>
    <%-- ▼▼Amazonお支払いボタンウィジェット▼▼ --%>
      <div id="AmazonPayButton" style="display:inline" title="Amazonアカウントでお支払いの場合はコチラから"></div>
    <%-- ▲▲Amazonお支払いボタンウィジェット▲▲ --%>
    <% } %>
  </li>
  <li><a href="<%= WebSanitizer.HtmlEncode(this.NextEvent) %>" class="btn btn-success">ご購入手続き</a></li>
</ul>
</div>

<%if (this.CartList.Items.Count != 0) {%>
  
<%} else { %>
  <p class="no_cart_">ショッピングカートに商品がありません。</p>

  <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="all_list_btn">商品一覧を見る</a>
<%} %>

<%-- 次へイベント用リンクボタン（イベント作成用。通常はUpdatePanel内部に設置する） --%>
<asp:LinkButton ID="lbNext" OnClick="lbNext_Click" ValidationGroup="OrderShipping" runat="server"></asp:LinkButton>

<div id="CartList">
<% if (string.IsNullOrEmpty(this.DispErrorMessage) == false) { %>
<span style="color:red" class="error_message"><%: this.DispErrorMessage %></span>
<% } %>
<p class="sum">総合計合計（税込）<strong><%: CurrencyManager.ToPrice(this.CartList.PriceCartListTotal) %></strong></p>

<%if (this.CartList.Items.Count != 0) {%>
<asp:Repeater id="rCartList" Runat="server" OnItemCommand="rCartList_ItemCommand">
<ItemTemplate>

  <%if (Constants.ProductOrderLimitKbn.ProductOrderLimitOn == Constants.PRODUCT_ORDER_LIMIT_KBN_CAN_BUY) { %>
  <div runat="server" visible="<%# ((CartObject)Container.DataItem).HasNotFirstTimeOrderIdList %>" style="text-align:left;position:relative;bottom:30px;">
  </div>
  <%} %>

  <%if (Constants.CARTCOPY_OPTION_ENABLED){ %>
  <%-- ▼カート削除完了メッセージ▼ --%>
  <div runat="server" visible="<%# ((CartObject)Container.DataItem).IsCartDeleteCompleteMesseges %>" style="text-align:left;position:relative;bottom:30px;">
    <span>カートの削除が完了しました。</span>
  </div>
  <%-- ▲カート削除完了メッセージ▲ --%>
  <%} %>
  
<%if (this.HasOrderCombinedReturned) { %>
  <%-- ▼注文同梱解除メッセージ▼ --%>
  <div runat="server" style="text-align:left;position:relative;bottom:30px;">
    <span>注文同梱を解除しました。</span>
  </div>
  <%-- ▲注文同梱解除メッセージ▲ --%>
<% } %>

  <div class="productList">
  <div class="background">

  <%if (Constants.CARTCOPY_OPTION_ENABLED){ %>
  <%-- ▼カートコピー完了メッセージ▼ --%>
  <div runat="server" visible="<%# ((CartObject)Container.DataItem).IsCartCopyCompleteMesseges %>" style="text-align:right">
    <span>カートのコピーが完了しました。</span>
  </div>
  <%-- ▲カートコピー完了メッセージ▲ --%>
  <%} %>

  <h3>カート番号 <%# Container.ItemIndex + 1 %><%# WebSanitizer.HtmlEncode(DispCartDecolationString(Container.DataItem, "（ギフト）", "（デジタルコンテンツ）")) %>のご注文内容<%if (Constants.CARTCOPY_OPTION_ENABLED){ %><span style="float:right"><asp:LinkButton ID="lbCopyCart" runat="server" Text="カートコピー" CommandArgument="<%# Container.ItemIndex %>" OnClick="lbCopyCart_Click" style="color:white;"></asp:LinkButton>&nbsp;&nbsp;&nbsp;&nbsp;<asp:LinkButton ID="lbDeleteCart" runat="server" Text="カート削除" CommandArgument="<%# Container.ItemIndex %>" OnClick="lbDeleteCart_Click" style="color:white"></asp:LinkButton></span><%} %></h3>


  <h4 visible='<%# ((CartObject)Container.DataItem).ShippingType == "100" %>' runat="server">通常配送商品<span></span></h4>
  <h4 visible='<%# ((CartObject)Container.DataItem).ShippingType == "1001" %>' runat="server">予約商品<span></span></h4>

  <div class="list">
<!--  <p class="ttl"><img src="../../Contents/ImagesPkg/cartlist/<%# this.ProductIncludedTaxFlg ? "sttl01.gif" : "sttl02.gif" %>" alt="商品名  単価（<%#: this.ProductPriceTextPrefix %>）  注文数  小計（<%#: this.ProductPriceTextPrefix %>）" width="847" height="12" /></p> -->
  
  <div class="pc_contents">
    <div class="ttl_cart">
      <p class="ttl_01">商品名</p>
      <p class="ttl_02">価格（税込）</p>
      <p class="ttl_03">数量</p>
      <p class="ttl_04">小計（税込)</p>
    </div>
  </div>
  <asp:Repeater id="rCart" runat="server" DataSource='<%# (CartObject)Container.DataItem %>' OnItemCommand="rCartList_ItemCommand">
  <ItemTemplate>
    <%-- 通常商品 --%>
    <div class="product" visible="<%# ((CartProduct)Container.DataItem).IsSetItem == false && ((CartProduct)Container.DataItem).QuantitiyUnallocatedToSet != 0 %>" runat="server">
    <%-- 隠し値 --%>
    <asp:HiddenField ID="hfShopId" runat="server" Value="<%# ((CartProduct)Container.DataItem).ShopId %>" />
    <asp:HiddenField ID="hfProductId" runat="server" Value="<%# ((CartProduct)Container.DataItem).ProductId %>" />
    <asp:HiddenField ID="hfVariationId" runat="server" Value="<%# ((CartProduct)Container.DataItem).VariationId %>" />
    <asp:HiddenField ID="hfIsFixedPurchase" runat="server" Value="<%# ((CartProduct)Container.DataItem).IsFixedPurchase %>" />
    <asp:HiddenField ID="hfAddCartKbn" runat="server" Value="<%# ((CartProduct)Container.DataItem).AddCartKbn %>" />
    <asp:HiddenField ID="hfProductSaleId" runat="server" Value="<%# ((CartProduct)Container.DataItem).ProductSaleId %>" />
    <asp:HiddenField ID="hfProductOptionValue" runat="server" Value='<%# ((CartProduct)Container.DataItem).ProductOptionSettingList.GetDisplayProductOptionSettingSelectValues() %>' />
    <asp:HiddenField ID="hfUnallocatedQuantity" runat="server" Value='<%# ((CartProduct)Container.DataItem).QuantitiyUnallocatedToSet %>' />
    <div>
    <dl class="name">
    <dt>
      <a href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
      <w2c:ProductImage ProductMaster="<%# Container.DataItem %>" ImageSize="M" runat="server" /></a>
      <w2c:ProductImage ProductMaster="<%# Container.DataItem %>" ImageSize="M" runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false %>" />
    </dt>
    <dd>
      <span>
        <a class="cart1_size" href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
          <%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) %></a>
        <%# (((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false) ? WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) : "" %>
      <%# (((CartProduct)Container.DataItem).GetProductTag("tag_cart_product_message").Length != 0) ? "<p class=\"message\">" + WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).GetProductTag("tag_cart_product_message")) + "</p>" : "" %></span></dd>
    <dd class="color_box" visible='<%# ((CartProduct)Container.DataItem).ProductOptionSettingList.IsSelectedProductOptionValueAll %>' runat="server">
      <div class="color_check" style="display: none;">
        <asp:Repeater ID="rProductOptionSettings" DataSource='<%# ((CartProduct)Container.DataItem).ProductOptionSettingList %>' runat="server">
          <ItemTemplate>
            <span><%# WebSanitizer.HtmlEncode(((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue()) %></span>
            <%# (((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue() != "") ? "" : "" %>
          </ItemTemplate>
        </asp:Repeater>
      </div>
        
      <div class="s_dl__wrap">
        <div class="s_dl s1">
          <div class="s_dt">
            サイズ
          </div>
          <div class="s_dd">
          </div>
        </div>
        <div class="s_dl s2">
          <div class="s_dt">
            カラー
          </div>
          <div class="s_dd">
          </div>
        </div>
        <div class="s_dl s3">
          <div class="s_dt">
            配送時期
          </div>
          <div class="s_dd">
          </div>
        </div>
      </div>
    </dd>

<script>
$(function(){})
function bodyPageLoad(){


  if($("#CartFlow").attr("data") == 0){
    $("#CartFlow").attr("data",1); 
     $(".btn_menu").addClass("openbtn");
  }else{
      $(document).on("click",'.openbtn',function () {
      $(this).toggleClass('active');
      $(".header__menu").toggleClass('open');
      $("#Wrap").toggleClass('open');
    });
  }


  $(".load_wrap").addClass("active");
  $("#ctl00_ContentPlaceHolder1_upUpdatePanel").addClass("topSpace").addClass("cart1");
  $(".delete a").prepend('<img src="../../Contents/ImagesPkg/order/remove.svg" alt="削除" style="width:18px!important;display: inline-block;margin: 0 3px 0 0;"/>')


 $(".product").each(function(){
    var kana = $(".cart1_size",this).text()
    kana = kana.match(/\((.+)\)/)[1];
    $(".s1 .s_dd",this).text(kana);
    $(".d1 .d_dd",this).text(kana);

    var str=$(".cart1_size",this).text();
    var nstr = str.replace(/\([^\)]*\)/g,"");
    $(".cart1_size",this).text(nstr);

    var str = $(".color_check span:nth-child(1)",this).text().trim();
    str = str.replace(/カラー：/g, ''); // "bcbc"

    $(".s2 .s_dd",this).text(str);
    $(".d2 .d_dd",this).text(str);

    var str = $(".color_check span:nth-child(2)",this).text().trim();
    str = str.replace(/配送時期：/g, ''); // "bcbc"

    $(".s3 .s_dd",this).text(str);
    $(".d3 .d_dd",this).text(str);
 })
 $(".shoppingCart__title").html($(".subSumBox p").html());
 

   $(".s3 .s_dd").each(function(){
      if($(this).text().trim()==""){
        $(this).parent().remove();
      }
  });


}


</script>
    <dd>
      <asp:Repeater ID="rSetPromotion" DataSource="<%# GetSetPromotionByProduct((CartProduct)Container.DataItem) %>" runat="server">
        <ItemTemplate>
          <span class="setpromotion" visible='<%# ((SetPromotionModel)Container.DataItem).Url != "" %>' runat="server">
            「<a href="<%# WebSanitizer.HtmlEncode(Constants.PATH_ROOT + ((SetPromotionModel)Container.DataItem).Url) %>"><%# WebSanitizer.HtmlEncode(((SetPromotionModel)Container.DataItem).SetpromotionDispName) %></a>」対象商品
          </span>
          <span class="setpromotion" visible='<%# ((SetPromotionModel)Container.DataItem).Url == "" %>' runat="server">
            「<%# WebSanitizer.HtmlEncode(((SetPromotionModel)Container.DataItem).SetpromotionDispName) %>」対象商品
          </span>
        </ItemTemplate>
      </asp:Repeater>
      <div class="sp_contents">
        <div class="itemcart_detail d1">
          <div class="d_dt">サイズ</div>
          <div class="d_dd"></div>
        </div>
        <div class="itemcart_detail d2">
          <div class="d_dt">カラー</div>
          <div class="d_dd"></div>
        </div>
        <div class="itemcart_detail d3">
          <div class="d_dt">配送時期</div>
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

            </p>
          </div>
        </div>
        <p class="delete sp_set">

        </p>
      </div>
    </dd>
    </dl>
    <div class="pc_contents_sub">
      <div class="sub_contents">
        <div class="pc_contents"><p class="price"><%#: CurrencyManager.ToPrice(((CartProduct)Container.DataItem).Price) %> </p></div>
        <p class="quantity">
          <span visible='<%# IsChangeProductCount((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem, (CartProduct)Container.DataItem) %>' runat="server">
          <asp:TextBox ID="tbProductCount" Runat="server" Text='<%# ((CartProduct)Container.DataItem).QuantitiyUnallocatedToSet %>' MaxLength="3"></asp:TextBox>
          </span>
          <span visible='<%# IsChangeProductCount((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem, (CartProduct)Container.DataItem) == false %>' runat="server">
            <%#  StringUtility.ToNumeric(((CartProduct)Container.DataItem).QuantitiyUnallocatedToSet)%>
          </span>
        </p>
        <div class="pc_contents"><p class="subtotal"><%#: CurrencyManager.ToPrice(((CartProduct)Container.DataItem).Price * ((CartProduct)Container.DataItem).QuantitiyUnallocatedToSet) %> </p></div>
        <p class="delete"><asp:LinkButton ID="lbDeleteProduct" CommandName="DeleteProduct" Runat="server">削除</asp:LinkButton></p><div class="pc_contents"></div>

      </div>
    </div>
    </div>
    <p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
    <small class="fred pdg_leftA" visible="<%# this.ErrorMessages.HasMessages(((RepeaterItem)Container.Parent.Parent).ItemIndex, Container.ItemIndex) %>" runat="server">
      <%# WebSanitizer.HtmlEncode(this.ErrorMessages.Get(((RepeaterItem)Container.Parent.Parent).ItemIndex, Container.ItemIndex)) %>
    </small>
    </div><!--product-->
    
    <%-- セット商品 --%>
    <div class="product" visible="<%# (((CartProduct)Container.DataItem).IsSetItem) && (((CartProduct)Container.DataItem).ProductSetItemNo == 1) %>" runat="server">
    <%-- 隠し値 --%>
    <asp:HiddenField ID="hfIsSetItem" runat="server" Value="<%# ((CartProduct)Container.DataItem).IsSetItem %>" />
    <asp:HiddenField ID="hfProductSetId" runat="server" Value="<%# GetProductSetId((CartProduct)Container.DataItem) %>" />
    <asp:HiddenField ID="hfProductSetNo" runat="server" Value="<%# GetProductSetNo((CartProduct)Container.DataItem) %>" />
    <asp:HiddenField ID="hfProductSetItemNo" runat="server" Value="<%# ((CartProduct)Container.DataItem).ProductSetItemNo %>" />
    <div>
    <asp:Repeater id="rProductSet" DataSource="<%# (((CartProduct)Container.DataItem).ProductSet != null) ? ((CartProduct)Container.DataItem).ProductSet.Items : null %>" OnItemCommand="rCartList_ItemCommand" runat="server">
    <HeaderTemplate>
      <table cellpadding="0" cellspacing="0" width="826" summary="ショッピングカート">
    </HeaderTemplate>
    <ItemTemplate>
      <tr>
      <td class="name">
      <dl>
      <dt>
        <a href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
          <w2c:ProductImage ProductMaster="<%# Container.DataItem %>" ImageSize="M" runat="server" /></a>
        <w2c:ProductImage ProductMaster="<%# Container.DataItem %>" ImageSize="M" runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false %>" />
      </dt>
      <dd>
        <span>
          <a href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
            <%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) %> x <%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).CountSingle) %></a>
          <%# (((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false) ? WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) + " x " + WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).CountSingle) : ""%>
          <%# (((CartProduct)Container.DataItem).GetProductTag("tag_cart_product_message").Length != 0) ? "<br/><p class=\"message\">" + WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).GetProductTag("tag_cart_product_message")) + "</p>" : "" %>
        </span>
      </dd>
      </dl>
      <p class="price"><%#: CurrencyManager.ToPrice(((CartProduct)Container.DataItem).Price) %> </p></td>
      <td visible="<%# (((CartProduct)Container.DataItem).ProductSetItemNo == 1) %>" rowspan="<%# (((CartProduct)Container.DataItem).ProductSet != null) ? ((CartProduct)Container.DataItem).ProductSet.Items.Count : 1 %>" class="quantity" runat="server">
        <asp:TextBox ID="tbProductSetCount" Runat="server" Text='<%# GetProductSetCount((CartProduct)Container.DataItem) %>' MaxLength="3" CssClass="orderCount"></asp:TextBox></td>
      <td visible="<%# (((CartProduct)Container.DataItem).ProductSetItemNo == 1) %>" rowspan="<%# (((CartProduct)Container.DataItem).ProductSet != null) ? ((CartProduct)Container.DataItem).ProductSet.Items.Count : 1 %>" class="subtotal" runat="server">
        <%#: CurrencyManager.ToPrice(GetProductSetPriceSubtotal((CartProduct)Container.DataItem)) %> </td>
      <td visible="<%# (((CartProduct)Container.DataItem).ProductSetItemNo == 1) %>" rowspan="<%# (((CartProduct)Container.DataItem).ProductSet != null) ? ((CartProduct)Container.DataItem).ProductSet.Items.Count : 1 %>" class="delete" runat="server">
        <asp:LinkButton ID="lbDeleteProductSet" CommandName="DeleteProductSet" CommandArgument='' Runat="server">削除</asp:LinkButton></td>
      </tr>
    </ItemTemplate>
    <FooterTemplate>
      </table>
    </FooterTemplate>
    </asp:Repeater>
    </div>
    <small class="fred pdg_leftA" visible="<%# this.ErrorMessages.HasMessages(((RepeaterItem)Container.Parent.Parent).ItemIndex, Container.ItemIndex) %>" runat="server">
      <%# WebSanitizer.HtmlEncode(this.ErrorMessages.Get(((RepeaterItem)Container.Parent.Parent).ItemIndex, Container.ItemIndex)) %>
    </small>
    </div><!--product-->
    
  </ItemTemplate>
  </asp:Repeater>
  <!-- ▽セットプロモーション商品▽ -->
  <asp:Repeater ID="rCartSetPromotion" DataSource="<%# ((CartObject)Container.DataItem).SetPromotions %>" runat="server">
  <ItemTemplate>
    <asp:HiddenField ID="hfCartSetPromotionNo" runat="server" Value="<%# ((CartSetPromotion)Container.DataItem).CartSetPromotionNo %>" />
    <div class="product">
      <div>
        <asp:Repeater ID="rCartSetPromotionItem" DataSource="<%# ((CartSetPromotion)Container.DataItem).Items %>" OnItemCommand="rCartList_ItemCommand" runat="server">
        <HeaderTemplate>
          <table cellpadding="0" cellspacing="0" summary="ショッピングカート">
        </HeaderTemplate>
        <ItemTemplate>
          <tr>
            <td class="name">
              <dl>
              <dt>
                <a href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
                  <w2c:ProductImage ProductMaster="<%# Container.DataItem %>" ImageSize="M" runat="server" /></a>
                <w2c:ProductImage ProductMaster="<%# Container.DataItem %>" ImageSize="M" runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false %>" />
              </dt>
              <dd>
                <span>
                  <a href='<%# WebSanitizer.UrlAttrHtmlEncode(((CartProduct)Container.DataItem).CreateProductDetailUrl()) %>' runat="server" Visible="<%# ((CartProduct)Container.DataItem).IsProductDetailLinkValid() %>">
                    <%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName)%></a>
                  <%# (((CartProduct)Container.DataItem).IsProductDetailLinkValid() == false) ? WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).ProductJointName) : "" %>
                </span>
              </dd>
              <dd visible='<%# ((CartProduct)Container.DataItem).ProductOptionSettingList.IsSelectedProductOptionValueAll %>' runat="server">
              <asp:Repeater ID="rProductOptionSettings" DataSource='<%# ((CartProduct)Container.DataItem).ProductOptionSettingList %>' runat="server">
                <ItemTemplate>
                  <%# WebSanitizer.HtmlEncode(((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue()) %>
                  <%# (((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue() != "") ? "<br />" : "" %>
                </ItemTemplate>
              </asp:Repeater>
              </dd>
              </dl>
              <p class="price"><%#: CurrencyManager.ToPrice(((CartProduct)Container.DataItem).Price) %> (<%#: this.ProductPriceTextPrefix %>)</p>
            </td>
            <td class="quantity">
              <span visible="<%# ((CartObject)((RepeaterItem)Container.Parent.Parent.Parent.Parent).DataItem).IsGift == false %>" runat="server">
                <asp:TextBox ID="tbSetPromotionItemCount" Runat="server" Text="<%# ((CartProduct)Container.DataItem).QuantityAllocatedToSet[((CartSetPromotion)((RepeaterItem)Container.Parent.Parent).DataItem).CartSetPromotionNo] %>" MaxLength="3" CssClass="orderCount"></asp:TextBox><br />
                <small class="fred" visible="<%# this.ErrorMessages.HasMessages(((RepeaterItem)Container.Parent.Parent.Parent.Parent).ItemIndex, ((RepeaterItem)Container.Parent.Parent).ItemIndex, Container.ItemIndex) %>" runat="server">
                  <%# WebSanitizer.HtmlEncode(this.ErrorMessages.Get(((RepeaterItem)Container.Parent.Parent.Parent.Parent).ItemIndex, ((RepeaterItem)Container.Parent.Parent).ItemIndex, Container.ItemIndex)) %>
                </small>
              </span>
              <span visible="<%# ((CartObject)((RepeaterItem)Container.Parent.Parent.Parent.Parent).DataItem).IsGift %>" runat="server">
                <%# StringUtility.ToNumeric(((CartProduct)Container.DataItem).QuantityAllocatedToSet[((CartSetPromotion)((RepeaterItem)Container.Parent.Parent).DataItem).CartSetPromotionNo]) %>
              </span>
            </td>
            <td visible="<%# (Container.ItemIndex == 0) %>" rowspan="<%# ((CartSetPromotion)((RepeaterItem)Container.Parent.Parent).DataItem).Items.Count %>" class="subtotal" runat="server">
              <span visible="<%# ((CartSetPromotion)((RepeaterItem)Container.Parent.Parent).DataItem).IsDiscountTypeProductDiscount %>" runat="server">
              <strike><%#: CurrencyManager.ToPrice(((CartSetPromotion)((RepeaterItem)Container.Parent.Parent).DataItem).UndiscountedProductSubtotal) %> (<%#: this.ProductPriceTextPrefix %>)</strike><br />
              </span>
              <%#: CurrencyManager.ToPrice(((CartSetPromotion)((RepeaterItem)Container.Parent.Parent).DataItem).UndiscountedProductSubtotal - ((CartSetPromotion)((RepeaterItem)Container.Parent.Parent).DataItem).ProductDiscountAmount) %> (<%#: this.ProductPriceTextPrefix %>)<br />
              <%# WebSanitizer.HtmlEncode(((CartSetPromotion)((RepeaterItem)Container.Parent.Parent).DataItem).SetpromotionDispName) %>
            </td>
            <td class="delete">
              <asp:LinkButton ID="lbDeleteProduct" CommandName="DeleteProduct" CommandArgument='' Runat="server">削除</asp:LinkButton>
              <%-- 隠し値 --%>
              <asp:HiddenField ID="hfShopId" runat="server" Value="<%# ((CartProduct)Container.DataItem).ShopId %>" />
              <asp:HiddenField ID="hfProductId" runat="server" Value="<%# ((CartProduct)Container.DataItem).ProductId %>" />
              <asp:HiddenField ID="hfVariationId" runat="server" Value="<%# ((CartProduct)Container.DataItem).VariationId %>" />
              <asp:HiddenField ID="hfIsFixedPurchase" runat="server" Value="<%# ((CartProduct)Container.DataItem).IsFixedPurchase %>" />
              <asp:HiddenField ID="hfAddCartKbn" runat="server" Value="<%# ((CartProduct)Container.DataItem).AddCartKbn %>" />
              <asp:HiddenField ID="hfProductSaleId" runat="server" Value="<%# ((CartProduct)Container.DataItem).ProductSaleId %>" />
              <asp:HiddenField ID="hfProductOptionValue" runat="server" Value='<%# ((CartProduct)Container.DataItem).ProductOptionSettingList.GetDisplayProductOptionSettingSelectValues() %>' />
              <asp:HiddenField ID="hfAllocatedQuantity" runat="server" Value='<%# ((CartProduct)Container.DataItem).QuantityAllocatedToSet[((CartSetPromotion)((RepeaterItem)Container.Parent.Parent).DataItem).CartSetPromotionNo] %>' />
            </td>
          </tr>
        </ItemTemplate>
        <FooterTemplate>
          </table>
        </FooterTemplate>
        </asp:Repeater>
      </div>
    </div>
  </ItemTemplate>
  </asp:Repeater>
  <!-- △セットプロモーション商品△ -->

  <%-- ▽ノベルティ▽ --%>
  <asp:Repeater ID="rNoveltyList" runat="server" DataSource="<%# GetCartNovelty(((CartObject)Container.DataItem).CartId) %>" Visible="<%# GetCartNovelty(((CartObject)Container.DataItem).CartId).Length != 0 %>">
    <HeaderTemplate>
    </HeaderTemplate>
    <ItemTemplate>
      <div class="novelty clearFix">
      <h4 class="title">
        <%# WebSanitizer.HtmlEncode(((CartNovelty)Container.DataItem).NoveltyDispName) %>を追加してください。
      </h4>
      <p class="msg"><span class="fred">※</span>注文確定後の返品・交換はできません。</p>
      <p runat="server" visible="<%#((CartNovelty)Container.DataItem).GrantItemList.Length == 0 %>">
        ただいま付与できるノベルティはございません。
      </p>
      <asp:Repeater ID="rNoveltyItem" runat="server" DataSource="<%# ((CartNovelty)Container.DataItem).GrantItemList %>" OnItemCommand="rCartList_ItemCommand">
        <ItemTemplate>
          <div class="plist">
            <p class="image">
              <w2c:ProductImage ProductMaster="<%# ((CartNoveltyGrantItem)Container.DataItem).ProductInfo %>" IsVariation="true" ImageSize="M" runat="server" />
            </p>
            <p class="name"><%# WebSanitizer.HtmlEncode(((CartNoveltyGrantItem)Container.DataItem).JointName) %></p>
            <p class="price"><%#: CurrencyManager.ToPrice(((CartNoveltyGrantItem)Container.DataItem).Price) %>(<%#: this.ProductPriceTextPrefix %>)</p>
            <p class="add">
              <asp:LinkButton ID="lbAddNovelty" runat="server" CommandName="AddNovelty" CommandArgument='<%#  string.Format("{0},{1}", ((RepeaterItem)Container.Parent.Parent).ItemIndex, Container.ItemIndex) %>' class="btn btn-mini">カートに追加</asp:LinkButton>
            </p>
            <p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1" /></p>
          </div><!--product-->
        </ItemTemplate>
      </asp:Repeater>
      </div><!--novelty-->
    </ItemTemplate>
    <FooterTemplate>
    </FooterTemplate>
  </asp:Repeater>
  <%-- △ノベルティ△ --%>

  </div><!--list-->

  <uc:BodyAnnounceFreeShipping runat="server" TargetCart="<%# ((CartObject)Container.DataItem) %>" />

  <div class="cartOrder">
  <div class="subcartOrder">
  
  <div class="pointBox" visible="<%# Constants.W2MP_POINT_OPTION_ENABLED && this.IsLoggedIn %>" runat="server">
  <div class="box">
  <p><img src="../../Contents/ImagesPkg/common/ttl_point.gif" alt="ポイントを使う" width="262" height="23" /></p>
  <div class="boxbtm">
  <div>
  <div>
  <dl>
  <dt>今回合計 <%# WebSanitizer.HtmlEncode(GetNumeric(this.LoginUserPointUsable))%> ポイントまでご利用いただけます
  <span>※1<%= Constants.CONST_UNIT_POINT_PT %> = <%: CurrencyManager.ToPrice(1m) %></span>
  </dt>
  <dd><asp:TextBox ID="tbOrderPointUse" Runat="server" Text="<%# ((CartObject)Container.DataItem).UsePoint %>" MaxLength="6"></asp:TextBox>&nbsp;&nbsp;<%= Constants.CONST_UNIT_POINT_PT %></dd>
  </dl>
  <p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
  </div>
  <p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
  </div>
  <span class="fred" visible="<%# this.ErrorMessages.HasMessages(Container.ItemIndex, CartErrorMessages.ErrorKbn.Point) %>" runat="server">
    <%# WebSanitizer.HtmlEncode(this.ErrorMessages.Get(Container.ItemIndex, CartErrorMessages.ErrorKbn.Point)) %>
  </span>
  </div><!--boxbtm-->
  </div><!--box-->
  </div><!--pointBox-->
  <div class="couponBox" visible="<%# Constants.W2MP_COUPON_OPTION_ENABLED %>" runat="server">
  <div class="box">
  <p class="coupon_text">クーポンを使う
    <!-- <img src="../../Contents/ImagesPkg/common/ttl_coupon.gif" alt="クーポンを使う" width="262" height="23" /> -->
    
  </p>
  <div id="divCouponInputMethod" runat="server"
    style="font-size: 10px; padding: 10px 10px 0px 10px; font-family: 'Lucida Grande','メイリオ',Meiryo,'Hiragino Kaku Gothic ProN', sans-serif; color: #333;">
    <asp:RadioButtonList runat="server" AutoPostBack="true" ID="rblCouponInputMethod"
      OnSelectedIndexChanged="rblCouponInputMethod_SelectedIndexChanged" OnDataBinding="rblCouponInputMethod_DataBinding"
      DataSource="<%# GetCouponInputMethod() %>" DataTextField="Text" DataValueField="Value" RepeatColumns="2" RepeatDirection="Horizontal"></asp:RadioButtonList>
  </div>
  <div class="boxbtm">
  <div>
  <div id="hgcCouponSelect" runat="server">
    <asp:DropDownList CssClass="input_border" style="width: 240px" ID="ddlCouponList" runat="server" DataTextField="Text" DataValueField="Value" OnTextChanged="ddlCouponList_TextChanged" AutoPostBack="true"></asp:DropDownList>
  </div>
  <div>
  <dl>
  <dl id="hgcCouponCodeInputArea" runat="server">
  <dt><span>クーポンコード</span></dt>
  <dd><asp:TextBox ID="tbCouponCode" runat="server" Text="<%# GetCouponCode(((CartObject)Container.DataItem).Coupon) %>" MaxLength="30" autocomplete="off"></asp:TextBox></dd>
  </dl>
  <p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
  </div>
  <p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
  </div>
  <span class="fred" visible="<%# this.ErrorMessages.HasMessages(Container.ItemIndex, CartErrorMessages.ErrorKbn.Coupon) %>" runat="server">
    <%# WebSanitizer.HtmlEncode(this.ErrorMessages.Get(Container.ItemIndex, CartErrorMessages.ErrorKbn.Coupon)) %>
  </span>
  <asp:LinkButton runat="server" ID="lbShowCouponBox" Text="クーポンBOX" 
    style="color: #ffffff !important; background-color: #000 !important;
    border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); display: inline-block;
    padding: 4px 10px 4px; margin-bottom: 0; font-size: 13px; line-height: 18px; text-align: center; vertical-align: middle; cursor: pointer;
    border: 1px solid #cccccc; border-radius: 4px; box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); white-space: nowrap;"
    OnClick="lbShowCouponBox_Click" ></asp:LinkButton>
  </div><!--boxbtm-->
  </div><!--box-->
  <div runat="server" id="hgcCouponBox" style="z-index: 1; top: 0; left: 0; width: 100%; height: 120%; position: fixed; background-color: rgba(128, 128, 128, 0.75);"
    Visible='<%# ((CartObject)Container.DataItem).CouponBoxVisible %>'>
  <div id="hgcCouponList" style="width: 800px; height: 500px; top: 50%; left: 50%; text-align: center; border: 2px solid #aaa; background: #fff; position: fixed; z-index: 2; margin:-250px 0 0 -400px;">
  <h2 style="height: 20px; color: #fff; background-color: #000; font-size: 16px; padding: 3px 0px; border-bottom: solid 1px #ccc; ">クーポンBOX</h2>
  <div style="height: 400px; overflow: auto;">
  <asp:Repeater ID="rCouponList" ItemType="UserCouponDetailInfo" Runat="server" DataSource="<%# GetUsableCoupons((CartObject)Container.DataItem) %>">
    <HeaderTemplate>
    <table>
      <tr>
        <th style="border-bottom-style:solid; border-bottom-width:1px; background-color:#ececec; padding:10px; text-align:center;width:150px;">クーポンコード</th>
        <th style="border-bottom-style:solid; border-bottom-width:1px; background-color:#ececec; padding:10px; text-align:center;width:230px;">クーポン名</th>
        <th style="border-bottom-style:solid; border-bottom-width:1px; background-color:#ececec; padding:10px; text-align:center;width:100px;">割引金額<br />/割引率</th>
        <th style="border-bottom-style:solid; border-bottom-width:1px; background-color:#ececec; padding:10px; text-align:center;width:70px;">利用可能回数</th>
        <th style="border-bottom-style:solid; border-bottom-width:1px; background-color:#ececec; padding:10px; text-align:center;width:350px;">有効期限</th>
        <th style="border-bottom-style:solid; border-bottom-width:1px; background-color:#ececec; padding:10px; text-align:center;width:100px;"></th>
      </tr>
    </HeaderTemplate>
    <ItemTemplate>
      <tr>
        <td style="border-bottom-style:solid; border-bottom-width:1px; padding:10px 8px; text-align:left; text-align:center;width:150px; background-color: white;">
          <%#: Item.CouponCode %><br />
          <asp:HiddenField runat="server" ID="hfCouponBoxCouponCode" Value="<%# Item.CouponCode %>" />
        </td>
        <td style="border-bottom-style:solid; border-bottom-width:1px; padding:10px 8px; text-align:left; text-align:center;width:230px; background-color: white;"
          title="<%#: Item.CouponDispDiscription %>">
          <%#: Item.CouponDispName %>
        </td>
        <td style="border-bottom-style:solid; border-bottom-width:1px; padding:10px 8px; text-align:left; text-align:center;width:70px; background-color: white;">
          <%#: (StringUtility.ToEmpty(Item.DiscountPrice) != "")
              ? CurrencyManager.ToPrice(Item.DiscountPrice)
              : (StringUtility.ToEmpty(Item.DiscountRate) != "")
                ? StringUtility.ToEmpty(Item.DiscountRate) + "%"
                : "-" %>
        </td>
        <td style="border-bottom-style:solid; border-bottom-width:1px; padding:10px 8px; text-align:left; text-align:center;width:70px; background-color: white;">
          <%#: GetCouponCount(Item) %>
        </td>
        <td style="border-bottom-style:solid; border-bottom-width:1px; padding:10px 8px; text-align:left; text-align:center;width:350px; background-color: white;">
          <%#: DateTimeUtility.ToStringFromRegion(Item.ExpireEnd, DateTimeUtility.FormatType.LongDateHourMinute1Letter) %>
        </td>
        <td style="border-bottom-style:solid; border-bottom-width:1px; padding:10px 8px; text-align:left; text-align:center;width:100px; background-color: white;">
          <asp:LinkButton runat="server" id="lbCouponSelect" OnClick="lbCouponSelect_Click" style="color: #ffffff !important; background-color: #000 !important;
            border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25); text-shadow: 0 -1px 0 rgba(0, 0, 0, 0.25); display: inline-block;
            padding: 4px 10px 4px; margin-bottom: 0; font-size: 13px; line-height: 18px; text-align: center; vertical-align: middle; cursor: pointer;
            border: 1px solid #cccccc; border-radius: 4px; box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); white-space: nowrap;">このクーポンを使う</asp:LinkButton>
        </td>
      </tr>
    </ItemTemplate>
    <FooterTemplate>
      </table>
    </FooterTemplate>
  </asp:Repeater>
  </div>
  <div style="width: 100%; height: 50px; display: block; z-index: 3">
    <asp:LinkButton ID="lbCouponBoxClose" OnClick="lbCouponBoxClose_Click" runat="server"
      style="padding: 8px 12px; font-size: 14px; color: #333; text-decoration: none; border-color: rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.1) rgba(0, 0, 0, 0.25);
      display: inline-block; line-height: 18px; color: #333333; text-align: center; vertical-align: middle; border-radius: 5px; cursor: pointer; background-color: #f5f5f5;
      border: 1px solid #cccccc; box-shadow: inset 0 1px 0 rgba(255, 255, 255, 0.2), 0 1px 2px rgba(0, 0, 0, 0.05); text-decoration: none; background-image: none; margin: 5px auto">クーポンを利用しない</asp:LinkButton>
  </div>
  </div>
  </div>
  </div><!--couponBox-->

  <div class="priceList">
  <div>
  <dl class="bgc">
  <dt>商品合計(<%#: this.ProductPriceTextPrefix %>)</dt>
  <dd><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).PriceSubtotal) %></dd>
  </dl>
   <dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
  <dt>送料</dt>
  <dd runat="server" style='<%# (((CartObject)Container.DataItem).ShippingPriceSeparateEstimateFlg) ? "display:none;" : ""%>'>
    <%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).PriceShipping) %></dd>
  <dd runat="server" style='<%# (((CartObject)Container.DataItem).ShippingPriceSeparateEstimateFlg == false) ? "display:none;" : ""%>'>
    <%# WebSanitizer.HtmlEncode(((CartObject)Container.DataItem).ShippingPriceSeparateEstimateMessage)%></dd>
  </dl>
  <%-- セットプロモーション(商品割引) --%>
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
  <dd class='<%# (((CartObject)Container.DataItem).MemberRankDiscount > 0) ? "minus" : "" %>'><%# (((CartObject)Container.DataItem).MemberRankDiscount > 0) ? "-" : ""%><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).MemberRankDiscount * ((((CartObject)Container.DataItem).MemberRankDiscount < 0) ? -1 : 1)) %></dd>
  </dl>
  <%} %>
  <%if (Constants.MEMBER_RANK_OPTION_ENABLED && Constants.FIXEDPURCHASE_OPTION_ENABLED && this.IsLoggedIn){ %>
  <dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>' style="display: none;">
  <dt>定期会員割引額</dt>
  <dd class='<%# (((CartObject)Container.DataItem).FixedPurchaseMemberDiscountAmount > 0) ? "minus" : "" %>'><%# (((CartObject)Container.DataItem).FixedPurchaseMemberDiscountAmount > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).FixedPurchaseMemberDiscountAmount * ((((CartObject)Container.DataItem).FixedPurchaseMemberDiscountAmount < 0) ? -1 : 1)) %></dd>
  </dl>
  <%} %>
  <%if (Constants.FIXEDPURCHASE_OPTION_ENABLED){ %>
  <span runat="server" visible="<%# (((CartObject)Container.DataItem).HasFixedPurchase) %>" style="display: none;">
  <dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
  <dt>定期購入割引額</dt>
  <dd class='<%# (((CartObject)Container.DataItem).FixedPurchaseDiscount > 0) ? "minus" : "" %>'><%#: (((CartObject)Container.DataItem).FixedPurchaseDiscount > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).FixedPurchaseDiscount * ((((CartObject)Container.DataItem).FixedPurchaseDiscount < 0) ? -1 : 1)) %></dd>
  </dl>
  </span>
  <%} %>
  <%if (Constants.W2MP_COUPON_OPTION_ENABLED){ %>
  <dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
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

  <%-- セットプロモーション(配送料割引) --%>
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
  <%if (this.ProductIncludedTaxFlg == false) { %>
  <dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
  <dt>消費税額</dt>
  <dd><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).PriceTax) %></dd>
  </dl>
  <%} %>
  </dl>
  </div>
  <p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
  <div>
  <dl class="result">
  <dt>合計(税込)</dt>
  <dd><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).PriceCartTotalWithoutPaymentPrice) %></dd>
  </dl>
  </div>
  </div><!--priceList-->
  <p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
  </div><!--subcartOrder-->
  </div><!--cartOrder-->
  </div><!--background-->
  </div><!--productList-->
  
  <%-- 隠し値：カートID --%>
  <asp:HiddenField ID="hfCartId" runat="server" Value="<%# ((CartObject)Container.DataItem).CartId %>" />
  <%-- 隠し再計算ボタン --%>
  <asp:LinkButton id="lbRecalculateCart" runat="server" CommandArgument="<%# Container.ItemIndex %>" onclick="lbRecalculate_Click"></asp:LinkButton>
</ItemTemplate>
</asp:Repeater>
<%} %>



<div class="btmbtn below">
  <div class="btmbtn__innar">
    <div class="shoppingCart__title">
      <%if (this.CartList.Items.Count != 0) {%>
      <p class="">総合計（税込）<strong><%: CurrencyManager.ToPrice(this.CartList.PriceCartListTotal) %></strong></p>
      <%} %>
    </div>
    <ul>
      <%if (this.CartList.Items.Count != 0) {%>
      <%-- UPDATE PANELの外のイベントを呼び出す --%>
      <li><a href="<%= WebSanitizer.HtmlEncode(this.NextEvent) %>" class="btn btn-large btn-success">購入手続きにすすむ</a></li>
      <%} %>

    </ul>
    <p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
  </div>
  <p class="btn-gry__wrap"><a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="btn btn-large btn-gry"><span><</span>ショッピングへ戻る</a></p>
</div><!--btmbtn-->
</div>

</div><!--CartList-->

</ContentTemplate>
</asp:UpdatePanel>
<%-- UPDATE PANELここまで --%>
<div>
<uc:BodyProductRecommendByRecommendEngine runat="server" RecommendCode="p014" ItemCode="<%# GetCartProductsForReconize() %>" MaxDispCount="6" ImageSize="M" />
</div>
<%-- CRITEOタグ（引数：カート情報） --%>
<uc:Criteo ID="criteo" runat="server" Datas="<%# this.CartList %>" />

<%--▼▼Amazonウィジェット用スクリプト▼▼--%>
<script type="text/javascript">
  
  window.onAmazonLoginReady = function () {
    amazon.Login.setClientId('<%=Constants.PAYMENT_AMAZON_CLIENTID %>');
  };
  window.onAmazonPaymentsReady = function () {
    if ($('#AmazonPayButton').length) showButton();
  };

  <%-- Amazonボタン表示ウィジェット --%>
  function showButton() {
    var authRequest;
    OffAmazonPayments.Button("AmazonPayButton", "<%=Constants.PAYMENT_AMAZON_SELLERID %>", {
      type: "PwA",
      color: "Gold",
      size: "medium",
      authorization: function () {
        loginOptions = {
          scope: "payments:widget payments:shipping_address profile",
          popup: true
        };
        authRequest = amazon.Login.authorize(loginOptions, "<%=w2.App.Common.Amazon.Util.AmazonUtil.CreateCallbackUrl(Constants.PAGE_FRONT_AMAZON_ORDER_CALLBACK) %>");
      },
      onError: function (error) {
        alert(error.getErrorMessage());
      }
    });
  };
</script>
<script async="async" type="text/javascript" charset="utf-8" src="<%=Constants.PAYMENT_AMAZON_WIDGETSSCRIPT %>"></script>
<%-- ▲▲Amazonウィジェット用スクリプト▲▲ --%>

</asp:Content>
