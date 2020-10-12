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
<link href='../../css/common.css' rel='stylesheet' type='text/css'>
<link href='css/common.css' rel='stylesheet' type='text/css'>
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
            <div class="mainvisu">
                <img class="pc_contents" src="images/mv_pc.jpg" alt="">
                <img class="sp_contents" src="images/mv_sp.jpg" alt="">
            </div>
            <div class="mainArea_ttl">
                <div class="mainArea_ttl--txt">
                    <p class="journalCat">FEATURE</p>
                    <h2>
                        シンプルなファッションの楽しみ方<br>
                        Vol.1 -nagaya nagisaさん-
                    </h2>
                    <p class="journalDate">2020.10.9</p>
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
                大人気インフルエンサーのnagaya nagisaさんが、<br class="pc_inline"><br class="sp_inline">秋の新作メリノオプティモシリーズから<br class="sp_inline">気になるアイテムをチョイス。<br class="pc_inline"><br class="sp_inline">
                Nagisaさんならではのシンプルなオシャレの<br class="sp_inline">秘訣をスタイリングポイントとともにお届けします。
            </p>
        </div>


            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    #01 メリノオプティモ　18Ｇポロ
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="A-wrap_txt">
                    今年トレンドのカーキアイテム。<br class="pc_inline"><br class="sp_inline">深みのある上品なカーキはコーデュロイの<br class="sp_inline ">パンツとあわせてカジュアルに。<br class="pc_inline"><br class="sp_inline ">しっとりした肌触りで暖かく重ね着して<br class="sp_inline ">今年らしいコーディネートに。
                </p>
            </div>

            <!-- //////////////////
            /////// 1009 add 
            ///////////////////////-->
            <div class="add1009-box">
                <div class="add1009-box__child">
                    <img class="itemI" src="images/pic_c_1.jpg" alt="">
                </div>
                <div class="add1009-box__child">
                    <img class="itemI" src="images/pic_c_1-2.jpg" alt="">
                </div>
            </div>

            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031122159&cat=500059" class="ctsArea_btn1009">
                アイテムはこちら
            </a>


                        <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    #02 メリノオプティモ ワイドリブカーディガン
                </p>
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
                <p class="A-wrap_txt">
                    しっかり厚みもありとても暖かくカーディガン<br class="sp_inline">なのに<br class="pc_inline">
                    存在感バッチリのアイテムで定番に<br class="sp_inline">なりつつあるベージュカラーのカーディガン。<br class="pc_inline"><br class="sp_inline">
                    癖のあるトップスの上からばさっと羽織ったり、<br class="sp_inline">肩がけをして抜け感のあるコーディネートを。<br class="pc_inline">
                </p>
            </div>

            <!-- //////////////////
            /////// 1009 add 
            ///////////////////////-->
            <div class="add1009">
                <div class="add1009-box">
                    <div class="add1009-box__child">
                        <img class="itemI" src="images/pic_a_2.jpg" alt="">
                    </div>
                    <div class="add1009-box__child">
                        <img class="itemI" src="images/pic_a_2-1.jpg" alt="">
                    </div>
                </div>

                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031247142&cat=500042" class="ctsArea_btn1009">
                    アイテムはこちら
                </a>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&udns=2&fpfl=0&_material=%e3%83%a1%e3%83%aa%e3%83%8e%e3%82%aa%e3%83%97%e3%83%86%e3%82%a3%e3%83%a2&pno=1" class="ctsArea_Allbtn1009">
                    メリノオプティモシリーズ一覧
                </a>
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
                        <p>長屋 なぎさ / LIFE STYLE PLANNER</p>
                        <div class="snsArea">
                            <div class="snsArea_ig">
                                <a href="https://www.instagram.com/nagisanagaya/"target="_blank">
                                    <img src="images/icn_ig.png" alt="">
                                </a>
                            </div>
                        </div>
                    </div>
                    <p class="I-wrap_txt--cts">
                        アパレル本社でe-commerceやPRESSを担当したのち、27歳でLIFE STYLE PLANNERとして独立。2015年、HawaiiセレクトshopディレクターとしてHawaiiに移住。現在は日本を拠点とし企業のビジュアル監修やアパレル代理店業務、ライフスタイルアイテムの商品企画なども企業とコラボレーションし活動。著書に『155cm STYLE』（宝島社）、待望の第2弾<a style="text-decoration:underline;display: inline;font-weight: 400;" href="https://www.amazon.co.jp/155cm-CLOSET-%E9%95%B7%E5%B1%8B-%E3%81%AA%E3%81%8E%E3%81%95/dp/4800278090">『155cm CLOSET』</a>（宝島社）は現在Amazonなどで発売中。
                    </p>
                </div>
            </div>

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

    <!-- //////////////////
    /////// 着用アイテムはこちら
    ///////////////////////-->
    <div class="journalWrap_item">
        <p class="journalWrap_item--ttl">レコメンドアイテムはこちら</p>
        <ul>
            <!-- 最大4個まで -->
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031122159&cat=500059">
                    <img src="images/item_01.jpg" alt="">
                    <p>
                        メリノオプティモ　18Ｇポロ
                        <span>¥22,000(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031247142&cat=500042">
                    <img src="images/item_02.jpg" alt="">
                    <p>
                        メリノオプティモ<br class="pc_inline">
                        ワイドリブカーディガン
                        <span>¥22,000(tax in) </span>
                    </p>
                </a>
            </li>
        </ul>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&udns=2&fpfl=0&_material=%e3%83%a1%e3%83%aa%e3%83%8e%e3%82%aa%e3%83%97%e3%83%86%e3%82%a3%e3%83%a2&pno=1" class="journalWrap_item--btn">すべてのアイテムをみる</a>
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
</asp:Content>