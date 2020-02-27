<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="CAMPAIGN｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="CAMPAIGN" MetaKeywords="TOPICS,トピックス,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
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
            <img src="images/mv_pc.jpg" alt="">
            <div class="mainArea_ttl">
                <div class="mainArea_ttl--txt">
                    <p class="journalCat">COORDINATE</p>
                    <h2>
                        LINE<br>プレゼントキャンペーン
                    </h2>
                    <p class="journalDate">2020.02.28</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Campaign/Campaign_20200228/&text=LINEプレゼントキャンペーン" target="_blank">
                            <img src="../../images/common/icn_tw.png" alt="">
                        </a>
                    </li>
                    <li>
                        <a href="https://www.facebook.com/sharer/sharer.php?u=https://jamaisvu.co.jp/Page/Journal/Campaign/Campaign_20200228/" target="_blank">
                            <img src="../../images/common/icn_fb.png" alt="">
                        </a>
                    </li>
                </ul>
            </div>
        </div>

        <div class="ctsArea">
            <div class="leadArea">
                <p class="leadArea_ttl">
                    LINE お友達限定<br>
                    プレゼントキャンペーン
                </p>
                <p class="leadArea_txt">
                    2020.2.28 Fri 12:00 - 2020.3.3 Tue 23:59<br>
                    大人気のオゾンニットパーカー<br class="sp_contents">「カーキ」or「サックス」を<br>
                    抽選で各1名様にプレゼント。
                </p>
            </div>

            <div class="applyArea">
                <p class="applyArea_ttl">
                    JAMAIS VU公式LINEのトークルームに、<br>
                    「オゾンパーカー」と送信するだけで<br class="sp_contents">応募完了。
                </p>
                <a href="https://lin.ee/eFUXOly" class="applyArea_btn" target="_blank">応募する</a>
                <a href="https://line.me/R/ti/p/%40461wwkgx" class="applyArea_qr" target="_blank">QRコードはこちら</a>
            </div>

            <div class="itemArea">
                <p class="itemArea_ttl">
                    プレゼントアイテム
                </p>
                <p class="itemArea_lead">
                    オゾンニットパーカー（カーキ) 1名様<br>
                    オゾンニットパーカー（サックス) 1名様
                </p>
                <div class="itemArea_box">
                    <div class="itemArea_box--list">
                        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304159&cat=500059">
                            <img src="images/img_01.jpg" alt="">
                        </a>
                        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304159&cat=500059" class="detailBtn">ITEM DETAIL</a>
                    </div>
                    <div class="itemArea_box--list">
                        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304141&cat=500041">
                            <img src="images/img_02.jpg" alt="">
                        </a>
                        <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010304141&cat=500041" class="detailBtn">ITEM DETAIL</a>
                    </div>
                </div>
                <p>
                    カシミヤのように柔らかいスビンコットンに<br class="sp_contents">オゾン加工を施し、<br class="pc_contents">ほど良いユーズド感を出した<br class="sp_contents">パーカー。<br>
                    上質とカジュアルのバランスが絶妙で<br class="sp_contents">大人が楽しめるパーカーに仕上がっています。<br>
                    リブなどの付属を全て削ぎ落とし<br class="sp_contents">ミニマルなデザインで、<br class="pc_contents">流行や合わせるアイテムにも<br class="sp_contents">囚われず長く愛用したい一枚です。
                </p>
            </div>

            <div class="campaignArea">
                <p class="campaignArea_ttl">
                    キャンペーン参加方法
                </p>
                <p>
                    ①JAMAIS VU公式LINEを友だちをお友達登録<br>
                    ②トークルームで「オゾンパーカー」と送信
                </p>
                <a href="https://lin.ee/eFUXOly" class="campaignArea_btn" target="_blank">
                    <img src="images/line_btn.png" alt="">
                </a>
                <a href="https://line.me/R/ti/p/%40461wwkgx" class="campaignArea_qr" target="_blank">
                    <img src="images/line_qr.jpg" alt="">
                </a>
                <div class="campaignArea_note">
                    <p>・既にお友達登録されている方もメッセージ送信でご参加いただけます。</p>
                    <p>・ご応募いただいた方の中から、厳正なる抽選の上、当選者を決定いたします。</p>
                    <p>・どちらのカラーが届くかは、お楽しみとなります。</p>
                    <p>・当選者のみ、LINEトーク内にて個別にご連絡いたします。</p>
                    <p>・賞品の発送は2020年3月下旬を予定しています。<br>（諸事情により多少前後する場合がございます。）</p>
                </div>
            </div>

            <div class="contactArea">
                <p class="contactArea_ttl">
                    キャンペーンのお問い合わせ
                </p>
                <p>
                    JAMAIS VU 公式ブランドサイト　運営事務局
                </p>
                <a href="https://jamaisvu.co.jp/Form/Inquiry/InquiryInput.aspx">
                    お問い合わせフォーム
                </a>
            </div>
        </div>
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

