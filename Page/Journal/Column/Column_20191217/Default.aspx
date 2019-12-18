<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="COLUMN｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="COLUMN" MetaKeywords="TOPICS,トピックス,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<link href='../../css/common.css?123' rel='stylesheet' type='text/css'>
<link href='css/common.css?123' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://use.typekit.net/rzu4tgs.css">
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="journalWrap">
    <div class="journalWrap_cts">
        <!-- //////////////////
        /////// MAIN VISUAL 
        ///////////////////////-->
        <div class="mainArea">
            <img class="pc_contents" src="images/mv_pc.jpg" alt="">
            <img class="sp_contents" src="images/mv_sp.jpg" alt="">
            <div class="mainArea_ttl">
                <div class="mainArea_ttl--txt">
                    <p class="journalCat">COLUMN</p>
                    <h2>
                        クリス-ウェブ 佳子 連載コラムVol.03<br>本当の意味でのラグジュアリー
                    </h2>
                    <p class="journalDate">2019.12.17</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Column/Column_20191217/&text=クリス-ウェブ 佳子 連載コラムVol.03" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Column/Column_20191217/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                <span class="mainTtl">夢のない最近の学生ファッション事情</span>
                『WWD JAPAN』12月2日号の“SNS世代”特集に掲載された「全国の服飾専門学校生約1,600人に聞いた好きなブランドのトップ10」のアンケート結果に驚いた。<br><br>
                1位  ZARA<br>
                2位  GU<br>
                3位  UNIQLO<br>
                4位  H＆M / BERCHKA<br>
                5位  YOHJI YAMAMOTO<br>
                <span class="mainSmall">[出典：<a href="https://www.wwdjapan.com/articles/986629" target="_blank">https://www.wwdjapan.com/articles/986629</a>]</span><br><br><br>
                上位に並ぶのはいずれも低価格を売りにするSPAブランドばかりだ。自由に使えるお金に余裕がないゆえ、本当であれば大好きなデザイナーズブランドを買いたいところをZARAで我慢、というのはよくある話だが、このアンケート結果が示すのはそういうことではない。多くの学生たち、しかも服飾を志す学生たちがZARAやH＆Mを好きだというのだから、なんとも夢がない。
            </p>
        </div>

        <div class="ctsArea">
            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="A-wrap_caption">バンコクにあるタイ老舗ブランドSODAのショップ。<br class="sp_contents">旅先では必ずご当地デザイナーブランドを購入する。</p>
                <p class="A-wrap_txt">
                    ファストファッションが台頭する以前、ファッション好きな学生たちはコツコツとアルバイト代を貯め込み、並んでまでして高額なデザイナーズブランドを買い求めた。夢を買い求めた。<br class="sp_contents"><br class="sp_contents">ところが、現代ではラグジュアリーブランドのノックオフ（類似品）＝で満足できてしまう。類似品を手に取り「これで良いか」と妥協できてしまう。そもそも、最近の学生はラグジュリーブランドに心惹かれることすらないのかもしれない。素材の良さ、独特な色合い、美しいシルエットやカッティング、着心地、どれくらい長く着られるかはさほど問題ではないのだろう。<br class="sp_contents"><br class="sp_contents">流行りの○○風な服をSNSに随時更新できれば、“インスタ映え”すれば、きっとそれで良いのだろう。
                </p>
                <p class="A-wrap_ttl ttl2">
                    “はやい、やすい、ナウい“の三原則
                </p>
                <p class="A-wrap_txt txt2">
                    夢あるファッションはなぜ、そしていつ頃から廃れて始めたのか。その原因の発端は、1980年代初頭にアメリカのアパレル産業が採用したQR生産（クイックレスポンス生産）に起因していると思われる。製造業と流通業での情報共有をスムーズ化させ、生産から店頭までのリードタイムを短縮することで、アパレル企業は売れ筋を見極めた新規発注や迅速な追加生産を可能にしたが、それと同時に売り場では商品の同質化が引き起こった。
                </p>
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
                <p class="A-wrap_caption">ホリデーシーズンにも関わらずパリで一番ラグジュアリーな<br class="sp_contents">百貨店ボンメルシェも昨年に比べて閑散気味。</p>
                <p class="A-wrap_txt">
                    消費者に寄り添った商品開発やトレンドの一極集中化が度を越し、どの店に行っても同じような商品が陳列されるようになったのだ。そうなるとウィンドウショッピングすら楽しくなく、ワンパターンな売り場に辟易した消費者は自ずとオンラインに夢を求めるようになっていった。WWD JAPANの同号では、学生たちに「よく利用するショップ」に関するアンケート調査も行なっていて、案の定ZOZO TOWNが1位に、思わぬ掘り出し物に出会えるとしてメルカリが4位に、そして6位には楽天が、10位には世界中の商品が購入できるBUYMAがランクインしている。大手SCディベロッパーではルミネ新宿店が7位に、百貨店では伊勢丹新宿店が9位になんとかの現状で、もはや売り場に夢はないとも言える結果だ。
                </p>
                <p class="A-wrap_ttl ttl2">
                    “安かろう悪かろう”の教訓
                </p>
                <p class="A-wrap_txt txt2">
                    そうは言いつつも希望はある。「よく利用するショップ」のアンケート結果、その一端に希望の兆しがある。アンケート結果の4位に捨てる服を減らせるメルカリが、8位には“古きは良き”の価値を見出す古着店がランクインしているのだが、その背景に消費者の意識変化が見て取れるのだ。
                </p>
                <img class="A-wrap_pic" src="images/pic_a_03.jpg" alt="">
                <p class="A-wrap_caption">ハワイにあるリサイクルショップのセイバーズ。<br class="sp_contents">火曜日はシニアのみ30％OFFでとても賑わう。</p>
                <p class="A-wrap_txt txt2">
                    1960年代に幕開けした大量生産・大量消費社会が終焉を迎える頃、安価で粗悪な商品は“安かろう悪かろう”と揶揄され、消費者志向は次第に品質重視へとシフトしていったのだが、ここにきて再び同じことが起こりつつある。<br class="sp_contents"><br class="sp_contents">ただし、現代の“安かろう悪かろう”が指すのは商品ではない。私たち消費者が指摘するのは、問題視するのは、生産者の労働環境、そして大量生産と大量消費が地球環境に及ぼす悪循環、または企業体制そのものだ。
                </p>
                <img class="A-wrap_pic" src="images/pic_a_04.jpg" alt="">
                <p class="A-wrap_caption">マラケシュのインテリアショップでラグを一生物の<br class="sp_contents">ラグを物色中。服も同じ気持ちでいつも探している。</p>
                <p class="A-wrap_txt txt2">
                    サスティナビリティに対する意識向上だけでなく、今後は消費者のファッションへの接し方、それ自体が原点回帰するであろうと期待されている。流行にとらわれすぎることなく長く着られる服、再び袖を通したいと思わせてくれる服を買う、それこそがサスティナブルあり、本当の意味でのラグジュアリーだということに人々は立ち返るだろう。<br class="sp_contents"><br class="sp_contents">そして、感情的な結び付きを有する服を再び求め始めることだろうと。
                </p>
                <p class="A-wrap_caption cap2">＊SPA = Specialty store retailer of Private label Apparelの略で、企画・生産、販売までを一貫しておこうない携帯の製造小売業を意味する。<br><br class="sp_contents">
                ＊QR生産 ＝ 製造業者と流通業者の間で情報共有を進め、生産から店頭までのリードタイムを短縮して市場の変動に素早く対応する生産方式。</p>

                <p class="A-wrap_ttl ttl3">Recommend Item</p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930308211&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930308211_sub09_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">Wポケットカーディガン</p>
                            <p class="detailPrice">¥23,100(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：JUST FIT/LOOSE<br>
                                カラー：ホワイト/ピンク/ブルー/グリーン/イエロー/ブラウン
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930308211&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=500017" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930731117_sub10_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">フリーサイズテーパード</p>
                            <p class="detailPrice">¥23,100(tax in)</p>
                            <p class="detailTxt">
                                素材:メリノオプティモ    サイズ：FREE<br>
                                カラー：グレー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=500017" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&cat=500031" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930318131_sub05_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ビッグカーディガン</p>
                            <p class="detailPrice">¥26,400(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                ホワイト/ピンク/ブルー/グリーン/イエロー/ブラウン
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&cat=500031" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930336165&cat=500065" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930336165_sub05_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ワイドリブプルオーバー</p>
                            <p class="detailPrice">¥20,900(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ホワイト/ピンク/ブルー/サックス/ブラウン
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930336165&cat=500065" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>

                <!-- //////////////////
                /////// BTN
                ///////////////////////-->
                <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930313241&cat=500041" class="ctsArea_btn">すべてのアイテムをみる</a>
            </div>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191213">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                普段着を格上げ。楽に着映える優秀ワンピース
                            </p>
                            <p class="archiveDate">
                                2019.12.13
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Column/Column_20191210">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                「上質を纏う。素材の良さを追求した物づくり」 Vol.1
                            </p>
                            <p class="archiveDate">
                                2019.12.10
                            </p>
                        </a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- //////////////////
    /////// 着用アイテムはこちら
    ///////////////////////-->
    <div class="journalWrap_item">
        <p class="journalWrap_item--ttl">レコメンドアイテムはこちら</p>
        <ul>
            <!-- 最大4個まで -->
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930308211&cat=500011">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930308211_sub09_L.jpg" alt="">
                    <p>
                        Wポケットカーディガン
                        <span>¥23,100(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=500017">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930731117_sub10_L.jpg" alt="">
                    <p>
                        フリーサイズテーパード
                        <span>¥23,100(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&cat=500031">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930318131_sub05_L.jpg" alt="">
                    <p>
                        ビッグカーディガン
                        <span>¥26,400(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930336165&cat=500065" class="A-wrap_detail--box">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930336165_sub05_L.jpg" alt="">
                    <p>
                        ワイドリブプルオーバー
                        <span>¥20,900(tax in)</span>
                    </p>
                </a>
            </li>
        </ul>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="journalWrap_item--btn">すべてのアイテムをみる</a>
    </div>
</div>
<%-- △編集可能領域△ --%>


</div>
<script type="text/javascript">
    $(window).on('scroll', function (){

        var elem = $('.latestArea_ttl');
        var isAnimate = 'off';

        elem.each(function () {

            var elemOffset = $(this).offset().top - 230;
            var scrollPos = $(window).scrollTop();
            var wh = $(window).height();

            if(scrollPos > elemOffset - wh + (wh / 2) ){
              $('.journalWrap_item').addClass(isAnimate);
              $('.journalWrap_item').removeClass("on");
            }else{
                $('.journalWrap_item').removeClass(isAnimate);
                $('.journalWrap_item').addClass("on");
            }
        });
    });

    $(function(){
        //メニューエリアの高さを調整
        function adjustMenuHeight() {
            $('.journalWrap_item').height($(window).height() - 150);
        }

        $(window).on('load resize', function() {
            adjustMenuHeight();
        });
    });
</script>
</asp:Content>

