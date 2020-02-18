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
                    <p class="journalCat">COORDINATE</p>
                    <h2>
                        JAMAIS VU×editor_kaoの<br>
                        「彩りのある着こなし」vol.1 &lt;Blue&gt;
                    </h2>
                    <p class="journalDate">2020.02.18</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200218/&text=JAMAIS VU×editor_kaoの「彩りのある着こなし」vol.1 &lt;Blue&gt;" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200218/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                <span>
                    ジャメヴの美しい色使いに魅了されたeditor_kaoが、毎回テーマカラーごとに着こなしを提案する連載企画です。<br class="sp_contents">第1回は、晴れやかなブルーをセレクト。
                </span>
                はじめまして、editor_kaoと申します。このたび縁あって、ジャメヴの新作を使ったコーディネート＆解説をする連載を始めることとなりました。<br>
                <br>
                私がジャメヴの洋服を初めて目にしたのは、昨年の秋冬展示会。きれいなカラーリングがとても印象的だったのを覚えています。だから今回の企画が決まったときに、私が真っ先に思ったのは「このきれいな色が、存分に楽しめる着こなしをしてみたい」ということでした。<br>
                <br>
                ここでは、毎回ジャメヴの新作からテーマカラーをひとつピックアップし、私のワードローブとミックスさせたリアルなコーディネートをご紹介していきます。第1回は春の訪れにふさわしい、さわやかなブルーから！
            </p>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    気持ちのいいスカイブルーで<br class="sp_contents">新しい季節を祝福
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300161&cat=500061">SUVIN8Gスウェット　¥17,600(tax in)</a><br>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307161&cat=500061">SUVIN オゾン５Gカーディガン ¥19,800(tax in)</a><br>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010253161&cat=500061">ぺルビアンピマコットンスリットネック ¥17,600(tax in)</a>
                </p>
                <p class="A-wrap_txt">
                    ジャメヴのブルーは、空や海を思わせるような、さわやかなカラーリングが特徴。<br class="pc_contents">クリーンで抜け感のある色調は気分もあがるもの。<br class="sp_contents">新しい季節の着こなしにぴったりです。<br class="pc_contents">差し色としても取り入れやすく、普段あまり色を着ない人でも抵抗がないのでは。合わせる色の範囲も広いですし、あまり迷うことなくコーディネートをつくることができます。
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    Style01:<br class="sp_contents">ブルーを主役にした大人のカジュアル
                </p>
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300161&cat=500061">SUVIN8Gスウェット　¥17,600(tax in)</a><br>
                    OTHER editor_kao私物
                </p>
                <p class="A-wrap_txt">
                    まずは、ジャメヴのブルーニットに柄パンツを合わせた着こなし。白をベースとした繊細なプリントなので、カラーニットと合わせてもぶつかりません。実は柄の中に少しだけブルーが使われているのもポイント。<br>
                    <br>
                    色に柄を合わせる場合は、このように、やや色がリンクしているとまとまりやすいです。ニットが引き立つよう、足元は白のサンダル、そして耳元はパールのピアスと、ほかのアイテムも白を多用。<br class="sp_contents">それだけでは全体がぼやけてしまう可能性があるので、バッグだけはブラウンのレザーメッシュを選びました。<br>
                    コーディネートを引き締めながらも、かごバッグを思わせるデザインが、適度な軽やかさを演出してくれます。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300161&cat=500061" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010300161_sub09_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVIN8Gスウェット</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：サックス
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300161&cat=500061" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    Style02:<br class="sp_contents">モノトーンと組み合わせて<br class="sp_contents">着こなしに抜け感を
                </p>
                <img class="A-wrap_pic" src="images/pic_a_03.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307161&cat=500061">SUVIN オゾン５Gカーディガン ¥19,800(tax in)</a><br>
                    OTHER editor_kao私物
                </p>
                <p class="A-wrap_txt">
                    ブルーは黒とも相性がよく、いちばん簡単にできる配色。<br class="pc_contents">ただし、それだけではコントラストが強い気もするので、インナーを黒×白のボーダーカットソーにしました。<br>
                    <br>
                    ちょっとマリンな雰囲気が、差し色のブルーとぴったりです。実は黒のタイトスカート、レザーバッグ、パンプスと、ほかに合わせているアイテムはかなりコンサバティブ。ですが、それが真面目に見えないのは、ざっくりした編み地のカーディガンがあるからこそ。ラフな風合いとブルーのもつ軽快さが、着こなしにリラックス感を生み出してくれます。<br>
                    パンツに合わせがちなアイテムですが、このような女っぽい着こなしの、はおりとしても活躍できる一枚です。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307161&cat=500061" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010307161_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVIN オゾン５Gカーディガン</p>
                            <p class="detailPrice">¥19,800(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：サックス
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307161&cat=500061" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    Style03:<br class="sp_contents">デニムとのワントーンにさらに色を加えて
                </p>
                <img class="A-wrap_pic" src="images/pic_a_04.jpg" alt="">
                <p class="A-wrap_txt">
                    最後は、ブルーのコットンブラウスを使った着こなしをご紹介。<br>
                    デニムとの組み合わせは王道ですが、じゃあどんな色味を選ぶか、は意外と大事。あえて洗いのかかったデニムにして、ワントーン風にまとめました。ブルーをベースにして、さらに色を取り入れたら新鮮に映るのでは、と考えたのです。<br>
                    思いついたのはブルー×イエローの配色。ブルーに明るさがあるので、これだけサイズのあるバッグを合わせても、インパクトが強すぎません。<br>
                    <br>
                    さらに、写真では小さいのですが、さまざまな色石を使ったピアスもON。ターコイズが使われているので、自然になじんでいます。ブルーを差し色でなくベーシックカラーをとらえると、配色の幅がぐっと広がって、色を使った着こなしがもっともっと楽しくなってきます。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010253161&cat=500061" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010253161_sub07_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ぺルビアンピマコットンスリットネック</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:ペルビアンコットン    サイズ：FREE<br>
                                カラー：サックス
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010253161&cat=500061" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
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
                        <p>editor_kao</p>
                        <div class="snsArea">
                            <div class="snsArea_ig">
                                <a href="https://www.instagram.com/editor_kao/?hl=ja" target="_blank">
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
                        フリーエディター。<br>
                        ファッション誌を手がける編集プロダクションに勤務の後、独立。<br class="pc_contents">現在は大人の実用ファッションを中心に、人物インタビューや日本の伝統文化など、ジャンルレスで雑誌やカタログ、ウェブで活動中。<br>
                        <br>
                        また、3年目を迎えるインスタグラム<br class="sp_contents"><a href="https://www.instagram.com/editor_kao/?hl=ja" target="_blank">＠editor_kao</a>では私服コーディネートを紹介する傍ら、さまざまなブランドや百貨店とのコラボレーションも手がけている。
                    </p>
                </div>
            </div>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200212">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                2020 Spring Summer Collection Vol.1
                            </p>
                            <p class="archiveDate">
                                2020.02.12
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200210">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                「SUVINオゾンニットパーカー」の<br class="pc_contents">着こなし方を身長別で紹介
                            </p>
                            <p class="archiveDate">
                                2020.02.10
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300161&cat=500061">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010300161_sub09_L.jpg" alt="">
                    <p>
                        SUVIN8Gスウェット
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010307161&cat=500061">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010307161_sub06_L.jpg" alt="">
                    <p>
                        SUVIN オゾン５Gカーディガン
                        <span>¥19,800(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010253161&cat=500061">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010253161_sub07_L.jpg" alt="">
                    <p>
                        ぺルビアンピマコットンスリットネック
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

