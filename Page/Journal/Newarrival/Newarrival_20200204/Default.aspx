﻿<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="NEW ARRIVAL｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="NEW ARRIVAL" MetaKeywords="TOPICS,トピックス,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
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
                    <p class="journalCat">NEW ARRIVAL</p>
                    <h2>
                        長く使い続けたい、<br>
                        サステナブルな名品
                    </h2>
                    <p class="journalDate">2020.02.04</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Newarrival/Newarrival_20200204/&text=長く使い続けたい、サステナブルな名品" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Newarrival/Newarrival_20200204/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="ctsArea">
            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    自然と向き合う「オゾン加工」の魅力
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="A-wrap_txt">
                    さらっと手に取って着るだけでこなれた雰囲気が出るユーズド感のあるアイテム。<br>
                    これまでは大量な水を使用し、石や酵素で生地を傷めつけて加工を行なっていました。オゾン加工はそんな従来の方法とは違い、空気中から人口生成したオゾンの力で脱色。使用する水の量は半分以下、生地を傷めつけることもなく、デリケートな素材の脱色も可能にしてくれました。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304111&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304111_sub08_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾンニットパーカー</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304111&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Page/Concept/ozone_finishing.aspx" class="ctsArea_btn">オゾン加工とは</a>

            <!-- //////////////////
            /////// TEMPLATE C
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    1. SUVINオゾンニットパーカー
                </p>
                <div class="C-wrap">
                    <div class="C-wrap_list">
                        <img class="C-wrap_pic" src="images/pic_c_01.jpg" alt="">
                    </div>
                    <div class="C-wrap_list last">
                        <img class="C-wrap_pic" src="images/pic_c_02.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    AWでも特に人気の高かったパーカーを春素材でも展開。<br>
                    カシミヤのように柔らかいスビンコットンの肌触りを残したままユーズド感を施すことができるのはオゾン加工だからこそ。上質とカジュアルのバランスが絶妙で大人が楽しめるパーカーに仕上がっています。<br>
                    リブや付属は一切排除したことで、スッキリとした着こなしが出来、どんなボトムスにも合わせやすい。<br>
                    気づくといつも頼ってしまう長く愛したいアイテムです。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304131&cat=500031" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304131_sub08_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾンニットパーカー</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：ピンク
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304131&cat=500031" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304141&cat=500041" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304141_sub07_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾンニットパーカー</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：ベージュ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304141&cat=500041" class="A-wrap_detail--btn">ITEM DETAIL</a>
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
                                カラー：チャコールグレー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=500017" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// TEMPLATE C
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    2. SUVINオゾンニットパンツ
                </p>
                <div class="C-wrap">
                    <div class="C-wrap_list">
                        <img class="C-wrap_pic" src="images/pic_c_03.jpg" alt="">
                    </div>
                    <div class="C-wrap_list">
                        <img class="C-wrap_pic" src="images/pic_c_04.jpg" alt="">
                    </div>
                </div>
                <div class="B-wrap_box B-wrap_box1">
                    <div class="B-wrap_box--pic">
                        <img src="images/pic_b_01.jpg" alt="">
                    </div>
                    <div class="B-wrap_box--txt">
                        <p class="B-wrap_txt">
                            ほど良いボリューム感のあるワイドパンツに、気品を上乗せする上質な素材を使用。きちんと感は出したいけど、楽な服が好き、そんな理想のバランスを作るのにぴったりのアイテム。<br>
                            <br>
                            オゾン加工の程よい色落ち感で、いつものカラーも少し新鮮に見えて合わせの幅が広がります。ウエスト部分はゴムで調節が可能。タックインしてもキレイに着ることができる万能な一枚に仕上がりました。丈感の違うJUST FITとLOOSE FITの2サイズ展開。
                        </p>
                    </div>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306259&cat=500059" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010306259_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾンニットパンツ</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：JUST FIT<br>
                                カラー：カーキ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306259&cat=500059" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306211&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010306211_sub09_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾンニットパンツ</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：JUST FIT<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306211&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Column/Column_20200128">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                古着を愛し、新し着を温める
                            </p>
                            <p class="archiveDate">
                                2020.01.28
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Newarrival/Newarrival_20200121">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                冬コーデを一新。春を始める新作トップス
                            </p>
                            <p class="archiveDate">
                                2020.01.21
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304111&cat=500011">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304111_sub08_L.jpg" alt="">
                    <p>
                        SUVINオゾンニットパーカー
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304131&cat=500031">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304131_sub08_L.jpg" alt="">
                    <p>
                        SUVINオゾンニットパーカー
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306259&cat=500059">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010306259_sub06_L.jpg" alt="">
                    <p>
                        SUVINオゾンニットパンツ
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306211&cat=500011" class="A-wrap_detail--box">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010306211_sub09_L.jpg" alt="">
                    <p>
                        SUVINオゾンニットパンツ
                        <span>¥17,600(tax in)</span>
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
