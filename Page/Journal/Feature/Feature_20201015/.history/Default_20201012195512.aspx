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
                        JAMAIS VU<br>
                        POP UP STORE 開催 ！
                    </h2>
                    <p class="journalDate">2020.10.13</p>
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
            <p class="mainArea_lead">
                実際に手に取ってみたい・試してみたいという多くのお客様の声にお答えして<br class="pc_contents">
                渋谷西武・高島屋STYLLE & EDIT各店にてポップアップストアをOPENします。<br class="pc_contents">
                渋谷西武のは無人ストアとなっており、お客様ご自身で自由にご試着いただける<br class="pc_contents">
                新しい形のポップアップに。（ご購入はQRコードより。）<br class="pc_contents">
                高島屋のポップアップではディレクター長尾悦美さんとのコラボレーションアイテムも販売いたします。

            </p>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    「JAMAIS VU FITTING ROOM」＠渋谷西武<br class="pc_contents">
                    〜接客なしで自由に試せて購入できる、<br class="sp_contents">初のセルフフィッティングPOP UP STORE〜<br class="pc_contents">
                </p>
                
                <p class="A-wrap_txt">
                    
                    【 場所 】西武渋谷店A館3階往路モーションスペース<br>
                    【 期間 】2020.10.20（Tue）〜2020.10.26（Mon）10:00~20:00<br>
                    <br>
                    ※その場では試着のみで、商品についているタグからオンラインでの購入となります。
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
            </div>


                        <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap A-wrap2__mb">
                <p class="A-wrap_ttl2">
                    「JAMAIS VU POP UP STORE」＠STYLE &EDIT<br class="pc_contents">
                    <br class="sp_contents">ディレクター長尾悦美さんとの<br class="sp_contents">コラボアイテムもローンチ
                </p>
                
                <p class="A-wrap_txt">
                    
                    高島屋　STYLE &EDIT各店<br>
                    <br>
                    日本橋店<span class="sp_none">&nbsp;:&nbsp;</span><br class="sp_contents">2020.10.21（WED）〜2020.11.3（TUE）　10:30~19:30<br>
                    新宿<span class="sp_none">&nbsp;:&nbsp;</span><br class="sp_contents">2020.10.21（WED）〜2020.11.3（TUE）　10:00~20:00 ※別注のみ<br>
                    大阪店<span class="sp_none">&nbsp;:&nbsp;</span><br class="sp_contents">2020.10.21（WED）〜2020.11.3（TUE）　10:00~20:00<br>
                    横浜店<span class="sp_none">&nbsp;:&nbsp;</span><br class="sp_contents">2020.11.6（FRI）〜2020.11.17（TUE）　10:00~20:00<br>
                    玉川店<span class="sp_none">&nbsp;:&nbsp;</span><br class="sp_contents">2020.11.20（FRI）〜2020.12.1（TUE）　10:00~20:00<br>
                    ※その場では試着のみで、商品についているタグからオンラインでの購入となります。
                </p>
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
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
                            <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200717">
                                <picture>
                                    <source media="(max-width: 769px)" srcset="images/archive01_sp.jpg">
                                    <img src="images/archive01_pc.jpg" alt="">
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
                        <div class="latestArea_box--list">
                            <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200626">
                                <picture>
                                    <source media="(max-width: 769px)" srcset="images/archive02_sp.jpg">
                                    <img src="images/archive02_pc.jpg" alt="">
                                </picture>
                                <p class="archiveTtl">
                                    JAMAIS VU×editor_kaoの
                                    「彩りのある着こなし」vol.4 &lt;Black&gt;
                                </p>
                                <p class="archiveDate">
                                    2020.06.26
                                </p>
                            </a>
                        </div>
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031118151&cat=500051">
                    <img src="images/item_01.jpg" alt="">
                    <p>
                        メリノオプティモ 18G ハイネック
                        <span>¥23,100(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031241241&cat=500041">
                    <img src="images/item_02.jpg" alt="">
                    <p>
                        メリノオプティモ<br>フィットカーディガン
                        <span>¥22,000(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031247149&cat=500049">
                    <img src="images/item_03.jpg" alt="">
                    <p>
                        メリノオプティモ<br>ワイドリブカーディガン
                        <span>¥22,000(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031122142&cat=500042">
                    <img src="images/item_04.jpg" alt="">
                    <p>
                        メリノオプティモ　18Ｇポロ
                        <span>¥22,000(tax in)</span>
                    </p>
                </a>
            </li>
        </ul>
        <a href="" class="journalWrap_item--btn">すべてのアイテムをみる</a>
    </div>
</div>
<%-- △編集可能領域△ --%>

</div>
</div>
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
</style>
</asp:Content>

