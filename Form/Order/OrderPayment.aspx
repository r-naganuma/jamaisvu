<%--
=========================================================================================================
  Module      : 注文お支払い方法選択画面(OrderPayment.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/OrderPage.master" autoeventwireup="true" inherits="Form_Order_OrderPayment, App_Web_orderpayment.aspx.bf558b1b" title="支払方法確認｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="支払方法確認ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<%-- ▼削除禁止：クレジットカードTokenコントロール▼ --%>
<%@ Register TagPrefix="uc" TagName="CreditToken" Src="~/Form/Common/CreditToken.ascx" %>
<%@ Register Src="~/Form/Common/Order/PaymentDescriptionCvsDef.ascx" TagPrefix="uc" TagName="PaymentDescriptionCvsDef" %>
<%-- ▲削除禁止：クレジットカードTokenコントロール▲ --%>
<%@ Import Namespace="w2.Domain.Coupon.Helper" %>
<%@ Register Src="~/Form/Common/PayPalScriptsForm.ascx" TagPrefix="uc" TagName="PaypalScriptsForm" %>
<%@ Register Src="~/Form/Common/Order/PaymentDescriptionPayPal.ascx" TagPrefix="uc" TagName="PaymentDescriptionPayPal" %>
<%@ Register Src="~/Form/Common/Order/PaymentDescriptionTriLinkAfterPay.ascx" TagPrefix="uc" TagName="PaymentDescriptionTriLinkAfterPay" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">


<script>
$(function(){
	
	$("#Contents").addClass("topSpace").addClass("cart3");
	$(".load_wrap").addClass("active");
	$(".shoppingCart__title").html($(".subSumBox p").html());
	$(".shoppingCart").each(function(x){
		$(this).addClass("sc"+x);
	});
	$(".sc1").css("display","none");
	// if($(window).width()<768){
	//  $(".add_cart_box").append($(".sc0"));
	// }
	$(window).scroll(function () {
	  if ($(this).scrollTop() > 215) {
	      $('.shoppingCart').addClass('is-fixed');
	  } else {
	      $('.shoppingCart').removeClass('is-fixed');
	  }
	});	


	// if($(window).width()<768){
	// 	 // $(".add_cart_box").html($(".sc0").clone());
	// 	 console.log("test")
	// }else{

	// }

});
function bodyPageLoad(){
	$("#Contents").addClass("topSpace").addClass("cart3");
	$(".load_wrap").addClass("active");
	$(".shoppingCart__title").html($(".subSumBox p").html());
	$(".shoppingCart").each(function(x){
		$(this).addClass("sc"+x);
	});
	$(".sc1").css("display","none");
	if($("dl.bgc.p_red.op3 .minus").text()!=""){
		$(".couponwrap .coupon").text($("dl.bgc.p_red.op3 .minus").text());

	}else{
		$(".couponwrap").remove();
	}
	
	if($("#ctl00_ContentPlaceHolder1_rCartList_ctl00_ddlCouponList option:selected").text()!=""){
		$(".copupon_wrap_box").text("");
		$(".copupon_wrap_box").text($("#ctl00_ContentPlaceHolder1_rCartList_ctl00_ddlCouponList option:selected").text());

	}else{
		$(".copupon_wrap_box").remove();
	}


	if($(window).width()<768){
		if($(".sc1").length){
			 $(".add_cart_box").html("");
			 // $(".copupon_wrap_box").text("");
			 $(".add_cart_box").html($(".sc0"));
			 $(".couponwrap .coupon").text($("dl.bgc.p_red.op3 .minus").text());
			 console.log("test")
		}else{
			
		}

	}else{

	$('#ctl00_ContentPlaceHolder1_rCartList_ctl00_lbShowCouponBox').click(function () {
		$('body').addClass('active');
	});
	
	$('.couponUseUse').click(function () {
		$('body').removeClass('active');
	});
	
	$('.couponNotUse').click(function () {
		$('body').removeClass('active');
	});


	}
}





</script>
<link href="../../Css/rp/OrderPayment.css" rel="stylesheet">
<!-- <style>
@font-face{font-family:'baskerville';src:url("../Font/baskerville.otf") format("opentype")}@font-face{font-family:'gillsans';src:url("../Font/gillsans.otf") format("opentype")}a{text-decoration:none;-webkit-transition:all 0.2s linear;-moz-transition:all 0.2s linear;-ms-transition:all 0.2s linear;-o-transition:all 0.2s linear;transition:all 0.2s linear;display:block}a:hover{opacity:0.8}*{-webkit-box-sizing:border-box;-moz-box-sizing:border-box;-o-box-sizing:border-box;-ms-box-sizing:border-box;box-sizing:border-box}strong{font-weight:bold}.hide{display:none!important}.cf{min-height:1px;overflow:hidden}.cf:after{content:".";display:block;clear:both;height:0;visibility:hidden}* html .cf{height:1px}input[type=button],input[type=email],input[type=submit],input[type=text]{border-radius:0;-webkit-box-sizing:content-box;-webkit-appearance:none;-moz-appearance:none;appearance:none;border:none;-webkit-box-sizing:border-box;box-sizing:border-box;outline:none}textarea{border-radius:0;-webkit-box-sizing:content-box;-webkit-appearance:none;-moz-appearance:none;appearance:none;border:none;-webkit-box-sizing:border-box;box-sizing:border-box;outline:none}input[type=button]::-webkit-search-decoration,input[type=email]::-webkit-search-decoration,input[type=submit]::-webkit-search-decoration,input[type=text]::-webkit-search-decoration{display:none}input[type=button]::focus,input[type=email]::focus,input[type=submit]::focus,input[type=text]::focus{outline-offset:-2px}textarea::focus{outline-offset:-2px}.pc_contents{display:block!important}@media (max-width:768px){.pc_contents{display:none!important}}.sp_contents{display:none!important}@media (max-width:768px){.sp_contents{display:block!important}}.pc_flex{display:-webkit-box!important;display:-ms-flexbox!important;display:flex!important}@media (max-width:768px){.pc_flex{display:none!important}}.sp_flex{display:none!important}@media (max-width:768px){.sp_flex{display:-webkit-box!important;display:-ms-flexbox!important;display:flex!important}}.cart3 h2.ttlA{font-size:14px!important;font-weight:bold;max-width:1280px;margin:0 auto 15px!important;padding:0 0 5px 20px!important;height:auto!important;border:none!important}@media (max-width:768px){.cart3 h2.ttlA{margin:16px auto 15px!important;padding:0 0 5px 0px!important}}.cart3 .main.clearFix{display:none}.cart3 div.main{width:100%!important;padding:0!important;margin:0!important;background:none!important;position:relative}.cart3 div.submain{width:100%!important}.cart3 #CartList{padding:0 6.25%;margin:auto;max-width:1280px}@media (max-width:768px){.cart3 #CartList{margin:50px auto;padding:0}}.cart3 #CartList div.column{width:71.42857%!important}@media (max-width:768px){.cart3 #CartList div.column{width:100%!important;padding:0 6.25%}}.cart3 #CartList h3{color:#FFFFFF;font-size:12px;padding:6px 14px 5px 14px;background-color:#fff;padding:0!important;border:none!important;display:none}.cart3 #CartList .orderBox{background:none;margin-top:0}.cart3 #CartList .orderBox div.list{padding:0}.cart3 #CartList .orderBox dt{color:#333333;font-weight:bold;padding:17px 40px 20px 40px;background-color:#fff;margin:0;border-top:1px solid #EAE6E5}@media (max-width:768px){.cart3 #CartList .orderBox dt{padding:17px 0px 20px 0px;margin:0 0 10px}}@media (max-width:768px){.cart3 #CartList .orderBox dd p{padding:0!important}}.cart3 #CartList .orderBox span.radioBtn input{margin:0 20px 0 0}.cart3 #CartList .orderBox .bottom{background:none}.cart3 #CartList .orderBox .bottom .pay01{padding:20px 40px;border-bottom:1px solid #EAE6E5}.cart3 #CartList .orderBox .bottom .pay01 p{padding:0!important}.cart3 #CartList .orderBox .bottom .pay01 strong{font-weight:bold;margin:0 0 10px!important;display:block}.cart3 #CartList .orderBox .bottom .pay02{padding:20px 40px 20px 72px}.cart3 #CartList .orderBox select#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_ddlSBPSCvsType{width:255px;height:32px;letter-spacing:0.08em;font-weight:normal;padding:0 0 0 10px;height:32px;border-radius:0!important;-moz-appearance:none;-webkit-appearance:none;appearance:none;background:url(../../Contents/ImagesPkg/user/common/arrow_down.svg) no-repeat 97% 12px}.cart3 #CartList .shoppingCart{width:23.92%;float:right;background:#EAE6E5;padding:25px 25px 40px 25px;margin:0 0 100px}@media (max-width:768px){.cart3 #CartList .shoppingCart{width:100%}}.cart3 #CartList .shoppingCart h2{display:none}.cart3 #CartList .shoppingCart .block{padding:0!important;background:none}.cart3 #CartList .shoppingCart div.subCartList{background:none}.cart3 #CartList .shoppingCart .singleProduct{margin:0 0 20px}.cart3 #CartList .shoppingCart .singleProduct>div{width:100%;background:none}.cart3 #CartList .shoppingCart .singleProduct dl{width:100%;padding:0;margin:0;display:-webkit-box;display:-ms-flexbox;display:flex}.cart3 #CartList .shoppingCart .singleProduct dt{width:22.7%;float:left}.cart3 #CartList .shoppingCart .singleProduct dt a{width:100%}.cart3 #CartList .shoppingCart .singleProduct dd{padding:0;width:77.3%;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-pack:space-evenly;-ms-flex-pack:space-evenly;justify-content:space-evenly;-webkit-box-align:center;-ms-flex-align:center;align-items:center}.cart3 #CartList .shoppingCart .singleProduct dd strong{display:none}.cart3 #CartList .shoppingCart .singleProduct dd>p{font-size:12px;letter-spacing:0.08em}.cart3 #CartList .shoppingCart .singleProduct dd>p+p{font-size:14px;letter-spacing:0.08em}.cart3 #CartList .shoppingCart .singleProduct .pc_c_1{font-size:12px}@media (max-width:768px){.cart3 #CartList .shoppingCart .singleProduct .pc_c_1{display:none}.cart3 #CartList .shoppingCart .singleProduct .pc_c_2{display:none}.cart3 #CartList .shoppingCart .singleProduct .w_sp{width:85%}}.cart3 #CartList .shoppingCart div.singleProduct div{width:100%;background:none}@media (max-width:768px){.cart3 #CartList .shoppingCart div.singleProduct div{width:100%}}.cart3 #CartList .shoppingCart dl.OrderPayment_dl.n1{margin:0 0 10px}.cart3 #CartList .shoppingCart dl.OrderPayment_dl.n1 dt,.cart3 #CartList .shoppingCart dl.OrderPayment_dl.n2 dt{width:70%!important;font-size:13px}.cart3 #CartList .shoppingCart dl.OrderPayment_dl.n1 dt span,.cart3 #CartList .shoppingCart dl.OrderPayment_dl.n2 dt span{float:right}.cart3 #CartList .shoppingCart dl.OrderPayment_dl.n1 dd,.cart3 #CartList .shoppingCart dl.OrderPayment_dl.n2 dd{font-size:13px}.cart3 #CartList .shoppingCart .priceList{width:100%;clear:both;border-top:1px solid #2E0E02;margin:20px 0 0}.cart3 #CartList .shoppingCart .priceList>div{width:100%}.cart3 #CartList .shoppingCart .priceList dl{width:100%;-webkit-box-align:center;-ms-flex-align:center;align-items:center;display:-webkit-box;display:-ms-flexbox;display:flex}.cart3 #CartList .shoppingCart .priceList dt{width:70%;text-align:left;font-size:14px;letter-spacing:0.08em}.cart3 #CartList .shoppingCart .priceList dd{width:30%;padding:0;text-align:right;font-size:14px;letter-spacing:0.08em;font-weight:normal}.cart3 #CartList .shoppingCart .priceList dl.bgc{background:none}.cart3 #CartList .shoppingCart .priceList dl.result{font-size:12px!important;margin-top:15px;background:none;border-top:1px solid #2E0E02;padding:15px 0 0 0}.cart3 #CartList .shoppingCart .pointBox{width:100%}.cart3 #CartList .shoppingCart .pointBox div.box{width:100%;margin:0 0 10px;background:none}.cart3 #CartList .shoppingCart .pointBox div.box>p img{height:auto}.cart3 #CartList .shoppingCart .pointBox .boxbtm{width:100%;background:none}.cart3 #CartList .shoppingCart .pointBox .boxbtm .boxbtm{padding:0!important;margin:10px 0 9px}.cart3 #CartList .shoppingCart .pointBox .boxbtm>div{width:100%}.cart3 #CartList .shoppingCart .pointBox .boxbtm dl{width:100%}.cart3 #CartList .shoppingCart .pointBox .boxbtm dt{float:none}.cart3 #CartList .shoppingCart .pointBox .boxbtm dd{float:none;text-align:left;width:100%;margin:10px 0 0}.cart3 #CartList .shoppingCart .couponBox{width:100%}.cart3 #CartList .shoppingCart .couponBox div.box{width:100%;margin:0 0 10px;background:none}.cart3 #CartList .shoppingCart .couponBox div.box>p img{height:auto}.cart3 #CartList .shoppingCart .couponBox .boxbtm{width:100%;background:none;padding:10px 0 0}.cart3 #CartList .shoppingCart .couponBox .boxbtm>div{width:100%}.cart3 #CartList .shoppingCart .couponBox .boxbtm dl{width:100%}.cart3 #CartList .shoppingCart .couponBox .boxbtm dt{float:none}.cart3 #CartList .shoppingCart .couponBox .boxbtm dd{float:none;text-align:left;width:100%;margin:10px 0 0}.cart3 #CartList .shoppingCart input#ctl00_ContentPlaceHolder1_rCartList_ctl00_tbCouponCode{margin:10px 0 0}.cart3 #CartList .shoppingCart .bottom{background:none}.cart3 #CartList .shoppingCart .p_red{color:#AD2E24}.cart3 #CartList dl.p_red.op4{display:none!important}.cart3 #CartList dd.minus{color:#AD2E24!important}.cart3 #CartList .subSumBox+dl{display:none}.cart3 #CartList .subSumBox+dl+small{display:none}.cart3 #CartList .sumBox{width:100%;padding:15px 0px 0 10px;background-color:#eae6e5;border:0;margin-top:15px}.cart3 #CartList .sumBox .subSumBox{width:100%}.cart3 #CartList .sumBox .subSumBox p{width:100%;font-size:14px;font-weight:bold}.cart3 #CartList .sumBox .subSumBox strong{width:40%}.cart3 #CartList .sumBox dl{width:100%}.cart3 #CartList .sumBox dt{width:70%}.cart3 #CartList .sumBox dd{padding:3px 0 0 0}.cart3 #CartList .mrg_topA{display:none}.cart3 .btmbtn__innar{background:#EAE6E5;padding:40px 20px 30px;height:auto}@media (max-width:768px){.cart3 .btmbtn__innar ul{width:58.6vw!important;max-width:220px;margin:auto!important}}.cart3 .btmbtn__innar a{text-decoration:none}.cart3 div.productList dl.name dd{width:68%}.cart3 div.btmbtn{border-top:0}.cart3 div.btmbtn ul li{margin:0}.cart3 a.btn.btn-large.btn-success{padding:0;font-size:12px!important;width:100%;border-radius:0;height:48px;background:#2E0E02;display:-webkit-box!important;display:-ms-flexbox!important;display:flex!important;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;letter-spacing:0.08em;margin:0 0 25px}.cart3 a.btn.btn-large.btn-success2{padding:0;font-size:12px!important;width:100%;border-radius:0;height:48px;background:none;border:1px solid #2E0E02;color:#2E0E02;display:-webkit-box!important;display:-ms-flexbox!important;display:flex!important;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center;letter-spacing:0.08em;margin:0 0 25px}.cart3 a.btn.btn-large.btn-org-gry{padding:0;background:no-repeat;border:none;-webkit-box-shadow:none;box-shadow:none;width:100%;font-size:12px!important;letter-spacing:0.08em;margin:20px 25px 0 0}.cart3 a.btn.btn-large.btn-gry{padding:0;background:no-repeat;border:none;-webkit-box-shadow:none;box-shadow:none;width:100%;font-size:12px!important;letter-spacing:0.08em;margin:20px 25px 0 0}.cart3 a.btn.btn-large.btn-gry span{display:inline-block!important;margin:0 20px 0 0}.cart3 div.btmbtn.below{height:auto}.cart3 .btmbtn__innar dl.btmbtn__innar__dl10{margin:0 0 40px}.cart3 .btmbtn__innar dl{width:100%;display:-webkit-box!important;display:-ms-flexbox!important;display:flex!important;-webkit-box-align:center;-ms-flex-align:center;align-items:center;-webkit-box-pack:center;-ms-flex-pack:center;justify-content:center}.cart3 .btmbtn__innar dl dt{font-size:14px;width:50%;text-align:left}.cart3 .btmbtn__innar dl dt span{font-size:12px;display:inline-block!important;margin:0 0 0 6px}.cart3 .btmbtn__innar dl dd{font-size:14px;width:50%;text-align:right}.cart3 p.btn-gry__wrap{position:relative;top:100px}.cart3 p.btn-gry__wrap a{background:none;border:none;top:94px;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;padding:0 0;-webkit-box-shadow:none;box-shadow:none}.cart3 img.creicon{width:450px!important;margin:9px 0 20px 88px}@media (max-width:768px){.cart3 img.creicon{width:100%!important;margin:8px 0 0px 0px;padding:0 0 0 11%}}.cart3 .pay_dl{width:470px;display:-webkit-box;display:-ms-flexbox;display:flex;-webkit-box-align:center;-ms-flex-align:center;align-items:center;height:32px;margin:0 0 10px}@media (max-width:768px){.cart3 .pay_dl{width:100%;height:auto;display:block;margin:15px 0 0 0}}.cart3 .pay_dl dt{padding:0!important;width:180px;border:none!important;font-size:14px!important;letter-spacing:0.08em;font-weight:normal!important}@media (max-width:768px){.cart3 .pay_dl dt{font-size:13px!important}}.cart3 .pay_dl dt strong{font-weight:normal!important}.cart3 .pay_dl dd{padding:0!important;width:290px}.cart3 .pay_dl input{height:32px;padding:0 0 0 10px;border:1px solid #C0B6B3}.cart3 .pay_dl.d5{display:none}.cart3 .pay_dl.d1 input{width:55px}.cart3 .d4_text{font-size:10px;color:#878787;line-height:12px;-webkit-transform:scale(0.8);-ms-transform:scale(0.8);transform:scale(0.8);position:relative;left:-25px}@media (max-width:768px){.cart3 .d4_text{margin:0 0 25px}}.cart3 .cre_a{padding:11px 0 0 270px}.cart3 .cre_a input{display:none}@media (max-width:768px){.cart3 .cre_a{width:100%}}.cart3 .cre_a input+label{padding-left:32px;vertical-align:middle;position:relative;padding-top:0px;margin-right:50px;display:block}@media (max-width:768px){.cart3 .cre_a input+label{margin-right:0px}}.cart3 .cre_a input+label:before{content:"";display:block;position:absolute;top:0;left:0;width:15px;height:15px;border:1px solid #968680;border-radius:3px;background:#fff;-webkit-box-sizing:border-box;box-sizing:border-box}.cart3 .cre_a input:checked+label:after{content:"";display:block;position:absolute;top:3px;left:3px;width:9px;height:9px;background:#2E0E02;border-radius:2px}.cart3 .cre_a input:checked+label.on:after{content:""}@media (max-width:768px){.cart3 .cre_a{padding:0 0 0 10%;margin:35px 0 0;font-size:13px;position:relative}.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_cbRegistCreditCard+label,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_cbRegistCreditCard+label{font-size:13px!important}}.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_cbRegistCreditCard,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_cbRegistCreditCard{margin:-3px 6px 0 265px}@media (max-width:768px){.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_cbRegistCreditCard,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_cbRegistCreditCard{margin:0px 18px 0 0;margin:-3px 18px 0 0;position:absolute;left:11%;top:5px}}.cart3 div#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_divCreditCardNoToken,.cart3 div#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_divCreditCardNoToken{padding:0 0 0 85px}@media (max-width:768px){.cart3 div#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_divCreditCardNoToken,.cart3 div#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_divCreditCardNoToken{padding:0 0 0 11%}}.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_cbRegistCreditCard+label,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_cbRegistCreditCard+label{font-size:12px;letter-spacing:0.08em}.cart3 dd#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_ddCredit,.cart3 dd#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_ddCredit{padding:0 0 25px}.cart3 div#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_divUserCreditCardName,.cart3 div#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_divUserCreditCardName{padding:10px 0 0 85px}@media (max-width:768px){.cart3 div#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_divUserCreditCardName,.cart3 div#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_divUserCreditCardName{padding:25px 0 0 11%}}.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_ddlCreditExpireMonth,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_ddlCreditExpireYear,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl01_ddlCreditExpireMonth,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl01_ddlCreditExpireYear,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_ddlCreditExpireMonth,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_ddlCreditExpireYear,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl01_ddlCreditExpireMonth,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl01_ddlCreditExpireYear{height:32px;background:url(../../Contents/ImagesPkg/user/common/arrow_down.svg) no-repeat 90% 12px;width:80px;-moz-appearance:none;-webkit-appearance:none;appearance:none;border-radius:0!important;padding:0 0 0 10px;border:1px solid #C0B6B3;font-size:14px}@media (max-width:768px){.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_ddlCreditExpireMonth,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_ddlCreditExpireYear,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl01_ddlCreditExpireMonth,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl01_ddlCreditExpireYear,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_ddlCreditExpireMonth,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_ddlCreditExpireYear,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl01_ddlCreditExpireMonth,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl01_ddlCreditExpireYear{height:38px}}.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_tbCreditSecurityCode,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl01_tbCreditSecurityCode,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_tbCreditSecurityCode,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl01_tbCreditSecurityCode{width:246px}@media (max-width:768px){.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_tbCreditSecurityCode,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl01_tbCreditSecurityCode,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_tbCreditSecurityCode,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl01_tbCreditSecurityCode{width:100%;height:38px}}.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_tbCreditAuthorName,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl01_tbCreditAuthorName,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_tbCreditAuthorName,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl01_tbCreditAuthorName{border:1px solid #C0B6B3;width:246px}@media (max-width:768px){.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_tbCreditAuthorName,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl01_tbCreditAuthorName,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_tbCreditAuthorName,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl01_tbCreditAuthorName{width:100%;height:38px}}.cart3 div#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl01_Div3,.cart3 div#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl01_Div3{padding:0px 0 20px 70px}.cart3 dd#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl05_ddPayPal,.cart3 dd#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl11_ddRecruitSBPSPayment,.cart3 dd#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl12_ddPayPalSBPSPayment,.cart3 dd#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl05_ddPayPal,.cart3 dd#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl11_ddRecruitSBPSPayment,.cart3 dd#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl12_ddPayPalSBPSPayment{padding:0 0 20px 80px}.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_tbCreditCardNo1,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_tbCreditCardNo1{width:246px}@media (max-width:768px){.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_tbCreditCardNo1,.cart3 input#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_tbCreditCardNo1{width:100%;height:38px}}.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl00_ddlCouponList,.cart3 select#ctl00_ContentPlaceHolder1_rCartList_ctl01_ddlCouponList{height:32px;width:100%!important;background:none;-moz-appearance:none;-webkit-appearance:none;appearance:none;border-radius:0!important;padding:0 0 0 10px;border:0;padding:0;font-size:14px;color:#333}.cart3 div#ctl00_ContentPlaceHolder1_rCartList_ctl00_hgcCouponSelect{margin:0 0 15px;width:100%!important}.cart3 div#ctl00_ContentPlaceHolder1_rCartList_ctl00_divCouponInputMethod,.cart3 div#ctl00_ContentPlaceHolder1_rCartList_ctl01_divCouponInputMethod{display:none}.cart3 a#ctl00_ContentPlaceHolder1_rCartList_ctl00_lbShowCouponBox,.cart3 a#ctl00_ContentPlaceHolder1_rCartList_ctl01_lbShowCouponBox{margin:0 0 15px!important}.cart3 span#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_spanErrorMessageForCreditCard,.cart3 span#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_spanErrorMessageForCreditCard{padding:0 0 10px 265px;font-size:11px}@media (max-width:768px){.cart3 span#ctl00_ContentPlaceHolder1_rCartList_ctl00_rPayment_ctl00_spanErrorMessageForCreditCard,.cart3 span#ctl00_ContentPlaceHolder1_rCartList_ctl01_rPayment_ctl00_spanErrorMessageForCreditCard{padding:15px 0 10px 39px}}.cart3 span.checkBox{margin:0 0 15px;display:block}.cart3 .checkBox>input{display:none}.cart3 .checkBox input+label{padding-left:28px;vertical-align:middle;position:relative;padding-top:3px;margin-right:66px}.cart3 .checkBox input+label:before{content:"";display:block;position:absolute;top:0;left:0;width:20px;height:20px;border:1px solid #C0B6B3;border-radius:3px;background:#fff;-webkit-box-sizing:border-box;box-sizing:border-box}.cart3 .checkBox input:checked+label:after{content:"";display:block;position:absolute;top:4px;left:4px;width:12px;height:12px;background:#2E0E02;border-radius:3px}.cart3 .checkBox input:checked+label.on:after{content:""}.cart3 .divUserCreditCardName__wrap{padding:0 0 25px 245px}.cart3 .radioBtn>input{display:none}.cart3 .pointBox{display:none}.cart3 .radioBtn input+label{padding-left:45px;vertical-align:middle;position:relative;padding-top:5px;margin-right:66px}.cart3 .radioBtn input+label:before{content:"";display:block;position:absolute;top:0;left:0;width:24px;height:24px;border:1px solid #968680;border-radius:50%;background:#fff;-webkit-box-sizing:border-box;box-sizing:border-box}.cart3 .radioBtn input:checked+label:after{content:"";display:block;position:absolute;top:6px;left:6px;width:12px;height:12px;background:#2E0E02;border-radius:50%}.cart3 .radioBtn input:checked+label.on:after{content:""}.cart3 small.small0 span{margin:5px 0 0}.cart3 ::-webkit-input-placeholder{color:#C6C6C6;font-size:13px}.cart3 :-ms-input-placeholder{color:#C6C6C6;font-size:13px}.cart3 ::-ms-input-placeholder{color:#C6C6C6;font-size:13px}.cart3 ::placeholder{color:#C6C6C6;font-size:13px}.cart3 dl.op2{display:none!important}.cart3 .btmbtn{border-top:0!important}@media (max-width:768px){div#hgcCouponList{width:94%!important;margin:-250px auto 0 auto!important;left:0!important;right:0;padding:0 10px}div#hgcCouponList .sp_contents{display:block!important;text-align:left!important;display:inline-block!important;width:120px;margin:0 20px 0 0;position:relative}div#hgcCouponList .sp_contents:after{content:":";display:block;position:absolute;right:0;top:0}div#hgcCouponList tr{display:block;padding:15px 0 15px 0;overflow:hidden;border-bottom:1px solid #e3e3e3}div#hgcCouponList td{display:block!important;text-align:left!important;display:inline-block!important;width:100%!important;display:block!important;float:left!important;position:relative;border:none!important}div#hgcCouponList td:nth-child(5){text-align:center}div#hgcCouponList a#ctl00_ContentPlaceHolder1_rCartList_ctl00_lbCouponBoxClose,div#hgcCouponList a#ctl00_ContentPlaceHolder1_rCartList_ctl01_lbCouponBoxClose{position:relative;top:25px}div#hgcCouponList tr:first-child{display:none}div#hgcCouponList tr{display:block}}
</style>
 -->
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

.couponUseUse{
	color: #ffffff !important;
	background: #968680 !important;
	display: block;
	width: 80px;
	height: 40px;
	line-height: 40px;
	margin: 0 auto;
	padding: 0 !important;
	font-size: 13px;
	text-align: center;
	text-decoration: none !important;
	border-radius: 2px;
	letter-spacing: 0.08em;
	position: relative;
}

.couponUseUse::after{
	content: "";
	position: absolute;
	top: 0;
	bottom: 0;
	right: 8px;
	margin: auto;
	z-index: 1;
	display: block;
	width: 7px;
	height: 7px;
	-moz-transform: rotate(45deg);
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
	border-top: 1px solid #fff;
	border-right: 1px solid #fff;
}

.couponNotUse{
	font-size: 14px;
	color: #2E0E02 !important;
	text-decoration: none !important;
	background: #fff !important;
	display: block;
	line-height: 64px;
	width: 320px;
	height: 64px;
	padding: 0 !important;
	text-align: center;
	border-radius: 2px;
	border: 1px solid #968680;
	background-image: none;
	margin: 5px auto;
	position: relative;
	font-weight: 700;
}

.couponNotUse::after{
	content: "";
	position: absolute;
	top: 0;
	bottom: 0;
	right: 23px;
	margin: auto;
	z-index: 1;
	display: block;
	width: 7px;
	height: 7px;
	-moz-transform: rotate(45deg);
	-webkit-transform: rotate(45deg);
	-ms-transform: rotate(45deg);
	transform: rotate(45deg);
	border-top: 1.5px solid #2E0E02;
	border-right: 1.5px solid #2E0E02;
}

.sp_ib{
	display: none !important;
}
@media (max-width: 768px) {
  .load_wrap {
      top: -95px;
  }
  .tblLayout_ProductDetail {
      margin: 60px 0 0 0;
  }

	.sp_ib{
		display: inline-block !important;
	}
}

</style>
<div class="load_wrap"></div>
<h2 class="cart1_h2">ショッピングカート</h2>

<p id="CartFlow" class="pc_contents"><img src="../../Contents/ImagesPkg/order/cart_step02.png" alt="お支払い方法入力 " width="781" height="58" /></p>
<p id="" class="CartFlow sp_contents"><img src="../../Contents/ImagesPkg/order/sp_flow3.png" alt="お支払い方法入力 " width="781"/></p>




<%-- エラーメッセージ（デフォルト注文方法用） --%>
<span class="error_inline"><asp:Literal ID="lOrderErrorMessage" runat="server"></asp:Literal></span>

<div id="CartList">

<%-- 次へイベント用リンクボタン --%>
<asp:LinkButton ID="lbNext" OnClick="lbNext_Click" ValidationGroup="OrderPayment" runat="server"></asp:LinkButton>
<%-- 戻るイベント用リンクボタン --%>
<asp:LinkButton ID="lbBack" OnClick="lbBack_Click" runat="server"></asp:LinkButton>

<%-- UPDATE PANEL開始 --%>
<asp:UpdatePanel ID="upUpdatePanel" runat="server">
<ContentTemplate>
<% if (string.IsNullOrEmpty(this.DispErrorMessage) == false) { %>
<span class="error_inline"><%: this.DispErrorMessage %></span>
<% } %>
<%-- ▼PayPalログインここから▼ --%>
<%if (Constants.PAYPAL_LOGINPAYMENT_ENABLED) {%>
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
<%} %>
<%-- ▲PayPalログインここまで▲ --%>
<asp:Repeater id="rCartList" runat="server">
<ItemTemplate>
	<div class="main">
	<div class="submain">

	<%-- ▼お支払い情報▼ --%>
	<div class="column">
  <div class="btmbtn above cartstep">
    
  <!--  <ul>
      <li><a href="<%: this.NextEvent %>" class="btn btn-success" >ご注文内容確認へ</a></li>
    </ul> -->
  </div>
    <h2 class="ttlA" visible='<%# ((CartObject)Container.DataItem).ShippingType == "100" %>' runat="server">【通常商品】お支払い方法</h2>
    <h2 class="ttlA p2" visible='<%# ((CartObject)Container.DataItem).ShippingType == "1001" %>' runat="server">【予約商品】お支払い方法</h2>
	<div id="Div1" visible="<%# (Container.ItemIndex == 0) %>" runat="server">
<!-- 	<h2><img src="../../Contents/ImagesPkg/order/sttl_cash.gif" alt="お支払い情報" width="95" height="16" /></h2>
	<p class="pdg_bottomA">お支払い方法を選択し以下の内容をご入力ください。<br /><span class="fred">※</span>&nbsp;は必須入力です。</p> -->
	</div>

	<div class="orderBox">
	<h3>
		カート番号<%# Container.ItemIndex + 1 %><%# WebSanitizer.HtmlEncode(DispCartDecolationString(Container.DataItem, "（ギフト）", "（デジタルコンテンツ）"))%></h3>
	<div class="bottom">
	<div class="list">
	<span class="error_inline" runat="server" visible="<%# (string.IsNullOrEmpty(StringUtility.ToEmpty(this.DispLimitedPaymentMessages[Container.ItemIndex])) == false) %>">
		<%# StringUtility.ToEmpty(this.DispLimitedPaymentMessages[Container.ItemIndex]) %>
		<br/>
	</span>
	<asp:CheckBox ID="cbUseSamePaymentAddrAsCart1" visible="<%# (Container.ItemIndex != 0) %>" Checked="<%# ((CartObject)Container.DataItem).Payment.IsSamePaymentAsCart1 %>" Text="上記と同じお支払いを指定する" OnCheckedChanged="cbUseSamePaymentAddrAsCart1_OnCheckedChanged" AutoPostBack="true" CssClass="checkBox" runat="server" />


	
	<dl class="list">

  <%--▼▼ クレジット Token保持用（カート1と同じ決済の場合） ▼▼--%>
  <asp:HiddenField ID="hfCreditTokenSameAs1" Value="<%# ((CartObject)Container.DataItem).Payment.CreditTokenSameAs1 %>" runat="server" />
  <%--▲▲ クレジット Token保持用（カート1と同じ決済の場合） ▲▲--%>

  <asp:Repeater ID="rPayment" runat="server" DataSource="<%# this.ValidPayments[Container.ItemIndex] %>" visible="<%# (Container.ItemIndex == 0) %>">
  <ItemTemplate>
    <asp:HiddenField ID="hfShopId" Value='<%# Eval(Constants.FIELD_PAYMENT_SHOP_ID) %>' runat="server" />
    <asp:HiddenField ID="hfPaymentId" Value='<%# Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) %>' runat="server" />
    <asp:HiddenField ID="hfPaymentName" Value='<%# Eval(Constants.FIELD_PAYMENT_PAYMENT_NAME) %>' runat="server" />
    <dt><w2c:RadioButtonGroup ID="rbgPayment" Checked="<%# ((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment.PaymentId == (string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) %>" GroupName='<%# "Payment_" + ((RepeaterItem)Container.Parent.Parent).ItemIndex %>' Text="<%# WebSanitizer.HtmlEncode(Eval(Constants.FIELD_PAYMENT_PAYMENT_NAME)) %>" OnCheckedChanged="rbgPayment_OnCheckedChanged" AutoPostBack="true" CssClass="radioBtn" runat="server" /></dt>

    <%-- クレジット --%>
    <dd id="ddCredit" runat="server">
      <img class="creicon" src="../../Contents/ImagesPkg/User/common/creicon.svg" alt="" />
    <p runat="server" visible="<%# OrderCommon.GetRegistedCreditCardSelectable(this.IsLoggedIn, this.CreditCardList.Count - 1)%>">
    <asp:DropDownList ID="ddlUserCreditCard" runat="server" DataSource="<%# this.CreditCardList %>" SelectedValue="<%# GetListItemValue(this.CreditCardList ,((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment.CreditCardBranchNo) %>" OnSelectedIndexChanged="ddlUserCreditCard_OnSelectedIndexChanged" AutoPostBack="true" DataTextField="text" DataValueField="value" ></asp:DropDownList></p>
    <%-- ▽新規カード▽ --%>
    <div id="divCreditCardInputForm" runat="server" visible="<%# IsNewCreditCard(((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment) %>">

    <%--▼▼ クレジット Token保持用 ▼▼--%>
    <asp:HiddenField ID="hfCreditToken" Value="<%# ((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment.CreditToken %>" runat="server" />
    <%--▲▲ クレジット Token保持用 ▲▲--%>
    <%--▼▼ カード情報取得用 ▼▼--%>
    <input type="hidden" id="hidCinfo" name="hidCinfo" value="<%# CreateGetCardInfoJsScriptForCreditTokenForCart(((RepeaterItem)Container.Parent.Parent), Container) %>" />
    <span id="spanErrorMessageForCreditCard" class="error_inline errorBoxx" runat="server"></span>
    <%--▲▲ カード情報取得用 ▲▲--%>
      
    <%--▼▼ カード情報入力（トークン未取得・利用なし） ▼▼--%>
    <div id="divCreditCardNoToken" visible='<%# (HasCreditToken(Container) == false) %>' runat="server">
    <%if (OrderCommon.CreditCompanySelectable) {%>
    <strong>カード会社</strong>
    <p><asp:DropDownList id="ddlCreditCardCompany" runat="server" DataSource="<%# this.CreditCompanyList %>" DataTextField="Text" DataValueField="Value" SelectedValue="<%# GetCreditValue(((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment, CartPayment.FIELD_CREDIT_COMPANY) %>" CssClass="input_widthG input_border"></asp:DropDownList></p>
    <%} %>
   <dl class="pay_dl d1">
    <dt>
    <strong>カード番号</strong><span class="fred"></span></dt>
    <dd>
    <p><asp:TextBox id="tbCreditCardNo1" runat="server" CssClass="input_widthA input_border" MaxLength="16" Text="<%# GetCreditValue(((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment, CartPayment.FIELD_CREDIT_CARD_NO) %>" autocomplete="off" Type="tel"></asp:TextBox>

    <small class="fred">
      <asp:CustomValidator ID="cvCreditCardNo1" runat="Server"
      ControlToValidate="tbCreditCardNo1"
      ValidationGroup="OrderPayment"
      ValidateEmptyText="true"
      SetFocusOnError="true"
      ClientValidationFunction="ClientValidate"
      CssClass="error_inline" />

      <span id="sErrorMessage" style="color :Red" runat="server" />
    </small>
    <small class="fgray">
<!--     カードの表記のとおりご入力ください。<br />
    例：<br />
    1234-5678-9012-3456<br />
    1234- 567890-12345（4つ目の入力欄は空白） -->
    </small></p>
    </dd>
    </dl>

    <dl class="pay_dl d3">
    <dt>
    <strong>名義人</strong><span class="fred"></span></dt>
    <dd>
    <p><asp:TextBox id="tbCreditAuthorName" runat="server" MaxLength="50" Text="<%# GetCreditValue(((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment, CartPayment.FIELD_CREDIT_AUTHOR_NAME) %>" class="input_widthB input_border" autocomplete="off" Type="email" title=""></asp:TextBox><br />
    <small class="fred">
    <asp:CustomValidator ID="cvCreditAuthorName" runat="Server"
      ControlToValidate="tbCreditAuthorName"
      ValidationGroup="OrderPayment"
      ValidateEmptyText="true"
      SetFocusOnError="true"
      ClientValidationFunction="ClientValidate"
      CssClass="error_inline" />
    </small></p>
    </dd>
    </dl>

    <div visible="<%# OrderCommon.CreditSecurityCodeEnable %>" runat="server">
    <dl class="pay_dl d2">
      <dt>
     
   
    <strong>有効期限</strong></dt>
     <dd>
    <p><asp:DropDownList id="ddlCreditExpireMonth" runat="server" DataSource="<%# this.CreditExpireMonth %>" SelectedValue="<%# GetCreditValue(((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment, CartPayment.FIELD_CREDIT_EXPIRE_MONTH) %>" CssClass="input_widthA input_border"></asp:DropDownList>&nbsp;月
    &nbsp;/&nbsp;
    <asp:DropDownList id="ddlCreditExpireYear" runat="server" DataSource="<%# this.CreditExpireYear %>" SelectedValue="<%# GetCreditValue(((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment, CartPayment.FIELD_CREDIT_EXPIRE_YEAR) %>" CssClass="input_border"></asp:DropDownList>&nbsp;&nbsp;年</p>
    </dd>
  
     </dl>
     <dl class="pay_dl d4">
       <dt>
       
     
    <strong>セキュリティコード</strong><span class="fred"></span></dt>
    <dd><p><asp:TextBox id="tbCreditSecurityCode" runat="server" MaxLength="5" Text="<%# GetCreditValue(((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment, CartPayment.FIELD_CREDIT_SECURITY_CODE) %>" class="input_widthA input_border" autocomplete="off" Type="tel"></asp:TextBox><br />
    <small class="fred">
    <asp:CustomValidator ID="cvCreditSecurityCode" runat="Server"
      ControlToValidate="tbCreditSecurityCode"
      ValidationGroup="OrderPayment"
      ValidateEmptyText="true"
      SetFocusOnError="true"
      ClientValidationFunction="ClientValidate"
      CssClass="error_inline" />
    </small></p>
    </dd>
    </dl>
    <dl class="pay_dl pd_h">
      <dt></dt>
      <dd>    <p class="d4_text">セキュリティコードはクレジットカード裏面の末尾 3 桁(一部 4 桁)の数字です。 (一部のクレジットカードの場合、カード表面右上にある 4 桁の数字となります)</p></dd>
    </dl>
    </div>

    </div>
    <%--▲▲ カード情報入力（トークン未取得・利用なし） ▲▲--%>

    <%--▼▼ カード情報入力（トークン取得済） ▼▼--%>
    <div id="divCreditCardForTokenAcquired" Visible='<%# HasCreditToken(Container) %>' runat="server">
    <%if (OrderCommon.CreditCompanySelectable) {%>
    <strong>カード会社</strong>
    <p><asp:Literal ID="lCreditCardCompanyNameForTokenAcquired" Text="<%# ((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment.CreditCardCompanyName %>" runat="server"></asp:Literal><br /></p>
    <%} %>
    <dl>
    	<dt><strong>カード番号</strong></dt>
    	<dd><p>XXXXXXXXXXXX<asp:Literal ID="lLastFourDigitForTokenAcquired" Text="<%# ((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment.CreditCardNo4 %>" runat="server"></asp:Literal><br /></p>
		<asp:LinkButton id="lbEditCreditCardNoForToken" OnClick="lbEditCreditCardNoForToken_Click" runat="server">再入力</asp:LinkButton>
    	</dd>
    </dl>
    <dl>
    	<dt><strong>有効期限</strong></dt>
    	<dd><p><asp:Literal ID="lExpirationMonthForTokenAcquired" Text="<%# ((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment.CreditExpireMonth %>" runat="server"></asp:Literal>
    &nbsp;/&nbsp;
    <asp:Literal ID="lExpirationYearForTokenAcquired" Text="<%# ((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment.CreditExpireYear %>" runat="server"></asp:Literal> (月/年)</p></dd>
    </dl>
    <dl>
    	<dt><strong>カード名義人</strong></dt>
    	<dd><p><asp:Literal ID="lCreditAuthorNameForTokenAcquired" Text="<%# ((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment.CreditAuthorName %>" runat="server"></asp:Literal><br /></p></dd>
    </dl>

    
    
    
    
    </div>
    <%--▲▲ カード情報入力（トークン取得済） ▲▲ --%>

    <div class="pay_dl d5" id="Div3" visible="<%# OrderCommon.CreditInstallmentsSelectable %>" runat="server">

    <strong>支払い回数</strong>
    <p><asp:DropDownList id="dllCreditInstallments" runat="server" DataSource="<%# this.CreditInstallmentsList %>" DataTextField="Text" DataValueField="Value" SelectedValue="<%# GetCreditValue(((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment, CartPayment.FIELD_CREDIT_INSTALLMENTS_CODE) %>" CssClass="input_border"></asp:DropDownList>
    <br/><span class="fgray">※AMEX/DINERSは一括のみとなります。</span></p>
    </div>
    <div class="cre_a">
    <asp:CheckBox ID="cbRegistCreditCard" runat="server" Checked="<%# ((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment.UserCreditCardRegistFlg %>" Visible="<%# OrderCommon.GetCreditCardRegistable(this.IsLoggedIn, this.CreditCardList.Count - 1) %>" Text="このクレジットカードを会員情報に登録する" OnCheckedChanged="cbRegistCreditCard_OnCheckedChanged" AutoPostBack="true" />
	</div>
    <div id="divUserCreditCardName" visible="false" runat="server">
    <p>クレジットカードを保存する場合は、以下をご入力ください。</p>

    <dl class="pay_dl divUserCred">
    <dt>
    <strong>表示名&nbsp;<span class="fred">必須</span></strong>
	</dt>
	<dd>
    <p><asp:TextBox ID="tbUserCreditCardName" placeholder="例：勤務先" Text="<%# ((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment.UserCreditCardName %>" MaxLength="100" CssClass="input_widthD input_border" runat="server"></asp:TextBox><br />
    <small class="fred">
    <asp:CustomValidator ID="cvUserCreditCardName" runat="Server"
      ControlToValidate="tbUserCreditCardName"
      ValidationGroup="OrderPayment"
      ValidateEmptyText="true"
      SetFocusOnError="true"
      ClientValidationFunction="ClientValidate"
      CssClass="error_inline" />
    </small></p>
    </dd>
    </div>
    </div>
    <%-- △新規カード△ --%>
		<%-- ▽登録済みカード▽ --%>
		<div id="divCreditCardDisp" visible="<%# IsNewCreditCard(((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment) == false %>" runat="server">
		<%if (OrderCommon.CreditCompanySelectable) {%>
		<strong>カード会社</strong>
		<p><asp:Literal ID="lCreditCardCompanyName" runat="server"></asp:Literal><br /></p>
		<%} %>

		<dl>
			<dt><strong>カード番号</strong></dt>
			<dd><p>XXXXXXXXXXXX<asp:Literal ID="lLastFourDigit" runat="server"></asp:Literal><br /></p></dd>
		</dl>
		<dl>
			<dt><strong>有効期限</strong></dt>
			<dd><p><asp:Literal ID="lExpirationMonth" runat="server"></asp:Literal>&nbsp;/&nbsp;<asp:Literal ID="lExpirationYear" runat="server"></asp:Literal> (月/年)</p></dd>
		</dl>
		<dl>
			<dt><strong>カード名義人</strong></dt>
			<dd><p><asp:Literal ID="lCreditAuthorName" runat="server"></asp:Literal><br /></p></dd>
		</dl>
		
		
		
		<asp:HiddenField ID="hfCreditCardId" runat="server" />
		<div id="Div10" visible="<%# OrderCommon.CreditInstallmentsSelectable %>" runat="server">
		<strong>支払い回数</strong>
		<p><asp:DropDownList id="dllCreditInstallments2" runat="server" DataSource="<%# this.CreditInstallmentsList %>" DataTextField="Text" DataValueField="Value" SelectedValue="<%# GetCreditValue(((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment, CartPayment.FIELD_CREDIT_INSTALLMENTS_CODE) %>" CssClass="input_border"></asp:DropDownList>
		<br/><span class="fgray">AMEX/DINERSは一括のみとなります。</span>
		</p>
		</div>
		</div>
		<%-- △登録済みカード△ --%>
		</dd>
		
		<%-- コンビニ(前払い) --%>
		<dd id="ddCvsPre" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_CVS_PRE) %>" runat="server">
		<%-- コンビニ(前払い)：電算システム --%>
		<div class="pay01" id="Div4" visible="<%# (Constants.PAYMENT_CVS_KBN == Constants.PaymentCvs.Dsk) %>" runat="server">
		<strong>支払いコンビニ選択</strong>
		<p><asp:DropDownList ID="ddlDskCvsType" DataSource='<%# this.CvsTypeList %>' DataTextField="Text" DataValueField="Value" SelectedValue='<%# GetDskConveniType(((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment) %>' CssClass="input_widthC input_border" runat="server"></asp:DropDownList></p>
		</div>
		<%-- コンビニ(前払い)：SBPS --%>
		<div class="pay01" visible="<%# (Constants.PAYMENT_CVS_KBN == Constants.PaymentCvs.SBPS) %>" runat="server">
		<strong>支払いコンビニ選択</strong>
		<p><asp:DropDownList ID="ddlSBPSCvsType" DataSource='<%# this.CvsTypeList %>' DataTextField="Text" DataValueField="Value" SelectedValue='<%# GetSBPSConveniType(((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment) %>' CssClass="input_widthC input_border" runat="server"></asp:DropDownList></p>
		</div>
		<%-- コンビニ(前払い)：ヤマトKWC --%>
		<div class="pay01" visible="<%# (Constants.PAYMENT_CVS_KBN == Constants.PaymentCvs.YamatoKwc) %>" runat="server">
		<strong>支払いコンビニ選択</strong>
		<p><asp:DropDownList ID="ddlYamatoKwcCvsType" DataSource='<%# this.CvsTypeList %>' DataTextField="Text" DataValueField="Value" SelectedValue='<%# GetYamatoKwcConveniType(((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment) %>' CssClass="input_widthC input_border" runat="server"></asp:DropDownList></p>
		</div>
		<%-- コンビニ(前払い)：Gmo --%>
		<div class="pay01" visible="<%# (Constants.PAYMENT_CVS_KBN == Constants.PaymentCvs.Gmo) %>" runat="server">
		<strong>支払いコンビニ選択</strong>
		<p><asp:DropDownList ID="ddlGmoCvsType" DataSource='<%# this.CvsTypeList %>' DataTextField="Text" DataValueField="Value" SelectedValue='<%# GetGmoConveniType(((CartObject)((RepeaterItem)Container.Parent.Parent).DataItem).Payment) %>' CssClass="input_widthC input_border" runat="server"></asp:DropDownList></p>
		</div>
		</dd>
		<%-- コンビニ(後払い) --%>
		<dd id="ddCvsDef" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_CVS_DEF) %>" runat="server">
			<uc:PaymentDescriptionCvsDef runat="server" id="ucPaymentDescriptionCvsDef" />
		</dd>
		
		<%-- 後付款(TriLink後払い) --%>
		<dd id="ddTriLinkAfterPayPayment" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_TRILINK_AFTERPAY) %>" runat="server">
			<uc:PaymentDescriptionTriLinkAfterPay runat="server" id="ucPaymentDescriptionTryLinkAfterPay" />
		</dd>

		<%-- 銀行振込（前払い） --%>
		<dd id="ddBankPre" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_BANK_PRE) %>" runat="server">
		</dd>
		<%-- 銀行振込（後払い） --%>
		<dd id="ddBankDef" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_BANK_DEF) %>" runat="server">
		</dd>

		<%-- 郵便振込（前払い） --%>
		<dd id="ddPostPre" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_POST_PRE) %>" runat="server">
		</dd>
		<%-- 郵便振込（後払い） --%>
		<dd id="ddPostDef" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_POST_DEF) %>" runat="server">
		</dd>

		<%-- ドコモケータイ払い --%>
		<dd id="ddDocomoPayment" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_DOCOMOKETAI_ORG) %>" runat="server">
		<strong>【注意事項】</strong>
		<ul>
		<li>決済には「i-mode対応」の携帯電話が必要です。</li>
		<li>携帯電話のメールのドメイン指定受信を設定されている方は、必ず「<%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopMailDomain")) %>」を受信できるように設定してください。</li>
		<li>１回の購入金額が<%: CurrencyManager.ToPrice(10000m) %>を超えてしまう場合はケータイ払いサービスをご利用いただけません。</li>
		<li>「i-mode」はＮＴＴドコモの商権、または登録商標です。</li>
		</ul></dd>
		<%-- S!まとめて支払い --%>
		<dd id="ddSMatometePayment" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_SMATOMETE_ORG) %>" runat="server">
		</dd>
		<%-- まとめてau支払い --%>
		<dd id="ddAuMatometePayment" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_AUMATOMETE_ORG) %>" runat="server">
		</dd>

		<%-- ソフトバンク・ワイモバイルまとめて支払い(SBPS) --%>
		<dd id="ddSoftBankKeitaiSBPSPayment" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_SOFTBANKKETAI_SBPS) %>" runat="server">
		</dd>
		<%-- auかんたん決済(SBPS) --%>
		<dd id="ddAuKantanSBPSPayment" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_AUKANTAN_SBPS) %>" runat="server">
		</dd>
		<%-- ドコモケータイ払い(SBPS) --%>
		<dd id="ddDocomoKeitaiSBPSPayment" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_DOCOMOKETAI_SBPS) %>" runat="server">
		</dd>
		<%-- S!まとめて支払い(SBPS) --%>
		<dd id="ddSMatometeSBPSPayment" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_SMATOMETE_SBPS) %>" runat="server">
		</dd>

		<%-- PayPal(SBPS) --%>
		<dd id="ddPayPalSBPSPayment" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_PAYPAL_SBPS) %>" runat="server">
			PayPal支払い
		</dd>
		
		<%-- リクルートかんたん支払い --%>
		<dd id="ddRecruitSBPSPayment" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_RECRUIT_SBPS) %>" runat="server">
			リクルートかんたん支払い
		</dd>

		<%-- 楽天ID決済(SBPS) --%>
		<dd id="ddRakutenIdSBPSPayment" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_RAKUTEN_ID_SBPS) %>" runat="server">
			楽天ID決済
		</dd>

		<%-- 代金引換 --%>
		<dd id="ddCollect" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_COLLECT) %>" runat="server">
		</dd>

		<%-- PayPal --%>
		<dd id="ddPayPal" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_PAYPAL) %>" runat="server">
			<%if (SessionManager.PayPalCooperationInfo != null) {%>
				ご利用のPayPal アカウント：<br/>
				<b><%: SessionManager.PayPalCooperationInfo.AccountEMail %></b>
			<%} else {%>
				ご利用にはPayPalログインが必要です。
			<%} %>
			<uc:PaymentDescriptionPayPal runat="server" id="PaymentDescriptionPayPal" />
		</dd>

		<%-- 決済なし --%>
		<dd id="ddNoPayment" visible="<%# ((string)Eval(Constants.FIELD_PAYMENT_PAYMENT_ID) == Constants.FLG_PAYMENT_PAYMENT_ID_NOPAYMENT) %>" runat="server">
		</dd>
	</ItemTemplate>
	</asp:Repeater>
	</dl>
	
	<div>
	<small id="sErrorMessage2" class="fred" runat="server"></small>
	</div>
	
	</div><!--list-->
	</div><!--bottom-->
	</div><!--orderBox-->
	</div><!--column-->
	<%-- ▲お支払い情報▲ --%>

	<%-- ▼カート情報▼ --%>
	<div class="shoppingCart">

	
	<div id="Div7" visible="<%# (Container.ItemIndex == 0) %>" runat="server">
	<h2><img src="../../Contents/ImagesPkg/common/ttl_shopping_cart.gif" alt="ショッピングカート" width="141" height="16" /></h2>
	<div class="sumBox mrg_topA kei1">
	<div class="subSumBoxB">
	<p>総合計<strong><%#: CurrencyManager.ToPrice(this.CartList.PriceCartListTotalWithOutPaymentPrice) %></strong></p>
	</div>
	</div><!--sum-->
	</div>

	<div class="subCartList">
	<div class="bottom">
	<h3>
		<div class="cartNo">
			カート番号<%# Container.ItemIndex + 1 %>
			<%# WebSanitizer.HtmlEncode(DispCartDecolationString(Container.DataItem, "（ギフト）", "（デジタルコンテンツ）"))%>
		</div>
		<div class="cartLink"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_CART_LIST) %>">カートへ戻る</a></div></h3>
	<div class="block">

	<asp:Repeater ID="rCart" DataSource="<%# ((CartObject)Container.DataItem).Items %>" runat="server">
	<ItemTemplate>
		<%-- 通常商品 --%>
		<div class="singleProduct" visible="<%# ((CartProduct)Container.DataItem).IsSetItem == false && ((CartProduct)Container.DataItem).QuantitiyUnallocatedToSet != 0 %>" runat="server">
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
		<p visible='<%# ((CartProduct)Container.DataItem).ProductOptionSettingList.IsSelectedProductOptionValueAll %>' runat="server">
		<asp:Repeater ID="rProductOptionSettings" DataSource='<%# ((CartProduct)Container.DataItem).ProductOptionSettingList %>' runat="server">
			<ItemTemplate>
			<%# (((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue() != "") ? "<strong>" : "" %>
			<%# WebSanitizer.HtmlEncode(((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue()) %>
			<%# (((ProductOptionSetting)Container.DataItem).GetDisplayProductOptionSettingSelectValue() != "") ? "</strong>" : "" %>
			</ItemTemplate>
		</asp:Repeater>
		</p>
		<p class="pc_c pc_c_1">数量：&nbsp;&nbsp;<%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).QuantitiyUnallocatedToSet) %></p>
		<p class="pc_c pc_c_2"><%#: CurrencyManager.ToPrice(((CartProduct)Container.DataItem).Price) %> </p>
		<span class="sp_contents w_sp">
			<dl class="OrderPayment_dl n1">
				<dt>価格（税込）<span>：</span></dt>
				<dd><%#: CurrencyManager.ToPrice(((CartProduct)Container.DataItem).Price) %> </dd>
			</dl>
			<dl class="OrderPayment_dl n2">
				<dt>数量<span>：</span></dt>
				<dd><%# WebSanitizer.HtmlEncode(((CartProduct)Container.DataItem).QuantitiyUnallocatedToSet) %></dd>
			</dl>
		</span>
		</dd>

		</dl>
		</div>
		</div><!--singleProduct-->
		<%-- セット商品 --%>
		<div id="Div9" class="multiProduct" visible="<%# (((CartProduct)Container.DataItem).IsSetItem) && (((CartProduct)Container.DataItem).ProductSetItemNo == 1) %>" runat="server">
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
					<span id="Span3" visible="<%# ((CartSetPromotion)Container.DataItem).IsDiscountTypeProductDiscount %>" runat="server">
						<strike><%#: CurrencyManager.ToPrice(((CartSetPromotion)Container.DataItem).UndiscountedProductSubtotal) %> (<%#: this.ProductPriceTextPrefix %>)</strike><br />
					</span>
					<%#: CurrencyManager.ToPrice(((CartSetPromotion)Container.DataItem).UndiscountedProductSubtotal - ((CartSetPromotion)Container.DataItem).ProductDiscountAmount) %> (<%#: this.ProductPriceTextPrefix %>)
				</dd>
			</dl>
		</div>
	</ItemTemplate>
	</asp:Repeater>

	<% if (Constants.W2MP_POINT_OPTION_ENABLED && this.IsLoggedIn) { %>
	<div class="pointBox" >
	<asp:LinkButton ID="lbUsePoint" Visible="<%# this.OpenPointInput[Container.ItemIndex] == false %>" OnClick="lbUsePoint_Click" runat="server">ポイントを使う</asp:LinkButton>
	<div class="box" id="divPointBox" visible="<%# this.OpenPointInput[Container.ItemIndex] %>" runat="server">
	<p><img src="../../Contents/ImagesPkg/common/ttl_point.gif" alt="ポイントを使う" width="262" height="23" /></p>
	<div class="boxbtm">
	<div>
	<dl>
	<dt>合計 <%= GetNumeric(this.LoginUserPointUsable) %> ポイント<span>までご利用いただけます</span></dt>
	<dd><asp:TextBox ID="tbOrderPointUse" Runat="server" Text="<%# ((CartObject)Container.DataItem).UsePoint %>" MaxLength="6"></asp:TextBox>&nbsp;&nbsp;pt</dd>
	</dl>
	<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
	</div>
	<span id="Span1" class="fred" visible="<%# this.ErrorMessages.HasMessages(Container.ItemIndex, CartErrorMessages.ErrorKbn.Point) %>" runat="server">
		<%# WebSanitizer.HtmlEncode(this.ErrorMessages.Get(Container.ItemIndex, CartErrorMessages.ErrorKbn.Point))%></span>
	</div><!--boxbtm-->
	</div><!--box-->
	</div><!--pointBox-->
	<% } %>

		<% if (Constants.W2MP_COUPON_OPTION_ENABLED) { %>
	<div class="couponBox">
	<div id="divCouponBox" class="box" runat="server">
	<!-- <p>クーポンを使う</p> -->
	<p class="divCouponBox__p"><!-- <img src="../../Contents/ImagesPkg/common/ttl_coupon.gif" alt="クーポンを使う" width="262" height="23" /> --></p>
	<div id="divCouponInputMethod" runat="server" style="font-size: 10px; padding: 10px 10px 0px 10px; font-family: 'Lucida Grande','メイリオ',Meiryo,'Hiragino Kaku Gothic ProN', sans-serif; color: #333;">
		<asp:RadioButtonList runat="server" AutoPostBack="true" ID="rblCouponInputMethod"
			OnSelectedIndexChanged="rblCouponInputMethod_SelectedIndexChanged" OnDataBinding="rblCouponInputMethod_DataBinding"
			DataSource="<%# GetCouponInputMethod() %>" DataTextField="Text" DataValueField="Value" RepeatColumns="2" RepeatDirection="Horizontal"></asp:RadioButtonList>
	</div>
	<div class="boxbtm">
	<div>
<!-- 	<dl id="hgcCouponCodeInputArea" runat="server">
	<dt><span>クーポンコード</span></dt>
	<dd><asp:TextBox ID="tbCouponCode" runat="server" Text="<%# GetCouponCode(((CartObject)Container.DataItem).Coupon) %>" MaxLength="30" autocomplete="off"></asp:TextBox></dd>
	</dl> -->
	<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
	</div>
	<span class="fred" visible="<%# this.ErrorMessages.HasMessages(Container.ItemIndex, CartErrorMessages.ErrorKbn.Coupon) %>" runat="server">
		<%# WebSanitizer.HtmlEncode(this.ErrorMessages.Get(Container.ItemIndex, CartErrorMessages.ErrorKbn.Coupon)) %></span>
	<asp:LinkButton runat="server" ID="lbShowCouponBox" Text="クーポンを選ぶ"
		style=""
		OnClick="lbShowCouponBox_Click" ></asp:LinkButton>
	<div id="hgcCouponSelect" runat="server">
		<asp:DropDownList disabled="disabled" CssClass="input_border" style="width: 240px" ID="ddlCouponList" runat="server" DataTextField="Text" DataValueField="Value" OnTextChanged="ddlCouponList_TextChanged" AutoPostBack="true"></asp:DropDownList>
	</div>
	</div><!--boxbtm-->
	<p class="copupon_wrap_box"></p>
	<p class="couponwrap">クーポン<span class="coupon"></span></p>
	<p class="shoppingCart__title"></p>
	</div><!--box-->
	<div runat="server" id="hgcCouponBox" style="z-index: 1; top: 0; left: 0; width: 100%; height: 120%; position: fixed; background-color: rgba(128, 128, 128, 0.75);" 
		Visible='<%# ((CartObject)Container.DataItem).CouponBoxVisible %>'>
		<div id="hgcCouponList" style="width: 960px; height: 500px; top: 55%; left: 50%; text-align: center; background: #fff; position: fixed; z-index: 2; margin:-250px 0 0 -500px;">
		<h2 style="height: 20px; color: #fff; background-color: #000; font-size: 16px; padding: 3px 0px; border-bottom: solid 1px #ccc; width: initial; width: auto; ">クーポンBOX</h2>
		<div style="height: 400px; overflow: auto;" class="spScrollBar">
		<asp:Repeater ID="rCouponList" ItemType="UserCouponDetailInfo" Runat="server" DataSource="<%# GetUsableCoupons((CartObject)Container.DataItem) %>">
		<HeaderTemplate>
			<table>
			<tr>
				<th class="th_first th1" style="background-color:#EAE6E5; padding:10px; text-align:center;width:98px; color: #333; letter-spacing: 0.08em; line-height: 19.5px;">クーポン<br>
				コード</th>
				<th class="th_first th2" style="background-color:#EAE6E5; padding:10px; text-align:center;width:215px; color: #333; letter-spacing: 0.08em; line-height: 19.5px;">クーポン名</th>
				<th class="th_first th3" style="background-color:#EAE6E5; padding:10px; text-align:center;width:90px; color: #333; letter-spacing: 0.08em; line-height: 19.5px;">金額</th>
				<th class="th_first th4" style="background-color:#EAE6E5; padding:10px; text-align:center;width:80px; color: #333; letter-spacing: 0.08em; line-height: 19.5px;">利用回数</th>
				<th class="th_first th5" style="background-color:#EAE6E5; padding:10px; text-align:center;width:178px; color: #333; letter-spacing: 0.08em; line-height: 19.5px;">有効期限</th>
				<th class="th_first th6" style="background-color:#EAE6E5; padding:10px; text-align:center;width:204px; color: #333; letter-spacing: 0.08em; line-height: 19.5px;">利用条件</th>
				<th class="th_first th7" style="background-color:#EAE6E5; padding:10px; text-align:center;width:110px; color: #333; letter-spacing: 0.08em; line-height: 19.5px;"></th>
			</tr>
		</HeaderTemplate>
		<ItemTemplate>
			<tr>
				<td style="border-bottom: 1px solid #EAE6E5; padding:10px 8px; text-align:left; text-align:center;width:98px; background-color: white; color: #333; letter-spacing: 0.08em; line-height: 19.5px;">
					<div class="sp_contents" style="vertical-align: top;"><span class="c_code">クーポンコード</span></div>
					<%#: StringUtility.ToEmpty(Item.CouponCode) %><br />
					<asp:HiddenField runat="server" ID="hfCouponBoxCouponCode" Value="<%# Item.CouponCode %>" />
				</td>
				<td style="border-bottom: 1px solid #EAE6E5; padding:10px 8px; text-align:left; text-align:center;width:215px; background-color: white; color: #333; letter-spacing: 0.08em; line-height: 19.5px;"
					title="<%#: StringUtility.ToEmpty(Item.CouponDispDiscription) %>">
					<div class="sp_contents" style="vertical-align: top;"><span class="c_code">クーポン名</span></div>
					<p class="pc_contents"><%#: StringUtility.ToEmpty(Item.CouponDispName) %></p>
					<p class="sp_ib" style="width: 53%;"><%#: StringUtility.ToEmpty(Item.CouponDispName) %></p>
				</td>
				<td style="border-bottom: 1px solid #EAE6E5; padding:10px 8px; text-align:left; text-align:center;width:90px; background-color: white; color: #333; letter-spacing: 0.08em; line-height: 19.5px;">
					<div class="sp_contents"><span class="c_code">割引金額</span></div>
					<%#: (StringUtility.ToEmpty(Item.DiscountPrice) != "")
							? CurrencyManager.ToPrice(Item.DiscountPrice)
							: (StringUtility.ToEmpty(Item.DiscountRate) != "")
								? StringUtility.ToEmpty(Item.DiscountRate) + "%"
								: "-" %>
				</td>
				<td style="border-bottom: 1px solid #EAE6E5; padding:10px 8px; text-align:left; text-align:center;width:80px; background-color: white; color: #333; letter-spacing: 0.08em; line-height: 19.5px;">
					<div class="sp_contents" style="vertical-align: top;"><span class="c_code">利用可能回数</span></div>
					<%#: GetCouponCount(Item) %>
				</td>
				<td style="border-bottom: 1px solid #EAE6E5; padding:10px 8px; text-align:left; text-align:center;width:178px; background-color: white; color: #333; letter-spacing: 0.08em; line-height: 19.5px;">
					<div class="sp_contents" style="vertical-align: top;"><span class="c_code">有効期限</span></div>
					<%#: DateTimeUtility.ToStringFromRegion(Item.ExpireEnd, DateTimeUtility.FormatType.LongDateHourMinute1Letter) %>
				</td>
				<td style="border-bottom: 1px solid #EAE6E5; padding:10px 8px; text-align:left !important; text-align:center;width:204px; background-color: white; color: #333; letter-spacing: 0.08em; line-height: 19.5px;">
					<div class="sp_contents" style="vertical-align: top;"><span class="c_code">利用条件</span></div>
					<p class="pc_contents"><%#: Item.CouponDiscription %></p>
					<p class="sp_ib" style="width: 53%;"><%#: Item.CouponDiscription %></p>
				</td>
				<td style="border-bottom: 1px solid #EAE6E5; padding:10px 8px; width:110px;">
					<asp:LinkButton runat="server" id="lbCouponSelect" OnClick="lbCouponSelect_Click" class="couponUseUse">使う</asp:LinkButton>
				</td>
			</tr>
		</ItemTemplate>
		<FooterTemplate>
			</table>
		</FooterTemplate>
		</asp:Repeater>
		</div>
	<div style="width: 100%; height: 50px; display: block; z-index: 3">
		<asp:LinkButton ID="lbCouponBoxClose" OnClick="lbCouponBoxClose_Click" class="couponNotUse" runat="server">クーポンを使わない</asp:LinkButton>
	</div>
	</div>
	</div>
	</div><!--couponBox-->
	<% } %>

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
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %> op1' style="display: none;">
	<dt>会員ランク割引額</dt>
	<dd class='<%# (((CartObject)Container.DataItem).MemberRankDiscount > 0) ? "minus" : "" %>'><%# (((CartObject)Container.DataItem).MemberRankDiscount > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).MemberRankDiscount * ((((CartObject)Container.DataItem).MemberRankDiscount < 0) ? -1 : 1)) %></dd>
	</dl>
	<%} %>
	<%if (Constants.MEMBER_RANK_OPTION_ENABLED && Constants.FIXEDPURCHASE_OPTION_ENABLED && this.IsLoggedIn){ %>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>  op2'>
	<dt>定期会員割引額</dt>
	<dd class='<%# (((CartObject)Container.DataItem).FixedPurchaseMemberDiscountAmount > 0) ? "minus" : "" %>'><%# (((CartObject)Container.DataItem).FixedPurchaseMemberDiscountAmount > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).FixedPurchaseMemberDiscountAmount * ((((CartObject)Container.DataItem).FixedPurchaseMemberDiscountAmount < 0) ? -1 : 1)) %></dd>
	</dl>
	<%} %>
	<%if (Constants.W2MP_COUPON_OPTION_ENABLED){ %>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %> p_red  op3'>
	<dt>クーポン割引額</dt>
	<dd class='<%# (((CartObject)Container.DataItem).UseCouponPrice > 0) ? "minus" : "" %>'><%# (((CartObject)Container.DataItem).UseCouponPrice > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).UseCouponPrice * ((((CartObject)Container.DataItem).UseCouponPrice < 0) ? -1 : 1)) %></dd>
	</dl>
	<%} %>
	<%if (Constants.W2MP_POINT_OPTION_ENABLED && this.IsLoggedIn){ %>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %> p_red  op4'>
	<dt>ポイント利用額</dt>
	<dd class='<%# (((CartObject)Container.DataItem).UsePointPrice > 0) ? "minus" : "" %>'><%# (((CartObject)Container.DataItem).UsePointPrice > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).UsePointPrice * ((((CartObject)Container.DataItem).UsePointPrice < 0) ? -1 : 1)) %></dd>
	</dl>
	<%} %>
	<%if (Constants.FIXEDPURCHASE_OPTION_ENABLED){ %>
	<div runat="server" visible="<%# (((CartObject)Container.DataItem).HasFixedPurchase) %>">
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
	<dt>定期購入割引額</dt>
	<dd class='<%# (((CartObject)Container.DataItem).FixedPurchaseDiscount > 0) ? "minus" : "" %>'><%#: (((CartObject)Container.DataItem).FixedPurchaseDiscount > 0) ? "-" : "" %><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).FixedPurchaseDiscount * ((((CartObject)Container.DataItem).FixedPurchaseDiscount < 0) ? -1 : 1)) %></dd>
	</dl>
	</div>
	<%} %>

	<%-- セットプロモーション割引額(配送料割引) --%>
	<asp:Repeater DataSource="<%# ((CartObject)Container.DataItem).SetPromotions %>" runat="server">
	<ItemTemplate>
		<spna visible="<%# ((CartSetPromotion)Container.DataItem).IsDiscountTypeShippingChargeFree %>" runat="server">
		<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
			<dt><%# WebSanitizer.HtmlEncode(((CartSetPromotion)Container.DataItem).SetpromotionDispName) %>(送料割引)</dt>
			<dd class='<%# (((CartSetPromotion)Container.DataItem).ShippingChargeDiscountAmount > 0) ? "minus" : "" %>'><%# (((CartSetPromotion)Container.DataItem).ShippingChargeDiscountAmount > 0) ? "-" : ""%><%#: CurrencyManager.ToPrice(((CartSetPromotion)Container.DataItem).ShippingChargeDiscountAmount) %></dd>
		</dl>
		</spna>
	</ItemTemplate>
	</asp:Repeater>
	<%if (this.ProductIncludedTaxFlg == false) { %>
	<dl class='<%= (this.DispNum++ % 2 == 0) ? "" : "bgc" %>'>
	<dt>消費税額</dt>
	<dd><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).PriceTax) %></dd>
	</dl>
	<%} %>
	</div>
	<p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p>
	<div>
	<dl class="result">
	<dt>合計(税込)</dt>
	<dd><%#: CurrencyManager.ToPrice(((CartObject)Container.DataItem).PriceCartTotalWithoutPaymentPrice) %></dd>
	</dl>
	</div>
	</div><!--priceList-->

	</div><!--block-->
	</div><!--bottom-->
	</div><!--subCartList-->

	<div id="Div12" visible="<%# ((CartObjectList)((Repeater)Container.Parent).DataSource).Items.Count == Container.ItemIndex + 1 %>" runat="server">
	<div class="sumBox">
	<div class="subSumBox">
	<p>総合計<span>（税込）</span><!-- <img src="../../Contents/ImagesPkg/common/ttl_sum.gif" alt="総合計" width="52" height="16" /> -->
		<strong><%#: CurrencyManager.ToPrice(this.CartList.PriceCartListTotalWithOutPaymentPrice) %></strong></p>
	</div>
	<%if (Constants.W2MP_POINT_OPTION_ENABLED && this.IsLoggedIn) { %>
	<dl>
	<dt id="Dt1" Visible="<%# ((CartObject)Container.DataItem).FirstBuyPoint != 0 %>" runat="server">初回購入獲得ポイント</dt>
	<dd id="Dd1" Visible="<%# ((CartObject)Container.DataItem).FirstBuyPoint != 0 %>" runat="server"><%# WebSanitizer.HtmlEncode(GetNumeric(((CartObjectList)((Repeater)Container.Parent).DataSource).TotalFirstBuyPoint)) %>pt</dd>
	<dt>購入後獲得ポイント</dt>
	<dd><%# WebSanitizer.HtmlEncode(GetNumeric(((CartObjectList)((Repeater)Container.Parent).DataSource).TotalBuyPoint)) %>pt</dd>
	</dl>
	<small>※ 1pt = <%: CurrencyManager.ToPrice(1m) %></small>
	<%} %>
	</div><!--sumBox-->

	</div>
<!-- 		<div class="btmbtn below">
		<ul>
			
			
		</ul>
		</div> -->
		<div class="btmbtn below">
			<div class="btmbtn__innar">
			<ul>
				<li><a href="<%= WebSanitizer.HtmlEncode(this.NextEvent) %>" class="btn btn-large btn-success">最終確認へ進む</a></li>
				<li class="b2"><a onclick="<%= this.BackOnClick %>" href="<%= WebSanitizer.HtmlEncode(this.BackEvent) %>" class="btn btn-large btn-success2">前の画面に戻る</a></li>
			</ul>
				<!-- <p class="clr"><img src="../../Contents/ImagesPkg/common/clear.gif" alt="" width="1" height="1"  /></p> -->
			</div>
			
		</div><!--btmbtn-->
		<p class="btn-gry__wrap"><a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="btn btn-large btn-gry"><span><</span>ショッピングへ戻る</a></p>
	</div><!--shoppingCart-->

	<%-- ▲カート情報▲ --%>

	<br class="clr" />
	</div><!--submain-->
	</div><!--main-->
	
	<%-- 隠し値：カートID --%>
	<asp:HiddenField ID="hfCartId" runat="server" Value="<%# ((CartObject)Container.DataItem).CartId %>" />
	<%-- 隠し再計算ボタン --%>
	<asp:LinkButton id="lbRecalculateCart" runat="server" CommandArgument="<%# Container.ItemIndex %>" onclick="lbRecalculate_Click"></asp:LinkButton>
</ItemTemplate>
</asp:Repeater>

<!-- <div class="btmbtn below">
<ul>
	<li><a onclick="<%= this.BackOnClick %>" href="<%= WebSanitizer.HtmlEncode(this.BackEvent) %>" class="btn btn-large btn-org-gry">前のページに戻る</a></li>
	<li><a href="<%= WebSanitizer.HtmlEncode(this.NextEvent) %>" class="btn btn-large btn-success">ご注文内容確認へ</a></li>
</ul>
</div> -->

</ContentTemplate>
</asp:UpdatePanel>
<%-- UPDATE PANELここまで --%>


<div class="sp_contents">
  <div class="add_cart_box">
  
  </div>
</div>

</div>
	
<%--▼▼ クレジットカードToken用スクリプト ▼▼--%>
<script type="text/javascript">
	var getTokenAndSetToFormJs = "<%= CreateGetCreditTokenAndSetToFormJsScript().Replace("\"", "\\\"") %>";
	var maskFormsForTokenJs = "<%= CreateMaskFormsForCreditTokenJsScript().Replace("\"", "\\\"") %>";
</script>
<uc:CreditToken runat="server" ID="CreditToken" />
<%--▲▲ クレジットカードToken用スクリプト ▲▲--%>

</asp:Content>