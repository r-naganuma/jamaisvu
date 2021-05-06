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
                        ディレクター長尾 悦美×JAMAIS VU<br>
                        コラボアイテム第二弾
                    </h2>
                    <p class="journalDate">2021.05.03</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20210503/&text=ディレクター長尾 悦美×JAMAIS VU コラボアイテム第二弾" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20210503/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                卓越したセンスでメゾンブランドからヴィンテージまで幅広く自由にMIXする<br class="pc_contents">独自のスタイリングが注目を集め、今の東京を代表するファッションアイコンのひとりである<br class="pc_contents">タカシマヤSTYLE&EDITクリエイティブディレクター長尾 悦美さん。<br>
                彼女のこだわりと、JAMAIS VUの厳選された素材のコラボレーション第二弾が実現しました。
            </p>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// TEMPLATE X
            ///////////////////////-->
            <div class="X-wrap">
                <p class="X-wrap_ttl">
                    1. ペーパー スクエアーネックプルオーバー
                </p>
                <img class="X-wrap_pic" src="images/model_img_01.jpg" alt="">
                <p class="X-wrap_txt">
                    ドライでライトな和紙素材をざっくり編み込み、風通しが良く夏場でもさらりと心地よいサマーニット。ネックを台形型にし、ベルスリーブでフェミニンさとリラックスしを加えた1枚でサマになるデザインに仕上げました。
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <img class="A-wrap_pic" src="images/model_img_02.jpg" alt="">
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121102119" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/link_01.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">【長尾悦美さんコラボ】ペーパー スクエアーネックプルオーバー</p>
                            <p class="detailPrice">¥18,700(tax in)</p>
                            <p class="detailTxt">
                                素材：和紙<br>
                                カラー：ブラック
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121102119" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121102123" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/link_02.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">【長尾悦美さんコラボ】ペーパー スクエアーネックプルオーバー</p>
                            <p class="detailPrice">¥18,700(tax in)</p>
                            <p class="detailTxt">
                                素材：和紙<br>
                                カラー：イエローベージュ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121102123" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <p class="A-wrap_txt">
                    ※レッドは高島屋限定となります。
                </p>
                <!-- <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121102135" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/link_03.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">【長尾悦美さんコラボ】ペーパー スクエアーネックプルオーバー</p>
                            <p class="detailPrice">¥18,700(tax in)</p>
                            <p class="detailTxt">
                                素材：和紙<br>
                                カラー：レッド
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121102135" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div> -->
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    2. ペーパー 深Vネックベスト
                </p>
                <img class="A-wrap_pic" src="images/model_img_03.jpg" alt="">
                <p class="A-wrap_txt">
                    ドライでライトな和紙素材をざっくり編み込み、風通しが良く夏場でもさらりと心地よいニットベスト。<br>
                    深めのすっきりとしたVネックで女性らしさを出しながら、リラックス感あるデザインに仕上げました。
                </p>
                <!-- <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121003119" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/link_04.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">【長尾悦美さんコラボ】ペーパー 深Vネックベスト</p>
                            <p class="detailPrice">¥16,500(tax in)</p>
                            <p class="detailTxt">
                                素材：和紙<br>
                                カラー：ブラック
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121003119" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div> -->
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121003123" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/link_05.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">【長尾悦美さんコラボ】ペーパー 深Vネックベスト</p>
                            <p class="detailPrice">¥16,500(tax in)</p>
                            <p class="detailTxt">
                                素材：和紙<br>
                                カラー：イエローベージュ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121003123" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <p class="A-wrap_txt">
                    ※ブラックは高島屋限定となります。
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    3. ペーパー ニットベレー帽
                </p>
                <img class="A-wrap_pic" src="images/model_img_04.jpg" alt="">
                <p class="A-wrap_txt">
                    ドライでライトな和紙素材をざっくり編み込み、夏にも被れるニットベレー帽。たっぷりとしたサイズ感で大人っぽく。<br>
                    同素材のベストや、ニットとのコーディネートで合わせるのがおすすめ。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2120804119" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/link_06.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">【長尾悦美さんコラボ】ペーパー ニットベレー帽</p>
                            <p class="detailPrice">¥5,500(tax in)</p>
                            <p class="detailTxt">
                                素材：和紙<br>
                                カラー：ブラック
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2120804119" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2120804123" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/link_07.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">【長尾悦美さんコラボ】ペーパー ニットベレー帽</p>
                            <p class="detailPrice">¥5,500(tax in)</p>
                            <p class="detailTxt">
                                素材：和紙<br>
                                カラー：イエローベージュ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2120804123" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE X
            ///////////////////////-->
            <div class="X-wrap">
                <p class="X-wrap_ttl">
                    4. ICE COTTON フロントカーブカーディガン
                </p>
                <img class="X-wrap_pic" src="images/model_img_05.jpg" alt="">
                <p class="X-wrap_txt">
                    ひんやりとしたドライなタッチが湿度の高い時期にも肌離れ良く快適で、夏場までヘビロテ間違いなしのカーディガン。フロントボタンの掛け併せをずらしたようなデザインにし、遊び感のあるデザインに。ボタンを閉めて、1枚で着こなすバランスもおすすめ。
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <img class="A-wrap_pic" src="images/model_img_06.jpg" alt="">
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121201140" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/link_08.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">【長尾悦美さんコラボ】 ICE COTTON フロントカーブカーディガン</p>
                            <p class="detailPrice">¥19,800(tax in)</p>
                            <p class="detailTxt">
                                素材：アイスコットン<br>
                                カラー：ライトベージュ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121201140" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121201150" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/link_09.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">【長尾悦美さんコラボ】 ICE COTTON フロントカーブカーディガン</p>
                            <p class="detailPrice">¥19,800(tax in)</p>
                            <p class="detailTxt">
                                素材：アイスコットン<br>
                                カラー：ライムグリーン
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121201150" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121201169" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/link_10.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">【長尾悦美さんコラボ】 ICE COTTON フロントカーブカーディガン</p>
                            <p class="detailPrice">¥19,800(tax in)</p>
                            <p class="detailTxt">
                                素材：アイスコットン<br>
                                カラー：ネイビー
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121201169" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE X
            ///////////////////////-->
            <div class="ttlAreaNew">
                <p class="X-wrap_ttl ttl02">
                    5. 【高島屋オンラインストア・STYLE &EDIT各店舗受注受付限定】<br>
                    ペルビアンピマコットンスリットネック別注カラー
                </p>
            </div>
            <div class="X-wrap">
                <img class="X-wrap_pic" src="images/model_img_07.jpg" alt="">
                <p class="X-wrap_txt">
                    きめ細やかな「ペルビアンピマコットン」をあえて単糸使いすることでハリがありながらもナチュラルな風合いに仕上げたスリットネックプルオーバー。ヒップの隠れる丈感でニットパンツなどタイトなボトムとも好相性。スタンダードなシャツスリーブにネックはサイドにスリットを入れ、さりげなく覗くデコルテが女性らしいエッセンス。
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <img class="A-wrap_pic" src="images/model_img_08.jpg" alt="">
                <div class="A-wrap_detail02">
                    <p class="bold">【長尾悦美さんコラボ】ペルビアンピマコットンスリットネック</p>
                    <p>¥17,600(tax in)</p>
                    <p class="small">オレンジ/ネイビー/ダスティーグリーン</p>
                    <p>詳しくは高島屋オンラインをご覧ください</p>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    6. 【高島屋オンラインストア・STYLE &EDIT各店舗受注受付限定】<br>ペルビアンピマコットンワンピース別注カラー
                </p>
                <img class="A-wrap_pic" src="images/model_img_09.jpg" alt="">
                <p class="A-wrap_txt txt02">
                    きめ細やかな「ペルビアンピマコットン」をあえて単糸使いすることでハリがありながらも<br class="pc_contents">ナチュラルな風合いに仕上げたカフタンワンピース。シャツテイルのようなヘムラインで<br class="pc_contents">マキシ丈で1枚で着るのはもちろん、パンツとのレイヤードにも良いバランスです。
                </p>
                <div class="A-wrap_detail02">
                    <p class="bold">【長尾悦美さんコラボ】ペルビアンピマコットンワンピース</p>
                    <p>¥19,800(tax in)</p>
                    <p class="small">カラー：ダスティーグリーン/オレンジ</p>
                    <p>詳しくは高島屋オンラインをご覧ください</p>
                </div>
            </div>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20210322">
                            <picture>
                                <source media="(max-width: 769px)" srcset="images/archive01_sp.jpg">
                                <img src="images/archive01_pc.jpg" alt="">
                            </picture>
                            <p class="archiveTtl">
                                POP UP STORE「Stay home, stay fun」開催<br>西武渋谷店
                            </p>
                            <p class="archiveDate">
                                2021.3.22
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20210129">
                            <picture>
                                <source media="(max-width: 769px)" srcset="images/archive02_sp.png">
                                <img src="images/archive02_pc.png" alt="">
                            </picture>
                            <p class="archiveTtl">
                                伊勢丹新宿店<br>POP UP STORE開催決定！
                            </p>
                            <p class="archiveDate">
                                2021.1.29
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121102119">
                    <img src="images/link_01.jpg" alt="">
                    <p>
                        【長尾悦美さんコラボ】<br>ペーパー スクエアーネック<br>プルオーバー
                        <span>¥18,700(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121003123">
                    <img src="images/link_05.jpg" alt="">
                    <p>
                        【長尾悦美さんコラボ】<br>ペーパー 深Vネックベスト
                        <span>¥16,500(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2120804119">
                    <img src="images/link_06.jpg" alt="">
                    <p>
                        【長尾悦美さんコラボ】<br>ペーパー ニットベレー帽
                        <span>¥5,500(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2121201169">
                    <img src="images/link_10.jpg" alt="">
                    <p>
                        【長尾悦美さんコラボ】<br>ICE COTTON フロントカーブ<br>カーディガン
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

