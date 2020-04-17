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
                        25%OFF キャンペーン<br>
                        おうちで過ごす時に、きっと気分を上げてくれる服を
                    </h2>
                    <p class="journalDate">2020.04.17</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200417/&text=25%OFF キャンペーン おうちで過ごす時に、きっと気分を上げてくれる服を" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200417/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                おうちの中でも、ちょっと気分を変えてくれる服ってきっとある。<br class="pc_contents">私たちは、洋服の持つ力・色の持つ力を信じています。<br>
                「日常でありながら特別」<br>
                JAMAIS VUならではの大人のリラックスウェアを25%OFFでお買いもとめいただけるキャンペーンを開催します。
            </p>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=0417sale&udns=2&fpfl=0&pno=1" class="ctsArea_btn">対象アイテム一覧はこちら</a>

            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    レコメンドアイテム
                </p>
                <div class="C-wrap">
                    <div class="C-wrap_list">
                        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304131&cat=500031">
                            <img class="C-wrap_pic" src="images/pic_c_01.jpg" alt="">
                            <p class="C-wrap_txt">
                                SUVINオゾンニットパーカー<br>
                                ¥17,600(tax in)→<span>¥13,200(tax in)</span>
                            </p>
                        </a>
                    </div>
                    <div class="C-wrap_list">
                        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300141&cat=500041">
                            <img class="C-wrap_pic" src="images/pic_c_02.jpg" alt="">
                            <p class="C-wrap_txt">
                                SUVIN8Gスウェット<br>
                                ¥17,600(tax in)→<span>¥13,200(tax in)</span>
                            </p>
                        </a>
                    </div>
                    <div class="C-wrap_list">
                        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010301161&cat=500061">
                            <img class="C-wrap_pic" src="images/pic_c_03.jpg" alt="">
                            <p class="C-wrap_txt">
                                SUVIN8Gスウェットショートカーディガン<br>
                                ¥17,600(tax in)→<span>¥13,200(tax in)</span>
                            </p>
                        </a>
                    </div>
                    <div class="C-wrap_list">
                        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552111&cat=500011">
                            <img class="C-wrap_pic" src="images/pic_c_04.jpg" alt="">
                            <p class="C-wrap_txt">
                                ペルビアンピマコットンワンピース<br>
                                ¥19,800(tax in)→<span>¥14,850(tax in)</span>
                            </p>
                        </a>
                    </div>
                    <div class="C-wrap_list">
                        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303141&cat=500041">
                            <img class="C-wrap_pic" src="images/pic_c_05.jpg" alt="">
                            <p class="C-wrap_txt">
                                SUVINオゾン5G2WAYベスト<br>
                                ¥16,500(tax in)→<span>¥12,375(tax in)</span>
                            </p>
                        </a>
                    </div>
                    <div class="C-wrap_list">
                        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010324159&cat=500059">
                            <img class="C-wrap_pic" src="images/pic_c_06.jpg" alt="">
                            <p class="C-wrap_txt">
                                SUVINスムースワンピース<br>
                                ¥20,900(tax in)→<span>¥15,675(tax in)</span>
                            </p>
                        </a>
                    </div>
                </div>
            </div>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200410">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                シンプルに着映える、身長別ベストコーディネート
                            </p>
                            <p class="archiveDate">
                                2020.04.10
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Column/Column_20200331">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                カーディガン効果
                            </p>
                            <p class="archiveDate">
                                2020.03.31
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304131&cat=500031">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304131_sub08_L.jpg" alt="">
                    <p>
                        SUVINオゾンニットパーカー
                        <span>¥17,600(tax in)→<span>¥13,200(tax in)</span></span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300141&cat=500041">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010300141_sub07_L.jpg" alt="">
                    <p>
                        SUVIN8Gスウェット
                        <span>¥17,600(tax in)→<span>¥13,200(tax in)</span></span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552111&cat=500011">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010552111_sub05_L.jpg" alt="">
                    <p>
                        ペルビアンピマコットンワンピース
                        <span>¥19,800(tax in)→<span>¥14,850(tax in)</span></span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010324159&cat=500059">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010324159_sub06_L.jpg" alt="">
                    <p>
                        SUVINスムースワンピース
                        <span>¥20,900(tax in)→<span>¥15,675(tax in)</span></span>
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

