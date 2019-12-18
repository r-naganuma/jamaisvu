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
                    <p class="journalCat">SPECIAL COLUMN</p>
                    <h2>
                        ディレクター五味田 渉が語る<br>
                        「上質を纏う。<br class="sp_contents">素材の良さを追求した物づくり」 Vol.1
                    </h2>
                    <p class="journalDate">2019.12.10</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Column/Column_20191210/&text=ディレクター五味田 渉が語る 「上質を纏う。素材の良さを追求した物づくり」" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Column/Column_20191210/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                世界各国から良質な素材を選りすぐり、素材に合わせて細部まで丁寧に作り込まれたJAMAIS VUのアイテムは、どれも着心地がよく、ずっと側に置いておきたいものばかり。<br class="pc_contents">中でも数ある素材の中から厳選された、希少ウール「メリノオプティモ」は着れば着るほど肌になじみ、身体に優しく寄り添うような感覚に驚きます。<br>
                そこで今回は、ディレクターの五味田 渉氏にお話を伺いしながら、「メリノオプティモ」使用商品の魅力にさらに迫っていきます。
            </p>
        </div>

        <div class="ctsArea">
            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    Cardigan
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="A-wrap_txt">
                    数あるメリノプティモの商品の中でも人気なのがこの「フィットカーディガン」。<br class="pc_contents">素材の良さをより生かすために行き着いたのが18ゲージ総針のゴム地なんです。<br>
                    原料の良いものは二重組織にすると、ハリコシがあって光沢が出る。<br class="pc_contents">伸縮性があってシワにもならず、素材の良さを生かして抜群に良くできたかなと思います。
                </p>
                <p class="A-wrap_ttl ttl2">
                    Design
                </p>
                <p class="A-wrap_txt txt2">
                    デザインに関する部分だと、ボタンホールをたくさんつけたくて。<br class="pc_contents">普通ボタンホールってミシンで空けるんですが、ミシンだとどうしても生地が引っ張られて隙間が空いてしまう。<br class="pc_contents">なので今回は編みで付けてボタン部分に隙間が開かず、まっすぐで綺麗なラインになるように。<br>
                    襟もこだわりで、襟がないシャツが今年は多いので、ボタンを上だけあけた状態でもシルエットが綺麗に見える形になってます。
                </p>
                <img class="A-wrap_pic pic2" src="images/pic_a_02.jpg" alt="">
                <p class="A-wrap_ttl ttl2">
                    Color
                </p>
                <p class="A-wrap_txt">
                    カラーはベージュ/ピンク/ブルー/サックス/グリーン/カーキの6色展開。<br class="pc_contents">色の流行りはあまり重要ではなく、自分にあう色を選ぶようになっているように感じていて。<br class="pc_contents">基本的に原色はつけないようにして、ブルーとネイビーの間、カーキとブラックの間のような、ちょうど中間の色になっています。<br class="pc_contents">トラッドでもモードでもない色味を意識してカラーパレットから選定していて、他では売っていない色味になっていると思います。
                </p>
                <p class="A-wrap_ttl ttl2">
                    Size
                </p>
                <p class="A-wrap_txt">
                    サイズは伸縮性がある素材なので、横幅ではなく、縦の長さで２種類。<br class="pc_contents">ロングフィットに関しては結構長めで一般的なカーディガンよりもプラス10センチ長い。<br>
                    たくし上げて着るなどそれぞれに合った着方をしてほしいです。
                </p>

                <!-- //////////////////
                /////// BTN
                ///////////////////////-->
                <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930313241&cat=500041" class="ctsArea_btn">商品詳細はこちら</a>

                <p class="A-wrap_ttl">
                    Bottoms
                </p>
                <img class="A-wrap_pic" src="images/pic_a_03.jpg" alt="">
                <p class="A-wrap_txt">
                    また、メリノオプティモを使用したボトムスシリーズもこだわりが詰まったアイテム。<br>
                    サイズがあることによって着れる人の制約が出てきてしまうので、サイズを極力無くしたいと考えて作りました。<br class="pc_contents">メンズでも女性でも着ることができるサイズなんですが、フロントはスピンドルでバックはゴムになっているので、ウエストの調節が自由自在。<br>
                    股下が深く、ウエストを上げてしまえば丈の調整も可能なんです。
                </p>
                <!-- <img class="A-wrap_pic" src="images/pic_a_04.jpg" alt=""> -->
                <p class="A-wrap_txt">
                    形はセミワイドパンツ・テーパードスリム・スカートの3型。<br class="pc_contents">メリノオプティモは吸湿速乾で、シーズンレスで着ることができるのも魅力です。<br>
                    季節感ををより気にせずに身につけることができるように色も真っ黒ではなく墨黒に。<br>
                    カーディガン同様、トラッドでもモードでもない、このアイテムならではの色味になっています。
                </p>

                <!-- //////////////////
                /////// BTN
                ///////////////////////-->
                <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=500017" class="ctsArea_btn">商品詳細はこちら</a>
            </div>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191206">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                初回購入限定 ALL 50%OFF
                            </p>
                            <p class="archiveDate">
                                2019.12.06
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191126/">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                定番チノパンと合わせる、<br class="sp_contents">上質ニット
                            </p>
                            <p class="archiveDate">
                                2019.11.26
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
        <p class="journalWrap_item--ttl">「メリノオプティモ」のアイテムはこちら</p>
        <ul>
            <!-- 最大4個まで -->
            <li>
                <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930313241&cat=500041">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductImages/0/1930313241_L.jpg" alt="">
                    <p>
                        フィットカーディガン
                        <span>¥18,700(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930313261&cat=500061">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductImages/0/1930313261_L.jpg" alt="">
                    <p>
                        フィットカーディガン
                        <span>¥18,700(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=500017">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductImages/0/1930730117_L.jpg" alt="">
                    <p>
                        フリーサイズワイド
                        <span>¥23,100(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=500017">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductImages/0/1930731117_L.jpg" alt="">
                    <p>
                        フリーサイズテーパード
                        <span>¥23,100(tax in)</span>
                    </p>
                </a>
            </li>
        </ul>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="journalWrap_item--btn">すべてのアイテムをみる</a>
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
