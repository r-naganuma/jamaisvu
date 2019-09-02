<%--
=========================================================================================================
  Module      : ログイン後カート選択画面(CartSelect.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="CartSelect_ProductItem" Src="~/Form/Order/CartSelect_ProductItem.ascx" %>
<%@ page language="C#" masterpagefile="~/Form/Common/OrderPage.master" autoeventwireup="true" inherits="Form_Order_CartSelect, App_Web_cartselect.aspx.bf558b1b" title="カート（カゴ落ち確認）｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<meta http-equiv="pragma" content="no-cache">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<script>
$(function(){
	$("#Contents").addClass("topSpace").addClass("cart2").addClass("cart_select");
	$("small").each(function(x){
		$(this).addClass("small"+x)
	});
	// $(".userBox dl").each(function(x){
	// 	$(this).addClass("small"+x);
	// 	if($(this).html().trim()==""){
	// 		$(this).addClass("remove");
	// 	}
	// });
	// $(".orderBox dl").each(function(x){
	// 	$(this).addClass("small"+x);
	// 	if($(this).html().trim()==""){
	// 		$(this).addClass("remove");
	// 	}
	// });

	// $(".userList select").change(function(){

	// });
});
</script>
<style>


.cart2 div.btmbtn {
  clear: none;
  margin-top: 33px;
  border-top: none;
  width: 20.9%;
  float: right;
  height: auto;
  position: absolute;
  right: 0;
  top: 0; }
  @media (max-width: 768px) {
    .cart2 div.btmbtn {
      width: 100%;
      margin: auto;
      float: none;
      position: static; } }

.cart2 .btmbtn__innar {
  background: #EAE6E5;
  padding: 40px 20px 30px;
  height: auto; }
  @media (max-width: 768px) {
    .cart2 .btmbtn__innar ul {
      width: 58.6vw !important;
      max-width: 220px;
      margin: auto !important; } }

.cart2 div.productList dl.name dd {
  width: 68%; }

.cart2 div.btmbtn ul li {
  margin: 0; }
.cart2 .btmbtn__innar dl.btmbtn__innar__dl10 {
  margin: 0 0 40px; }

.cart2 .btmbtn__innar dl {
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
  .cart2 .btmbtn__innar dl dt {
    font-size: 14px;
    width: 50%;
    text-align: left; }
    .cart2 .btmbtn__innar dl dt span {
      font-size: 12px;
      display: inline-block !important;
      margin: 0 0 0 6px; }
  .cart2 .btmbtn__innar dl dd {
    font-size: 14px;
    width: 50%;
    text-align: right; }
.cart2 a.btn.btn-large.btn-success {
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

.cart2 a.btn.btn-large.btn-success2 {
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


</style>
<link href="../../Css/rp/OrderSelect.css" rel="stylesheet">
<h2 class="cart1_h2">ショッピングカート</h2>
<div id="dvOrderBox">
	<div id="dvCartSelect">
		

		<p class="dvCartSelect_p">お客様の以前のカート情報が残っております。<br />カート内の商品を選択後次へ進んでください。</p>
		<h3>現在カートに入っている商品</h3>

		<table cellspacing="0">
		<!--▽ 現在カート選択 ▽-->
		<asp:Repeater id="rProductList" runat="server">
		<HeaderTemplate>
			<tr>
				<th class="productImg"></th>
				<th class="productName">商品名</th>
				<th class="productPrice">商品価格</th>
				<th class="remark"></th>
			</tr>
		</HeaderTemplate>
		<ItemTemplate>
		
			<%-- 現在カートに入っている商品 --%>
			<uc:CartSelect_ProductItem id="ucCartSelect_ProductItem" CartProduct="<%# Container.DataItem %>" DefaultChecked="true" runat="server"></uc:CartSelect_ProductItem>
			
			<%-- 隠し値 --%>
			<span class="th1"><asp:HiddenField ID="hfIsSetItem" runat="server" Value="<%# ((CartProduct)Container.DataItem).IsSetItem %>" /></span>
			<span class="th1"><asp:HiddenField ID="hfShopId" runat="server" Value="<%# ((CartProduct)Container.DataItem).ShopId %>" /></span>
			<span class="th1"><asp:HiddenField ID="hfProductId" runat="server" Value="<%# ((CartProduct)Container.DataItem).ProductId %>" /></span>
			<span class="th1"><asp:HiddenField ID="hfVariationId" runat="server" Value="<%# ((CartProduct)Container.DataItem).VariationId %>" /></span>
			<span class="th1"><asp:HiddenField ID="hfIsFixedPurchase" runat="server" Value="<%# ((CartProduct)Container.DataItem).IsFixedPurchase %>" /></span>
			<span class="th1"><asp:HiddenField ID="hfAddCartKbn" runat="server" Value="<%# ((CartProduct)Container.DataItem).AddCartKbn %>" /></span>
			<span class="th1"><asp:HiddenField ID="hfProductSaleId" runat="server" Value="<%# ((CartProduct)Container.DataItem).ProductSaleId %>" /></span>
			<span class="th1"><asp:HiddenField ID="hfProductSetId" runat="server" Value="<%# OrderPage.GetProductSetId(((CartProduct)Container.DataItem)) %>" /></span>
			<span class="th1"><asp:HiddenField ID="hfProductSetNo" runat="server" Value="<%# OrderPage.GetProductSetNo(((CartProduct)Container.DataItem)) %>" /></span>
			<span class="th1"><asp:HiddenField ID="hfProductSetItemNo" runat="server" Value="<%# ((CartProduct)Container.DataItem).ProductSetItemNo %>" /></span>
			<span class="th1"><asp:HiddenField ID="hfProductSetName" runat="server" Value="<%# OrderPage.GetProductSetName(((CartProduct)Container.DataItem)) %>" /></span>
			<span class="th1"><asp:HiddenField ID="hfProductOptionSettingList" runat="server" Value="<%# ((CartProduct)Container.DataItem).ProductOptionSettingList.GetDisplayProductOptionSettingSelectValues() %>" /></span>

		</ItemTemplate>
		</asp:Repeater>
		<!--△ 現在カート選択 △-->
		</table>

		<h3>以前カートに入れた商品</h3>

		<table cellspacing="0">
		<!--▽ 前回カート選択 ▽-->
		<asp:Repeater id="rProductListBefore" runat="server">
		<HeaderTemplate>
			<tr>
				<th class="productImg"></th>
				<th class="productName">商品名</th>
				<th class="productPrice">商品価格</th>
				<th class="remark"></th>
			</tr>
		</HeaderTemplate>
		<ItemTemplate>

			<%-- 以前カートに入れた商品 --%>
			<uc:CartSelect_ProductItem id="ucCartSelect_ProductItem" CartProduct="<%# Container.DataItem %>" DefaultChecked="false" runat="server"></uc:CartSelect_ProductItem>
			
			<%-- 隠し値 --%>
			<asp:HiddenField ID="hfIsSetItem" runat="server" Value="<%# ((CartProduct)Container.DataItem).IsSetItem %>" />
			<%if (Constants.CARTCOPY_OPTION_ENABLED){ %>
			<asp:HiddenField ID="hfCartId" runat="server" Value="<%# ((CartProduct)Container.DataItem).CartId %>" />
			<%} %>
			<asp:HiddenField ID="hfShopId" runat="server" Value="<%# ((CartProduct)Container.DataItem).ShopId %>" />
			<asp:HiddenField ID="hfProductId" runat="server" Value="<%# ((CartProduct)Container.DataItem).ProductId %>" />
			<asp:HiddenField ID="hfVariationId" runat="server" Value="<%# ((CartProduct)Container.DataItem).VariationId %>" />
			<asp:HiddenField ID="hfIsFixedPurchase" runat="server" Value="<%# ((CartProduct)Container.DataItem).IsFixedPurchase %>" />
			<asp:HiddenField ID="hfAddCartKbn" runat="server" Value="<%# ((CartProduct)Container.DataItem).AddCartKbn %>" />
			<asp:HiddenField ID="hfProductSaleId" runat="server" Value="<%# ((CartProduct)Container.DataItem).ProductSaleId %>" />
			<asp:HiddenField ID="hfProductSetId" runat="server" Value="<%# OrderPage.GetProductSetId(((CartProduct)Container.DataItem)) %>" />
			<asp:HiddenField ID="hfProductSetNo" runat="server" Value="<%# OrderPage.GetProductSetNo(((CartProduct)Container.DataItem)) %>" />
			<asp:HiddenField ID="hfProductSetItemNo" runat="server" Value="<%# ((CartProduct)Container.DataItem).ProductSetItemNo %>" />
			<asp:HiddenField ID="hfProductSetName" runat="server" Value="<%# OrderPage.GetProductSetName(((CartProduct)Container.DataItem)) %>" />
			<asp:HiddenField ID="hfProductOptionSettingList" runat="server" Value="<%# ((CartProduct)Container.DataItem).ProductOptionSettingList.GetDisplayProductOptionSettingSelectValues() %>" />
		</ItemTemplate>
		</asp:Repeater>
		<!--△ 前回カート選択 △-->
		</table>
	</div>
	<div class="dvOrderBtnBox">
		<div class="btmbtn">
		<p class="alignC"><asp:LinkButton ID="lbNext" runat="server" OnClick="lbNext_Click" class="btn btn-large btn-success">次へ進む</asp:LinkButton></p>
		</div>
	</div>
</div>
<script>

function bodyPageLoad(){


$(".productName a").each(function(){
   var kana = $(".cart1_size",this).text()
   kana = kana.match(/\((.+)\)/)[1];
  console.log(kana)

})

// $("td.productName").append('<div class="s_dl__wrap">'
//         +'<div class="s_dl s1">'
//           +'<div class="s_dt">'
//             +'サイズ'
//           +'</div>'
//           +'<div class="s_dd">'
//           +'</div>'
//         +'</div>'
//         +'<div class="s_dl s2">'
//           +'<div class="s_dt">'
//             +'カラー'
//           +'</div>'
//           +'<div class="s_dd">'
//         +  +'</div>'
//         +'</div>'
//         +'<div class="s_dl s3">'
//           +'<div class="s_dt">'
//             +'配送時期'
//           +'</div>'
//           +'<div class="s_dd">'
//         + '</div>'
//         +'</div>'
//       +'</div>');


 // $("td.productName").each(function(){

 	

 //    var kana = $("a",this).text()
 //    kana = kana.match(/\((.+)\)/)[1];
 //    $(".s1 .s_dd",this).text(kana);
 //    $(".d1 .d_dd",this).text(kana);




 //    // var kana = $(".cart1_size",this).text()
 //    // kana = kana.match(/\((.+)\)/)[1];
 //    // $(".s1 .s_dd",this).text(kana);
 //    // $(".d1 .d_dd",this).text(kana);

 //    var str=$("span[visible='True']",this).text();
 //    var nstr = str.replace(/\([^\)]*\)/g,"");
 //    $(".cart1_size",this).text(nstr);

 //    var str = $("span[visible='True']",this).text().trim();
 //    str = str.replace(/カラー：/g, ''); // "bcbc"

	// var str = str;
	// var pos = str.indexOf("配送時期：");
	// if (pos < 0) {
	//   console.log(str);
	// } else {
	//   console.log(str.substring(0, pos));
	// }

 //    $(".s2 .s_dd",this).text(str.substring(0, pos));
 //    $(".d2 .d_dd",this).text(str.substring(0, pos));

 //    var str =$("span[visible='True']",this).text().trim();
 //    str = str.replace(/配送時期：/g, ''); // "bcbc"

 //    $(".s3 .s_dd",this).text(str);
 //    $(".d3 .d_dd",this).text(str);
 // })
 // $(".shoppingCart__title").html($(".subSumBox p").html());
 

 //   $(".s3 .s_dd").each(function(){
 //      if($(this).text().trim()==""){
 //        $(this).parent().remove();
 //      }
 //  });


}


</script>
<script>
$(function(){
  $(".checkBox").each(function(){
     $(this).append("<label for='"+$("input",this).attr("id")+"' class='sp_contents_br'>カートへ入れる</label>");
     // $(this).append("<label></label>");
  })
})
</script>
</asp:Content>