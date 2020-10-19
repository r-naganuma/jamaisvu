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
                        エディター小林 文リコメンド　“季節になじむニット” の話<br class="pc_contents">
                        前編／秋のこっくりカラーニット
                    </h2>
                    <p class="journalDate">2020.10.15</p>
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
                <p class="A-wrap_ttl">
                    2020AWの新作ニットを、大人シンプルなコーディネートが人気のエディター・小林 文さん目線で<br class="pc_contents">
                    ご紹介。前編は、深まる秋にむけて着たい、こっくりカラーについて。<br class="pc_contents">
                    スタイリングアドバイスも必見です。
                </p>
                
                <p class="A-wrap_txt">
                    2019AWにデビューしたジャメヴ。<br class="sp_contents">実は、密かにチェックしておりました。<br class="pc_contents"><br class="sp_contents">
                    最初に袖を通したのは、STAY HOME期間中。<br class="sp_contents">それまで買い物は“オフライン派”だった私も、<br class="pc_contents"><br class="sp_contents">
                    順調にオンラインショッピングを<br class="sp_contents">楽しみ始めた4月中旬でした。
                </p>
                <p class="A-wrap_txt">
                    サイトを見て、「黒や白ではない、ニュアンスのあるカ<br class="sp_contents">ラーが多くていいな」というのが第一印象。<br class="pc_contents"><br class="sp_contents">
                    スーパーやコンビニくらいしか行くことができず、<br class="sp_contents">行動範囲が狭いからこそ、<br class="pc_contents">
                    気分が上がるカラーを求めて<br class="sp_contents">いたのかもしれません。
                </p>
                <p class="A-wrap_txt">
                    そのままカーキのシャツをポチッ。<br class="sp_contents">8月ごろには淡いグリーンのサマーニットを…。<br class="pc_contents"><br class="sp_contents">
                    いつもとは勝手が違う春夏、<br class="sp_contents">私にそっと寄り添ってくれました。
                </p>
                <p class="A-wrap_txt">
                    あとから知ったことですが、<br class="sp_contents">ジャメヴは“自然界にあるようなカラー”が軸だそう。<br class="pc_contents"><br class="sp_contents">
                    なるほど、どおりで癒やされるわけです。
                </p>
                <p class="A-wrap_txt">
                    さて、本格的にニットの季節が到来。秋らしい、<br class="sp_contents">ニュアンスカラーがたまりません！
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="A-wrap_txt">
                    まず、オレンジブラウンにご注目を。
                </p>
                <p class="A-wrap_txt">
                    左から、クルーネックカーディガン、ポロニット、<br class="sp_contents">深いVネックのリブニット。
                </p>
                <p class="A-wrap_txt">
                    カーディガンは、細かいピッチで並んだボタンをあえて<br class="sp_contents">すべて留め、プルオーバー感覚で着るのがオススメ。<br class="pc_contents"><br class="sp_contents">
                    体の線をまっすぐ見せてくれるストレートなシルエット<br class="sp_contents">に、ボタンのディテールがアクセントとして効いています。
                </p>
                <p class="A-wrap_txt">
                    それに対し、ポロニットはボタンなし。<br class="sp_contents">ヘルシーにデコルテが覗く襟付きのニットは、<br class="sp_contents">どことなくフレンチシックな<br class="pc_contents">
                    雰囲気です。<br class="sp_contents">そうそう、まさにこの原稿を書いている今も、<br class="sp_contents">着用しています。肌へのあたりがとてもやわらかく、<br class="pc_contents"><br class="sp_contents">
                    袖をたくし上げたとき、ぴたっと肘でとまるので<br class="sp_contents">PC作業に集中でき、助かります。
                </p>
                <p class="A-wrap_txt">
                    Vネック繋がりで太いリブも。<br class="sp_contents">かなり深いVなので、スタンドカラーのシャツなど、<br class="pc_contents"><br class="sp_contents">
                    首の詰まったトップスをインして、レイヤードスタイル<br class="sp_contents">を楽しんでも良さそうです。
                </p>
            </div>


            <div class="A-wrap_detail">
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2031241&udns=0&fpfl=0&pno=1" class="A-wrap_detail--box">
                    <div class="A-wrap_detail--box--pic">
                        <img src="images/item_a_02.jpg" alt="">
                    </div>
                    <div class="A-wrap_detail--box--txt">
                        <p class="detailTtl">メリノオプティモ　フィットカーデ</p>
                        <p class="detailPrice">¥22,000(tax in)</p>
                        <p class="detailTxt">
                            素材：メリノオプティモ<br> 
                            カラー：ブラウン
                        </p>
                    </div>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2031241&udns=0&fpfl=0&pno=1" class="A-wrap_detail--btn">ITEM DETAIL</a>
            </div>
            <div class="A-wrap_detail">
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2031122&udns=0&fpfl=0&pno=1" class="A-wrap_detail--box">
                    <div class="A-wrap_detail--box--pic">
                        <img src="images/item_a_01.jpg" alt="">
                    </div>
                    <div class="A-wrap_detail--box--txt">
                        <p class="detailTtl">メリノオプティモ　18G ポロ</p>
                        <p class="detailPrice">¥22,000(tax in)</p>
                        <p class="detailTxt">
                            素材：メリノオプティモ<br> 
                            カラー：ブラウン
                        </p>
                    </div>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2031122&udns=0&fpfl=0&pno=1" class="A-wrap_detail--btn">ITEM DETAIL</a>
            </div>
            <div class="A-wrap_detail">
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2031146&udns=0&fpfl=0&pno=1" class="A-wrap_detail--box">
                    <div class="A-wrap_detail--box--pic">
                        <img src="images/item_a_03.jpg" alt="">
                    </div>
                    <div class="A-wrap_detail--box--txt">
                        <p class="detailTtl">メリノオプティモ　ワイドリブプルオーバー</p>
                        <p class="detailPrice">¥20,900(tax in)</p>
                        <p class="detailTxt">
                            素材：メリノオプティモ<br> 
                            カラー：ブラウン
                        </p>
                    </div>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2031146&udns=0&fpfl=0&pno=1" class="A-wrap_detail--btn">ITEM DETAIL</a>
            </div>
            <div class="A-wrap">
                <p class="A-wrap_txt">
                    <br>
                    <br>
                    続いて、ブラウン。<br class="sp_contents">赤みのないビターなブラウンは、<br class="sp_contents">黒よりやさしくもキリリとした印象。<br class="pc_contents"><br class="sp_contents">
                    ボトルネックのミドルゲージニットや、<br class="sp_contents">バフっと大きなシルエットが魅力のハイネックニット。<br class="pc_contents"><br class="sp_contents">
                    どちらもしっかり厚手の生地感なので、<br class="sp_contents">晩秋〜冬に活躍すること間違いなしです。
                </p>
            </div>
            <div class="A-wrap_detail">
                <a href="" class="A-wrap_detail--box">
                    <div class="A-wrap_detail--box--pic">
                        <img src="images/item_a_05.jpg" alt="">
                    </div>
                    <div class="A-wrap_detail--box--txt">
                        <p class="detailTtl">ハミルトンミドルゲージプルオーバー</p>
                        <p class="detailPrice">Coming soon</p>
                        <p class="detailTxt">
                            素材：ハミルトンラムズウール<br>   
                            カラー：ブラウン
                        </p>
                    </div>
                </a>
            </div>
            <div class="A-wrap_detail">
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2031132&udns=0&fpfl=0&pno=1" class="A-wrap_detail--box">
                    <div class="A-wrap_detail--box--pic">
                        <img src="images/item_a_04.jpg" alt="">
                    </div>
                    <div class="A-wrap_detail--box--txt">
                        <p class="detailTtl">ハミルトンモックネックプルオーバー</p>
                        <p class="detailPrice">¥20,900(tax in)</p>
                        <p class="detailTxt">
                            素材：ハミルトンラムズウール<br>   
                            カラー：ブラウン
                        </p>
                    </div>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2031132&udns=0&fpfl=0&pno=1" class="A-wrap_detail--btn">ITEM DETAIL</a>
            </div>

            <div class="A-wrap">
                <p class="A-wrap_txt">
                    <br>
                    <br>
                    最後にブルー。ビビッドなブルーではなく、<br class="sp_contents">一度洗いをかけたようなブルー。<br class="pc_contents"><br class="sp_contents">
                    ふんわりとしたスムースな編地のニットパーカーと<br class="sp_contents">ショートパンツは、<br class="pc_contents">
                    セットアップのように着て足元は<br class="sp_contents">ロングブーツを。<br class="pc_contents"><br class="sp_contents">
                    もちろん、パーカー×ブルーデニム、ロングシャツ×シ<br class="sp_contents">ョートパンツなど、単体ずつも着られます。
                </p>
            </div>
            <div class="A-wrap_detail">
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=203149&udns=0&fpfl=0&pno=1" class="A-wrap_detail--box">
                    <div class="A-wrap_detail--box--pic">
                        <img src="images/item_a_06.jpg" alt="">
                    </div>
                    <div class="A-wrap_detail--box--txt">
                        <p class="detailTtl">ハミルトンヘアリーニットショートパンツ</p>
                        <p class="detailPrice">¥17,600(tax in)</p>
                        <p class="detailTxt">
                            素材：ハミルトンラムズウール<br> 
                            カラー：ブルー
                        </p>
                    </div>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=203149&udns=0&fpfl=0&pno=1" class="A-wrap_detail--btn">ITEM DETAIL</a>
            </div>
            <div class="A-wrap_detail">
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2031193&udns=0&fpfl=0&pno=1" class="A-wrap_detail--box">
                    <div class="A-wrap_detail--box--pic">
                        <img src="images/item_a_07.jpg" alt="">
                    </div>
                    <div class="A-wrap_detail--box--txt">
                        <p class="detailTtl">ハミルトンヘアリーパーカー</p>
                        <p class="detailPrice">¥20,900(tax in)</p>
                        <p class="detailTxt">
                            素材：ハミルトンラムズウール<br> 
                            カラー：ブルー
                        </p>
                    </div>
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2031193&udns=0&fpfl=0&pno=1" class="A-wrap_detail--btn">ITEM DETAIL</a>
            </div>
            <div class="A-wrap">
                <p class="A-wrap_txt">
                    <br>
                    なんと、これら7点のニット、すべて同じメリノ種のウ<br class="sp_contents">ールを使用しているそう。<br class="pc_contents">
                    混合率や編み方を変えること<br class="sp_contents">で、バリエーション豊かにつくることができるんだ<br class="sp_contents">とか。<br class="pc_contents">
                    「なるほど〜」と勉強になります。
                </p>
                <p class="A-wrap_txt">
                    “自然界にあるようなカラー”。<br class="pc_contents"><br class="sp_contents">
                    祖母の家の庭で吊るされていた干し柿のようなオレンジ<br class="sp_contents">ブラウン、クヌギの木のようなダークブラウン、<br class="pc_contents"><br class="sp_contents">
                    ピカピカの夏の光とは違う、秋の空に照らされた海のようなブルー…
                </p>
                <p class="A-wrap_txt">
                    こっくりとしたニュアンスカラーは、秋の装いに奥行き<br class="sp_contents">をもたらしてくれそうです。
                </p>
            </div>
                            <!-- //////////////////
            /////// TEMPLATE I
            ///////////////////////-->
            <div class="I-wrap">
                <div class="I-wrap_pic">
                    <img src="images/pic_j_01.png" alt="">
                </div>
                <div class="I-wrap_txt">
                    <div class="I-wrap_txt--ttl">
                        <p>エディター 小林 文</p>
                        <div class="snsArea">
                            <div class="snsArea_ig">
                                <a href="" target="_blank">
                                    <img src="images/icn_ig.png" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <p class="I-wrap_txt--cts">
                        1985年愛知県名古屋市生まれ。大学卒業後上京し、約5年半、<br class="pc_contents">
                        人材系企業に営業職として勤務。28歳でエディターを志し、転身。<br class="pc_contents">
                        現在はフリーランスのファッションエディターとして小学館『Oggi』、<br class="pc_contents">
                        講談社『mi-mollet』などで活躍中。またアパレルブランドや百貨店との商品開発、<br class="pc_contents">
                        トークイベント、コラム執筆も担当。Instagram＠kobayashi_bunでは、<br class="pc_contents">
                        日々のリアルなコーディネートを更新中。
                    </p>
                </div>
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
                            <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20201013">
                                <picture>
                                    <source media="(max-width: 769px)" srcset="images/archive01_sp.jpg">
                                    <img src="images/archive01_pc.jpg" alt="">
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
                        <div class="latestArea_box--list">
                            <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200717">
                                <picture>
                                    <source media="(max-width: 769px)" srcset="images/archive02_sp.jpg">
                                    <img src="images/archive02_pc.jpg" alt="">
                                </picture>
                                <p class="archiveTtl">
                                    JAMAIS VU
                                    POP UP STORE 開催 ！
                                </p>
                                <p class="archiveDate">
                                    2020.07.17
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2031241&udns=0&fpfl=0&pno=1">
                    <img src="images/link_02.jpg" alt="">
                    <p>
                        メリノオプティモ<br>
                        フィットカーディガン
                        <span>¥22,000(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2031122&udns=0&fpfl=0&pno=1">
                    <img src="images/link_01.jpg" alt="">
                    <p>
                        メリノオプティモ　18Ｇポロ
                        <span>¥22,000(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2031146&udns=0&fpfl=0&pno=1">
                    <img src="images/link_03.jpg" alt="">
                    <p>
                        メリノオプティモ <br>
                        ワイドリブプルオーバー
                        <span>¥20,900(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=203149&udns=0&fpfl=0&pno=1">
                    <img src="images/link_04.jpg" alt="">
                    <p>
                        ハミルトンヘアリーショートパンツ
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2031193&udns=0&fpfl=0&pno=1">
                    <img src="images/link_05.jpg" alt="">
                    <p>
                        ハミルトンヘアリーパーカー
                        <span>¥20,900(tax in)</span>
                    </p>
                </a>
            </li>
        </ul>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=1015colorknit&udns=0&fpfl=0&pno=1" class="journalWrap_item--btn">すべてのアイテムをみる</a>
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

