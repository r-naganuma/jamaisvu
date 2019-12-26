<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="COLUMN｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="COLUMN" MetaKeywords="TOPICS,トピックス,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
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
                        冬を盛り上げる、<br>
                        最強白ニットの法則
                    </h2>
                    <p class="journalDate">2019.12.27</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20191227/&text=冬を盛り上げる、最強白ニットの法則" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20191227/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                暖かく優しい印象をもたらしてくれる白ニットは肌寒い季節のマストアイテム。<br>
                シンプルなアイテムだからこそ、シルエットと素材にこだわり抜いたアイテムの数々はさりげないのにオシャレに見える名作ばかりです。
            </p>
        </div>

        <div class="ctsArea">
            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    ゆったりなのに大きすぎない絶妙シルエット
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <div class="C-wrap">
                    <div class="C-wrap_list">
                        <img class="C-wrap_pic" src="images/pic_c_01.jpg" alt="">
                    </div>
                    <div class="C-wrap_list">
                        <img class="C-wrap_pic" src="images/pic_c_02.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    ゆったりめの白ニットは可愛い半面、着太りしやすいのが短所。<br>
                    JAMAIS VUのニットスエットはシルエットにこだわり抜き、肉厚感を減らしたクリアな網目と長めに取った袖のリブでゆったりしたこなれ感のある雰囲気なのにスッキリ着こなせるいいところどりのデザインに仕上げました。<br>
                    スエットっぽく楽に着れるのに、女性らしさもある絶妙な一枚です。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930300111&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930300111_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ニットスウェット</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930300111&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305165&cat=500065" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930305165_sub05_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ニットスウェットパンツ</p>
                            <p class="detailPrice">¥23,100(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ブルー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305165&cat=500065" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <p class="A-wrap_ttl">
                    どんなボトムでもバランスよく着れる<br class="sp_contents">こだわり丈
                </p>
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_01.jpg" alt="">
                        <p class="F-wrap_box--txt">
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930334111&cat=500011">ドルマンプルオーバー ¥17,600(tax in)</a>
                        </p>
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_02.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    身幅がゆったりとしたニットも、やや短めの丈なら着太りせずどんなボトムともバランスよく決まります。<br>
                    中でもドルマンプルオーバーは裾にストリングを入れることでボトムスに合わせて丈感を変えることができ、タックインでもアウトでも様々なスタイルに馴染むのが嬉しいデザイン。<br>
                    ゆとりがあるので、下にシャツを重ねたレイヤードスタイルもおすすめです。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930334111&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930334111_sub09_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ドルマンプルオーバー</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930334111&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    ひと技加えたディテールで<br class="sp_contents">ベーシックを格上げ
                </p>
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
                <div class="C-wrap">
                    <div class="C-wrap_list">
                        <img class="C-wrap_pic" src="images/pic_c_03.jpg" alt="">
                    </div>
                    <div class="C-wrap_list">
                        <img class="C-wrap_pic" src="images/pic_c_04.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    マンネリ化しがちな白ニットはディテールで差別化。<br>
                    ビルトネックプルオーバーの絶妙に長めに作られた袖は、折り返して編み地の変化を楽しんでも、クシュっと感を出して<br class="pc_contents">こなれた雰囲気を演出しても着映える嬉しいアイテム。タートル部分は切り替えを無くしてスッキリ上品な印象に仕上げました。細部までこだわったデザインは、さりげないのにオシャレな雰囲気を叶えてくれます。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337111&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930337111_sub05_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ビルトネックプルオーバー</p>
                            <p class="detailPrice">¥23,100(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337111&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <p class="A-wrap_ttl">
                    綺麗めもカジュアルも得意な<br class="sp_contents">表情豊かなデザイン
                </p>
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_03.jpg" alt="">
                        <p class="F-wrap_box--txt">
                            <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930336111&cat=500011">ワイドリブプルオーバー ¥20,900(tax in)</a>
                        </p>
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_04.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    ヘアリーなニットはフェミニンで甘めな印象になりがち。<br>
                    シンプルなプルオーバーは少しゆったりとしたデザインに仕上げることでリラックス感がプラスされ、カジュアルにも着こなせる新鮮なバランスに。レイヤードもしやすく、アウターの中に着てもかさばらない絶妙なボリューム感でどんなシーンでも使いやすく、長年愛用できるアイテムです。
                </p>

                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930336111&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930336111_sub05_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ワイドリブプルオーバー</p>
                            <p class="detailPrice">¥20,900(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930336111&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&udns=2&fpfl=0&col=white&pno=1" class="ctsArea_btn">すべてのアイテムをみる</a>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Column/Column_20191224">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                「上質を纏う。素材の良さを追求した物づくり」 Vol.2
                            </p>
                            <p class="archiveDate">
                                2019.12.24
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191220">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                着心地を追求したJAMAIS VUの上質ハイネック
                            </p>
                            <p class="archiveDate">
                                2019.12.20
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930300111&cat=500011">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930300111_sub06_L.jpg" alt="">
                    <p>
                        ニットスウェット
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930334111&cat=500011">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930334111_sub09_L.jpg" alt="">
                    <p>
                        ドルマンプルオーバー
                        <span>¥17,600(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337111&cat=500011">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930337111_sub05_L.jpg" alt="">
                    <p>
                        ビルトネックプルオーバー
                        <span>¥23,100(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930336111&cat=500011" class="A-wrap_detail--box">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930336111_sub05_L.jpg" alt="">
                    <p>
                        ワイドリブプルオーバー
                        <span>¥20,900(tax in)</span>
                    </p>
                </a>
            </li>
        </ul>
        <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&udns=2&fpfl=0&col=white&pno=1" class="journalWrap_item--btn">すべてのアイテムをみる</a>
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

