<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="FEATURE｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="CAMPAIGN" MetaKeywords="TOPICS,トピックス,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP:300,400,500,700&display=swap&subset=japanese" rel="stylesheet">
<link href='css/common.css' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://use.typekit.net/rmd7dnq.css">
<link href='../../css/common.css?1233' rel='stylesheet' type='text/css'>
<script>
  (function(d) {
    var config = {
        kitId: 'fxo4pid',
        scriptTimeout: 3000,
        async: true
      },
      h = d.documentElement,
      t = setTimeout(function() {
        h.className = h.className.replace(/bwf-loadingb/g, "") + " wf-inactive";
      }, config.scriptTimeout),
      tk = d.createElement("script"),
      f = false,
      s = d.getElementsByTagName("script")[0],
      a;
    h.className += " wf-loading";
    tk.src = 'https://use.typekit.net/' + config.kitId + '.js';
    tk.async = true;
    tk.onload = tk.onreadystatechange = function() {
      a = this.readyState;
      if (f || a && a != "complete" && a != "loaded") return;
      f = true;
      clearTimeout(t);
      try {
        Typekit.load(config)
      } catch (e) {}
    };
    s.parentNode.insertBefore(tk, s)
  })(document);
</script>
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">


  <%-- ▽編集可能領域：コンテンツ▽ --%>
  <div class="topicsWrap">
    <div class="mainArea">
      <h2>FEATURE<br>
        <span class="subtit"></span>
        <span>2019.11.13</span>
      </h2>
      <img class="mainVisual" src="images/mv.jpg" alt="">
    </div>

    <div class="contentsArea feature">
      <div class="contentsArea__box">
        <img src="images/tit_01.png" alt="" class="title">
        <p>重くなりすぎず絶妙な抜け感が出る<br class="sp_contents">ブラウンワントーンコーデは秋冬の新定番。<br>マニッシュなのにエレガントさもある<br class="sp_contents">上級スタイルが簡単に叶います。</p>
        <div class="contentsArea__box__stylingWrap">
          <div class="styling">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930307249&cat=003" class="itemImg"><img src="images/brown_01.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930307249&cat=003" class="itemDetail">
              <p>
                Wポケットプルオーバー&nbsp;&nbsp;<span class="itemPrice">¥23,100</span><span class="taxin">(tax in)</span>
              </p>
            </a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306149&vid=1930306149free&cat=003" class="itemDetail">
              <p>
                ニットワイドパンツ&nbsp;&nbsp;<span class="itemPrice">¥20,900</span><span class="taxin">(tax in)</span>
              </p>
            </a>
          </div>
          <div class="styling">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930301148&cat=003" class="itemImg"><img src="images/brown_02.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930301148&cat=003" class="itemDetail">
              <p>
                ニットスウェットボーダー&nbsp;&nbsp;<span class="itemPrice">¥17,600</span><span class="taxin">(tax in)</span>
              </p>
            </a>

          </div>
        </div>

          <div class="styling solo__brown solo">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313241&cat=003" class="itemImg"><img src="images/brown_03.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313241&cat=003" class="itemDetail">
              <p>
                フィットカーディガン&nbsp;&nbsp;<span class="itemPrice">¥18,700</span><span class="taxin">(tax in)</span>
              </p>
            </a>

          </div>

      </div>
      <div class="contentsArea__box">
        <img src="images/tit_02.png" alt="" class="title">
        <p>くすんだブルーを取り入れることで<br class="sp_contents">マイルドな印象に。<br>甘くなりすぎない、でも柔らかく<br class="sp_contents">女性らしさのあるスタイルです。</p>

        <div class="styling solo__blue solo">
          <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930312149&cat=003" class="itemImg"><img src="images/blue_01.jpg" alt=""></a>
          <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930312149&cat=003" class="itemDetail">
            <p>
              ヘアリーパーカー&nbsp;&nbsp;<span class="itemPrice">¥23,100</span><span class="taxin">(tax in)</span>
            </p>
          </a>

        </div>

        <div class="contentsArea__box__stylingWrap">

          <div class="styling">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930311161&cat=003" class="itemImg"><img src="images/blue_02.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317149&vid=1930317149free&cat=003" class="itemDetail">
              <p>
                ショートカーディガン&nbsp;&nbsp;<span class="itemPrice">¥23,100</span><span class="taxin">(tax in)</span>
              </p>
            </a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930311161&cat=003" class="itemDetail">
              <p>
                へアリーショートパンツ&nbsp;&nbsp;<span class="itemPrice">¥17,600</span><span class="taxin">(tax in)</span>
              </p>
            </a>
          </div>
          <div class="styling">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305149&cat=003" class="itemImg"><img src="images/blue_03.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305149&cat=003" class="itemDetail">
              <p>
                ニットスウェットパンツ&nbsp;&nbsp;<span class="itemPrice">¥23,100</span><span class="taxin">(tax in)</span>
              </p>
            </a>

          </div>
        </div>
      </div>
      <div class="contentsArea__box">
        <img src="images/tit_03.png" alt="" class="title">
        <p>存在感のあるオレンジも<br class="sp_contents">深みのあるブラウンと合わせることで<br>上品で華のある凛とした女性を<br class="sp_contents">演出してくれます。</p>
        <div class="contentsArea__box__stylingWrap">
          <div class="styling">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930302125&vid=1930302125free&cat=003" class="itemImg"><img src="images/orange_01.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930302125&vid=1930302125free&cat=003" class="itemDetail">
              <p>
                ビルトネックタートル&nbsp;&nbsp;<span class="itemPrice">¥19,800</span><span class="taxin">(tax in)</span>
              </p>
            </a>

          </div>
          <div class="styling">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306125&cat=003" class="itemImg"><img src="images/orange_02.jpg" alt=""></a>
            <a href="" class="itemDetail">
              <p>
                ボートネックワンピース&nbsp;&nbsp;<span class="itemPrice">¥25,300</span><span class="taxin">(tax in)</span>
              </p>
            </a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306125&cat=003" class="itemDetail">
              <p>
                ニットワイドパンツ&nbsp;&nbsp;<span class="itemPrice">¥20,900</span><span class="taxin">(tax in)</span>
              </p>
            </a>
          </div>
        </div>
      </div>
      <div class="contentsArea__box">
        <img src="images/tit_04.png" alt="" class="title">
        <p>甘くなりがちなピンクは<br class="sp_contents">ブラウンと合わせることで<br>モードなカッコよさがプラスされ<br class="sp_contents">大人な女性の装いに。</p>
        <div class="contentsArea__box__stylingWrap">
          <div class="styling">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305131&cat=003" class="itemImg"><img src="images/pink_01.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930302149&cat=003" class="itemDetail">
              <p>
                ビルトネックタートル&nbsp;&nbsp;<span class="itemPrice">¥19,800</span><span class="taxin">(tax in)</span>
              </p>
            </a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305131&cat=003" class="itemDetail">
              <p>
                ニットスウェットパンツ&nbsp;&nbsp;<span class="itemPrice">¥23,100</span><span class="taxin">(tax in)</span>
              </p>
            </a>
          </div>
          <div class="styling">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930302131&cat=003" class="itemImg"><img src="images/pink_02.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930302131&cat=003" class="itemDetail">
              <p>
                ビルトネックタートル&nbsp;&nbsp;<span class="itemPrice">¥19,800</span><span class="taxin">(tax in)</span>
              </p>
            </a>

          </div>
        </div>
      </div>
      <div class="contentsArea__box">
        <img src="images/tit_05.png" alt="" class="title">
        <p>華やかなビビットカラーと合わせて<br class="sp_contents">重くなりがちな秋冬コーデを華やかに。<br>ブラウンのシックさがカラーを引き立て<br class="sp_contents">バランスのとれた上級者スタイルに。</p>
        <div class="contentsArea__box__stylingWrap">
          <div class="styling">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337121&vid=1930337121free&cat=003" class="itemImg"><img src="images/yellow_01.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337121&vid=1930337121free&cat=003" class="itemDetail">
              <p>
                ビルトネックプルオーバー&nbsp;&nbsp;<span class="itemPrice">¥23,100</span><span class="taxin">(tax in)</span>
              </p>
            </a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930311149&cat=003" class="itemDetail">
              <p>
                へアリーショートパンツ&nbsp;&nbsp;<span class="itemPrice">¥17,600</span><span class="taxin">(tax in)</span>
              </p>
            </a>
          </div>
          <div class="styling">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319121&vid=1930319121free&cat=003" class="itemImg"><img src="images/yellow_02.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319121&vid=1930319121free&cat=003" class="itemDetail">
              <p>
                ボートネックジッププルオーバー&nbsp;&nbsp;<br class="sm_contents"><span class="itemPrice">¥18,700</span><span class="taxin">(tax in)</span>
              </p>
            </a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306149&cat=003" class="itemDetail">
              <p>
                ニットワイドパンツ&nbsp;&nbsp;<span class="itemPrice">¥20,900</span><span class="taxin">(tax in)</span>
              </p>
            </a>
          </div>
        </div>
      </div>


      <div class="nextBtnwrap">
        <a class="nextBtn" href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">全てのアイテムを見る</a>
      </div>

      <!-- <a href="" class="itemArea_btn">全てのアイテムを見る</a> -->

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
