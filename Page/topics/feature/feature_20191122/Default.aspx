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
<link href='../../css/common.css?1233' rel='stylesheet' type='text/css'>
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="featureWrap topicsWrap feature">
  <div class="mainArea">
    <h2>FEATURE
      <span>2019.11.19</span>
    </h2>
    <div class="main-visual">
      <img class="" src="images/1800x840.jpg" alt="Kint Fair 対象商品の「ミドルゲージニット」が¥4,000OFF">
    </div>


    <p>この冬注目のミドルゲージニットが<br class="sp_content">全品¥4,000OFFになるお得なキャンペーンを開催。<br>
        上質な素材と細部まで<br class="sp_content">こだわり尽くされたデザインのニットを<br class="sp_content">是非この機会にお試しください。</p>
  </div>

  <div class="couponArea">
    <h3>ミドルゲージニット<br>¥4,000-OFFキャンペーン</h3>
    <p class="description">ご購入時に下記クーポンコードをご入力ください。</p>
    <p class="coupon">
      クーポンコード<br><span>1122</span>
    </p>
    <p class="description">キャンペーン対象期間 <span class="pc_content">:</span><br class="sp_content"> 11月22日(金)〜12月05日(木)</p>
    <p class="note">※対象期間を過ぎた時点で、<br class="sp_content">クーポンは自動的に失効いたします。</p>
    <p class="note">※他のクーポンと併用してご利用にはなれません。<br class="sp_content">予めご了承ください。</p>
  </div>

  <div class="pickUpArea">

    <h3>対象アイテムPICK UP</h3>
    <div class="pickUpArea__part">
      <div class="contentsWrap">
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319131&cat=003"><img src="./images/item_01.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319131&cat=003">ボートネックジッププルオーバー<br><span class="itemPrice">¥23,100</span><span class="tax">(tax in)</span></a></div>
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319121&cat=003"><img src="./images/item_02.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319121&cat=003">ボートネックジッププルオーバー<br><span class="itemPrice">¥23,100</span><span class="tax">(tax in)</span></a></div>
      </div>
      <p class="colorLineUp">全6色展開<br class="sp_content"><span class="pc_content">（</span> ピンク / イエロー / グリーン <span class="pc_content">/</span><br class="sp_content"> ホワイト / ブルー / ブラウン<span class="pc_content">）</span></p>
    </div>
    <div class="pickUpArea__part">
      <div class="contentsWrap">
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318111&cat=003"><img src="./images/item_03.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318111&cat=003">ビッグカーディガン<br><span class="itemPrice">¥23,100</span><span class="tax">(tax in)</span></a></div>
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&cat=003"><img src="./images/item_04.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&cat=003">ビッグカーディガン<br><span class="itemPrice">¥23,100</span><span class="tax">(tax in)</span></a></div>
      </div>
      <p class="colorLineUp">全6色展開<br class="sp_content"><span class="pc_content">（</span> ピンク / イエロー / グリーン <span class="pc_content">/</span><br class="sp_content"> イエロー / ブルー / ブラウン<span class="pc_content">）</span></p>
    </div>
    <div class="pickUpArea__part">
      <div class="contentsWrap">
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338161&cat=003"><img src="./images/item_05.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338161&cat=003">クルーネックプルオーバー<br><span class="itemPrice">¥23,100</span><span class="tax">(tax in)</span></a></div>
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338121&cat=003"><img src="./images/item_06.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338121&cat=003">クルーネックプルオーバー<br><span class="itemPrice">¥23,100</span><span class="tax">(tax in)</span></a></div>
      </div>
      <p class="colorLineUp">全8色展開<br class="sp_content"><span class="pc_content">（</span> サックス / イエロー / ピンク / ブルー <span class="pc_content">/</span><br class="sp_content"> グリーン / オレンジ / ホワイト / ブラウン<span class="pc_content">）</span></p>
    </div>
    <div class="pickUpArea__part">
      <div class="contentsWrap">
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337149&cat=003"><img src="./images/item_07.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337149&cat=003">ビルトネックプルオーバー<br><span class="itemPrice">¥23,100</span><span class="tax">(tax in)</span></a></div>
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337165&cat=003"><img src="./images/item_08.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337165&cat=003">ビルトネックプルオーバー<br><span class="itemPrice">¥23,100</span><span class="tax">(tax in)</span></a></div>
      </div>
      <p class="colorLineUp">全8色展開<br class="sp_content"><span class="pc_content">（</span> ブラウン / ブルー / サックス / ピンク <span class="pc_content">/</span><br class="sp_content"> ホワイト / グリーン / オレンジ / イエロー<span class="pc_content">）</span></p>
    </div>
    <div class="pickUpArea__part">
      <div class="contentsWrap">
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317149&cat=003"><img src="./images/item_09.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317149&cat=003">ショートカーディガン<br><span class="itemPrice">¥23,100</span><span class="tax">(tax in)</span></a></div>
        <div class="contentsWrap__content"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317165&cat=003"><img src="./images/item_10.jpg" alt=""></a><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317165&cat=003">ショートカーディガン<br><span class="itemPrice">¥23,100</span><span class="tax">(tax in)</span></a></div>
      </div>
      <p class="colorLineUp">全6色展開<br class="sp_content"><span class="pc_content">（</span> ブラウン / ブルー / ピンク <span class="pc_content">/</span><br class="sp_content"> イエロー / グリーン / ホワイト<span class="pc_content">）</span></p>
    </div>
  </div>



  <div class="nextBtnwrap">
    <a class="nextBtn" href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=knitcoupon&udns=2&fpfl=0&pno=1">対象商品一覧</a>
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
      <a href="<%= Constants.PATH_ROOT %>Page/topics/">
        TOPICS
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
