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
                        普段着を格上げ。<br>
                        楽に着映える優秀ワンピース
                    </h2>
                    <p class="journalDate">2019.12.13</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20191119/&text=普段着を格上げ。楽に着映える優秀ワンピース" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20191119/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
            <p class="mainArea_lead">
                1枚でも上品で洗練された雰囲気が叶う、レイヤードもできてマンネリ化もしない。<br class="pc_contents">さっと着れるのにおしゃれ度が上がる万能ワンピースは今シーズン重宝すること間違いなしです。
            </p>
        </div>

        <div class="ctsArea">

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <p class="sec_ttl">01. タンクドレス</p>
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_01.jpg" alt="">
                        <p class="F-wrap_box--txt">
                            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930304165&cat=500065">タンクドレス ¥25,300(tax in)</a>
                        </p>
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_02.jpg" alt="">
                    </div>
                </div>
            </div>

            <p class="sec_details">Details</p>
            <!-- //////////////////
            /////// TEMPLATE C
            ///////////////////////-->
            <div class="C-wrap">
                <div class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_01.jpg" alt="">
                    <p class="C-wrap_txt">
                        タンクトップ型でリラックス感もありながら、大きめのアームホールが女性らしく華奢な雰囲気を演出してくれます。レイヤードもしやすく、羽織を着てもかさばらない、ストレスなく着こなせる一枚です。
                    </p>
                    <div class="C-wrap_detail">
                        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930304165&cat=500065" class="C-wrap_detail--box">
                            <div class="C-wrap_detail--box--pic">
                                <img src="images/item_c_01.jpg" alt="">
                            </div>
                            <div class="C-wrap_detail--box--txt">
                                <p class="detailTtl">タンクドレス</p>
                                <p class="detailPrice">¥25,300(tax in)</p>
                                <p class="detailTxt">
                                    素材:ハミルトンラムズウール / サイズ：FREE<br>
                                    カラー：ホワイト/ピンク/ブルー/グリーン/イエロー/ブラウン
                                </p>
                            </div>
                        </a>
                        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930304165&cat=500065" class="C-wrap_detail--btn">ITEM DETAIL</a>
                    </div>
                </div>
                <div class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_02.jpg" alt="">
                    <p class="C-wrap_txt">
                        柔らかさが魅力の希少なウール【ハミルトンラムズウール】使用で、タイトでも窮屈感を感じさせず普段使いしやすいデザインに。腰回りの身体のラインを拾わない美シルエットもこだわりの一つです。
                    </p>
                    <div class="C-wrap_detail">
                        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930427165&cat=500065" class="C-wrap_detail--box">
                            <div class="C-wrap_detail--box--pic">
                                <img src="images/item_c_02.jpg" alt="">
                            </div>
                            <div class="C-wrap_detail--box--txt">
                                <p class="detailTtl">MERINOタートルPO</p>
                                <p class="detailPrice">¥13,200(tax in)</p>
                                <p class="detailTxt">
                                    素材:メリノオプティモ / サイズ：FREE<br>
                                    カラー：ピンク/ブルー/チャコールグレー<br><br>
                                </p>
                            </div>
                        </a>
                        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930427165&cat=500065" class="C-wrap_detail--btn">ITEM DETAIL</a>
                    </div>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=1930304&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <p class="sec_ttl">02. ボートネックワンピース</p>
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_03.jpg" alt="">
                        <p class="F-wrap_box--txt">
                            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930335131&cat=500031">ボートネックワンピース ¥25,300(tax in)</a>
                        </p>
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_04.jpg" alt="">
                    </div>
                </div>
            </div>

            <p class="sec_details">Details</p>
            <!-- //////////////////
            /////// TEMPLATE C
            ///////////////////////-->
            <div class="C-wrap">
                <div class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_03.jpg" alt="">
                    <p class="C-wrap_txt">
                        ドロップショルダーでこなれた雰囲気を演出。デコルテを綺麗に見せてくれるボートネックで、女性らしくスッキリした着こなしになります。襟と袖に施されたさりげない編み地の変化がアクセントに。
                    </p>
                </div>
                <div class="C-wrap_list list2">
                    <img class="C-wrap_pic" src="images/pic_c_04.jpg" alt="">
                    <p class="C-wrap_txt">
                        さらりとした肌触りと、アウターの中にも着やすいほど良いボリューム感が着やすさの秘訣。ゆとりのあるシルエットですが、膝丈なので重い印象にならず、ワンピースとしてもパンツとレイヤードしても活躍する万能アイテムです。
                    </p>
                </div>
                <div class="C-wrap_detail">
                    <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930335131&cat=500031" class="C-wrap_detail--box">
                        <div class="C-wrap_detail--box--pic">
                            <img src="images/item_c_03.jpg" alt="">
                        </div>
                        <div class="C-wrap_detail--box--txt C-wrap_detail--box--txt2">
                            <p class="detailTtl">ボートネックワンピース</p>
                            <p class="detailPrice">¥25,300(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ホワイト/ピンク/ブルー/グリーン/ブラウン
                            </p>
                        </div>
                    </a>
                    <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930335131&cat=500031" class="C-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=1930335&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <p class="sec_ttl">03. ポロワンピース</p>
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_05.jpg" alt="">
                        <p class="F-wrap_box--txt">
                            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930333165&cat=500065">ポロワンピース ¥25,300(tax in)</a>
                        </p>
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_06.jpg" alt="">
                    </div>
                </div>
            </div>

            <p class="sec_details">Details</p>
            <!-- //////////////////
            /////// TEMPLATE C
            ///////////////////////-->
            <div class="C-wrap">
                <div class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_05.jpg" alt="">
                    <p class="C-wrap_txt">
                        カジュアルになりがちなポロもニットの柔らかい質感で上品で女性らしい雰囲気に。スリーブはタイトめの五分袖で、気になる部分をカバーしてくれるデザインになっています。
                    </p>
                </div>
                <div class="C-wrap_list list2">
                    <img class="C-wrap_pic" src="images/pic_c_06.jpg" alt="">
                    <p class="C-wrap_txt">
                        タイトでスッキリとしたシルエットですが、身体のラインを拾わず、安心して着ることができる一枚。滑らかな肌触りで着心地も抜群。パンツとレイヤードもでき、マニッシュにも上品にも着こなせるアイテムです。
                    </p>
                </div>
                <div class="C-wrap_detail">
                    <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930333165&cat=500065" class="C-wrap_detail--box">
                        <div class="C-wrap_detail--box--pic">
                            <img src="images/item_c_04.jpg" alt="">
                        </div>
                        <div class="C-wrap_detail--box--txt C-wrap_detail--box--txt2">
                            <p class="detailTtl">ポロワンピース</p>
                            <p class="detailPrice">¥25,300(tax in)</p>
                            <p class="detailTxt">
                                素材:ハミルトンラムズウール    サイズ：FREE<br>
                                カラー：ホワイト/ピンク/ブルー/グリーン/ブラウン
                            </p>
                        </div>
                    </a>
                    <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930333165&cat=500065" class="C-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=1930333&udns=2&fpfl=0&pno=1" class="ctsArea_btn">MORE</a>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Column/Column_20191210">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                「上質を纏う。素材の良さを追求した物づくり」 Vol.1
                            </p>
                            <p class="archiveDate">
                                2019.12.10
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191206">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                初回購入限定 ALL 50%OFF
                            </p>
                            <p class="archiveDate">
                                2019.12.06
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
                <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930304165&cat=500065">
                    <img src="images/item_c_01.jpg" alt="">
                    <p>
                        タンクドレス
                        <span>¥25,300(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930427165&cat=500065">
                    <img src="images/item_c_02.jpg" alt="">
                    <p>
                        MERINOタートルPO
                        <span>¥13,200(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930335131&cat=500031">
                    <img src="images/item_c_03.jpg" alt="">
                    <p>
                        ボートネックワンピース
                        <span>¥25,300(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930333165&cat=500065">
                    <img src="images/item_c_04.jpg" alt="">
                    <p>
                        ポロワンピース
                        <span>¥25,300(tax in)</span>
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

