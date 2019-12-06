<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="FEATURE｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="FEATURE" MetaKeywords="TOPICS,トピックス,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<link href='./css/common.css?1233' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://use.typekit.net/bjg8gnb.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP:300,400,500,700&display=swap&subset=japanese" rel="stylesheet">
<!-- 一番下のボタンのcss入ってて便利 -->
<link href='../../../topics/css/common.css?1233' rel='stylesheet' type='text/css'>
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="featureWrap topicsWrap feature">
  <div class="mainArea">
    <h2>FEATURE
      <span>2019.12.06</span>
    </h2>
    <div class="main-visual">
      <img src="images/mv_pc.jpg" alt="初回購入限定 ALL 50%OFF">
    </div>


    <p>
      初回購入限定で全てのアイテムが<br class="sp_content">50%OFFになるお得なキャンペーン を開催！<br>
      こだわりのコートやカーディガン、ワンピースなど<br>
      今シーズンまだまだ大活躍するアイテムを<br class="sp_content">お得に手に入れるチャンスです。<br>
      この期間にぜひ<br class="sp_content">JAMAIS VUのアイテムをお試しください。
    </p>
  </div>

  <div class="couponArea">
    <h3>初回購入限定 <br class="sp_content"><span>50%OFF</span> キャンペーン</h3>
    <p class="description">ご購入時に下記クーポンコードをご入力ください。</p>
    <p class="coupon">
      クーポンコード<br><span>1206new</span>
    </p>
    <p class="description">キャンペーン対象期間 <span class="pc_content">:</span><br class="sp_content"> 2019年12月06日(金)〜2020年01月13日(金)</p>
    <p class="note">※対象期間を過ぎた時点で、<br class="sp_content">クーポンは自動的に失効いたします。</p>
    <p class="note">※他のクーポンと併用してご利用にはなれません。<br class="sp_content">予めご了承ください。</p>
  </div>

  <div class="pickUpArea">

    <h3>対象アイテムPICK UP</h3>
    <div class="pickUpArea__part">
      <div class="contentsWrap">
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930334111&cat=500011"><img src="./images/item_01.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930334111&cat=500011">ドルマンプルオーバー<br><span class="itemPrice">¥17,600</span><span class="tax">(tax in) <br class="sp_content">→</span><span class="redSale"><span class="itemPrice">¥8,800</span><span class="tax">(tax in)</span></span></a></div>
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930427165&cat=500065"><img src="./images/item_02.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930427165&cat=500065">MERINOタートルPO<br><span class="itemPrice">¥13,200</span><span class="tax">(tax in) <br class="sp_content">→</span><span class="redSale"><span class="itemPrice">¥6,600</span><span class="tax">(tax in)</span></span></a></div>
    </div>
    <div class="pickUpArea__part">
      <div class="contentsWrap">
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930128141&cat=500041"><img src="./images/item_03.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930128141&cat=500041">フリーサイズコート<br><span class="itemPrice">¥52,800</span><span class="tax">(tax in) <br class="sp_content">→</span><span class="redSale"><span class="itemPrice">¥26,400</span><span class="tax">(tax in)</span></span></a></div>
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930335131&cat=500031"><img src="./images/item_04.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930335131&cat=500031">ボートネックワンピース<br><span class="itemPrice">¥25,300</span><span class="tax">(tax in) <br class="sp_content">→</span><span class="redSale"><span class="itemPrice">¥12,650</span><span class="tax">(tax in)</span></span></a></div>
      </div>
    </div>
    <div class="pickUpArea__part">
      <div class="contentsWrap">
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930312165&cat=500065"><img src="./images/item_05.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930312165&cat=500065">ヘアリーパーカー<br><span class="itemPrice">¥23,100</span><span class="tax">(tax in) <br class="sp_content">→</span><span class="redSale"><span class="itemPrice">¥11,550</span><span class="tax">(tax in)</span></span></a></div>
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930129117&cat=500017"><img src="./images/item_06.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930129117&cat=500017">コートジャケット<br><span class="itemPrice">¥42,900</span><span class="tax">(tax in) <br class="sp_content">→</span><span class="redSale"><span class="itemPrice">¥21,450</span><span class="tax">(tax in)</span></span></a></div>
      </div>
    </div>
    <div class="pickUpArea__part">
      <div class="contentsWrap">
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=500017"><img src="./images/item_07.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=500017">フリーサイズワイド<br><span class="itemPrice">¥23,100</span><span class="tax">(tax in) <br class="sp_content">→</span><span class="redSale"><span class="itemPrice">¥11,550</span><span class="tax">(tax in)</span></span></a></div>
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313255&cat=500055"><img src="./images/item_08.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313255&cat=500055">フィットカーディガン<br><span class="itemPrice">¥18,700</span><span class="tax">(tax in) <br class="sp_content">→</span><span class="redSale"><span class="itemPrice">¥9,350</span><span class="tax">(tax in)</span></span></a></div>
      </div>
    </div>
  </div>



  <div class="nextBtnwrap">
    <a class="nextBtn" href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">アイテム一覧</a>
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
      <a href="<%= Constants.PATH_ROOT %>Page/Journal/">
        JOURNAL
      </a>
    </li>
    <li> >
      <a href="#">
        FEATURE
      </a>
    </li>
  </ul>
</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>
