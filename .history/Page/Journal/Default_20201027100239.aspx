<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="Journal一覧｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="Journal" MetaKeywords="Journal,ジャーナル,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<link href='css/archive.css?123' rel='stylesheet' type='text/css'>
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
                        ディレクター長尾 悦美×JAMAIS VU<br>
                        コラボアイテム発売開始・来店イベント開催決定
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
                    <img src="images/img03.png" alt="">
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
            <div class="A-wrap">    
                <p class="A-wrap_txt">
                    長尾悦美さんご来店イベント開催決定。<br>
                    タカシマヤSTYLE&EDITクリエイティブディレクターとして活躍する長尾悦美さんをお招きし、直接スタイリングポイントなどをご案内していただきます。この機会をぜひお見逃しなく！
                    【長尾悦美さんご来店日時】<br>
                    日本橋店：11月01日（日）13:00~18:00<br>
                    　横浜店：11月14日（土）13:00~18:00<br>
                    　玉川店：11月22日（日）13:00~18:00<br>
                    ※変更となる場合がございますのでご了承ください
                </p>
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


<script>
/* =========================================================*/
// jquery.pagination.js / ver.2.0

// Copyright (c) 2015 CoolWebWindow
// This code is released under the MIT License
// https://osdn.jp/projects/opensource/wiki/licenses%2FMIT_license

// Date: 2016-06-20
// Author: CoolWebWindow
// Mail: info@coolwebwindow.com
// Web: http://www.coolwebwindow.com

// Used jquery.js
// http://jquery.com/
/* =========================================================*/

$(function($){
    $.fn.pagination = function(config) {
    // オプション
    var o = $.extend({
            element      : 'div',
            prevText     : 'prev',
            nextText     : 'next',
            firstText    : 'first',
            lastText     : 'last',
            ellipsisText : '…',
            viewNum      : 6,
            pagerNum     : 3,
            ellipsis     : true,
            linkInvalid  : false,
            goTop        : true,
            firstLastNav : true,
            prevNextNav  : true
        }, config);

        // セレクタ
        var $this = $(this);
        var $element = $this.find(o.element);
        var $pager = $this.find('.pager');
        if(o.ellipsis){
            var $ellipsisFirst= $('<span class="ellipsis"/>').text(o.ellipsisText);
            var $ellipsisLast= $('<span class="ellipsis"/>').text(o.ellipsisText);
        }

        // 値取得
        var tatalItemNum =$element.length;
        var tatalpageNum = Math.ceil(tatalItemNum /o.viewNum);
        var ellipsisFlag = false;

        // 変数設定
        var currentIndex = 0;

        // 省略記号フラグ判定
        if(tatalpageNum > o.pagerNum) { ellipsisFlag = true;}

        // ページカウンター
        $this.find('.nownum').text('1');
        $this.find('.totalnum').text(tatalpageNum);

        // ページャーの生成
        if(tatalpageNum == 1){return false;}
        for (var i=0; i < tatalpageNum; i++) {
            $('<span/>').text(i + 1).appendTo($pager);
        };
        if(o.prevNextNav){
            $('<span class="prev"/>').text(o.prevText).prependTo($pager);
            $('<span class="next"/>').text(o.nextText).appendTo($pager);
        }
        if(o.firstLastNav){
            $('<span class="first"/>').text(o.firstText).prependTo($pager);
            $('<span class="last"/>').text(o.lastText).appendTo($pager);
        }
        var $pagerInner = $pager.find('span').not('.first, .last, .prev, .next');

        // コンテンツの初期表示
        $element.not('.pager, .pageNum').hide();
        for (var i=0; i < o.viewNum; i++) {
            $($element[i]).show();
        };

        // ページャーの初期表示
        $pagerInner.hide();
        for (var i=0; i < o.pagerNum; i++) {
            $($pagerInner[i]).show();
        };
        $($pagerInner[0]).addClass('current');
        if (o.linkInvalid) {
            $('.prev').addClass('invalid');
            $('.first').addClass('invalid');
        }
        if(o.ellipsis) {
            if(ellipsisFlag){
                if(tatalpageNum  - o.pagerNum > 1) {
                    $($pagerInner[tatalpageNum - 1]).before(function() {
                      return $ellipsisLast;
                    });
                }
                $($pagerInner[tatalpageNum - 1]).show();
            }
        }

        // 最初のボタンをクリック
        $this.find('.first').on('click', function(){
            var current = 0;
            if(currentIndex == 0){
                if (o.linkInvalid) {
                    return false;
                }
            }
            change(current);
        });

        // 最後のボタンをクリック
        $this.find('.last').on('click', function(){
            var current = tatalpageNum - 1;
            if(currentIndex == $pagerInner.length - 1){
                if (o.linkInvalid) {
                    return false;
                }
            }
            change(current);
        });

        // 前のボタンをクリック
        $this.find('.prev').on('click', function(){
            var current = currentIndex - 1;
            if(currentIndex == 0){
                if (o.linkInvalid) {
                    return false;
                } else {
                    current = currentIndex;
                }
            }
            change(current);
        });

        // 次のボタンをクリック
        $this.find('.next').on('click', function(){
            var current = currentIndex + 1;
            if(currentIndex == $pagerInner.length - 1){
                if (o.linkInvalid) {
                    return false;
                } else {
                    current = currentIndex;
                }
            }
            change(current);
        });

        // 番号をクリック
        $pagerInner.each(function (current) {
            $(this).on('click', function(){
                if($(this).hasClass('current')){
                    if (o.linkInvalid) {
                        return false;
                    }
                }
                change(current);
            });
        });

        // 切り替え実行
        var change = function (current) {
            // コンテンツの表示
            $element.not('.pager, .pageNum').hide();
            for(var i = (current * o.viewNum) ; i < ((current + 1) * o.viewNum) ; i++){
                $($element[i]).show();
            }
            // ページャーの表示
            $pagerInner.hide();
            if(o.ellipsis) {
                if(ellipsisFlag){
                    $ellipsisFirst.remove();
                    $ellipsisLast.remove();
                }
            }
            var num = current - 1;
            if(num < 0) {
                num = 0;
            }
            if(num > (tatalpageNum - o.pagerNum)){
                num = tatalpageNum - o.pagerNum;
            }
            for(var i = num ; i < (num + o.pagerNum) ; i++){
                    $($pagerInner[i]).show();
            };
            // 省略記号の表示
            if(o.ellipsis) {
                if(ellipsisFlag){
                    // 前の省略記号
                    $($pagerInner[0]).show();
                    if(num > 1){
                            $($pagerInner[0]).after(function() {
                              return $ellipsisFirst;
                            });
                    }
                    // 後ろの省略記号
                    if(num < (tatalpageNum - o.pagerNum - 1)) {
                        $($pagerInner[tatalpageNum - 1]).before(function() {
                          return $ellipsisLast;
                        });
                    }
                    $($pagerInner[tatalpageNum - 1]).show();
                }
            }
            // 現在位置設定
            currentIndex = current;
            // デザイン
            $pagerInner.removeClass('current');
            $($pagerInner[current]).addClass('current');
            if (o.linkInvalid) {
                if(current == 0 ) {
                    $this.find('.prev').addClass('invalid');
                    $this.find('.first').addClass('invalid');
                } else {
                    $this.find('.prev').removeClass('invalid');
                    $this.find('.first').removeClass('invalid');
                }
                if(current == tatalpageNum - 1 ) {
                    $this.find('.next').addClass('invalid');
                    $this.find('.last').addClass('invalid');
                } else {
                    $this.find('.next').removeClass('invalid');
                    $this.find('.last').removeClass('invalid');
                }
            }
            // ページトップへの戻り
            if(o.goTop){
                $('html,body').scrollTop(0);
            }
            // ページカウンター
            $this.find('.nownum').text(currentIndex + 1);
        }
    }
});
</script>
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/css3-mediaqueries.js"></script>
<![endif]-->

<script>
$(function($) {
	$(".journalWrap_box--list").each(function(){
        $(this).wrap("<li/>")
    });
    $('.journalWrap_box').pagination({
        element      :'li',
        prevText     : '＜',
        nextText     : '＞',
        firstText    : '≪',
        lastText     : '≫',
        ellipsisText : '…',
        viewNum      : 12,
        pagerNum     : 3,
        ellipsis     : false,
        linkInvalid  : true,
        goTop        : true,
        firstLastNav : false,
        prevNextNav  : true
    });

});
</script>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>
