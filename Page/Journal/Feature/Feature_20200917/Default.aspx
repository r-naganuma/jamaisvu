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
                    <p class="journalCat">FEATURE</p>
                    <h2>
                        TRY ME<br>20%OFF Campaign
                    </h2>
                    <p class="journalDate">2020.09.17</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200917/&text=TRY ME 20%OFF Campaign" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200917/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                <span>「SUVIN COTTON」アイテムALL 20%OFF<br>2020年9月17日(木)12:00 ～ 9月27日(日)23:59<br>クーポンコード：TRY2009</span>
                「SUVIN COTTON」。<br>
                繊維を傷つけること無く、手摘みで収穫することで<br>シルクのような艶やかさとカシミヤのようなしっとりとしなやかなコットン。<br class="pc_contents">その魅力を最大限に引き出すべく、スムース編みでフラットにぎゅぎゅっと圧縮をかける。<br class="pc_contents">細部まで計算されたミニマルでノンストレスなデザインのフーデッドパーカーやストレートパンツ。<br>
                <br>
                その繊細でありながらおおらかな包容力に身を委ねる幸福感たるや。<br class="pc_contents">1マイルどころか、何マイルだって歩いて行けそうな気分。<br class="pc_contents">陽の光の下ではまた違ったやわらかな表情と陰影を見せてくれる。<br>
                <br>
                今着たいのはそんな健やかで自由な、自分らしさを解き放ってくれる服。
            </p>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    PICK UP ITEM
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE C
            ///////////////////////-->
            <div class="C-wrap">
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031115133" class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_01.jpg" alt="">
                    <p class="C-wrap_txt">
                        SUVINオゾンニットパーカー<br>
                        <span class="old">¥16,000</span><br>
                        <span class="new">¥12,800（20%OFF）</span>
                    </p>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031115113" class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_02.jpg" alt="">
                    <p class="C-wrap_txt">
                        SUVINオゾンニットパーカー<br>
                        <span class="old">¥16,000</span><br>
                        <span class="new">¥12,800（20%OFF）</span>
                    </p>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031148175" class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_03.jpg" alt="">
                    <p class="C-wrap_txt">
                        SUVINオゾンニットパーカー<br>
                        <span class="old">¥16,000</span><br>
                        <span class="new">¥12,800（20%OFF）</span>
                    </p>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031148136" class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_04.jpg" alt="">
                    <p class="C-wrap_txt">
                        SUVINオゾンニットパーカー<br>
                        <span class="old">¥16,000</span><br>
                        <span class="new">¥12,800（20%OFF）</span>
                    </p>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306261" class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_05.jpg" alt="">
                    <p class="C-wrap_txt">
                        SUVINオゾンニットパンツ<br>
                        <span class="old">¥16,000</span><br>
                        <span class="new">¥12,800（20%OFF）</span>
                    </p>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031416213" class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_06.jpg" alt="">
                    <p class="C-wrap_txt">
                        SUVINオゾンニットパンツ<br>
                        <span class="old">¥16,000</span><br>
                        <span class="new">¥12,800（20%OFF）</span>
                    </p>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303159" class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_07.jpg" alt="">
                    <p class="C-wrap_txt">
                        SUVINオゾン5G2WAYベスト<br>
                        <span class="old">¥16,500</span><br>
                        <span class="new">¥13,200（20%OFF）</span>
                    </p>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303141" class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_08.jpg" alt="">
                    <p class="C-wrap_txt">
                        SUVINオゾン5G2WAYベスト<br>
                        <span class="old">¥16,500</span><br>
                        <span class="new">¥13,200（20%OFF）</span>
                    </p>
                </a>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=tryme&udns=2&fpfl=0&pno=1" class="ctsArea_btn">対象アイテム一覧はこちら</a>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200717">
                            <picture>
                                <source media="(max-width: 769px)" srcset="images/archive01_sp.jpg">
                                <img src="images/archive01_pc.jpg" alt="">
                            </picture>
                            <p class="archiveTtl">
                                JAMAIS VU POP UP STORE 開催 ！
                            </p>
                            <p class="archiveDate">
                                2020.07.17
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200626">
                            <picture>
                                <source media="(max-width: 769px)" srcset="images/archive02_sp.jpg">
                                <img src="images/archive02_pc.jpg" alt="">
                            </picture>
                            <p class="archiveTtl">
                                JAMAIS VU×editor_kaoの「彩りのある着こなし」vol.4 &lt;Black&gt;
                            </p>
                            <p class="archiveDate">
                                2020.06.26
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031115133">
                    <img src="images/pic_c_01.jpg" alt="">
                    <p>
                        SUVINオゾンニットパーカー
                        <span class="old">¥16,000</span>
                        <span class="sale">¥12,800（20%OFF）</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031148175">
                    <img src="images/pic_c_03.jpg" alt="">
                    <p>
                        SUVINオゾンニットパーカー
                        <span class="old">¥16,000</span>
                        <span class="sale">¥12,800（20%OFF）</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306261">
                    <img src="images/pic_c_05.jpg" alt="">
                    <p>
                        SUVINオゾンニットパンツ
                        <span class="old">¥16,000</span>
                        <span class="sale">¥12,800（20%OFF）</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303159">
                    <img src="images/pic_c_07.jpg" alt="">
                    <p>
                        SUVINオゾン5G2WAYベスト
                        <span class="old">¥16,500</span>
                        <span class="sale">¥13,200（20%OFF）</span>
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

