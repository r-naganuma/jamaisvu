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
                    <p class="journalCat">FEATURE</p>
                    <h2>
                        クリス-ウェブ 佳子<br>
                        コラボアイテム発売決定！
                    </h2>
                    <p class="journalDate">2020.05.12</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200512/&text=クリス-ウェブ 佳子コラボアイテム発売決定！" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200512/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                世界中から厳選されエコロジカルで丁寧な手法で生み出された〈JAMAISVU〉の素材とクリス-ウェブ 佳子さんの感性がコラボレイトしたスペシャルプロダクトが完成しました。<br class="sp_contents"><br class="sp_contents">彼女のフィルターを通して取捨選択されたアイテム達は<br class="pc_contents">上質で本物でありながら、守りに入らず唯一無二の彼女の個性が煌めいています。
            </p>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    #1 バックレースアップリブニット
                </p>
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_01.jpg" alt="">
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_02.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    夏にマストなベーシックなハーフスリーブのリブニットもデコルテの美しいネックカットとバックのレースアップが彼女らしいエッセンス。<br class="sp_contents">レースアップなので開きは調整可能な上、冷感とドライなタッチで機能性も申し分なし。<br>
                    ジャケットのインナーからワンピースやコンビネゾンと重ねてもライトで自分らしいレイヤードスタイルが完成するスペシャルトップスです。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010323111&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_01.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">バックレースアップリブニット</p>
                            <p class="detailPrice">¥15,400(tax in)</p>
                            <p class="detailTxt">
                                素材:アイスコットン    サイズ：FREE<br>
                                カラー：ホワイト/ブラック/イエロー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010323111&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    #2 バックバックルコンビネゾン
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <img class="A-wrap_pic pic02" src="images/pic_a_02.jpg" alt="">
                <p class="A-wrap_txt">
                    なめらかで落ち感のある素材を生かしたストレートなシルエットにフロントもシームレスジップ仕様にするなど付属を極力削ぎ落としたミニマルなデザインに、クリス-ウェブ 佳子さんらしいスパイスの効いた存在感のあるバックのバックル。バックルはモダンなアクセントとしてだけでなく、着る人の身長を選ばずベルトでサイジングが自由自在という新しいアプローチが秀逸です。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010575149&cat=500049" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_02.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">バックバックルコンビネゾン</p>
                            <p class="detailPrice">¥28,600(tax in)</p>
                            <p class="detailTxt">
                                素材:メリノオプティモ   サイズ：FREE<br>
                                カラー：ブラウン/ブラック
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010575149&cat=500049" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=collabitem1&udns=2&fpfl=0&pno=1" class="ctsArea_btn">アイテム詳細を見る</a>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200424">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                JAMAIS VU×editor_kaoの「彩りのある着こなし」<br>vol.3&lt;Green&gt;
                            </p>
                            <p class="archiveDate">
                                2020.04.24
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200417">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                25%OFF キャンペーン<br>
                                おうちで過ごす時に、きっと気分を上げてくれる服を
                            </p>
                            <p class="archiveDate">
                                2020.04.17
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010323111&cat=500011">
                    <img src="images/item_01.jpg" alt="">
                    <p>
                        バックレースアップリブニット
                        <span>¥15,400(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010575149&cat=500049">
                    <img src="images/item_02.jpg" alt="">
                    <p>
                        バックバックルコンビネゾン
                        <span>¥28,600(tax in)</span>
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

