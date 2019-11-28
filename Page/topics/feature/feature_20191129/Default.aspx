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
<link href='css/common.css?1233' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://use.typekit.net/bjg8gnb.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP:300,400,500,700&display=swap&subset=japanese" rel="stylesheet">
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="featureWrap">
  <div class="mainArea">
    <h2>FEATURE 
      <span>2019.11.29</span>
    </h2>
    <img class="pc_contents" src="images/mv_pc.jpg" alt="">
    <img class="sp_contents" src="images/mv_pc.jpg" alt="">
    <p>
      今だけ対象のミドルゲージニットが<br class="sp_contents">¥4,000OFFになるキャンペーン開催中！
    </p>
    <div class="btnBoxTopics btn--more">
      <a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191122/">詳しくはこちら</a>
    </div>
  </div>

  <div class="secArea">
    <div class="secArea_list">
      <a href="https://www.instagram.com/p/B5MH2r4j0z5/" class="secArea_list--icn" target="_blank">
        <img src="images/icn01.png" alt="">
        <p>ema0218</p>
      </a>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318111&cat=003" class="secArea_list--pic">
        <img src="images/style01.jpg" alt="">
      </a>
      <p class="secArea_list--txt">使用アイテム : </p>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318111&cat=003" class="secArea_list--link">ビッグカーディガン<span class="price">¥26,400<span class="tax">(tax in)</span></span></a>
    </div>
    <div class="secArea_list">
      <a href="https://www.instagram.com/p/B3zRWgaD4Xj/" class="secArea_list--icn" target="_blank">
        <img src="images/icn02.png" alt="">
        <p>shikina819</p>
      </a>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319155&cat=003" class="secArea_list--pic">
        <img src="images/style02.jpg" alt="">
      </a>
      <p class="secArea_list--txt">使用アイテム : </p>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319155&cat=003" class="secArea_list--link">ボートネックジッププルオーバー<span class="price">¥23,100<span class="tax">(tax in)</span></span></a>
    </div>
    <div class="secArea_list">
      <a href="https://www.instagram.com/p/B4cJtUfJB-a/" class="secArea_list--icn" target="_blank">
        <img src="images/icn03.png" alt="">
        <p>harusouki</p>
      </a>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317131&cat=003" class="secArea_list--pic">
        <img src="images/style03.jpg" alt="">
      </a>
      <p class="secArea_list--txt">使用アイテム : </p>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317131&cat=003" class="secArea_list--link">ショートカーディガン<span class="price">¥23,100<span class="tax">(tax in)</span></span></a>
    </div>
    <div class="secArea_list">
      <a href="https://www.instagram.com/p/B4AGFhRFKwL/" class="secArea_list--icn" target="_blank">
        <img src="images/icn04.png" alt="">
        <p>___m.26</p>
      </a>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317111&cat=003" class="secArea_list--pic">
        <img src="images/style04.jpg" alt="">
      </a>
      <p class="secArea_list--txt">使用アイテム : </p>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317111&cat=003" class="secArea_list--link">ショートカーディガン<span class="price">¥23,100<span class="tax">(tax in)</span></span></a>
    </div>
    <div class="secArea_list">
      <a href="https://www.instagram.com/p/B3okY_4Jxkl/" class="secArea_list--icn" target="_blank">
        <img src="images/icn05.png" alt="">
        <p>___s.s.1224</p>
      </a>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319111&cat=003" class="secArea_list--pic">
        <img src="images/style05.jpg" alt="">
      </a>
      <p class="secArea_list--txt">使用アイテム : </p>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319111&cat=003" class="secArea_list--link">ボートネックジッププルオーバー<span class="price">¥23,100<span class="tax">(tax in)</span></span></a>
    </div>
    <div class="secArea_list">
      <a href="https://www.instagram.com/p/B4o8gVIDCjF/" class="secArea_list--icn" target="_blank">
        <img src="images/icn06.png" alt="">
        <p>yk_oms</p>
      </a>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&cat=003" class="secArea_list--pic">
        <img src="images/style06.jpg" alt="">
      </a>
      <p class="secArea_list--txt">使用アイテム : </p>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&cat=003" class="secArea_list--link">ビッグカーディガン<span class="price">¥26,400<span class="tax">(tax in)</span></span></a>
    </div>
    <div class="secArea_list">
      <a href="https://www.instagram.com/p/B4L7cKuACYq/" class="secArea_list--icn" target="_blank">
        <img src="images/icn07.png" alt="">
        <p>maria_lydwina041</p>
      </a>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319149&cat=003" class="secArea_list--pic">
        <img src="images/style07.jpg" alt="">
      </a>
      <p class="secArea_list--txt">使用アイテム : </p>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319149&cat=003" class="secArea_list--link">ボートネックジッププルオーバー<span class="price">¥23,100<span class="tax">(tax in)</span></span></a>
    </div>
    <div class="secArea_list">
      <a href="https://www.instagram.com/p/B4RBmu_jjW3/" class="secArea_list--icn" target="_blank">
        <img src="images/icn08.png" alt="">
        <p>shi_2306</p>
      </a>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317111&cat=003" class="secArea_list--pic">
        <img src="images/style08.jpg" alt="">
      </a>
      <p class="secArea_list--txt">使用アイテム : </p>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317111&cat=003" class="secArea_list--link">ショートカーディガン<span class="price">¥23,100<span class="tax">(tax in)</span></span></a>
    </div>
    <div class="secArea_list">
      <a href="https://www.instagram.com/p/B36gy2BFDeT/" class="secArea_list--icn" target="_blank">
        <img src="images/icn09.png" alt="">
        <p>_hysaym</p>
      </a>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317111&cat=003" class="secArea_list--pic">
        <img src="images/style09.jpg" alt="">
      </a>
      <p class="secArea_list--txt">使用アイテム : </p>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317111&cat=003" class="secArea_list--link">ショートカーディガン<span class="price">¥23,100<span class="tax">(tax in)</span></span></a>
    </div>
    <div class="secArea_list">
      <a href="https://www.instagram.com/p/B36RUohDlm-/" class="secArea_list--icn" target="_blank">
        <img src="images/icn10.png" alt="">
        <p>harui5151231</p>
      </a>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319131&cat=003" class="secArea_list--pic">
        <img src="images/style10.jpg" alt="">
      </a>
      <p class="secArea_list--txt">使用アイテム : </p>
      <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319131&cat=003" class="secArea_list--link">ボートネックジッププルオーバー<span class="price">¥23,100<span class="tax">(tax in)</span></span></a>
    </div>
  </div>

  <div class="bnrArea">
    <a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191122/">
      <img src="images/bnr01.jpg" alt="">
    </a>
    <p>
      この冬注目のミドルゲージニットが<br class="sp_contents">全品¥4,000OFFになるお得なキャンペーンを開催。<br>
      上質な素材と細部まで<br class="sp_contents">こだわり尽くされたデザインのニットを<br class="sp_contents">是非この機会にお試しください。
    </p>
    <p>
      新商品のご紹介や会員様限定のイベント情報など、<br>
      最新ニュースをLINEにて配信中。
    </p>
    <a href="https://line.me/R/ti/p/%40461wwkgx" class="bnrArea_btn">LINE友だち追加はこちら</a>
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

