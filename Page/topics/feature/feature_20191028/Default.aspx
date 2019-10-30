<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="ELLE JAPON　掲載アイテム特集｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="CAMPAIGN" MetaKeywords="TOPICS,トピックス,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<link href='css/common.css?1233' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://use.typekit.net/rmd7dnq.css">
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">



  <%-- ▽編集可能領域：コンテンツ▽ --%>
  <div class="topicsWrap">
    <div class="mainArea">
      <h2>ELLE JAPON<br>
        <span class="subTtl">掲載アイテム特集</span>
        <span>2019.10.28</span>
      </h2>
      <img class="pc_contents" src="images/mv_pc.jpg" alt="">
      <img class="sp_contents" src="images/mv_sp.jpg" alt="">

    </div>

    <div class="contentsArea">

      <div class="contentsArea__contentsBox content01">
        <img src="images/ttl01.jpg" alt="" class="ttlImg">
        <p class="itemName">タンクドレス</p>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930314259&cat=003"><img src="images/mainItem01.jpg" alt=""></a>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930314259&cat=003" class="itemPrice"><span class="itemPrice__name">タンクドレス</span>&nbsp;&nbsp;¥25,300<span class="tax">(tax in)</span></a>
        <div class="itemDetail">
          <p class="itemDetail__material">素材:ハミルトンラムズウール</p>
          <p class="itemDetail__size">サイズ：FREE</p>
          <p class="itemDetail__color">カラー：ホワイト/グリーン/イエロー/<br class="sp_contents">ピンク/ブルー/ブラウン</p>
        </div>
        <div class="btnBox">
          <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=19303041&udns=2&fpfl=0&pno=1" class="">MORE</a>
        </div>
      </div>

      <div class="contentsArea__contentsBox content02">
        <img src="images/ttl02.jpg" alt="" class="ttlImg">
        <p class="itemName">ヘアリーポロ</p>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930309111&cat=003"><img src="images/mainItem02.jpg" alt=""></a>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930309111&cat=003" class="itemPrice"><span class="itemPrice__name">ヘアリーポロ</span>&nbsp;&nbsp;¥19,800<span class="tax">(tax in)</span></a>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930311131&cat=003" class="itemPrice"><span class="itemPrice__name">ヘアリーショートパンツ</span>&nbsp;&nbsp;¥17,600<span class="tax">(tax in)</span></a>
        <div class="itemDetail">
          <p class="itemDetail__material">素材:ハミルトンラムズウール</p>
          <p class="itemDetail__size">サイズ：FREE</p>
          <p class="itemDetail__color">カラー：ホワイト/サックス/ピンク/<br class="sp_contents">ブラウン/ブルー</p>
        </div>
        <div class="btnBox">
          <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=19303091&udns=2&fpfl=0&pno=1" class="">MORE</a>
        </div>
      </div>

      <div class="contentsArea__contentsBox content03">
        <img src="images/ttl03.jpg" alt="" class="ttlImg">
        <p class="itemName">へアリーパーカー</p>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930312131&cat=003"><img src="images/mainItem03.jpg" alt=""></a>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930312131&cat=003" class="itemPrice"><span class="itemPrice__name">ヘアリーパーカー</span>&nbsp;&nbsp;¥23,100<span class="tax">(tax in)</span></a>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930724117&cat=007" class="itemPrice"><span class="itemPrice__name">フリーサイズワイド</span>&nbsp;&nbsp;¥23,100<span class="tax">(tax in)</span></a>
        <div class="itemDetail">
          <p class="itemDetail__material">素材:ハミルトンラムズウール</p>
          <p class="itemDetail__size">サイズ：FREE</p>
          <p class="itemDetail__color">カラー：ホワイト/サックス/ピンク/<br class="sp_contents">ブラウン/ブルー</p>
        </div>
        <div class="btnBox">
          <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=19303121&udns=2&fpfl=0&pno=1" class="">MORE</a>
        </div>
      </div>

      <div class="contentsArea__contentsBox content04">
        <img src="images/ttl04.jpg" alt="" class="ttlImg">
        <p class="itemName">ニットワイドパンツ</p>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306155&cat=003"><img src="images/mainItem04.jpg" alt=""></a>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306155&cat=003" class="itemPrice"><span class="itemPrice__name">ニットワイドパンツ</span>&nbsp;&nbsp;¥20,900<span class="tax">(tax in)</span></a>
        <div class="itemDetail">
          <p class="itemDetail__material">素材:ハミルトンラムズウール</p>
          <p class="itemDetail__size">サイズ：FREE</p>
          <p class="itemDetail__color">カラー：ホワイト/イエロー/ピンク/ブラウン/<br class="sp_contents">ブルー/サックス/オレンジ/グリーン</p>
        </div>
        <div class="btnBox">
          <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=19303061&udns=2&fpfl=0&pno=1" class="">MORE</a>
        </div>
      </div>

      <div class="contentsArea__contentsBox content05">
        <img src="images/ttl05.jpg" alt="" class="ttlImg">
        <p class="itemName">ホールガーメントTシャツ</p>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930316135&cat=003"><img src="images/mainItem05.jpg" alt=""></a>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930316135&cat=003" class="itemPrice"><span class="itemPrice__name">ホールガーメントTシャツ</span>&nbsp;&nbsp;¥15,400<span class="tax">(tax in)</span></a>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930725117&cat=007" class="itemPrice"><span class="itemPrice__name">フリーサイズテーパード</span>&nbsp;&nbsp;¥23,100<span class="tax">(tax in)</span></a>
        <div class="itemDetail">
          <p class="itemDetail__material">素材:メリノオプティモ</p>
          <p class="itemDetail__size">サイズ：FREE</p>
          <p class="itemDetail__color">カラー：ブラウン/ブルー/レッド</p>
        </div>
        <div class="btnBox">
          <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=19303161&udns=2&fpfl=0&pno=1" class="">MORE</a>
        </div>
      </div>

      <div class="contentsArea__contentsBox content06">
        <img src="images/ttl06.jpg" alt="" class="ttlImg">
        <p class="itemName">フィットカーディガン</p>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313241&cat=003"><img src="images/mainItem06.jpg" alt=""></a>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313241&cat=003" class="itemPrice"><span class="itemPrice__name">フィットカーディガン</span>&nbsp;&nbsp;¥18,700<span class="tax">(tax in)</span></a>
        <div class="itemDetail">
          <p class="itemDetail__material">素材:メリノオプティモ</p>
          <p class="itemDetail__size">サイズ：レギュラー/ルーズ</p>
          <p class="itemDetail__color">カラー：グリーン/サックス/ピンク/<br class="sp_contents">ブルー/カーキ/ブラウン</p>
        </div>
        <div class="btnBox">
          <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=19303132&udns=2&fpfl=0&pno=1" class="">MORE</a>
        </div>
      </div>

      <div class="contentsArea__contentsBox content07">

        <img src="images/ttl07.jpg" alt="" class="ttlImg">
        <p class="itemName">フィットプルオーバー</p>

        <div class="contentsArea__contentsBox__contentsWrap">

          <div>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930314255&cat=003"><img src="images/mainItem07_01.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930314255&cat=003" class="itemPrice"><span class="itemPrice__name">フィットプルオーバー</span>&nbsp;&nbsp;¥18,700<span class="tax">(tax in)</span></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930725117&cat=007" class="itemPrice"><span class="itemPrice__name">フリーサイズテーパード</span>&nbsp;&nbsp;¥23,100<span class="tax">(tax in)</span></a>
          </div>

          <div>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930314259&cat=003"><img src="images/mainItem07_02.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930314259&cat=003" class="itemPrice"><span class="itemPrice__name">フィットプルオーバー</span>&nbsp;&nbsp;¥18,700<span class="tax">(tax in)</span></a>
          </div>
        </div>



        <div class="itemDetail">
          <p class="itemDetail__material">素材:メリノオプティモ</p>
          <p class="itemDetail__size">サイズ：レギュラー/ルーズ</p>
          <p class="itemDetail__color">カラー：グリーン/サックス/ピンク/<br class="sp_contents">ブルー/カーキ/ブラウン</p>
        </div>

          <div class="btnBox">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=19303142&udns=2&fpfl=0&pno=1" class="">MORE</a>
          </div>


      </div>

      <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="itemArea_btn">全てのアイテムを見る</a>
      <!-- <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="btnBox__viewall">全てのアイテムを見る</a> -->

      <!-- <div class="btnBox btn--more">
        <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="">全てのアイテムを見る</a>
      </div> -->


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
          ELLE JAPON  掲載アイテム特集
        </a>
      </li>
    </ul>
  </div>

  <%-- △編集可能領域△ --%>


</div>
</asp:Content>
