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
            <picture>
                <source media="(max-width: 769px)" srcset="images/mv_sp.jpg">
                <img src="images/mv_pc.jpg" alt="">
            </picture>
            <div class="mainArea_ttl">
                <div class="mainArea_ttl--txt">
                    <p class="journalCat">FEATURE</p>
                    <h2>
                        素材にこだわる、<br>
                        上質サマーニット
                    </h2>
                    <p class="journalDate">2020.06.12</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200612/&text=素材にこだわる、上質サマーニット" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200612/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                コーディネートがシンプルになりがちな夏、<br class="sp_contents">Tシャツばかりでは物足りない。<br>
                シンプルなシルエットこそ、素材にこだわりたい。<br>
                そんな願いを叶えてくれる、夏に着たい<br class="sp_contents">「SUVIN COTTON」シリーズをご紹介。
            </p>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    今でも手摘み収穫される、<br class="sp_contents">血統の良い「ハイブリットコットン」。
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="A-wrap_txt">
                    SUVIN COTTONは世界に数あるコットンの中で<br class="sp_contents">最も繊維長が長いコットン。<br>
                    また、超極細の繊維であるため、<br class="sp_contents">シルクのような光沢感とカシミヤのような<br>しっとりとした風合いが特徴の超高級コットンです。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010319211&swrd=SUVIN" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_01.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINニットTシャツ</p>
                            <p class="detailPrice sale">¥10,780(tax in) 30%OFF</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：JUST FIT / LOOSE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010319211&swrd=SUVIN" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Page/Concept/suvin_cotton.aspx" class="ctsArea_btn">SUVIN COTTONとは</a>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    1. SUVINニットTシャツ
                </p>
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
                <p class="A-wrap_txt">
                    Tシャツのような日常着でありながら、上質で心地の良い肌触りや身体に吸い付くような<br class="pc_contents">心地の良いフィット感が実現した、SUVINニットTシャツ。<br>
                    上品なシルエットやベーシックなカラー展開も相まって、シーンレス、シーズンレスにご着用頂けます。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010319241&cat=500041" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_02.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINニットTシャツ</p>
                            <p class="detailPrice sale">¥10,780(tax in) 30%OFF</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：JUST FIT / LOOSE<br>
                                カラー：ベージュ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010319241&cat=500041" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010319259&cat=500059" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_03.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINニットTシャツ</p>
                            <p class="detailPrice sale">¥10,780(tax in) 30%OFF</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：JUST FIT / LOOSE<br>
                                カラー：カーキ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010319259&cat=500059" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=003&dpcnt=24&img=2&sort=07&udns=2&fpfl=0&_material=%e3%82%b9%e3%83%93%e3%83%b3%e3%82%b3%e3%83%83%e3%83%88%e3%83%b3&pno=1" class="ctsArea_btn">アイテム詳細はこちら</a>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    2. SUVINフィットカーディガンハーフ
                </p>
                <img class="A-wrap_pic" src="images/pic_a_03.jpg" alt="">
                <p class="A-wrap_txt">
                    フロントに並んだボタン以外の付属を削ぎ落とし、<br class="sp_contents">究極のシンプルを追求したニットカーディガン。<br>
                    ストレッチ性があり、フィット感がありながらストレスのない着心地が実現するのも、上質なSUVIN COTTONの魅力。<br class="pc_contents">羽織りとしてだけでなく、レイヤードスタイルにも持ってこいの一点です。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010318211&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_04.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINフィットカーディガンハーフ</p>
                            <p class="detailPrice sale">¥11,550 (tax in) 30%OFF</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：JUST FIT / LOOSE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010318211&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010318251&cat=500051" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_05.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINフィットカーディガンハーフ</p>
                            <p class="detailPrice sale">¥11,550 (tax in) 30%OFF</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：JUST FIT / LOOSE<br>
                                カラー：ライトグリーン
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010318251&cat=500051" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=003&dpcnt=24&img=2&sort=07&udns=2&fpfl=0&_material=%e3%82%b9%e3%83%93%e3%83%b3%e3%82%b3%e3%83%83%e3%83%88%e3%83%b3&pno=1" class="ctsArea_btn last">アイテム詳細はこちら</a>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200602">
                            <picture>
                                <source media="(max-width: 769px)" srcset="images/archive01_sp.jpg">
                                <img src="images/archive01_pc.jpg" alt="">
                            </picture>
                            <p class="archiveTtl">
                                モデル、Kanocoさんが伝える“私らしいスタイル”vol.4
                            </p>
                            <p class="archiveDate">
                                2020.06.02
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200529">
                            <picture>
                                <source media="(max-width: 769px)" srcset="images/archive02_sp.jpg">
                                <img src="images/archive02_pc.jpg" alt="">
                            </picture>
                            <p class="archiveTtl">
                                モデル、Kanocoさんが伝える“私らしいスタイル”vol.3
                            </p>
                            <p class="archiveDate">
                                2020.05.29
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010319241&cat=500041">
                    <img src="images/item_02.jpg" alt="">
                    <p>
                        SUVINニットTシャツ
                        <span class="sale">¥10,780(tax in) 30%OFF</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010318251&cat=500051">
                    <img src="images/item_05.jpg" alt="">
                    <p>
                        SUVINフィットカーディガンハーフ
                        <span class="sale">¥11,550 (tax in) 30%OFF</span>
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

