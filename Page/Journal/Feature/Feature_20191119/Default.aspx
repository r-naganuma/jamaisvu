﻿<%--
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
                        タイトル名称入力エリア<br>
                        タイトル名称入力エリア
                    </h2>
                    <p class="journalDate">更新日表示 (2019.10.30)</p>
                </div>
                <ul class="mainArea_ttl--sns">
                    <li>
                        <p>SHARE</p>
                    </li>
                    <li>
                        <a href="http://twitter.com/share?url=https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20191119/&text=タイトル名称入力エリア" target="_blank">
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
                ここにはタイトルに紐づくリードテキストがはいる想定をしていますここにはタイトルに紐づくリードテキストがはいる想定をしていますここにはタイトルに紐づくリードテキストがはいる想定をしていますここにはタイトルに紐づくリードテキストがはいる想定をしていますここにはタイトルに紐づくリードテキストがはいる想定をしていますここにはタイトルに紐づくリードテキストがはいる想定をしています
            </p>
        </div>

        <div class="ctsArea">
            <!-- //////////////////
            /////// TEMPLATE A 
            ///////////////////////-->
            <div class="A-wrap">
                <img class="A-wrap_pic" src="images/pic_a_01.jpg" alt="">
                <p class="A-wrap_ttl">
                    見出しテキスト A
                </p>
                <p class="A-wrap_txt">
                    キャプションテキスト A キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　
                </p>
                <div class="A-wrap_detail">
                    <a href="" class="A-wrap_detail--box">
                        <div class="A-wrap_detail--box--pic">
                            <img src="images/item_a_01.jpg" alt="">
                        </div>
                        <div class="A-wrap_detail--box--txt">
                            <p class="detailTtl">アイテム正式名称</p>
                            <p class="detailPrice">¥18,700(tax in)</p>
                            <p class="detailTxt">
                                素材:○○○○○○○○    サイズ：○○/○○<br>
                                カラー：○○○○/○○○○/○○○○/○○○○/○○○○/○○○○/○○○○○○
                            </p>
                        </div>
                    </a>
                    <a href="" class="A-wrap_detail--btn">ITEM DETAIL</a>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE B
            ///////////////////////-->
            <div class="B-wrap">
                <!-- 画像右ver -->
                <div class="B-wrap_box B-wrap_box1">
                    <div class="B-wrap_box--txt">
                        <img class="B-wrap_ttl" src="images/ttl_b_01.png" alt="">
                        <p class="B-wrap_lead">
                            見出しテキスト A
                        </p>
                        <p class="B-wrap_txt">
                            キャプションテキスト A キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　
                        </p>
                        <div class="B-wrap_detail pc_contents">
                            <a href="" class="B-wrap_detail--box">
                                <div class="B-wrap_detail--box--pic">
                                    <img src="images/item_b_01.jpg" alt="">
                                </div>
                                <div class="B-wrap_detail--box--txt">
                                    <p class="detailTtl">アイテム正式名称</p>
                                    <p class="detailPrice">¥18,700(tax in)</p>
                                    <p class="detailTxt">
                                        素材:メリノオプティモ / サイズ：R/L<br>
                                        カラー：グリーン/サックス/ピンク/ブルー/カーキ/ブラウン
                                    </p>
                                </div>
                            </a>
                            <a href="" class="B-wrap_detail--btn">ITEM DETAIL</a>
                        </div>
                    </div>
                    <div class="B-wrap_box--pic">
                        <img src="images/pic_b_01.jpg" alt="">
                    </div>
                    <div class="B-wrap_detail sp_contents">
                        <a href="" class="B-wrap_detail--box">
                            <div class="B-wrap_detail--box--pic">
                                <img src="images/item_b_01.jpg" alt="">
                            </div>
                            <div class="B-wrap_detail--box--txt">
                                <p class="detailTtl">アイテム正式名称</p>
                                <p class="detailPrice">¥18,700(tax in)</p>
                                <p class="detailTxt">
                                    素材:メリノオプティモ / サイズ：R/L<br>
                                    カラー：グリーン/サックス/ピンク/ブルー/カーキ/ブラウン
                                </p>
                            </div>
                        </a>
                        <a href="" class="B-wrap_detail--btn">ITEM DETAIL</a>
                    </div>
                </div>
                <!-- -->
                <!-- 画像左ver -->
                <div class="B-wrap_box B-wrap_box2">
                    <div class="B-wrap_box--pic">
                        <img src="images/pic_b_02.jpg" alt="">
                    </div>
                    <div class="B-wrap_box--txt">
                        <img class="B-wrap_ttl" src="images/ttl_b_02.png" alt="">
                        <p class="B-wrap_lead">
                            <a href="">フィットプルオーバー</a>
                        </p>
                        <p class="B-wrap_txt">
                            素材:ハミルトンラムズウール<br>
                            サイズ：FREE<br>
                            カラー：ホワイト/イエロー/ピンク/ブラウン/<br>
                            ブルー/サックス/オレンジ/グリーン<br>
                            ¥20,900(tax in)
                        </p>
                    </div>
                </div>
                <!-- -->
                <!-- 画像左、スマホflex無しver -->
                <div class="B-wrap_box B-wrap_box2 B-wrap_sp_noFlex">
                    <img class="B-wrap_ttl sp_contents" src="images/ttl_b_02.png" alt="">
                    <p class="B-wrap_lead sp_contents">
                        <a href="">フィットプルオーバー</a>
                    </p>
                    <div class="B-wrap_box--pic">
                        <img src="images/pic_b_02.jpg" alt="">
                    </div>
                    <div class="B-wrap_box--txt">
                        <img class="B-wrap_ttl pc_contents" src="images/ttl_b_02.png" alt="">
                        <p class="B-wrap_lead pc_contents">
                            <a href="">フィットプルオーバー</a>
                        </p>
                        <p class="B-wrap_txt">
                            素材:ハミルトンラムズウール<br>
                            サイズ：FREE<br>
                            カラー：ホワイト/イエロー/ピンク/ブラウン/<br>
                            ブルー/サックス/オレンジ/グリーン<br>
                            ¥20,900(tax in)
                        </p>
                    </div>
                </div>
                <!-- -->
            </div>

            <!-- //////////////////
            /////// TEMPLATE C
            ///////////////////////-->
            <div class="C-wrap">
                <div class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_01.jpg" alt="">
                    <p class="C-wrap_ttl">
                        見出しテキスト A
                    </p>
                    <p class="C-wrap_txt">
                        キャプションテキスト A キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　
                    </p>
                    <div class="C-wrap_detail">
                        <a href="" class="C-wrap_detail--box">
                            <div class="C-wrap_detail--box--pic">
                                <img src="images/item_c_01.jpg" alt="">
                            </div>
                            <div class="C-wrap_detail--box--txt">
                                <p class="detailTtl">アイテム正式名称</p>
                                <p class="detailPrice">¥18,700(tax in)</p>
                                <p class="detailTxt">
                                    素材:○○○○○○○○    サイズ：○○/○○<br>
                                    カラー：○○○○/○○○○/○○○○/○○○○/○○○○/○○○○/○○○○○○
                                </p>
                            </div>
                        </a>
                        <a href="" class="C-wrap_detail--btn">ITEM DETAIL</a>
                    </div>
                </div>
                <div class="C-wrap_list">
                    <img class="C-wrap_pic" src="images/pic_c_02.jpg" alt="">
                    <p class="C-wrap_ttl">
                        <a href="">見出しテキスト A</a>
                    </p>
                    <p class="C-wrap_txt">
                        キャプションテキスト A キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　キャプションテキスト A　
                    </p>
                    <div class="C-wrap_detail">
                        <a href="" class="C-wrap_detail--box">
                            <div class="C-wrap_detail--box--pic">
                                <img src="images/item_c_02.jpg" alt="">
                            </div>
                            <div class="C-wrap_detail--box--txt">
                                <p class="detailTtl">アイテム正式名称</p>
                                <p class="detailPrice">¥18,700(tax in)</p>
                                <p class="detailTxt">
                                    素材:○○○○○○○○    サイズ：○○/○○<br>
                                    カラー：○○○○/○○○○/○○○○/○○○○/○○○○/○○○○/○○○○○○
                                </p>
                            </div>
                        </a>
                        <a href="" class="C-wrap_detail--btn">ITEM DETAIL</a>
                    </div>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE D
            ///////////////////////-->
            <div class="D-wrap">
                <img class="D-wrap_ttl" src="images/ttl_d_01.png" alt="">
                <img class="D-wrap_pic" src="images/pic_d_01.jpg" alt="">
                <div class="D-wrap_box">
                    <div class="D-wrap_box--pic">
                        <img src="images/pic_d_02.jpg" alt="">
                    </div>
                    <div class="D-wrap_box--txt">
                        <p>
                            <a href="">ワンピース ¥18,700(tax in)</a>, <a href="">タンクトップ ¥23,100(tax in)</a>, スカート (スタイリスト私物), ブーツ (スタイリスト私物)</a>
                        </p>
                    </div>
                </div>
            </div>

            <!-- //////////////////
            /////// TEMPLATE E
            ///////////////////////-->
            <div class="E-wrap">
                <img class="E-wrap_pic" src="images/pic_e_01.jpg" alt="">
                <p class="E-wrap_txt">
                    <a href="">ワンピース ¥18,700(tax in)</a>, <a href="">タンクトップ ¥23,100(tax in)</a>, スカート (スタイリスト私物), ブーツ (スタイリスト私物)</a>
                </p>
            </div>

            <!-- //////////////////
            /////// TEMPLATE F
            ///////////////////////-->
            <div class="F-wrap">
                <img class="F-wrap_ttl" src="images/ttl_f_01.png" alt="">
                <div class="F-wrap_box">
                    <div class="F-wrap_box--main">
                        <img src="images/pic_f_01.jpg" alt="">
                        <p class="F-wrap_box--txt">
                            <a href="">ワンピース ¥18,700(tax in)</a>, <a href="">タンクトップ ¥23,100(tax in)</a>, スカート (スタイリスト私物), ブーツ (スタイリスト私物)</a>
                        </p>
                    </div>
                    <div class="F-wrap_box--sub">
                        <img src="images/pic_f_02.jpg" alt="">
                    </div>
                </div>
            </div>

            <!-- //////////////////
            /////// BTN
            ///////////////////////-->
            <a href="" class="ctsArea_btn">◯◯のアイテムをもっとみる</a>

            <!-- //////////////////
            /////// Latest Post
            ///////////////////////-->
            <div class="latestArea">
                <p class="latestArea_ttl">Latest Post</p>
                <div class="latestArea_box">
                    <div class="latestArea_box--list">
                        <a href="">
                            <img src="images/archive01_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive01_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                色がもたらすニュー・ニュートラルのかたち。
                            </p>
                            <p class="archiveDate">
                                2019.10.16
                            </p>
                        </a>
                    </div>
                    <div class="latestArea_box--list">
                        <a href="">
                            <img src="images/archive02_pc.jpg" class="pc_contents" alt="">
                            <img src="images/archive02_sp.jpg" class="sp_contents" alt="">
                            <p class="archiveTtl">
                                色がもたらすニュー・ニュートラルのかたち。
                            </p>
                            <p class="archiveDate">
                                2019.10.16
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
                <a href="">
                    <img src="images/item01.jpg" alt="">
                    <p>
                        フリーサイズテーパード
                        <span>¥23,100(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="images/item01.jpg" alt="">
                    <p>
                        フリーサイズテーパード
                        <span>¥23,100(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="images/item01.jpg" alt="">
                    <p>
                        フリーサイズテーパード
                        <span>¥23,100(tax in)</span>
                    </p>
                </a>
            </li>
            <li>
                <a href="">
                    <img src="images/item01.jpg" alt="">
                    <p>
                        フリーサイズテーパード
                        <span>¥23,100(tax in)</span>
                    </p>
                </a>
            </li>
        </ul>
        <a href="" class="journalWrap_item--btn">すべてのアイテムをみる</a>
    </div>
</div>
<%-- △編集可能領域△ --%>


</div>
<script type="text/javascript">
    $(window).on('scroll', function (){

        var elem = $('.ctsArea_btn');
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

