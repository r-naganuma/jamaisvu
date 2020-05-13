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
                    <p class="journalCat">COLUMN</p>
                    <h2>
                        クリス-ウェブ 佳子 連載コラムVol.06<br>
                        アイディアは3つに絞る
                    </h2>
                    <p class="journalDate">2020.05.14</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Column/Column_20200514/&text=クリス-ウェブ 佳子 連載コラムVol.06 アイディアは3つに絞る" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Column/Column_20200514/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="ctsArea">
            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="A-wrap_txt">
                    唐突ですが、4月16日、ジョニー・デップがInstagramのアカウントを開設しました。<br>
                    酒場のような場所でたくさんのキャンドルに照らされた彼は、「やぁ、みんな。これからみんなのために撮影するよ。<br class="pc_contents">ちょっと待ってて」とキャプション付きの写真を1枚投稿。続けて8分間の動画を投稿しました。<br>
                    <br>
                    動画の中でジョニー・デップは「今までは必要性を感じなかったけれども、対話を始める時が来たんだ」と話し始め、「ロックダウンの最中であっても日々クリエイティブに生きること。今日は自分のために、明日は誰かのためにと、<br class="pc_contents">些細なことでも何か役立つことをしよう」と語りかけています。<br>
                    そんな彼のインスタグラムアカウントには開設1週間ですでに500枚以上の写真が投稿されており、<br>
                    100万人のフォロワーは少しばかりの幸せをオンラインで毎日受け取っているようです。<br>
                    <br>
                    ジョニー・デップとクリエイティビティ。<br>
                    <br>
                    これまた唐突ですが、JAMAIS VUのディレクターがジョニー・デップに少し似ています。野性的な風貌ながらも、<br class="pc_contents">知的さと静かな存在感が漂い、矢継ぎ早に飛び出すデザインアイディアで周囲を感動させたり、驚かせたりするものの、本人はいたって低温状態。ディレクターという仕事が天職であることは周知の事実なのに、常に謙遜、低姿勢。<br>
                    <br>
                    他人のアイディアを否定することなく、即座に「良いですね」と打ち返す心のフットワークの軽さ、会話のキャッチボールにも長けているんです。
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <img class="A-wrap_pic" src="images/pic_a_02.jpg" alt="">
                <p class="A-wrap_txt">
                    ある日、JAMAIS VUとの夏に向けてのデザインコラボに関するミーティングが行われました。<br class="pc_contents">当初は次期コレクションの方向性を伺い、次のミーティングでアイディア出しをするという流れでした。<br class="pc_contents">ところが、開始早々。<br>
                    <br>
                    「佳子さん、何作りたいですか？」<br>
                    <br>
                    想定外の唐突な質問。そこに居合わせたメンバーの視線が静寂の中で突き刺さります。普段から思いついたデザインアイディアをスマホのファイルにまとめている私は、そのことを思い出し、ファイルを見返しながら急遽３つに絞りました。<br>
                    <br>
                    人前で話すとき、私はいつも【マジカルナンバー4±1】の法則に従って３つのポイントに絞るよう心がけています。<br>
                    【マジカルナンバー4±1】とは、2001年にミズーリ大学の心理学教授が提唱したもので、人間の短期記憶の限界は4±1個程度であるという研究結果なのですが、プレゼンの達人と呼ばれる著名人たちは必ずと言っていいほどこの法則を取り入れています。<br>
                    <br>
                    例えば、マイクロソフト社元最高経営責任者のスティーブ・バルマー氏や元米国副大統領のアル・ゴア氏、スティーブ・ジョブズ氏なんかもそう。TED Talksのプレゼンターたちの多くも、この【マジカルナンバー4±1】の法則をよく取り入れています。
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <img class="A-wrap_pic pc_contents" src="images/pic_a_03.jpg" alt="">
                <img class="A-wrap_pic sp_contents" src="images/pic_a_03_sp.jpg" alt="">
                <p class="A-wrap_txt txt2">
                    さてさて、３つに絞らなければ！ペラペラと喋っても取っ散らかるだけ。日々クリエイティブに生きる。<br>
                    本当にジョニー、その通り！1つ目の案、2つ目の案、そして3つ目の案。それら全てにジョニー…、違う違う。<br class="pc_contents">ディレクターの彼は「良いね！！」と切り返してくれて、結果ミーティングはサクサクと進みました。よって、<br class="pc_contents">JAMAIS VUとの初のデザインコラボでお披露目するのは普段から私が欲しいと思っていた服になります。<br>
                    <br>
                    ❶背中がVに深く開いた七分袖のリブニット<br>
                    ❷背中の空きの曲線が美しいオールインワン<br>
                    ❸背中がラウンドに深く開いたインナーブラ付きキャミソール<br>
                    <br>
                    ポイントは全て背中の開き具合。普遍性と着心地の良さを追求したJAMAIS VUが得意とするストレスゼロなフィット感。そしてJAMAIS VUのディレクターが選りすぐった素材との相性も抜群です。<br>
                    <br>
                    秀逸な家着として、そしてこのクレイジーな毎日が収束した暁には最高なお出かけ着として、<br>皆さんの手元で是非可愛がってあげてください！
                </p>

                <p class="A-wrap_ttl ttl2">
                    Recommend Items
                </p>
                <div class="A-wrap_detail">
                    <div class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_01.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">バックレースアップリブニット</p>
                            <p class="detailPrice">¥15,400(tax in)</p>
                            <p class="detailTxt">
                                素材：アイスコットン    サイズ：FREE<br>
                                カラー：イエロー
                            </p>
                        </div>
                    </div>
                </div>
                <div class="A-wrap_detail">
                    <div class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_02.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">バックレースアップリブニット</p>
                            <p class="detailPrice">¥15,400(tax in)</p>
                            <p class="detailTxt">
                                素材：アイスコットン    サイズ：FREE<br>
                                カラー：ホワイト
                            </p>
                        </div>
                    </div>
                </div>
                <div class="A-wrap_detail">
                    <div class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_03.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">バックバックルコンビネゾン</p>
                            <p class="detailPrice">¥28,600(tax in)</p>
                            <p class="detailTxt">
                                素材：メリノオプティモ    サイズ：FREE<br>
                                カラー：ブラック
                            </p>
                        </div>
                    </div>
                </div>
                <div class="A-wrap_detail">
                    <div class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_04.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">バックバックルコンビネゾン</p>
                            <p class="detailPrice">¥28,600(tax in)</p>
                            <p class="detailTxt">
                                素材：メリノオプティモ   サイズ：FREE<br>
                                カラー：ブラウン
                            </p>
                        </div>
                    </div>
                </div>
            </div>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200512">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                クリス-ウェブ 佳子 コラボアイテム発売決定！
                            </p>
                            <p class="archiveDate">
                                2020.05.12
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200424">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                JAMAIS VU×editor_kaoの「彩りのある着こなし」vol.3&lt;Green&gt;
                            </p>
                            <p class="archiveDate">
                                2020.04.24
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
                <div>
                    <img src="images/item_01.jpg" alt="">
                    <p>
                        バックレースアップリブニット
                        <span>¥15,400(tax in)</span>
                    </p>
                </div>
            </li>
            <li>
                <div>
                    <img src="images/item_02.jpg" alt="">
                    <p>
                        バックレースアップリブニット
                        <span>¥15,400(tax in)</span>
                    </p>
                </div>
            </li>
            <li>
                <div>
                    <img src="images/item_03.jpg" alt="">
                    <p>
                        バックバックルコンビネゾン
                        <span>¥28,600(tax in)</span>
                    </p>
                </div>
            </li>
            <li>
                <div>
                    <img src="images/item_04.jpg" alt="">
                    <p>
                        バックバックルコンビネゾン
                        <span>¥28,600(tax in)</span>
                    </p>
                </div>
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

