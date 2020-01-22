<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="NEW ARRIVAL｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="NEW ARRIVAL" MetaKeywords="TOPICS,トピックス,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
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
                    <p class="journalCat">NEW ARRIVAL</p>
                    <h2>
                        冬コーデを一新。<br>
                        春を始める新作トップス
                    </h2>
                    <p class="journalDate">2020.01.21</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Newarrival/Newarrival_20200121/&text=冬コーデを一新。春を始める新作トップス" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Newarrival/Newarrival_20200121/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                まだまだ寒くても、春アイテムが気になる時期に。<br>
                JAMAIS VUでは季節をまたぐシーズンにぴったりの春色トップスが入荷しました。<br><br class="sp_contents">シルクのような光沢感とカシミヤのようなしっとりとした風合いが特徴の「スビンコットン」を贅沢に使用したアイテムは、程よい厚みで、アウターの中に、レイヤードで、1枚でも、と今から春まで活躍してくれます。
            </p>
        </div>

        <div class="ctsArea">
            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    No.01 SUVIN8Gスウェット
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="A-wrap_ttl A-wrap_ttlsub">
                    着る人を選ばない、優秀シルエット
                </p>
                <p class="A-wrap_txt">
                    ビッグシルエットで身体のラインを拾わず、少し落ちたショルダーラインと袖部分の長めのリブで華奢見え効果も。<br><br class="sp_contents">1枚で体型を綺麗に見せてくれる計算し尽くされたバランスで、着る人を選ばず、どんな方にもフィットする優秀アイテムです。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300131&cat=500031" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010300131_sub07_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVIN8Gスウェット</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：ピンク
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300131&cat=500031" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=500017" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930730117_sub08_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">フリーサイズワイド</p>
                            <p class="detailPrice">¥23,100(tax in)</p>
                            <p class="detailTxt">
                                素材:メリノオプティモ    サイズ：FREE<br>
                                カラー：チャコールグレー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930730117&cat=500017" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_01.jpg" alt="">
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_02.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    矢振りという手法で編まれた生地は、ニットらしい柔らかい表情を生み出し、女性らしい雰囲気をプラスしてくれます。<br><br class="sp_contents">カシミヤのような艶やかで滑らかな上質素材と、カジュアルなビッグシルエットの組み合わせは、抜け感のある上級者の着こなしに。裾にはストリングスが付いており丈感を調節できるので、お手持ちのボトムスにも合わせやすい一枚です。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300141&cat=500041" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010300141_sub09_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVIN8Gスウェット</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：ベージュ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300141&cat=500041" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2010300&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <p class="A-wrap_ttl">
                    No.01 SUVIN8Gスウェット<br class="sp_contents">ショートカーディガン
                </p>
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_03.jpg" alt="">
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_04.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_ttl A-wrap_ttlsub">
                    長く愛せる、シンプルなのに<br class="sp_contents">他にないデザイン
                </p>
                <p class="A-wrap_txt">
                    季節の変わり目のマストアイテム、カーディガンも春カラーで登場。<br><br class="sp_contents">付属のないシンプルなデザインは、前を閉めても、羽織としてもバランス良く着こなすことができ、トレンドにも左右されないので、迷ったときに頼れる一枚です。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010301159&cat=500059" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010301159_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVIN8Gスウェットショートカーディガン</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：カーキ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010301159&cat=500059" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=500017" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930731117_sub10_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">フリーサイズテーパード</p>
                            <p class="detailPrice">¥23,100(tax in)</p>
                            <p class="detailTxt">
                                素材:メリノオプティモ    サイズ：FREE<br>
                                カラー：チャコールグレー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=500017" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
                <p class="A-wrap_txt">
                    かっちり感が強くなりがちなショート丈のカーディガンですが、ショルダーラインを少し落とし、袖を長めにとっているため、こなれた雰囲気に。前を閉じた状態でも硬くなりすぎず、カジュアルなスタイルでも着こなすことが可能です。<br><br class="sp_contents">カシミヤのような艶やかで滑らかな「スビンコットン」を贅沢に使用しているので、楽なのにエレガントさもあるJAMAIS VUならではのアイテムに仕上がっています。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010301161&cat=500061" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010301161_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVIN8Gスウェットショートカーディガン</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：サックス
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010301161&cat=500061" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=500017" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930731117_sub10_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">フリーサイズテーパード</p>
                            <p class="detailPrice">¥23,100(tax in)</p>
                            <p class="detailTxt">
                                素材:メリノオプティモ    サイズ：FREE<br>
                                カラー：チャコールグレー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930731117&cat=500017" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2010301&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <div class="subinArea">
                <p class="subinArea_ttl">スビンコットンについて</p>
                <p class="subinArea_txt">
                    SUVIN COTTONは世界に数あるコットンの<br class="sp_contents">中で最も繊維長が長いコットン。<br>
                    また、超極細の繊維であるため、<br class="sp_contents">シルクのような光沢感と<br>
                    カシミヤのようなしっとりとした風合いが<br class="sp_contents">特徴の超高級コットンです。
                </p>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Page/Concept/suvin_cotton.aspx" class="ctsArea_btn subin">詳しくはこちら</a>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200117">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                SALE ITEM RANKING
                            </p>
                            <p class="archiveDate">
                                2020.01.17
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&_sale=%E3%82%BB%E3%83%BC%E3%83%AB&pno=1">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                対象アイテム拡大！全品50％OFF
                            </p>
                            <p class="archiveDate">
                                2020.01.14
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300131&cat=500031">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010300131_sub07_L.jpg" alt="">
                    <p>
                        SUVIN8Gスウェット
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010300141&cat=500041">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010300141_sub09_L.jpg" alt="">
                    <p>
                        SUVIN8Gスウェット
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010301159&cat=500059">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010301159_sub06_L.jpg" alt="">
                    <p>
                        SUVIN8Gスウェットショートカーディガン
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010301161&cat=500061" class="A-wrap_detail--box">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010301161_sub06_L.jpg" alt="">
                    <p>
                        SUVIN8Gスウェットショートカーディガン
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

