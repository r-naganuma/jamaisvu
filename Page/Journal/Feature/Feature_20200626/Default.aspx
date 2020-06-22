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
                    <p class="journalCat">COORDINATE</p>
                    <h2>
                        JAMAIS VU×editor_kaoの<br>
                        「彩りのある着こなし」vol.4 &lt;Black&gt;
                    </h2>
                    <p class="journalDate">2020.06.26</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200626/&text=JAMAIS VU×editor_kaoの「彩りのある着こなし」vol.4 &lt;Black&gt;" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200626/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                <span>
                    ジャメヴの美しい色使いに魅了された<br class="sp_contents">editor_kaoが、毎回テーマカラーごとにコーディネートを提案する連載企画です。第4回は、涼しい印象で着こなす黒について！
                </span>
                フリーエディターのeditor_kaoが、ジャメヴの新作と私服をM I X。コーディネート＆解説をするコラム連載です。<br>
                今回取り上げるのは、定番だけど、夏にどう着たらいいか迷いがちな黒。重たかったり、暑苦しい印象にならない組み合わせを考えてみました。
            </p>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    夏に着る“大人の黒”って美しい
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010316119&cat=500019">ICE COTTON リブノースリーブ ¥14,300(tax in)</a><br>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010314119&cat=500019">ICE COTTON リブヘンリーネック ¥14,300(tax in)</a><br>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552119&cat=500019">ペルビアンピマコットンワンピース　¥19,800(tax in)</a>
                </p>
                <p class="A-wrap_txt">
                    ベーシックカラーだけど、暑い夏には避けがちな黒。だけど、すっきりと着こなせば全体をシャープに見せてくれる美人色でもあるんです。ポイントは、肌見せや配色のバランス。大人の女性をきれいに見せてくれるサマーブラック・スタイルをご紹介します。
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    Style01:<br class="sp_contents">黒ワンピースは削ぎ落としたモノトーンで
                </p>
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552119&cat=500019">ペルビアンピマコットンワンピース　¥19,800(tax in)</a><br>
                    OTHER editor_kao私物
                </p>
                <p class="A-wrap_txt">
                    夏は何かと頼りになるワンピースですが、着こなしの黒の分量が多くなるのも事実。<br>
                    その場合は余計な色を差さず、モノトーンでクールにまとめるとすっきりします。きめ細やかなペルビアンピマコットンを使ったカフタンワンピースは、ゆとりのあるシルエットで軽やかな着心地。<br>
                    そこに白のメルカドバッグを合わせて、夏らしい抜け感をプラスしました。アクセサリーと靴はシルバーをセレクト。涼やかな輝きが加わることで、ワンピースを重く見せません。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552119&cat=500019" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_01.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ペルビアンピマコットンワンピース</p>
                            <p class="detailPrice">¥19,800(tax in)</p>
                            <p class="detailTxt">
                                素材:ペルビアンピマコットン    サイズ：FREE<br>
                                カラー：ブラック
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552119&cat=500019" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    Style02:<br class="sp_contents">チャーミングなドットを合わせて<br class="sp_contents">パリジェンヌ風に
                </p>
                <img class="A-wrap_pic" src="images/pic_a_03.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010316119&cat=500019">ICE COTTON リブノースリーブ ¥14,300(tax in)</a><br>
                    OTHER editor_kao私物
                </p>
                <p class="A-wrap_txt">
                    シンプルなノースリーブニットは、ノルマンディ産のリネン素材。シャリ感のある風合いが高湿多温な日本の夏にぴったりです。タンクトップ感覚で着こなせるベーシックさがありつつも、カジュアルすぎないから一枚でもOK。ボトムをインパクトのあるベージュのドットパンツにして、愛らしい雰囲気に仕上げました。<br>
                    遊び心のあるアイテムを合わせると、黒のニットを生真面目に見せない効果が。その分配色は黒×ベージュと最低限にして、大人っぽさをキープします。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010316119&cat=500019" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_02.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ICE COTTON リブノースリーブ</p>
                            <p class="detailPrice">¥14,300(tax in)</p>
                            <p class="detailTxt">
                                素材:アイスコットン    サイズ：FREE<br>
                                カラー：ブラック
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010316119&cat=500019" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    Style03:<br class="sp_contents">柄スカートと完成させる都会派カジュアル
                </p>
                <img class="A-wrap_pic" src="images/pic_a_04.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010314119&cat=500019">ICE COTTON リブヘンリーネック ¥14,300(tax in)</a><br>
                    OTHER editor_kao私物
                </p>
                <p class="A-wrap_txt">
                    ドライタッチが心地いい、コットン素材のヘンリーネックニット。体に程よくフィットするシルエットなので、ボトムにボリューム感のあるプリントスカートを合わせ、メリハリをつけました。<br>
                    ふわっとしたスカートのシルクシフォンと、ニットのリブが相性よし。着こなし全体がラフになりすぎることなく、都会的にまとまります。足元はパンプスやサンダルも合うけれど、あえてハイカットスニーカーにして、ストリート感を加味。スポーティな雰囲気を足すことで、コーディネートが更新されます。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010314119&cat=500019" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_03.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ICE COTTON リブヘンリーネック</p>
                            <p class="detailPrice">¥14,300(tax in)</p>
                            <p class="detailTxt">
                                素材:アイスコットン    サイズ：FREE<br>
                                カラー：ブラック
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010314119&cat=500019" class="A-wrap_detail--btn">ITEM DETAIL</a>
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
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200612">
                            <picture>
                                <source media="(max-width: 769px)" srcset="images/archive01_sp.jpg">
                                <img src="images/archive01_pc.jpg" alt="">
                            </picture>
                            <p class="archiveTtl">
                                素材にこだわる、上質サマーニット
                            </p>
                            <p class="archiveDate">
                                2020.06.12
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200605">
                            <picture>
                                <source media="(max-width: 769px)" srcset="images/archive02_sp.jpg">
                                <img src="images/archive02_pc.jpg" alt="">
                            </picture>
                            <p class="archiveTtl">
                                モデル、Kanocoさんが伝える“私らしいスタイル”vol.5
                            </p>
                            <p class="archiveDate">
                                2020.06.05
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010316119&cat=500019">
                    <img src="images/item_02.jpg" alt="">
                    <p>
                        ICE COTTON リブノースリーブ
                        <span>¥14,300(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010314119&cat=500019">
                    <img src="images/item_03.jpg" alt="">
                    <p>
                        ICE COTTON リブヘンリーネック
                        <span>¥14,300(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552119&cat=500019">
                    <img src="images/item_01.jpg" alt="">
                    <p>
                        ペルビアンピマコットン<br>ワンピース
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

