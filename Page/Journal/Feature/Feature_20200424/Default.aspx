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
                    <p class="journalCat">COORDINATE</p>
                    <h2>
                        JAMAIS VU×editor_kaoの<br>
                        「彩りのある着こなし」vol.3&lt;Green&gt;
                    </h2>
                    <p class="journalDate">2020.04.24</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200424/&text=JAMAIS VU×editor_kaoの「彩りのある着こなし」vol.3&lt;Green&gt;" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200424/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                <span>
                    ジャメヴの美しい色使いに魅了された<br class="sp_contents">editor_kaoが、毎回テーマカラーごとに着こなしを提案する連載企画です。第3回は、新緑の季節に似合うライトグリーンをピックアップ！
                </span>
                フリーエディターのeditor_kaoが、ジャメヴの新作と私服をM I X。コーディネート＆解説をするコラム連載です。<br class="pc_contents">第３回は、新緑の季節に似合う、軽やかなグリーンを使った着こなしを考えてみました。
            </p>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    オーガニックな雰囲気漂う<br class="sp_contents">ライトグリーンが新鮮
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010317151&cat=500051">ペイパーポロシャツ　¥17,600(tax in)</a><br>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010321151&cat=500051">SUVIN半袖ニットスウェット ¥19,800(tax in)</a><br>
                    ペルビアンピマコットンコートシャツ　¥19,800(tax in) COMING SOON
                </p>
                <p class="A-wrap_txt">
                    ジャメヴが今シーズン提案する新色・ライトグリーンは、ミントやセージといったハーブを思わせる優しい色調。<br class="pc_contents">さわやかな差し色を取入れることで、着こなしをヘルシーにまとめてくれます。<br>
                    印象が甘くなりすぎないところもうれしいポイント。
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    Style01:<br class="sp_contents">個性的なポロニットを女らしくアレンジ
                </p>
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010317151&cat=500051">ペイパーポロシャツ ¥17,600(tax in)</a><br>
                    OTHER editor_kao私物
                </p>
                <p class="A-wrap_txt">
                    ざっくりした編み地が魅力の、新感覚のポロニット。ドライな和紙素材なので通気性がよく、今から夏まで活躍するアイテムです。ドロップショルダーのゆったりしたシルエットですが、あえてボトムもボリューム感のあるスカートで、今どきのバランスに。<br>
                    <br>
                    ネイビーを合わせ、メリハリはあるけれど重くなりすぎない配色に仕上げました。洋服がリラックスしたムードなので、小物はきちんと感を意識。パールネックレス、花柄のクラッチバッグ、スエードのパンプスと、女らしくもシャープなアイテム選びが、全体を引き締めてくれます。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010317151&cat=500051" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010317151_sub05_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ペイパーポロシャツ</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:和紙繊維    サイズ：FREE<br>
                                カラー：ライトグリーン
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010317151&cat=500051" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    Style02:<br class="sp_contents">黒を少量ずつ散らしてアクセントに
                </p>
                <img class="A-wrap_pic" src="images/pic_a_03.jpg" alt="">
                <p class="E-wrap_txt">
                    ペルビアンピマコットンコートシャツ　¥19,800(tax in) COMING SOON<br>
                    OTHER editor_kao私物
                </p>
                <p class="A-wrap_txt">
                    羽織にもワンピースにもなる新作のコートシャツ。サイドの大きなポケットがカジュアル感を醸しています。そではカフス仕立てで、長さが簡単に調整可能。インナーしだいでバランスが変えられるのも高ポイントです。<br>
                    <br>
                    Style01ではネイビーを合わせましたが、定番色の黒を合わせるなら…と考えたのがこのコーディネートです。コートシャツの色が淡いから、黒の分量が多いと負けてしまいそう。そこで合わせるアイテムをモノトーンの柄ものにし、少しずつ黒を足していくことで、辛口なムードにもっていきました。ストライプのゆったりパンツ、バンダナ柄のシルクスカーフ、ギンガムチェックのメルカドバッグ…。柄×柄×柄の高度な組み合わせですが、モノトーンなら違和感なし。コートシャツのライトグリーンが活きつつも、どこかモードな雰囲気もある着こなしです。
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    Style03:<br class="sp_contents">ナチュラルさが魅力のグリーン×ブラウン
                </p>
                <img class="A-wrap_pic" src="images/pic_a_04.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010321151&cat=500051">SUVIN半袖ニットスウェット ¥14,300(tax in)</a><br>
                    OTHER editor_kao私物
                </p>
                <p class="A-wrap_txt">
                    今シーズン話題のブラウンも、ライトグリーンと好相性。配色の新鮮さが前面に出るよう、半袖のコットンニット×ベーシックパンツとシンプルな組み合わせにしました。バッグや靴といった小物も、積極的に白を選ぶことで抜け感が生まれます。ニットはTシャツ感覚で着られるプレーンなデザインが魅力。<br>
                    <br>
                    今回はややワイドなシルエットのパンツでしたが、基本的にボトムは選びません。五分に近い袖の長さは、気になる二の腕をカバーしてくれる役割も。身ごろも適度なゆとりがあるので、リラックス感の高い一枚です。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010321151&cat=500051" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010321151_sub05_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVIN半袖ニットスウェット</p>
                            <p class="detailPrice">¥14,300(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：ライトグリーン
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010321151&cat=500051" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE J 
            ///////////////////////-->
            <div class="J-wrap">
                <div class="J-wrap_pic">
                    <img src="images/pic_j_01.png" alt="">
                </div>
                <div class="J-wrap_txt">
                    <div class="J-wrap_txt--ttl">
                        <p>editor_kao</p>
                        <div class="snsArea">
                            <div class="snsArea_ig">
                                <a href="https://www.instagram.com/editor_kao/?hl=ja" target="_blank">
                                    <img src="images/icn_ig.png" alt="">
                                </a>
                            </div>
                            <!-- <div class="snsArea_fb">
                                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010253161&cat=500061" target="_blank">
                                    <img src="images/icn_fb.png" alt="">
                                </a>
                            </div>
                            <div class="snsArea_tw">
                                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010253161&cat=500061" target="_blank">
                                    <img src="images/icn_tw.png" alt="">
                                </a>
                            </div> -->
                        </div>
                    </div>
                    <p class="J-wrap_txt--cts">
                        フリーエディター。<br>
                        ファッション誌を手がける編集プロダクションに勤務の後、独立。<br class="pc_contents">現在は大人の実用ファッションを中心に、人物インタビューや日本の伝統文化など、ジャンルレスで雑誌やカタログ、ウェブで活動中。<br>
                        <br>
                        また、3年目を迎えるインスタグラム<br class="sp_contents"><a href="https://www.instagram.com/editor_kao/?hl=ja" target="_blank">＠editor_kao</a>では私服コーディネートを紹介する傍ら、さまざまなブランドや百貨店とのコラボレーションも手がけている。
                    </p>
                </div>
            </div>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200417">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                25%OFF キャンペーン<br>
                                おうちで過ごす時に、きっと気分を上げてくれる服を
                            </p>
                            <p class="archiveDate">
                                2020.04.17
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200410">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                シンプルに着映える、身長別ベストコーディネート
                            </p>
                            <p class="archiveDate">
                                2020.04.10
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010317151&cat=500051">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010317151_sub05_L.jpg" alt="">
                    <p>
                        ペイパーポロシャツ
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010321151&cat=500051">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010321151_sub05_L.jpg" alt="">
                    <p>
                        SUVIN半袖ニットスウェット
                        <span>¥14,300(tax in)</span>
                    </p>
                </a>
            </li>
        </ul>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="journalWrap_item--btn">すべてのアイテムをみる</a>
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

