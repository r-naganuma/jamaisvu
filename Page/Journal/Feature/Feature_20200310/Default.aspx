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
                    <p class="journalCat">COORDINATE</p>
                    <h2>
                        JAMAIS VU×editor_kaoの<br>
                        「彩りのある着こなし」vol.2 &lt;Beige&gt;
                    </h2>
                    <p class="journalDate">2020.03.10</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200310/&text=JAMAIS VU×editor_kaoの「彩りのある着こなし」vol.2 &lt;Beige&gt;" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200310/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                <span>
                    ジャメヴの美しい色使いに魅了されたeditor_kaoが、毎回テーマカラーごとに着こなしを提案する連載企画です。第2回は、ナチュラルな装いに欠かせないベージュをピックアップ！
                </span>
                フリーエディターのeditor_kaoが、ジャメヴの新作を使ったコーディネート＆解説をするコラム連載。<br class="pc_contents">第2回は、春の着こなしに欠かせないベージュを軸に、着こなしを考えてみました。
            </p>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    肌映りのいいトーンだから<br class="sp_contents">ベージュでも着映え力あり
                </p>
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552141&cat=500041">ペルビアンピマコットンワンピース　¥19,800(tax in)</a><br>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303141&cat=500041">SUVINオゾン5G2WAYベスト ¥16,500(tax in)</a><br>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306241&cat=500041">SUVINオゾンニットパンツ ¥17,600(tax in)</a>
                </p>
                <p class="A-wrap_txt">
                    ベーシックカラーのひとつであるベージュは、ここ数年トレンドのリラクシーな着こなしに欠かせない色。<br class="pc_contents">特にジャメヴのベージュは、ややピンク味を帯びた甘やかなトーンが魅力です。カフェラテやマカデミアナッツを彷彿させる色調はなじみがよく、さまざまな色と相性よし。<br class="pc_contents">さらに肌映りのよさも期待できるので、大人の女性が無理なく着こなせます。
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    Style01:<br class="sp_contents">同系の濃淡でつくる都会の<br class="sp_contents">プリミティブスタイル
                </p>
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010303141&cat=500041">SUVINオゾン5G2WAYベスト ¥16,500(tax in)</a><br>
                    OTHER editor_kao私物
                </p>
                <p class="A-wrap_txt">
                    リブ仕立てのノースリーブニットは、どちらを前後にしても着られる2WAY仕様。<br class="pc_contents">ちなみに反対側はシンプルなクルーネックデザインになっています。一枚でも着られますが、白のカットソーをインすると、メリハリがついてまた違った雰囲気に。ちなみにインをTシャツにすれば、ベストっぽくも着られます。<br>
                    <br>
                    コーディネートは、同系の濃淡でつくりたくて、ボトムをオレンジのスエード調スカートにしました。ロング丈で、これだけ分量がありながらもそれが目立ちすぎないのは、ベージュニットのニュートラルな存在によるもの。ベーシックかつ懐の深いのがベージュの利点ですが、さらにこのニットはリブ編みなので、着こなしに奥行きも生まれ、シンプルな組み合わせでも成立。スカートと同じオレンジが使われているスカーフをバッグに結び、アクセントにしました。
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
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    Style02:<br class="sp_contents">カジュアルなニットパンツは<br class="sp_contents">きれいめに着こなして
                </p>
                <img class="A-wrap_pic" src="images/pic_a_03.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306241&cat=500041">SUVINオゾンニットパンツ ¥17,600(tax in)</a><br>
                    OTHER editor_kao私物
                </p>
                <p class="A-wrap_txt">
                    トレンドのニットパンツは、憧れるけれど難度が高い。そう思われる人も多いと思います。やはりここはベーシックカラーを選ぶのが得策ですが、特にベージュなら、チノパンの延長のように取り入れられそう。ジャメヴのニットパンツは、地厚で体のラインも拾いにくいので初心者にもおすすめです。<br>
                    <br>
                    とはいえ、かなりカジュアルなので、合わせるアイテムはきれいめが鉄則。クリーンな印象もキープしたいから、ブルーとの色合わせにしました。トップスはパリッとしたコットンのストライプシャツを、そして小物もチェーンバッグとクラス感を感じさせるものにすれば、ニットパンツが“あえての外し”であることがアピールできます。このルールでいけば足元はヒールもOKですが、ニットパンツをはいているのに無理しすぎるのも気分でないので、気楽なフラットサンダルを選びました。テイストミックスのコーディネートは、この緩急が大事です。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306241&cat=500041" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010306241_sub07_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">SUVINオゾンニットパンツ</p>
                            <p class="detailPrice">¥17,600(tax in)</p>
                            <p class="detailTxt">
                                素材:スビンコットン    サイズ：FREE<br>
                                カラー：ベージュ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306241&cat=500041" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <p class="A-wrap_ttl">
                    Style03:<br class="sp_contents">スニーカー投入で<br class="sp_contents">ワンピースにひねりを効かせる
                </p>
                <img class="A-wrap_pic" src="images/pic_a_04.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552141&cat=500041">ペルビアンピマコットンワンピース ¥19,800(tax in)</a><br>
                    OTHER editor_kao私物
                </p>
                <p class="A-wrap_txt">
                    最後は、マキシ丈のシャツワンピース。バルーンスリーブが特徴的な、一枚着るだけで様になるデザインですが、そんなときこそ小物使いに気をつかいたいものです。サンダルで王道に着こなすのも素敵だけど、ひとひねりしてクラシックなスニーカーを合わせるのも粋なスタイル。白いスニーカーとリンクさせて、カーディガンも白にしました。<br>
                    <br>
                    ちなみにバッグは花柄のクラッチですが、これはワンピースのバルーンスリーブがもつ女らしさを引っぱったものです。スニーカーに合わせてカジュアルなバッグをもつことも可能ですが、あまり面白みがありません。やはり着こなしの主役であるワンピースにフェミニンな要素があるなら、それは生かす方向で。だからピアスも、大ぶりなものをきちんとします。カジュアルダウンは過剰になると、ただただだらしなく見えるので注意が必要。よく見ると、このコーディネートって、足元以外はフェミニンなんです。
                </p>
                <div class="A-wrap_detail">
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552141&cat=500041" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010552141_sub05_L.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">ペルビアンピマコットンワンピース</p>
                            <p class="detailPrice">¥19,800(tax in)</p>
                            <p class="detailTxt">
                                素材:ペルビアンコットン    サイズ：FREE<br>
                                カラー：ベージュ
                            </p>
                        </div>
                    </a>
                    <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552141&cat=500041" class="A-wrap_detail--btn">ITEM DETAIL</a>
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
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200306">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                ベーシックにとどまらない、名品シャツLIST
                            </p>
                            <p class="archiveDate">
                                2020.03.06
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200303">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                飽きがこない、シンプルニットが愛され続ける秘密
                            </p>
                            <p class="archiveDate">
                                2020.03.03
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
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552141&cat=500041">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010552141_sub05_L.jpg" alt="">
                    <p>
                        ペルビアンピマコットンワンピース
                        <span>¥19,800(tax in)</span>
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
            <li>
                <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010306241&cat=500041">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/2010306241_sub07_L.jpg" alt="">
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

