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
                        シンプルに着映える、<br>
                        身長別ベストコーディネート
                    </h2>
                    <p class="journalDate">2020.04.10</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200410/&text=シンプルに着映える、身長別ベストコーディネート" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200410/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                これからの季節長く使えて簡単に着映えるベストはコーデに新鮮さをプラスしてくれて、頼れるアイテム。<br>
                JAMAIS VUが提案する身長別のベストの着こなしをご紹介。
            </p>
        </div>

        <div class="ctsArea">
            <div class="anchorArea">
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303141&cat=500041">
                        <div class="A-wrap_detail--box">
                            <div class="A-wrap_detail--box--pic">
                                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010303141_sub07_L.jpg" alt="">
                            </div>
                            <div class="A-wrap_detail--box--txt">
                                <p class="detailTtl">SUVINオゾン5G2WAYベスト</p>
                                <p class="detailPrice">¥16,500(tax in)</p>
                                <p class="detailCts">
                                    前後どちらでも着用可能で全く異なる表情が楽しい一枚。上質で心地良い肌触りの「SUVIN COTTON(スビンコットン)」「オゾン加工」と呼ばれる特殊な加工を施し、絶妙なユーズド感を演出。<br>
                                    程よい色落ち感でこなれた雰囲気のスタイリングが簡単に叶います。
                                </p>
                            </div>
                        </div>
                    </a>
                </div>
                <div class="anchorArea_box">
                    <div class="anchorArea_box--list">
                        <a href="#small">SMALL</a>
                    </div>
                    <div class="anchorArea_box--list">
                        <a href="#midium">MIDIUM</a>
                    </div>
                    <div class="anchorArea_box--list">
                        <a href="#tall">TALL</a>
                    </div>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div id="small" class="A-wrap">
                <p class="A-wrap_ttl">
                    ミニマル&モダンなモノトーンで<br class="sp_contents">ハンサムに魅せる
                    <span>MODEL - SMALL:154cm</span>
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <div class="D-wrap">
                    <img class="D-wrap_pic" src="images/pic_d_01.jpg" alt="">
                    <div class="D-wrap_box">
                        <div class="D-wrap_box--pic">
                            <img src="images/pic_d_02.jpg" alt="">
                        </div>
                    </div>
                </div>
                <p class="A-wrap_txt">
                    ミニマルなスタイリングに、ベストのほど良い肌見せ感がシャープなのに女性らしさもある洗練された印象に。<br>
                    ゆったりシルエットのパンツにはヒールを合わせることで、カジュアル感と上品さのバランスが絶妙なスタイリングが叶います。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303111&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010303111_sub07_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾン5G2WAYベスト</p>
                            <p class="detailPrice">¥16,500(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303111&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div id="midium" class="A-wrap">
                <p class="A-wrap_ttl">
                    落ち着いたトーンには<br class="sp_contents">足元のスニーカーで遊びを
                    <span>MODEL - MIDIUM:162cm</span>
                </p>
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
                <div class="F-wrap">
                    <div class="F-wrap_box">
                        <div class="F-wrap_box--main">
                            <img src="images/pic_f_01.jpg" alt="">
                        </div>
                        <div class="F-wrap_box--sub">
                            <img src="images/pic_f_02.jpg" alt="">
                        </div>
                    </div>
                </div>
                <p class="A-wrap_txt">
                    ボタンを後ろに持ってくることで一味違った着こなしに。長すぎない程よい丈感はロングスカートとも相性バッチリ。<br>
                    フロントはすっきりシンプルな印象なので、足元のスニーカーで遊びをプラス。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303159&cat=500059" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010303159_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾン5G2WAYベスト</p>
                            <p class="detailPrice">¥16,500(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：カーキ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303159&cat=500059" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div id="tall" class="A-wrap">
                <p class="A-wrap_ttl">
                    インナーで表情の変化を楽しんで
                    <span>MODEL - TALL:168cm</span>
                </p>
                <img class="A-wrap_pic" src="images/pic_a_03.jpg" alt="">
                <div class="D-wrap">
                    <img class="D-wrap_pic" src="images/pic_d_03.jpg" alt="">
                    <div class="D-wrap_box">
                        <div class="D-wrap_box--pic">
                            <img src="images/pic_d_04.jpg" alt="">
                        </div>
                    </div>
                </div>
                <p class="A-wrap_txt">
                    ニットベストは、下に着るアイテムによって雰囲気をガラリと変えられるのが魅力。<br>
                    カットソーと合わせるとカジュアルな雰囲気に。<br>
                    マニッシュなスタイリングは足首のさりげない肌見せで女っぽさをプラスして。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303141&cat=500041" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010303141_sub07_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾン5G2WAYベスト</p>
                            <p class="detailPrice">¥16,500(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：ベージュ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303141&cat=500041" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=SUVIN%e3%82%aa%e3%82%be%e3%83%b35G2WAY%e3%83%99%e3%82%b9%e3%83%88&udns=2&fpfl=0&pno=1" class="ctsArea_btn">アイテム詳細を見る</a>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Column/Column_20200331">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                カーディガン効果
                            </p>
                            <p class="archiveDate">
                                2020.03.31
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200327">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                普段着がひときわ華やぐ。この春選びたいカーディガン2Type
                            </p>
                            <p class="archiveDate">
                                2020.03.27
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303111&cat=500011">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010303111_sub07_L.jpg" alt="">
                    <p>
                        SUVINオゾン5G2WAYベスト
                        <span>¥16,500(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303159&cat=500059">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010303159_sub06_L.jpg" alt="">
                    <p>
                        SUVINオゾン5G2WAYベスト
                        <span>¥16,500(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303141&cat=500041">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010303141_sub07_L.jpg" alt="">
                    <p>
                        SUVINオゾン5G2WAYベスト
                        <span>¥16,500(tax in)</span>
                    </p>
                </a>
            </li>
        </ul>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="journalWrap_item--btn">すべてのアイテムをみる</a>
    </div>
</div>
<script type="text/javascript" charset="utf-8">
$(window).load(function() {
    $('.anchorArea_box a').click(function(){
        var speed = 500;
        var href= $(this).attr("href");
        var target = $(href == "#" || href == "" ? 'html' : href);
        var position = target.offset().top - 95;
        $("html, body").animate({scrollTop:position}, speed, "swing");
        return false;
    });
});
</script>
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

