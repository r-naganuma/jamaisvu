﻿<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="COLUMN｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="COLUMN" MetaKeywords="TOPICS,トピックス,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
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
                    <p class="journalCat">COLUMN</p>
                    <h2>
                        クリス-ウェブ 佳子 連載コラムVol.05<br>
                        カーディガン効果
                    </h2>
                    <p class="journalDate">2020.03.31</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Column/Column_20200331/&text=クリス-ウェブ 佳子 連載コラムVol.05 カーディガン効果" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Column/Column_20200331/" target="_blank">
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
                <img class="A-wrap_pic pc_contents" src="images/pic_a_01.jpg" alt="">
                <img class="A-wrap_pic sp_contents" src="images/pic_a_01_sp.jpg" alt="">
                <p class="A-wrap_ttl">
                    [出典：<a href="https://shop.hodinkee.com/products/1970s-s-t-dupont-and-hermes-silver-lighter?variant=22370507972" target="_blank">https://shop.hodinkee.com/products/1970s-s-t-dupont-and-hermes-silver-lighter?variant=22370507972</a>]
                </p>
                <p class="A-wrap_txt">
                    雨の日も雪の日も、天候や季節に関わらず、祖父は起床すると必ずパジャマのうえに薄手のカーディガンをさらりと羽織り、庭先でひとり静かに1本の煙草を吸うことを朝の日課としていました。<br>
                    <br>
                    チャコールグレーの何の変哲も無いそのカーディガンにはポケットが2つあり、右のポケットにはセブンスターボックスとデュポンのジッポーが、左のそれには四角柱の形をした黄金糖がいつも数個入っていて、右のポケットだけがジッポーの重みで少しだらしのない感じになっているのでした。<br>
                    <br>
                    祖父にとって自分のお気に入りを好きなだけ詰め込めんだそのカーディガンは、四季を通じて万能なアウターで、でもそれが時々、綺麗好きな祖母の手によって洗濯に回されてしまうと、祖父はまるで大事な武器を失った戦士のように少し心もとなげな様子でいるのでした。
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <img class="A-wrap_pic pc_contents" src="images/pic_a_02.jpg" alt="">
                <img class="A-wrap_pic sp_contents" src="images/pic_a_02_sp.jpg" alt="">
                <p class="A-wrap_ttl">
                    [出典：<a href="http://www.ivy-style.com/ivy-trendwatch-nick-clements-ivy-house.html" target="_blank">http://www.ivy-style.com/ivy-trendwatch-nick-clements-ivy-house.html</a>]
                </p>
                <p class="A-wrap_txt">
                    万能なだけでなく、羽織るだけで知的な印象を醸し出せるのも、これまたカーディガンの魅力です。<br>
                    <br>
                    真っ白なブラウスのうえに余所行き用のカーディガンを着せられ、畏まったフリを強いられた幼少期。<br>
                    父親に頼み込んで、インテリ趣味とエリート階級を具現化したような大学ロゴの入ったレタードカーディガンを手に入れた思春期。学校規定の白シャツと紺のプリーツスカート。<br><br class="sp_contents">
                    それにルーズソックスと彼から借りた風なオーバーサイズのレタードカーディガンを合わせるスタイルは私の定番であり、制服で自由を奪われたなかでの精一杯のオシャレ反抗心でした。
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <img class="A-wrap_pic pc_contents" src="images/pic_a_03.jpg" alt="">
                <img class="A-wrap_pic sp_contents" src="images/pic_a_03_sp.jpg" alt="">
                <p class="A-wrap_ttl">
                    [出典：<a href="https://www.fashionlover.com/12851/trends-wont-leave-fashion-clueless/" target="_blank">https://www.fashionlover.com/12851/trends-wont-leave-fashion-clueless/</a>]
                </p>
                <p class="A-wrap_txt">
                    校内で愛用していたオーバーサイズのカーディガンとは対照的に、私服ではコンパクトサイズなカーディガンに夢中でした。オシャレ好き女子の間でファッションバイブル的作品として人気を博した90年代の青春コメディ映画『クルーレス』に端を発して。<br>
                    <br>
                    チェックのミニスカートに合わせたのは懐かし過ぎる響きのピタTとニーハイソックス。それらにコンパクトなカーディガンを合わせれば、ビバリーヒルズに住むセレブなスクールガール風ルックの完成というわけ。着心地が良く、万能で、しかも才女風に仕立て上げてくれるカーディガン。<br>
                    <br>
                    そんなカーディガン最強説に自ずと気がついたのが、この春で高校生になる15歳の長女です。指定服のない学校なので、ある日、通学用の服を買いに表参道を二人でブラブラしていたのですが、とにかくどの店に入ってもカーディガンを探し求めるのです。<br class="sp_contents"><br class="sp_contents">道すがら「服のなかでカーディガンが一番好き」と断言する長女にその理由を尋ねてみると、「禁欲的だから」と即答。ミニスカートにクロップド丈のスウェットで、完全にストリートスタイルな出で立ちの彼女から発せられた意外な言葉。<br>
                    <br>
                    カーディガンが禁欲的？
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <img class="A-wrap_pic pc_contents" src="images/pic_a_04.jpg" alt="">
                <img class="A-wrap_pic sp_contents" src="images/pic_a_04_sp.jpg" alt="">
                <p class="A-wrap_ttl ttl3">
                    Cardigan by JAMAIS VU <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307161&cat=500061">“SUVIN オゾン5Gカーディガン”</a>
                </p>
                <p class="A-wrap_txt txt2">
                    もしかして、反抗期と思春期の真っ只中を生きる世代にとってカーディガンを羽織ること、それ自体にカタルシス効果があるのかもしれません。つまり、禁欲的な服＝カーディガンを身につけるだけでティーンエイジャーならではの理由なき不快感が浄化される、そんな効果を長女は感じているのかもしれないと思うのです。<br>
                    <br>
                    世界中の全てに抗いたい世代にとって、袖を通すだけで即席の礼儀正しさをまとえるカーディガンは自制心を保つことのできる便利な鎧であり、それと同時に、ボタンの開け方次第で禁欲的にも享楽的にも振る舞える危うさを持ち合わせている…。そんな風に考えてみると、私も服のなかでカーディガンが一番好きかもしれない、という気がしてきました。
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <img class="A-wrap_pic pc_contents" src="images/pic_a_05.jpg" alt="">
                <img class="A-wrap_pic sp_contents" src="images/pic_a_05_sp.jpg" alt="">
                <p class="A-wrap_ttl ttl3">
                    Cardigan by JAMAIS VU <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010315111&cat=500011">“ICE COTTON リブカーディガン”</a>
                </p>
                <p class="A-wrap_txt txt2">
                    「お利口さんにしていてね」と耳元で囁きながら母が着せてくれた余所行きのカーディガン。<br class="sp_contents"><br class="sp_contents">そんなことを私の耳元で囁く人はもういませんが、いまだカーディガンの袖に腕を通しながら「お利口さんにね」と自分に自分で言い聞かせてしまいます。<br>
                    <br>
                    天邪鬼な私にとってカーディガンのカタルシス効果は今も昔も有効なようです。
                </p>

                <p class="A-wrap_ttl ttl2">
                    Recommend Items
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307161&cat=500061" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010307161_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾン5Gカーディガン</p>
                            <p class="detailPrice">¥19,800(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：サックス
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307161&cat=500061" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307141&cat=500041" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010307141_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾン5Gカーディガン</p>
                            <p class="detailPrice">¥19,800(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：ベージュ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307141&cat=500041" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010315111&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010315111_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ICE COTTON リブカーディガン</p>
                            <p class="detailPrice">¥15,400(tax in)</p>
                            <p class="detailTxt">
                                素材:アイスコットン    サイズ：FREE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010315111&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010315115&cat=500015" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010315115_sub07_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ICE COTTON リブカーディガン</p>
                            <p class="detailPrice">¥15,400(tax in)</p>
                            <p class="detailTxt">
                                素材:アイスコットン    サイズ：FREE<br>
                                カラー：グレー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010315115&cat=500015" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="ctsArea_btn">すべてのアイテムをみる</a>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200327">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                普段着がひときわ華やぐ。この春選びたいカーディガン2Type
                            </p>
                            <p class="archiveDate">
                                2020.03.27
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200324">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                身長別スタイリング、私に似合うパンツの着こなし方
                            </p>
                            <p class="archiveDate">
                                2020.03.24
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307161&cat=500061">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010307161_sub06_L.jpg" alt="">
                    <p>
                        SUVINオゾン5Gカーディガン
                        <span>¥19,800(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307141&cat=500041">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010307141_sub06_L.jpg" alt="">
                    <p>
                        SUVINオゾン5Gカーディガン
                        <span>¥19,800(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010315111&cat=500011">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010315111_sub06_L.jpg" alt="">
                    <p>
                        ICE COTTON リブカーディガン
                        <span>¥15,400(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010315115&cat=500015" class="A-wrap_detail--box">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010315115_sub07_L.jpg" alt="">
                    <p>
                        ICE COTTON リブカーディガン
                        <span>¥15,400(tax in)</span>
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
