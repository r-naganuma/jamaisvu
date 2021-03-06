﻿<%--
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
                        モデル、Kanocoさんが伝える<br>
                        “私らしいスタイル”vol.3
                    </h2>
                    <p class="journalDate">2020.05.29</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200529/&text=モデル、Kanocoさんが伝える“私らしいスタイル”vol.3" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200529/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                モデルとしてはもちろん、そのセンスにも注目が集まるKanocoさんをゲストに迎え、<br class="pc_contents">JAMAIS VUのアイテムと私服を合わせてスタイリングしてもらいました。<br>
                “自分らしさ”を追求したコーディネートを5回にわたってお届けします。
            </p>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    上品に、シンプルに。<br class="sp_contents">私に寄り添う心地よいモノトーン
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="E-wrap_txt">
                    スカート(モデル私物)
                </p>
                <p class="A-wrap_txt">
                    私首が短いので(笑)、少しでも長く見えるようにトップスは必ずノーカラ ーを選びます。このカーディガンは、<br class="pc_contents">すごく柔らかくて肌触りが最高に気持ちよかったです。 無駄を削ぎ落したデザインもとてもユニーク。<br>
                    ここに黒のロングスカートとレザーサンダルを合わせて、甘さを抑えた大人っぽいモノトーンにまとめました。<br class="pc_contents">シンプルなので、ポイントに上品な麦わら帽子をのせたら完成。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010318211&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_01.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINフィットカーディガンハーフ</p>
                            <p class="detailPrice">¥16,500(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：JUST FIT<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010318211&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_01.jpg" alt="">
                        <p class="F-wrap_box--txt pc_contents">
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010318211&cat=500011">SUVINフィットカーディガンハーフ¥16,500(tax in)</a>, <br>
                            スカート(モデル私物)
                        </p>
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_02.jpg" alt="">
                    </div>
                </div>
                <p class="F-wrap_box--txt sp_contents">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010318211&cat=500011">SUVINフィットカーディガンハーフ¥16,500(tax in)</a>, <br>
                    スカート(モデル私物)
                </p>
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
                        <p>Kanoco</p>
                        <div class="snsArea">
                            <div class="snsArea_ig">
                                <a href="https://www.instagram.com/kanococo/?hl=ja" target="_blank">
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
                        BARK in STYLe所属。数々のファッション誌を中心に、広告やMVなど幅広く活躍中。<br>
                        ライフスタイル誌『OZmagazine』（スターツ出版）のカバーガールとしても人気を集める。無類のシロクマ好き。
                    </p>
                </div>
            </div>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Archives</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200522">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                モデル、Kanocoさんが伝える“私らしいスタイル”vol.1
                            </p>
                            <p class="archiveDate">
                                2020.05.22
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200526">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                モデル、Kanocoさんが伝える“私らしいスタイル”vol.2
                            </p>
                            <p class="archiveDate">
                                2020.05.26
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010318211&cat=500011">
                    <img src="images/item_01.jpg" alt="">
                    <p>
                        SUVINフィットカーディガンハーフ
                        <span>¥16,500(tax in)</span>
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

