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
                        心地良さを感じる、<br>
                        大人のリラックスウェア
                    </h2>
                    <p class="journalDate">2020.04.03</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200403/&text=心地良さを感じる、大人のリラックスウェア" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200403/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                部屋の中にいる時間を充実させてくれるような、<br>
                気分を高めてくれるワンランク上の<br class="sp_contents">リラックスウェアで、おしゃれで心地よい日常を。
            </p>
        </div>

        <div class="ctsArea">

            <!-- クーポンエリア -->
            <div class="couponArea">
                <p class="couponArea_txt01">
                    今だけ限定！<br>
                    リラックスウェア10%OFFキャンペーン
                </p>
                <p class="couponArea_txt02">
                    ご購入時に下記クーポンコードをご入力ください。
                </p>
                <p class="couponArea_txt03">
                    クーポンコード
                </p>
                <div class="couponArea_code">
                    <p>Relux2004</p>
                </div>
                <p class="couponArea_txt04">
                    キャンペーン対象期間<span class="pc_inline"> :</span><br class="sp_contents">2020年4月3日(金)〜2020年4月12日(日)
                </p>
                <p class="couponArea_note">
                    ※対象期間を過ぎた時点で、クーポンは自動的に<br class="sp_contents">失効いたします。
                </p>
                <p class="couponArea_note">
                    ※他のクーポンと併用してご利用にはなれません。<br class="sp_contents">予めご了承ください。
                </p>

                <!-- //////////////////
                /////// BTN
                ///////////////////////-->
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=0403coupon&udns=2&fpfl=0&pno=1" class="ctsArea_btn">対象アイテム一覧</a>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    ITEM DETAIL
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="A-wrap_txt">
                    <span>体の動きに優しく寄り添う程よいボリューム感で読書やワークにも最適</span>
                    パーカー<br>
                    ドロップショルダーで肩周りにゆとりを持たせることで、窮屈感なく動きに寄り添う着心地に。<br>
                    裾のストリングがジャストウエストの丈感でもバランス良く着こなすポイント。
                </p>
                <p class="A-wrap_txt">
                    パンツ<br>
                    セミワイドでリラックス感のあるノンストレスなデザイン。<br class="pc_contents">ウエスト部分もゴムなので、楽に着ることができます。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304141&cat=500041" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304141_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾンニットパーカー</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン   サイズ：FREE<br>
                                カラー：ベージュ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304141&cat=500041" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306211&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010306211_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾンニットパンツ</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：JUST FIT/LOOSE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306211&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <p class="A-wrap_ttl">
                    MATERIAL
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
                    <span>きちんと感を忘れない、外にも着ていける上質さ</span>
                    素材には、上質なスビンコットンを使用。シルクのような光沢感とカシミヤのようなしっとりとした風合いが魅力で、<br class="pc_contents">カジュアルな印象の強いパーカーやパンツにも上品な印象を与えてくれます。<br class="sp_contents">スムース編みを採用し、ジャージのような圧縮された表面感になめらかでしっとりしたニットならではの温もりとタッチが絶妙な仕上がりに。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304111&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304111_sub08_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾンニットパーカー</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304111&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306241&cat=500041" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010306241_sub09_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾンニットパンツ</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：JUST FIT LOOSE<br>
                                カラー：ベージュ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306241&cat=500041" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    COLOR
                </p>
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
                <p class="A-wrap_txt">
                    <span>妙な色落ち感、他には無い温かみ</span>
                    生地を傷めてしまうため、今まで上質な素材に施すことは難しかったユーズド加工。<br>
                    今回のアイテムは「オゾン加工」と呼ばれる待機中の空気の力を利用した方法を採用し、<br>
                    生地を傷めることなくクリアな色落ち感やソフトなタッチを実現しました。<br>
                    水の使用量も従来の半分以下で地球にも優しい、サステナブルな一着です。
                </p>
                <p class="A-wrap_txt">
                    COLOR VARIATION
                </p>
                <img class="A-wrap_pic" src="images/pic_a_03.jpg" alt="">
                <!-- //////////////////
                /////// BTN
                ///////////////////////-->
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2010304&udns=2&fpfl=0&pno=1" class="ctsArea_btn btn02">アイテム一覧はこちら</a>
                <img class="A-wrap_pic" src="images/pic_a_04.jpg" alt="">
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=2010306&udns=2&fpfl=0&pno=1" class="ctsArea_btn btn03">アイテム一覧はこちら</a>

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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304141&cat=500041">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304141_sub06_L.jpg" alt="">
                    <p>
                        SUVINオゾンニットパーカー
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306211&cat=500011">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010306211_sub06_L.jpg" alt="">
                    <p>
                        SUVINオゾンニットパンツ
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304111&cat=500011">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010304111_sub08_L.jpg" alt="">
                    <p>
                        SUVINオゾンニットパーカー
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306241&cat=500041">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010306241_sub09_L.jpg" alt="">
                    <p>
                        SUVINオゾンニットパンツ
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

