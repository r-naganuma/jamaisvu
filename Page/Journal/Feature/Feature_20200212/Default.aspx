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
                        2020 Spring Summer Collection<br>
                        Vol.1
                    </h2>
                    <p class="journalDate">2020.02.12</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200212/&text=2020 Spring Summer Collection Vol.1" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200212/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_01.jpg" alt="">
                        <p class="F-wrap_box--txt">
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303161&cat=500061">SUVINオゾン5G2WAYベスト<span class="pc_inline">　</span><br class="sp_contents">¥16,500(tax in)</a><br>
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=500017">フリーサイズテーパード<span class="pc_inline">　</span><br class="sp_contents">¥23,100(tax in)</a>
                        </p>
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_02.jpg" alt="">
                    </div>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE E
            ///////////////////////-->
            <div class="E-wrap likeD">
                <img class="E-wrap_pic" src="images/pic_d_01.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304111&cat=500011">SUVINオゾンニットパーカー　¥17,600(tax in)</a><br>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=500017">フリーサイズテーパード　¥23,100(tax in)</a>
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE E
            ///////////////////////-->
            <div class="E-wrap">
                <img class="E-wrap_pic" src="images/pic_e_01.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307159&cat=500059">SUVIN オゾン５Gカーディガン　¥19,800(tax in)</a><br>
                    ブラタクシルクキャミドレス　COMING SOON
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE C
            ///////////////////////-->
            <div class="C-wrap">
                <div class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_01.jpg" alt="">
                    <p class="C-wrap_txt">
                        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300141&cat=500041">SUVIN8Gスウェット　¥17,600(tax in)</a>
                    </p>
                </div>
                <div class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_02.jpg" alt="">
                    <p class="C-wrap_txt">
                        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300131&cat=500031">SUVIN8Gスウェット　¥17,600(tax in)</a><br>
                        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=500017">フリーサイズワイド　¥23,100(tax in)</a>
                    </p>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE E
            ///////////////////////-->
            <div class="E-wrap likeD">
                <img class="E-wrap_pic" src="images/pic_d_02.jpg" alt="">
                <p class="E-wrap_txt">
                    リバティースリットネック 　COMING SOON<br>
                    フリーサイズワイド　COMING SOON
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_03.jpg" alt="">
                        <p class="F-wrap_box--txt">
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010301141&cat=500041">SUVIN8Gスウェットショート<br class="sp_contents">カーディガン　¥17,600(tax in)</a><br>
                            ぺルビアンピマコットンワンピース<span class="pc_inline">　</span>COMING SOON
                        </p>
                    </div>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE E
            ///////////////////////-->
            <div class="E-wrap">
                <img class="E-wrap_pic" src="images/pic_e_02.jpg" alt="">
                <p class="E-wrap_txt">
                    ぺルビアンピマコットンワンピース　COMING SOON
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE C
            ///////////////////////-->
            <div class="C-wrap">
                <div class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_03.jpg" alt="">
                    <p class="C-wrap_txt">
                        SUVINスムースロングカーディガン　COMING SOON<br>
                        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=500017">フリーサイズテーパード　¥23,100(tax in)</a>
                    </p>
                </div>
                <div class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_04.jpg" alt="">
                    <p class="C-wrap_txt">
                        ICE COTTTON リブカーディガン　COMING SOON<br>
                        ブラタクシルクキャミドレス　COMING SOON               
                    </p>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE E
            ///////////////////////-->
            <div class="E-wrap likeD">
                <img class="E-wrap_pic" src="images/pic_d_03.jpg" alt="">
                <p class="E-wrap_txt">
                    ぺルビアンピマコットンショートシャツ <br class="sp_contents">¥15,400(tax in)　COMING SOON<br>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306259&cat=500059">SUVINオゾンニットパンツ　¥17,600(tax in)</a>
                </p>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&cicon=1&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="ctsArea_btn">新作商品一覧</a>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200210">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                「SUVINオゾンニットパーカー」の<br class="pc_contents">着こなし方を身長別で紹介
                            </p>
                            <p class="archiveDate">
                                2020.02.10
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Newarrival/Newarrival_20200204">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                長く使い続けたい、サステナブルな名品
                            </p>
                            <p class="archiveDate">
                                2020.02.04
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303161&cat=500061">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010303161_sub06_L.jpg" alt="">
                    <p>
                        SUVINオゾン5G2WAYベスト
                        <span>¥16,500(tax in)</span>
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304111&cat=500011">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304111_sub08_L.jpg" alt="">
                    <p>
                        SUVINオゾンニットパーカー
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307159&cat=500059">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010307159_sub08_L.jpg" alt="">
                    <p>
                        SUVIN オゾン５Gカーディガン
                        <span>¥19,800(tax in)</span>
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

