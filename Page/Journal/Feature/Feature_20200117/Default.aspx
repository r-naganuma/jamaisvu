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
                    <p class="journalCat">FEATURE</p>
                    <h2>
                        SALE ITEM RANKING
                    </h2>
                    <p class="journalDate">2020.01.17</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200117/&text=SALE ITEM RANKING" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200117/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                JAMAIS VUの商品の中でも特に反響の大きいベストヒット商品をご紹介。<br>
                今だけお買い得な限定価格になっているので、大活躍間違いなしのアイテムをぜひこの機会にゲットしてください。
            </p>
        </div>

        <div class="ctsArea">
            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    No. 01 ニットスウェット
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="A-wrap_txt">
                    堂々の1位はInstagramでも反響が大きかったニットスウェット。<br>
                    ゆったりめで抜け感があるのにきちんと感も演出できる絶妙シルエットが評判です。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930300131&cat=500031" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930300131_sub10_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ニットスウェット</p>
                            <p class="detailPrice">セール価格 ¥8,800(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ピンク
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930300131&cat=500031" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=1930300&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <p class="A-wrap_ttl">
                    No. 02 ビルトネックプルオーバー
                </p>
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_01.jpg" alt="">
                        <p class="F-wrap_box--txt">
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337161&cat=500061">ビルトネックプルオーバー <br class="sp_contents">セール価格 ¥11,550(tax in)</a>
                        </p>
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_02.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    タートル部分の程よいゆったり感で小顔効果抜群のビルトネックプルオーバーが2位にランクイン。<br>
                    柔らかい肌触りなので、ストレスなく着こなすことができる一枚です。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337161&cat=500061" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930337161_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ビルトネックプルオーバー</p>
                            <p class="detailPrice">セール価格 ¥11,550(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：サックス
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337161&cat=500061" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=1930337&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    No. 03 ビッグカーディガン
                </p>
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
                <p class="A-wrap_txt">
                    発売開始以来ずっと売れ筋上位に入り続けているビッグカーディガン。<br>
                    パンツにもスカートにも合わせやすくカジュアルにもフェミニンにも着こなすことができる万能アイテムです。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318165&cat=500065" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930318165_sub10_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ビッグカーディガン</p>
                            <p class="detailPrice">セール価格 ¥13,200(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ブルー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318165&cat=500065" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=1930318&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    No. 04 ワイドリブプルオーバー
                </p>
                <img class="A-wrap_pic" src="images/pic_a_03.jpg" alt="">
                <p class="A-wrap_txt">
                    シンプルなプルオーバーは少しゆったりとしたデザインに仕上げることでリラックス感がプラスされ、<br class="pc_contents">カジュアルにも着こなせる新鮮なバランスに。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930336149&cat=500049" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930336149_sub05_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ワイドリブプルオーバー</p>
                            <p class="detailPrice">セール価格 ¥10,450(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ブラウン
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930336149&cat=500049" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=1930336&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <p class="A-wrap_ttl">
                    No. 05 ショートカーディガン
                </p>
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_03.jpg" alt="">
                        <p class="F-wrap_box--txt">
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317165&cat=500065">ショートカーディガン <br class="sp_contents">セール価格 ¥11,550(tax in)</a>
                        </p>
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_04.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    スポーティーなハーフジップを上質な素材のニットに合わせることで他にはない絶妙なバランスに。<br>
                    前後逆に着用も可能で着こなしの幅が広がるアイテムです。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317165&cat=500065" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930317165_sub10_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ショートカーディガン</p>
                            <p class="detailPrice">セール価格 ¥11,550(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ブルー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930317165&cat=500065" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=1930317&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&_sale=%E3%82%BB%E3%83%BC%E3%83%AB&pno=1">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                対象アイテム拡大！全品50％OFF
                            </p>
                            <p class="archiveDate">
                                2020.01.14
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191227">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                冬を盛り上げる、最強白ニットの法則
                            </p>
                            <p class="archiveDate">
                                2019.12.27
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
        <p class="journalWrap_item--ttl">着用アイテムはこちら</p>
        <ul>
            <!-- 最大4個まで -->
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930300131&cat=500031">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930300131_sub10_L.jpg" alt="">
                    <p>
                        ニットスウェット
                        <span>セール価格 ¥8,800(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337161&cat=500061">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930337161_sub06_L.jpg" alt="">
                    <p>
                        ビルトネックプルオーバー
                        <span>セール価格 ¥11,550(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318165&cat=500065">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930318165_sub10_L.jpg" alt="">
                    <p>
                        ビッグカーディガン
                        <span>セール価格 ¥13,200(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930336149&cat=500049" class="A-wrap_detail--box">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930336149_sub05_L.jpg" alt="">
                    <p>
                        ワイドリブプルオーバー
                        <span>¥23,100(tax in)</span>
                    </p>
                </a>
            </li>
        </ul>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&_sale=%E3%82%BB%E3%83%BC%E3%83%AB&pno=1" class="journalWrap_item--btn">すべてのアイテムをみる</a>
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

