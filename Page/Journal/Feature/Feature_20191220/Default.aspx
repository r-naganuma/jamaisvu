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
                    <p class="journalCat">RECOMMEND</p>
                    <h2>
                        着心地を追求した<br>
                        JAMAIS VUの上質ハイネック
                    </h2>
                    <p class="journalDate">2019.12.20</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20191119/&text=着心地を追求したJAMAIS VUの上質ハイネック" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20191220/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                肌に直接触れるハイネックは特に質感にこだわりたいアイテム。<br class="pc_contents">なめらかで柔らかい肌ざわりを追求したJAMAIS VUのハイネックは、厳選素材を贅沢に使用し、<br class="pc_contents">長年愛用したいと思える一枚に仕上がっています。
            </p>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <img class="F-wrap_ttl pc_contents" src="images/pcttl-01.png" alt="">
                <img class="F-wrap_ttl sp_contents" src="images/spttl-01.png" alt="">
                <div class="F-wrap_mainPic">
                    <img src="images/0101.jpg" alt="">
                </div>
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/0102.jpg" alt="">
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/0103.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    ふんわりとしたシルエットのワイドリブがこなれた雰囲気を演出。<br class="pc_contents">ショルダーラインから継ぎ目なく編み上げたハイネックは少しゆとりのあるデザインで、窮屈感がなく着心地抜群な仕上がりに。絶妙なオーバーサイズで体型もカバーでき、パンツにもスカートにも合わせやすいアイテムです。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930302165&cat=500065" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930302165_sub05_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ビルトネックタートル</p>
                            <p class="detailPrice">¥19,800(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ブルー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930302165&cat=500065" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=500061" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930306161_sub09_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ニットワイドパンツ</p>
                            <p class="detailPrice">¥20,900(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：サックス
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=500061" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>

                <!-- //////////////////
                /////// BTN
                ///////////////////////-->
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=1930302&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>
            </div>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <img class="F-wrap_ttl pc_contents" src="images/pcttl-02.png" alt="">
                <img class="F-wrap_ttl sp_contents" src="images/spttl-02.png" alt="">
                <div class="F-wrap_mainPic">
                    <img src="images/0201.jpg" alt="">
                </div>
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/0202.jpg" alt="">
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/0203.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    ジップのスポーティな雰囲気と、ケーブル編みの女性らしい印象が絶妙な一枚。<br class="pc_contents">ヒップまであるゆとりを持たせたシルエットでコーディネートのバランスが取りやすく、ボトムスを選ばず着こなせます。長めの袖はクシュっとすることでふんわり感が出て優しい印象に。弾力性に優れたフォークランドウールを使用し、スエットのような着心地の良さが魅力です。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930320145&cat=500045" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930320145_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ジップケーブル</p>
                            <p class="detailPrice">¥23,100(tax in)</p>
                            <p class="detailTxt">
                                素材:フォークランドウール    サイズ：FREE<br>
                                カラー：キャメル
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930320145&cat=500045" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>

                <!-- //////////////////
                /////// BTN
                ///////////////////////-->
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=1930320&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>
            </div>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <img class="F-wrap_ttl pc_contents" src="images/pcttl-03.png" alt="">
                <img class="F-wrap_ttl sp_contents" src="images/spttl-03.png" alt="">
                <div class="F-wrap_mainPic">
                    <img src="images/0301.jpg" alt="">
                </div>
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/0302.jpg" alt="">
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/0303.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    カシミヤのような肌触りと高い保湿性・吸収性が特徴のメリノオプティモを使用し、通年を通して使用できる万能なカットソーに仕上げました。コンパクトなシルエットでレイヤードとしても1枚でも着こなすことができ、様々なシーン、あらゆるスタイリングに対応してくれるデザインです。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930427165&cat=500065" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930427165_sub05_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">MERINOタートルPO</p>
                            <p class="detailPrice">¥13,200(tax in)</p>
                            <p class="detailTxt">
                                素材:メリノオプティモ    サイズ：FREE<br>
                                カラー：ブルー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930427165&cat=500065" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306111&cat=500011" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930306111_sub06_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ニットワイドパンツ</p>
                            <p class="detailPrice">¥20,900(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306111&cat=500011" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930304165&cat=500065" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930304165_sub10_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">タンクドレス</p>
                            <p class="detailPrice">¥25,300(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ブルー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930304165&cat=500065" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>

                <!-- //////////////////
                /////// BTN
                ///////////////////////-->
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=1930427&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>
            </div>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <img class="F-wrap_ttl pc_contents" src="images/pcttl-04.png" alt="">
                <img class="F-wrap_ttl sp_contents" src="images/spttl-04.png" alt="">
                <div class="F-wrap_mainPic">
                    <img src="images/0401.jpg" alt="">
                </div>
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/0402.jpg" alt="">
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/0403.jpg" alt="">
                    </div>
                </div>
                <p class="A-wrap_txt">
                    カシミヤのような肌触りと高い保湿性・吸収性が特徴のメリノオプティモを使用し、通年を通して使用できる万能なカットソーに仕上げました。コンパクトなシルエットでレイヤードとしても1枚でも着こなすことができ、様々なシーン、あらゆるスタイリングに対応してくれるデザインです。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337125&cat=500025" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930337125_sub10_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ビルトネックプルオーバー</p>
                            <p class="detailPrice">¥23,100(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：オレンジ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337125&cat=500025" class="A-wrap_detail--btn">ITEM DETAIL</a>
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

                <!-- //////////////////
                /////// BTN
                ///////////////////////-->
                <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=1930337&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>
            </div>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Column/Column_20191217">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                本当の意味でのラグジュアリー
                            </p>
                            <p class="archiveDate">
                                2019.12.17
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191213">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                普段着を格上げ。楽に着映える優秀ワンピース
                            </p>
                            <p class="archiveDate">
                                2019.12.13
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930302165&cat=500065">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930302165_sub05_L.jpg" alt="">
                    <p>
                        ビルトネックタートル
                        <span>¥19,800(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930320145&cat=500045">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930320145_sub06_L.jpg" alt="">
                    <p>
                        ジップケーブル
                        <span>¥23,100(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930427165&cat=500065">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930427165_sub05_L.jpg" alt="">
                    <p>
                        MERINOタートルPO
                        <span>¥15,200(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337125&cat=500025">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930337125_sub10_L.jpg" alt="">
                    <p>
                        ビルトネックプルオーバー
                        <span>¥23,100(tax in)</span>
                    </p>
                </a>
            </li>
        </ul>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="journalWrap_item--btn">すべてのアイテムをみる</a>
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

