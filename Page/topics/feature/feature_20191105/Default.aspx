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
        <span class="subTtl"></span>
        <span>2019.11.06</span>
      </h2>
      <img class="pc_contents" src="images/mv_pc.jpg" alt="">
      <img class="sp_contents" src="images/mv_sp.jpg" alt="">

    </div>

    <div class="contentsArea feature">

      <div class="contentsArea__contentsBox content01">
        <h2>01</h2>
        <h3 class="contentsArea__contentsBox__itemName">ニットワイドパンツ</h3>
        <div class="contentsArea__contentsBox__mainContents">
          <div class="contentsWrap">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306111&cat=003"><img src="images/main01_01.jpg" alt="" class="pc_contents"><img src="images/main01_01_sp.jpg" alt="" class="sp_contents"></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313261&cat=003">
              <p>フィットカーディガン&nbsp;&nbsp;<span class="itemPrice">¥18,700</span><span class="taxin">(tax in)</span></p>
            </a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306111&cat=003">
              <p>ニットワイドパンツ&nbsp;&nbsp;<span class="itemPrice">¥20,900</span><span class="taxin">(tax in)</span></p>
            </a>
          </div>
          <div class="contentsWrap"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=003"><img src="images/main01_02.jpg" alt="" class="pc_contents"><img src="images/main01_02_sp.jpg" alt="" class="sp_contents"></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930302165&cat=003">
              <p>ビルトネックタートル&nbsp;&nbsp;<span class="itemPrice">¥19,800</span><span class="taxin">(tax in)</span></p>
            </a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=003">
              <p>ニットワイドパンツ&nbsp;&nbsp;<span class="itemPrice">¥20,900</span><span class="taxin">(tax in)</span></p>
            </a>
          </div>
        </div>
        <div class="contentsArea__contentsBox__designArea">
          <h4>Design</h4>
          <p>どんなアイテムにも合わせやすい<br class="sp_contents">こだわりのセミワイドシルエット。<br>リラックス感のあるアイテムですが<br class="sp_contents">密度の高い編目のクリアな表面感なので<br>トップス次第でカジュアルにも<br class="sp_contents">キレイめにも着こなせます。<span><br><br>＊ウエストは紐で調整可能な仕様となっております。</span></p>
        </div>
        <div class="contentsArea__contentsBox__fabricArea">
          <h4>Fabric</h4>
          <p>非常に細く柔軟な毛が特徴の<br class="sp_contents">ハミルトンラムズウールを使用。<br>とても柔らかい肌触りで、<br class="sp_contents">品の良い優しい印象を演出してくれます。</p>
        </div>
        <div class="contentsArea__contentsBox__colorArea">
          <h4>Color</h4>
          <div class="colorVariation cv01">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306111&cat=003"><img src="images/cv_01_01.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306131&cat=003"><img src="images/cv_01_02.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306121&cat=003"><img src="images/cv_01_03.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306125&cat=003"><img src="images/cv_01_04.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=003"><img src="images/cv_01_05.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306165&cat=003"><img src="images/cv_01_06.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306155&cat=003"><img src="images/cv_01_07.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306149&cat=003"><img src="images/cv_01_08.jpg" alt=""></a>
          </div>
          <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306111&cat=003">
            <p>
              ニットワイドパンツ&nbsp;&nbsp;<span class="itemPrice">¥20,900</span><span class="taxin">(tax in)</span>
            </p>
          </a>
          <p>素材:ハミルトンラムズウール</p>
          <p>サイズ：FREE</p>
        </div>
        <div class="btnBox">
          <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=%e3%83%8b%e3%83%83%e3%83%88%e3%83%af%e3%82%a4%e3%83%89%e3%83%91%e3%83%b3%e3%83%84&udns=2&fpfl=0&pno=1" class="">MORE</a>
        </div>
      </div>

      <div class="contentsArea__contentsBox content02">
        <h2>02</h2>
        <h3 class="contentsArea__contentsBox__itemName">フリーサイズワイド</h3>
        <div class="contentsArea__contentsBox__mainContents">
          <div class="contentsWrap"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=007"><img src="images/main02_01.jpg" alt="" class="pc_contents"><img src="images/main02_01_sp.jpg" alt="" class="sp_contents"></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930300111&cat=003">
              <p>
                ニットスウェット&nbsp;&nbsp;<span class="itemPrice">¥17,600</span><span class="taxin">(tax in)</span>
              </p>
            </a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=007">
              <p>
                フリーサイズワイド&nbsp;&nbsp;<span class="itemPrice">¥23,100</span><span class="taxin">(tax in)</span>
              </p>
            </a>
          </div>
          <div class="contentsWrap"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=007"><img src="images/main02_02.jpg" alt="" class="pc_contents"><img src="images/main02_02_sp.jpg" alt="" class="sp_contents"></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318121&cat=003">
              <p>
                ビッグカーディガン&nbsp;&nbsp;<span class="itemPrice">¥26,400</span><span class="taxin">(tax in)</span>
              </p>
            </a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930300121&cat=003">
              <p>
                ニットスウェット&nbsp;&nbsp;<span class="itemPrice">¥17,600</span><span class="taxin">(tax in)</span>
              </p>
            </a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=007">
              <p>
                フリーサイズワイド&nbsp;&nbsp;<span class="itemPrice">¥23,100</span><span class="taxin">(tax in)</span>
              </p>
            </a>
          </div>
        </div>
        <div class="contentsArea__contentsBox__designArea">
          <h4>Design</h4>
          <p>絶妙なテーパードで<br class="sp_contents">ゆったりとしたワイドシルエットでも<br>スッキリとしたきちんと感のある着こなしに。<br>美しいとろみのあるドレープが女性らしく<br class="sp_contents">ラグジュアリーな雰囲気をプラスしてくれます。<span><br><br>＊ウエストは紐で調整可能な仕様となっております。</span></p>
        </div>

        <div class="contentsArea__contentsBox__fabricArea">
          <h4>Fabric</h4>
          <p>カシミヤのような滑らかで優しい肌触りの<br class="sp_contents">メリノオプティモを使用。<br>吸放湿性にも優れており、<br class="sp_contents">着ればきるほど肌に馴染みます。</p>
        </div>
        <div class="contentsArea__contentsBox__colorArea">
          <h4>Color</h4>
          <div class="colorVariation cv02">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=007"><img src="images/cv_02_01.jpg" alt=""></a>
          </div>
          <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=007">
            <p>
              フリーサイズワイド&nbsp;&nbsp;<span class="itemPrice">¥23,100</span><span class="taxin">(tax in)</span>
            </p>
          </a>
          <p>素材:メリノオプティモ</p>
          <p>サイズ：FREE</p>
        </div>
        <div class="btnBox">
          <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=007" class="">MORE</a>
        </div>
      </div>


      <div class="contentsArea__contentsBox content03">
        <h2>03</h2>
        <h3 class="contentsArea__contentsBox__itemName">ニットスウェットパンツ</h3>

        <div class="contentsArea__contentsBox__mainContents">
          <div class="contentsWrap"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305131&cat=003"><img src="images/main03_01.jpg" alt="" class="pc_contents"><img src="images/main03_01_sp.jpg" alt="" class="sp_contents"></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930302149&cat=003">
              <p>
                ビルトネックタートル&nbsp;&nbsp;<span class="itemPrice">¥19,800</span><span class="taxin">(tax in)</span>
              </p>
            </a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305131&cat=003">
              <p>
                ニットスウェットパンツ&nbsp;&nbsp;<span class="itemPrice">¥23,100</span><span class="taxin">(tax in)</span>
              </p>
            </a>
          </div>

        </div>
        <div class="contentsArea__contentsBox__designArea">
          <h4>Design</h4>
          <p>密度の高い編目のクリアな表面感で<br>カジュアル過ぎずスタイリッシュな印象に。<br>リブ部分はカットが可能なので、<br class="sp_contents">自分に合った丈感で着こなせます。<span><br><br>＊ウエストは紐で調整可能な仕様となっております。</span></p>
        </div>
        <div class="contentsArea__contentsBox__fabricArea">
          <h4>Fabric</h4>
          <p>非常に細く柔軟な毛が特徴の<br class="sp_contents">ハミルトンラムズウールを使用。<br>とても柔らかい肌触りで、<br class="sp_contents">品の良い優しい印象を演出してくれます。</p>
        </div>
        <div class="contentsArea__contentsBox__colorArea">
          <h4>Color</h4>
          <div class="colorVariation cv03">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305111&cat=003"><img src="images/cv_03_01.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305131&cat=003"><img src="images/cv_03_02.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305121&cat=003"><img src="images/cv_03_03.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305165&cat=003"><img src="images/cv_03_04.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305155&cat=003"><img src="images/cv_03_05.jpg" alt=""></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305149&cat=003"><img src="images/cv_03_06.jpg" alt=""></a>
          </div>
          <a href="">
            <p>
              ニットスウェットパンツ&nbsp;&nbsp;<span class="itemPrice">¥23,100</span><span class="taxin">(tax in)</span>
            </p>
          </a>
          <p>素材:ハミルトンラムズウール</p>
          <p>サイズ：FREE</p>
        </div>
        <div class="btnBox">
          <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=%e3%83%8b%e3%83%83%e3%83%88%e3%82%b9%e3%82%a6%e3%82%a7%e3%83%83%e3%83%88%e3%83%91%e3%83%b3%e3%83%84&udns=2&fpfl=0&pno=1" class="">MORE</a>
        </div>
      </div>


      <div class="contentsArea__contentsBox content04">
        <h2>04</h2>
        <h3 class="contentsArea__contentsBox__itemName">フリーサイズテーパード</h3>
        <div class="contentsArea__contentsBox__mainContents">
          <div class="contentsWrap"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=007"><img src="images/main04_01.jpg" alt="" class="pc_contents"><img src="images/main04_01_sp.jpg" alt="" class="sp_contents"></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930314255&vid=1930314255loose&cat=003">
              <p>
                フィットプルオーバー&nbsp;&nbsp;<span class="itemPrice">¥18,700</span><span class="taxin">(tax in)</span>
              </p>
            </a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=007">
              <p>
                フリーサイズテーパード&nbsp;&nbsp;<span class="itemPrice">¥23,100</span><span class="taxin">(tax in)</span>
              </p>
            </a>
          </div>
          <div class="contentsWrap"><a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=007"><img src="images/main04_02.jpg" alt="" class="pc_contents"><img src="images/main04_02_sp.jpg" alt="" class="sp_contents"></a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930430131&cat=004">
              <p>
                無地長袖&nbsp;&nbsp;<span class="itemPrice">¥7,700</span><span class="taxin">(tax in)</span>
              </p>
            </a>
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=007">
              <p>
                フリーサイズテーパード&nbsp;&nbsp;<span class="itemPrice">¥23,100</span><span class="taxin">(tax in)</span>
              </p>
            </a>
          </div>
        </div>
        <div class="contentsArea__contentsBox__designArea">
          <h4>Design</h4>
          <p>少しゆるめのデザインがこなれた雰囲気を演出。<br>裾に向かって細身になったシルエットが<br class="sp_contents">脚のラインをしっかりとカバーし、<br>カジュアルスタイルはもちろん、<br class="sp_contents">端正なスタイルにも合う幅広いアイテムです。<span><br><br>＊ウエストは紐で調整可能な仕様となっております。</span></p>
        </div>
        <div class="contentsArea__contentsBox__fabricArea">
          <h4>Fabric</h4>
          <p>カシミヤのような滑らかで<br class="sp_contents">優しい肌触りのメリノオプティモを使用。<br>吸放湿性にも優れており、<br class="sp_contents">着ればきるほど肌に馴染みます。</p>
        </div>
        <div class="contentsArea__contentsBox__colorArea">
          <h4>Color</h4>
          <div class="colorVariation cv04">
            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=007"><img src="images/cv_04_01.jpg" alt=""></a>
          </div>
          <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=007">
            <p>
              フリーサイズテーパード&nbsp;&nbsp;<span class="itemPrice">¥23,100</span><span class="taxin">(tax in)</span>
            </p>
          </a>
          <p>素材:ハミルトンラムズウール</p>
          <p>サイズ：FREE</p>
        </div>
        <div class="btnBox">
          <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=007" class="">MORE</a>
        </div>
      </div>


      <div class="nextBtnwrap">
        <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="nextBtn">全てのアイテムを見る</a>
      </div>



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
