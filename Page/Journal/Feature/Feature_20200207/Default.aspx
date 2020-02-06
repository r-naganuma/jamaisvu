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
                        「SUVINオゾンニットパーカー」の<br class="sp_contents">着こなし方を<br class="pc_contents">身長別で紹介
                    </h2>
                    <p class="journalDate">2020.02.07</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200207/&text=「SUVINオゾンニットパーカー」の着こなし方を身長別で紹介" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200207/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                「SUVINオゾンニットパーカー」の着こなし方を身長別で紹介します。<br>
                シルクのような光沢感とカシミヤのようなしっとりとした風合いを誇る“スビンコットン”を贅沢に使用した、<br>
                「SUVINオゾンニットパーカー」は、春に向けて持っておきたいワードローブアイテムです。
            </p>
        </div>

        <div class="ctsArea">
            <div class="anchorArea">
                <div class="A-wrap_detail">
                    <div class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304161_sub07_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾンニットパーカー</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                サックス/ホワイト/ピンク/ベージュ/カーキ
                            </p>
                            <p class="detailCts">
                                世界に数あるコットンの中で最も繊維長が長く、超極細繊維のため、<br class="pc_contents">シルクのような光沢感とカシミヤのようなしっとりとした風合いを<br class="pc_contents">誇る「スビンコットン」。<br>
                                品質を維持するためにインド南部の限られた農家でのみ栽培され、<br class="pc_contents">今でも手摘みで大切に収穫され高いクォリティとしなやかな風合いを生み出しています。
                            </p>
                        </div>
                    </div>
                </div>
                <div class="anchorArea_box">
                    <div class="anchorArea_box--list">
                        <a href="#a154">154㎝</a>
                    </div>
                    <div class="anchorArea_box--list">
                        <a href="#a162">162㎝</a>
                    </div>
                    <div class="anchorArea_box--list">
                        <a href="#a168">168㎝</a>
                    </div>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div id="a154" class="A-wrap">
                <p class="A-wrap_ttl">
                    154cm
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <div class="C-wrap">
                    <div class="C-wrap_list">
                        <img class="C-wrap_pic" src="images/pic_c_01.jpg" alt="">
                    </div>
                    <div class="C-wrap_list">
                        <img class="C-wrap_pic" src="images/pic_c_02.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    サックス×ホワイトで春らしさを演出。<br>
                    ホワイトのレーススカートとスニーカーでフェミニンカジュアルに。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304161&cat=500061" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304161_sub07_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾンニットパーカー</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：サックス
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305165&cat=500065" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div id="a162" class="A-wrap">
                <p class="A-wrap_ttl">
                    162cm
                </p>
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
                <div class="C-wrap">
                    <div class="C-wrap_list">
                        <img class="C-wrap_pic" src="images/pic_c_03.jpg" alt="">
                    </div>
                    <div class="C-wrap_list">
                        <img class="C-wrap_pic" src="images/pic_c_04.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    マーメイドラインのデザインスカートと合わせ、レディな着こなしに。<br>
                    ナチュラルなトーンで合わせるのが気分。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304161&cat=500061" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304161_sub07_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾンニットパーカー</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：サックス
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305165&cat=500065" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div id="a168" class="A-wrap">
                <p class="A-wrap_ttl">
                    168cm
                </p>
                <img class="A-wrap_pic" src="images/pic_a_03.jpg" alt="">
                <div class="C-wrap">
                    <div class="C-wrap_list">
                        <img class="C-wrap_pic" src="images/pic_c_05.jpg" alt="">
                    </div>
                    <div class="C-wrap_list">
                        <img class="C-wrap_pic" src="images/pic_c_06.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    センタープレスの入ったスラックスでほどよいリラックス感を。カジュアルな中に洗練された印象が出ます。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304161&cat=500061" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304161_sub07_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾンニットパーカー</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：サックス
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305165&cat=500065" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&cicon=1&dpcnt=24&img=2&sort=07&swrd=SUVINオゾンニットパーカー&udns=2&fpfl=0&pno=1" class="ctsArea_btn">その他カラーをみる</a>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Newarrival/Newarrival_20200204">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                長く使い続けたい、サステナブルな名品
                            </p>
                            <p class="archiveDate">
                                2020.02.04
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Column/Column_20200128">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                古着を愛し、新し着を温める
                            </p>
                            <p class="archiveDate">
                                2020.01.28
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304161&cat=500061">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304161_sub07_L.jpg" alt="">
                    <p>
                        SUVINオゾンニットパーカー
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
        </ul>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="journalWrap_item--btn">すべてのアイテムをみる</a>
    </div>
</div>
<script type="text/javascript" charset="utf-8">
$(window).load(function() {
    $('.anchorArea_box a').click(function(){
        var speed = 500;
        var href= $(this).attr("href");
        var target = $(href == "#" || href == "" ? 'html' : href);
        var position = target.offset().top - 95;
        $("html, body").animate({scrollTop:position}, speed, "swing");
        return false;
    });
});
</script>
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

