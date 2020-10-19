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
<meta name="viewport" content="width=device-width,initial-scale=1">
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div id="Wrap">
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
                        ディレクター長尾 悦美×JAMAIS VU<br>
                        コラボアイテム発売開始
                    </h2>
                    <p class="journalDate">2020.10.19</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200717/&text=JAMAIS VU POP UP STORE 開催 ！" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200717/" target="_blank">
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
                <p class="A-wrap_txt">
                    卓越したセンスでメゾンブランドからヴィンテージまで<br class="sp_contents">幅広く自由にMIXする<br class="pc_contents">
                    独自のスタイリングが注目を集<br class="sp_contents">め、今の東京を代表するファッションアイコンのひとり<br class="sp_contents">である<br class="pc_contents">
                    タカシマヤSTYLE&EDITクリエイティブディレク<br class="sp_contents">ター長尾 悦美さん。<br class="pc_contents"><br class="sp_contents">
                    〈JAMAIS VU〉がディレクションする、厳選された素<br class="sp_contents">材を使用し、<br class="pc_contents">
                    今彼女が欲しいと思うこだわりのコラボレ<br class="sp_contents">ーションニットが誕生しました。
                </p>
            </div>
            <div class="C-wrap">
                <div class="C-wrap__center">
                    <p class="C-wrap_ttl">
                        ０１ハミルトンスキッパーニット
                    </p>
                    <img src="images/img01.png" alt="">
                </div>
            </div>        
            <div class="A-wrap">        
                <p class="A-wrap_txt">
                    襟付きのスキッパーニットはメンズライクな服として<br class="sp_contents">のルーツ感はありながら、<br class="pc_contents">
                    深めの開きで女性らしく<br class="sp_contents">さらっと気兼ねなく着られるものにしたい。<br class="sp_contents"><br class="pc_contents">
                    1枚で着た時に覗く素肌とアクセサリー、Tシャツや<br class="sp_contents">タートルとレイヤードした時のバランス感…<br class="pc_contents">
                    どんな<br class="sp_contents">スタイリングにも女性らしい艶やかさのある彼女なら<br class="sp_contents">ではのネックラインが最大のポイントです。<br class="pc_contents">
                    バックに<br class="sp_contents">はシームラインを入れてアクセントを。<br class="pc_contents">
                    きれいめ素材<br class="sp_contents">のスラックスやデニムなどワードローブとのバランス<br class="sp_contents">は彼女のスタイルを作り上げる重要なソース。<br class="pc_contents">
                    計算され<br class="sp_contents">たボリューム感やシルエットと長めでワイドな袖元からは、華奢な指先を覗かせて。
                </p>
            </div>
            <div class="C-wrap">
                <div class="C-wrap__second">
                    <img src="images/item02.png" alt="">
                </div>
            </div> 


            <div class="A-wrap_detail">
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030255155&cat=500055" class="A-wrap_detail--box">
                    <div class="A-wrap_detail--box--pic">
                        <img src="images/link_-5.png" alt="">
                    </div>
                    <div class="A-wrap_detail--box--txt">
                        <p class="detailTtl">【長尾悦美さんコラボ】ハミルトンスキッパーニット</p>
                        <p class="detailPrice">¥22,000(tax in)</p>
                        <p class="detailTxt">
                            素材：ハミルトンラムズウール <br>
                            カラー：グリーン
                        </p>
                    </div>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030255155&cat=500055" class="A-wrap_detail--btn">ITEM DETAIL</a>
            </div>
            <div class="A-wrap_detail">
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030255175&cat=500075" class="A-wrap_detail--box">
                    <div class="A-wrap_detail--box--pic">
                        <img src="images/link_-4.png" alt="">
                    </div>  
                    <div class="A-wrap_detail--box--txt">
                        <p class="detailTtl">【長尾悦美さんコラボ】ハミルトンスキッパーニット</p>
                        <p class="detailPrice">¥22,000(tax in)</p>
                        <p class="detailTxt">
                            素材：ハミルトンラムズウール<br>  
                            カラー：パープル
                        </p>
                    </div>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030255175&cat=500075" class="A-wrap_detail--btn">ITEM DETAIL</a>
            </div>
            <div class="A-wrap_detail">
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030255111&cat=500011" class="A-wrap_detail--box  mg">
                    <div class="A-wrap_detail--box--pic">
                        <img src="images/link_-3.png" alt="">
                    </div>
                    <div class="A-wrap_detail--box--txt">
                        <p class="detailTtl">【長尾悦美さんコラボ】ハミルトンスキッパーニット</p>
                        <p class="detailPrice">¥22,000(tax in)</p>
                        <p class="detailTxt">
                            素材：ハミルトンラムズウール<br>  
                            カラー：ホワイト
                        </p>
                    </div>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030255111&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
            </div>



            <div class="C-wrap">
                <div class="C-wrap__center">
                    <p class="C-wrap_ttl">
                        ０２ハミルトンハンドウォーマーニット
                    </p>
                    <img src="images/img01.png" alt="">
                </div>
            </div>           
            <div class="A-wrap">    
                <p class="A-wrap_txt">
                    「アームオーバーとニットが重なっているかんじの<br class="sp_contents">バランスが好き。<br class="pc_contents">
                    そんなバランスのニットが欲しいな」というイメージがはじまり。<br class="pc_contents"><br class="sp_contents">
                    袖口にたまるボリューム感、ジャケットを羽織った時に覗くアームオーバーの見え方などの試行錯誤を重ねた自信作。<br class="pc_contents"><br class="sp_contents">
                    ヴィンテージのミリタリーサーマルのようなディテールなど細部まで彼女らしいエッセンスが効いています。<br class="pc_contents"><br class="sp_contents">
                    ドロップショルダーの抜けたシルエットと上質感のあるコンフォートな着心地に大人の遊び心が加わり、
                    シーズンの気分を盛り上げてくれる一枚が完成しました。
                </p>
            </div>
            <div class="C-wrap">
                <div class="C-wrap__second">
                    <img src="images/img04.png" alt="">
                </div>
            </div> 


            <div class="A-wrap_detail">
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030856111&cat=500011" class="A-wrap_detail--box">
                    <div class="A-wrap_detail--box--pic">
                        <img src="images/link_-2.png" alt="">
                    </div>
                    <div class="A-wrap_detail--box--txt">
                        <p class="detailTtl">【長尾悦美さんコラボ】ハミルトンハンドウォーマーニット</p>
                        <p class="detailPrice">¥22,000(tax in)</p>
                        <p class="detailTxt">
                            素材：ハミルトンラムズウール<br> 
                            カラー：ホワイト
                        </p>
                    </div>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030856111&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
            </div>
            <div class="A-wrap_detail">
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030856175&cat=500075" class="A-wrap_detail--box">
                    <div class="A-wrap_detail--box--pic">
                        <img src="images/link_-1.png" alt="">
                    </div>
                    <div class="A-wrap_detail--box--txt">
                        <p class="detailTtl">【長尾悦美さんコラボ】ハミルトンハンドウォーマーニット</p>
                        <p class="detailPrice">¥22,000(tax in)</p>
                        <p class="detailTxt">
                            素材：ハミルトンラムズウール<br>  
                            カラー：パープル
                        </p>
                    </div>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030856175&cat=500075" class="A-wrap_detail--btn">ITEM DETAIL</a>
            </div>
            <div class="A-wrap_detail">
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030856155&cat=500055" class="A-wrap_detail--box mg">
                    <div class="A-wrap_detail--box--pic">
                        <img src="images/link_01.png" alt="">
                    </div>
                    <div class="A-wrap_detail--box--txt">
                        <p class="detailTtl">【長尾悦美さんコラボ】ハミルトンハンドウォーマーニット</p>
                        <p class="detailPrice">¥22,000(tax in)</p>
                        <p class="detailTxt">
                            素材：ハミルトンラムズウール<br>  
                            カラー：グリーン
                        </p>
                    </div>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030856155&cat=500055" class="A-wrap_detail--btn">ITEM DETAIL</a>
            </div>




            </div>
            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="ctsArea">
                <!-- //////////////////
                /////// Latest Post
                ///////////////////////-->
                <div class="latestArea">
                    <p class="latestArea_ttl">Latest Post</p>
                    <div class="latestArea_box">
                        <div class="latestArea_box--list">
                            <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20201015">
                                <picture>
                                    <source media="(max-width: 769px)" srcset="images/archive01_sp.jpg">
                                    <img src="images/archive01_pc.jpg" alt="">
                                </picture>
                                <p class="archiveTtl">
                                    エディター小林 文リコメンド　“季節になじむニット” の話
                                    前編／秋のこっくりカラーニット
                                </p>
                                <p class="archiveDate">
                                    2020.10.15
                                </p>
                            </a>
                        </div>
                        <div class="latestArea_box--list">
                            <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20201013">
                                <picture>
                                    <source media="(max-width: 769px)" srcset="images/archive02_sp.jpg">
                                    <img src="images/archive02_pc.jpg" alt="">
                                </picture>
                                <p class="archiveTtl">
                                    JAMAIS VU
                                    POP UP STORE 開催 ！
                                </p>
                                <p class="archiveDate">
                                    2020.10.13
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030255155&cat=500055">
                    <img src="images/link_-5.png" alt="">
                    <p>
                        【長尾悦美さんコラボ】<br>
                        ハミルトンスキッパーニット
                        <span>¥22,000(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030255175&cat=500075">
                    <img src="images/link_-4.png" alt="">
                    <p>
                        【長尾悦美さんコラボ】<br>
                        ハミルトンスキッパーニット
                        <span>¥22,000(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030255111&cat=500011">
                    <img src="images/link_-3.png" alt="">
                    <p>
                        【長尾悦美さんコラボ】<br>
                        ハミルトンスキッパーニット
                        <span>¥22,000(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030856111&cat=500011">
                    <img src="images/link_-2.png" alt="">
                    <p>
                        【長尾悦美さんコラボ】<br>
                        ハミルトンハンドウォーマーニット
                        <span>¥22,000(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030856175&cat=500075">
                    <img src="images/link_-1.png" alt="">
                    <p>
                        【長尾悦美さんコラボ】<br>
                        ハミルトンハンドウォーマーニット
                        <span>¥22,000(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030856155&cat=500055">
                    <img src="images/link_01.png" alt="">
                    <p>
                        【長尾悦美さんコラボ】<br>
                        ハミルトンハンドウォーマーニット
                        <span>¥22,000(tax in)</span>
                    </p>
                </a>
            </li>
        </ul>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&cicon=1&dpcnt=24&img=2&sort=07&swrd=recommend2&udns=2&fpfl=0&pno=1" class="journalWrap_item--btn">すべてのアイテムをみる</a>
    </div>
</div>

<%-- △編集可能領域△ --%>

</div>
</div>
<style>
    @media (max-width: 768px){
        #Wrap .LPpageWrap .journalWrap .journalWrap_cts .mainArea_ttl--txt h2 {
            font-weight: bold;
        }
    }
    #Wrap .LPpageWrap .journalWrap .journalWrap_cts .ctsArea .A-wrap {
    margin-bottom: 0px;
    }
    #Wrap .LPpageWrap .journalWrap .journalWrap_cts .ctsArea .I-wrap {
        margin-top: 120px;
    }
    @media (max-width: 768px){
        #Wrap .LPpageWrap .journalWrap .journalWrap_cts .ctsArea .I-wrap {
        margin-top: 180px;
    }
    }
    #Wrap .LPpageWrap .journalWrap .journalWrap_cts .ctsArea .I-wrap {
    margin-top: 0px;
}
</style>

<script type="text/javascript">
    $(window).on('scroll', function (){

        var elem = $('.latestArea_ttl');
        var isAnimate = 'off';

        elem.each(function () {

            var elemOffset = $(this).offset().top;
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
<style>
    .sp_none {
        display: inline-block;
    }
    @media (max-width: 768px) {
        .sp_none {
        display: none;
    }
    }

    #Wrap .LPpageWrap .journalWrap .journalWrap_cts .ctsArea .A-wrap_ttl2 {
        font-size: 16px;
    }
    @media (max-width: 768px) {
    #Wrap .LPpageWrap .journalWrap .journalWrap_cts .ctsArea .A-wrap_ttl2 {
        font-size: calc(27 * (100vw / 750));
    }
    }
</style>
</asp:Content>

