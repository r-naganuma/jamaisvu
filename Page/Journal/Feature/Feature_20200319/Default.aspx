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
                        今売れている、<br class="sp_contents">人気の新作ランキング
                    </h2>
                    <p class="journalDate">2020.03.19</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200319/&text=今売れている、人気の新作ランキング" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200319/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                最新の人気アイテムをランキング形式でご紹介！<br>
                何を着ていいか迷う季節の変わり目にぴったり。長く着れる優秀アイテムが勢ぞろいです。
            </p>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// TEMPLATE D
            ///////////////////////-->
            <div class="D-wrap">
                <img class="D-wrap_ttl ttl01 pc_contents" src="images/ttl_d_01.png" alt="">
                <img class="D-wrap_ttl ttl01 sp_contents" src="images/ttl_d_01_sp.png" alt="">
                <img class="D-wrap_pic" src="images/pic_d_01.jpg" alt="">
                <div class="D-wrap_box">
                    <div class="D-wrap_box--pic">
                        <img src="images/pic_d_02.jpg" alt="">
                    </div>
                    <div class="D-wrap_box--txt">
                        <p>
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303161&cat=500061">SUVINオゾン5G2WAYベスト <br class="sp_contents">¥16,500(tax in)</a><br>
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=500017">フリーサイズワイド ¥23,100(tax in)</a>
                        </p>
                    </div>
                </div>
                <p class="A-wrap_txt">
                    オーセンティックなボックスシルエットのベストは、今の時期はレイヤードで、<br class="pc_contents">夏場には1枚でもさらりと着ることが出来る一枚。上質な「スビンコットン」使用で抜群の肌触りです。<br>
                    前後どちらでも着用可能で、合わせ方によって表情を変えてくれる着まわし力抜群のアイテムです。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303161&cat=500061" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010303161_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾン5G2WAYベスト</p>
                            <p class="detailPrice">¥16,500(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：サックス
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303161&cat=500061" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=500017" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930730117_sub08_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">フリーサイズワイド</p>
                            <p class="detailPrice">¥23,100(tax in)</p>
                            <p class="detailTxt">
                                素材:メリノオプティモ    サイズ：FREE<br>
                                カラー：チャコールグレー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=500017" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2010303&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <img class="F-wrap_ttl ttl01 pc_contents" src="images/ttl_f_01.png" alt="">
                <img class="F-wrap_ttl ttl01 sp_contents" src="images/ttl_f_01_sp.png" alt="">
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_01.jpg" alt="">
                        <p class="F-wrap_box--txt">
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307111&cat=500011">SUVINオゾン5Gカーディガン <br class="sp_contents">¥19,800(tax in)</a><br>
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=500017">フリーサイズテーパード  <br class="sp_contents">¥23,100(tax in)</a>
                        </p>
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_02.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    オーバーサイズのVネックカーディガンは、素材を生かした変形畦編みにオゾン加工を施すことで上質感のあるヘルシーな雰囲気に。どんなスタイリングに羽織ってもバランス良く決まる計算されたボリューム感と素肌にも心地良い着心地で夏場まで活躍してくれる一枚です。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307111&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010307111_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾン5Gカーディガン</p>
                            <p class="detailPrice">¥19,800(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307111&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
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
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2010307&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// TEMPLATE D
            ///////////////////////-->
            <div class="D-wrap">
                <img class="D-wrap_ttl ttl02 pc_contents" src="images/ttl_d_02.png" alt="">
                <img class="D-wrap_ttl ttl02 sp_contents" src="images/ttl_d_02_sp.png" alt="">
                <img class="D-wrap_pic" src="images/pic_d_03.jpg" alt="">
                <div class="D-wrap_box">
                    <div class="D-wrap_box--pic">
                        <img src="images/pic_d_04.jpg" alt="">
                    </div>
                    <div class="D-wrap_box--txt">
                        <p>
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300159&cat=500059">SUVIN8Gスウェット ¥17,600(tax in)</a><br>
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=500017">フリーサイズテーパード ¥23,100(tax in)</a>
                        </p>
                    </div>
                </div>
                <p class="A-wrap_txt">
                    身幅のあるワイドスリーブラグランでリラックス感がありながら、ジャストウエストの裾のストリングでボトムインしたようなこなしが可能。バランスが取りやすく春の一枚着としておすすめ。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300159&cat=500059" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010300159_sub08_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVIN8Gスウェット</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：カーキ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300159&cat=500059" class="A-wrap_detail--btn">ITEM DETAIL</a>
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
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2010300&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <img class="F-wrap_ttl ttl02 pc_contents" src="images/ttl_f_02.png" alt="">
                <img class="F-wrap_ttl ttl02 sp_contents" src="images/ttl_f_02_sp.png" alt="">
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_03.jpg" alt="">
                        <p class="F-wrap_box--txt">
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010301141&cat=500041">SUVIN8Gスウェットショートカーディガン ¥17,600(tax in)</a><br>
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552111&cat=500011">ペルビアンピマコットンワンピース  ¥19,800(tax in)</a>
                        </p>
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_04.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    ボックスシルエットで裾や袖のリブ付属を削ぎ落とすことで、レイヤードやアウターに最適なバランスが実現。どんなスタイリングにも馴染むシックなベージュでさりげない洗練された大人カジュアルに。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010301141&cat=500041" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010301141_sub05_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVIN8Gスウェットショートカーディガン</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：ベージュ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010301141&cat=500041" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552111&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010552111_sub05_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ペルビアンピマコットンワンピース</p>
                            <p class="detailPrice">¥19,800(tax in)</p>
                            <p class="detailTxt">
                                素材:ペルビアンピマコットン    サイズ：FREE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552111&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2010301&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// TEMPLATE D
            ///////////////////////-->
            <div class="D-wrap">
                <img class="D-wrap_ttl ttl03 pc_contents" src="images/ttl_d_03.png" alt="">
                <img class="D-wrap_ttl ttl03 sp_contents" src="images/ttl_d_03_sp.png" alt="">
                <img class="D-wrap_pic" src="images/pic_d_05.jpg" alt="">
                <div class="D-wrap_box">
                    <div class="D-wrap_box--pic">
                        <img src="images/pic_d_06.jpg" alt="">
                    </div>
                    <div class="D-wrap_box--txt">
                        <p>
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010309211&cat=500011">SUVINフィットカーディガン <br class="sp_contents">¥18,700(tax in)</a>
                        </p>
                    </div>
                </div>
                <p class="A-wrap_txt">
                    フラットで滑らかな表面感でありながら二重組織にすることでストレッチ性があり身体に吸い付くような心地良いフィット感が魅力。付属を極力削ぎ落とし、ボタンホールさえもホールがわからないようなすっきりとした仕様にこだわった一品です。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010309211&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010309211_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINフィットカーディガン</p>
                            <p class="detailPrice">¥18,700(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010309211&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2010309&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200317">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                最新ワンピースで、<br class="sp_contents">簡単におしゃれを格上げ
                            </p>
                            <p class="archiveDate">
                                2020.03.17
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200313">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                夏先まで重宝する、<br class="sp_contents">頼れるリブニット
                            </p>
                            <p class="archiveDate">
                                2020.03.13
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=500017">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930730117_sub08_L.jpg" alt="">
                    <p>
                        フリーサイズワイド
                        <span>¥23,100(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307111&cat=500011">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010307111_sub06_L.jpg" alt="">
                    <p>
                        SUVINオゾン5Gカーディガン
                        <span>¥19,800(tax in)</span>
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

