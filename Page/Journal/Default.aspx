<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="Journal一覧｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="Journal" MetaKeywords="Journal,ジャーナル,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<link href='css/archive.css?123' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://use.typekit.net/rzu4tgs.css">
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="journalWrap">
	<h2>JOURNAL</h2>
	<div class="journalWrap_box">
    	<ul>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200313">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200313journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        夏先まで重宝する、頼れるリブニット
                    </p>
                    <p class="journalDate">2020.03.13</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200310">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200310journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        JAMAIS VU×editor_kaoの「彩りのある着こなし」vol.2 &lt;Beige&gt;
                    </p>
                    <p class="journalDate">2020.03.10</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200306">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200306journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        ベーシックにとどまらない、名品シャツLIST
                    </p>
                    <p class="journalDate">2020.03.06</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200303">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200303journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        飽きがこない、シンプルニットが愛され続ける秘密
                    </p>
                    <p class="journalDate">2020.03.03</p>
                </a>
            </div>
            <!-- <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Campaign/Campaign_20200228">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/campaign_200228journal.jpg">
                    <p class="journalCat">COORDINATE</p>
                    <p class="journalTtl">
                        LINE プレゼントキャンペーン
                    </p>
                    <p class="journalDate">2020.02.28</p>
                </a>
            </div> -->
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200221">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200221journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        春を先取りする、着映えカーディガン
                    </p>
                    <p class="journalDate">2020.02.21</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200218">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200218journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        JAMAIS VU×editor_kaoの「彩りのある着こなし」vol.1 &lt;Blue&gt;
                    </p>
                    <p class="journalDate">2020.02.18</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200212">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200212journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        2020 Spring Summer Collection Vol.1
                    </p>
                    <p class="journalDate">2020.02.12</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200210">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200210journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        「SUVINオゾンニットパーカー」の着こなし方を身長別で紹介
                    </p>
                    <p class="journalDate">2020.02.10</p>
                </a>
            </div>
            <!-- <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&_sale=%E3%82%BB%E3%83%BC%E3%83%AB&pno=1">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200203journal.jpg">
                    <p class="journalCat">NEWS</p>
                    <p class="journalTtl">
                        対象アイテム拡大！全品60％OFF
                    </p>
                    <p class="journalDate">2020.02.05</p>
                </a>
            </div> -->
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Newarrival/Newarrival_20200204">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/newarrivals_200204journal.jpg">
                    <p class="journalCat">NEW ARRIVAL</p>
                    <p class="journalTtl">
                        長く使い続けたい、サステナブルな名品
                    </p>
                    <p class="journalDate">2020.02.04</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Column/Column_20200128">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/column_200128journal.jpg">
                    <p class="journalCat">COLUMN</p>
                    <p class="journalTtl">
                        古着を愛し、新し着を温める
                    </p>
                    <p class="journalDate">2020.01.28</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Newarrival/Newarrival_20200121">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/newarrivals_200121journal.jpg">
                    <p class="journalCat">NEW ARRIVAL</p>
                    <p class="journalTtl">
                        冬コーデを一新。春を始める新作トップス
                    </p>
                    <p class="journalDate">2020.01.21</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200117">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200117journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        SALE ITEM RANKING
                    </p>
                    <p class="journalDate">2020.01.17</p>
                </a>
            </div>
            <!-- <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&_sale=%E3%82%BB%E3%83%BC%E3%83%AB&pno=1">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200114journal.jpg">
                    <p class="journalCat">NEWS</p>
                    <p class="journalTtl">
                        対象アイテム拡大！全品50％OFF
                    </p>
                    <p class="journalDate">2020.01.14</p>
                </a>
            </div> -->
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191227">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191227journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        冬を盛り上げる、最強白ニットの法則
                    </p>
                    <p class="journalDate">2019.12.27</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Column/Column_20191224">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/column_191224journal.jpg">
                    <p class="journalCat">COLUMN</p>
                    <p class="journalTtl">
                        「上質を纏う。素材の良さを追求した物づくり」 Vol.2
                    </p>
                    <p class="journalDate">2019.12.24</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191220">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191220journal.jpg">
                    <p class="journalCat">RECOMMEND</p>
                    <p class="journalTtl">
                        着心地を追求したJAMAIS VUの上質ハイネック
                    </p>
                    <p class="journalDate">2019.12.20</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Column/Column_20191217">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/column_191217journal.jpg">
                    <p class="journalCat">COLUMN</p>
                    <p class="journalTtl">
                        本当の意味でのラグジュアリー
                    </p>
                    <p class="journalDate">2019.12.17</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191213">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191213journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        普段着を格上げ。楽に着映える優秀ワンピース
                    </p>
                    <p class="journalDate">2019.12.13</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="<%= Constants.PATH_ROOT %>Page/Journal/Column/Column_20191210">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/column_191210journal.jpg">
                    <p class="journalCat">COLUMN</p>
                    <p class="journalTtl">
                        「上質を纏う。素材の良さを追求した物づくり」 Vol.1
                    </p>
                    <p class="journalDate">2019.12.10</p>
                </a>
            </div>
            <!-- <div class="journalWrap_box--list">
				<a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191206">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191206journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                    	初回購入限定 ALL 50%OFF
                    </p>
                    <p class="journalDate">2019.12.06</p>
				</a>
            </div> -->
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191126/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191126journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        定番チノパンと合わせる、上質ニット
                    </p>
                    <p class="journalDate">2019.11.26</p>
                </a>
            </div>
            <!-- <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191122/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191122journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        Knit Fair 4,000円OFF キャンペーン
                    </p>
                    <p class="journalDate">2019.11.22</p>
                </a>
            </div> -->
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191119/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191119journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        シーンを選ばず使えるJAMAIS VUのこだわりコート
                    </p>
                    <p class="journalDate">2019.11.19</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191112/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191112journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        BROWN CORDINATE
                    </p>
                    <p class="journalDate">2019.11.12</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/column/vol2/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/column_191108journal.jpg">
                    <p class="journalCat">COLUMN</p>
                    <p class="journalTtl">
                        クリス-ウェブ 佳子 連載コラムVol.02
                    </p>
                    <p class="journalDate">2019.11.08</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191105/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191106journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        2019 A/W PANTS SELECTION
                    </p>
                    <p class="journalDate">2019.11.06</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191028/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191028journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        ELLE JAPON 掲載アイテム特集
                    </p>
                    <p class="journalDate">2019.10.28</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/newarrival/newarrivals_20191023/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/newarrivals_191023journal.jpg">
                    <p class="journalCat">NEW ARRIVALS</p>
                    <p class="journalTtl">
                        NEW ARRIVALS
                    </p>
                    <p class="journalDate">2019.10.23</p>
                </a>
            </div>
            <!-- <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/campaign/campaign_20191018/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/campaign_191018journal.jpg">
                    <p class="journalCat">CAMPAIGN</p>
                    <p class="journalTtl">
                        CAMPAIGN
                    </p>
                    <p class="journalDate">2019.10.21</p>
                </a>
            </div> -->
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/newarrival/newarrivals_20191016/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/newarrivals_191016journal.jpg">
                    <p class="journalCat">NEW ARRIVALS</p>
                    <p class="journalTtl">
                        NEW ARRIVALS
                    </p>
                    <p class="journalDate">2019.10.16</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191010/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191010journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        LIGHT OUTER
                    </p>
                    <p class="journalDate">2019.10.10</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/column/vol1/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/column_191007journal.jpg">
                    <p class="journalCat">COLUMN</p>
                    <p class="journalTtl">
                        クリス-ウェブ 佳子 連載コラムVol.01
                    </p>
                    <p class="journalDate">2019.10.07</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/newarrival/newarrivals_20190930/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/newarrivals_190930journal.jpg">
                    <p class="journalCat">NEW ARRIVALS</p>
                    <p class="journalTtl">
                        NEW ARRIVALS
                    </p>
                    <p class="journalDate">2019.09.30</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/column/editorscolumn_001/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/column_190918journal.jpg">
                    <p class="journalCat">COLUMN</p>
                    <p class="journalTtl">
                        EDITORS COLUMN
                    </p>
                    <p class="journalDate">2019.09.18</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/newarrival/newarrivals_20190909/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/newarrivals_190909journal.jpg">
                    <p class="journalCat">NEW ARRIVALS</p>
                    <p class="journalTtl">
                        NEW ARRIVALS
                    </p>
                    <p class="journalDate">2019.09.09</p>
                </a>
            </div>
        </ul>
	    <div id="pagination_journal" class="below clearFix pager top"></div>
	</div>
</div>


<script>
/* =========================================================*/
// jquery.pagination.js / ver.2.0

// Copyright (c) 2015 CoolWebWindow
// This code is released under the MIT License
// https://osdn.jp/projects/opensource/wiki/licenses%2FMIT_license

// Date: 2016-06-20
// Author: CoolWebWindow
// Mail: info@coolwebwindow.com
// Web: http://www.coolwebwindow.com

// Used jquery.js
// http://jquery.com/
/* =========================================================*/

$(function($){
    $.fn.pagination = function(config) {
    // オプション
    var o = $.extend({
            element      : 'div',
            prevText     : 'prev',
            nextText     : 'next',
            firstText    : 'first',
            lastText     : 'last',
            ellipsisText : '…',
            viewNum      : 6,
            pagerNum     : 3,
            ellipsis     : true,
            linkInvalid  : false,
            goTop        : true,
            firstLastNav : true,
            prevNextNav  : true
        }, config);

        // セレクタ
        var $this = $(this);
        var $element = $this.find(o.element);
        var $pager = $this.find('.pager');
        if(o.ellipsis){
            var $ellipsisFirst= $('<span class="ellipsis"/>').text(o.ellipsisText);
            var $ellipsisLast= $('<span class="ellipsis"/>').text(o.ellipsisText);
        }

        // 値取得
        var tatalItemNum =$element.length;
        var tatalpageNum = Math.ceil(tatalItemNum /o.viewNum);
        var ellipsisFlag = false;

        // 変数設定
        var currentIndex = 0;

        // 省略記号フラグ判定
        if(tatalpageNum > o.pagerNum) { ellipsisFlag = true;}

        // ページカウンター
        $this.find('.nownum').text('1');
        $this.find('.totalnum').text(tatalpageNum);

        // ページャーの生成
        if(tatalpageNum == 1){return false;}
        for (var i=0; i < tatalpageNum; i++) {
            $('<span/>').text(i + 1).appendTo($pager);
        };
        if(o.prevNextNav){
            $('<span class="prev"/>').text(o.prevText).prependTo($pager);
            $('<span class="next"/>').text(o.nextText).appendTo($pager);
        }
        if(o.firstLastNav){
            $('<span class="first"/>').text(o.firstText).prependTo($pager);
            $('<span class="last"/>').text(o.lastText).appendTo($pager);
        }
        var $pagerInner = $pager.find('span').not('.first, .last, .prev, .next');

        // コンテンツの初期表示
        $element.not('.pager, .pageNum').hide();
        for (var i=0; i < o.viewNum; i++) {
            $($element[i]).show();
        };

        // ページャーの初期表示
        $pagerInner.hide();
        for (var i=0; i < o.pagerNum; i++) {
            $($pagerInner[i]).show();
        };
        $($pagerInner[0]).addClass('current');
        if (o.linkInvalid) {
            $('.prev').addClass('invalid');
            $('.first').addClass('invalid');
        }
        if(o.ellipsis) {
            if(ellipsisFlag){
                if(tatalpageNum  - o.pagerNum > 1) {
                    $($pagerInner[tatalpageNum - 1]).before(function() {
                      return $ellipsisLast;
                    });
                }
                $($pagerInner[tatalpageNum - 1]).show();
            }
        }

        // 最初のボタンをクリック
        $this.find('.first').on('click', function(){
            var current = 0;
            if(currentIndex == 0){
                if (o.linkInvalid) {
                    return false;
                }
            }
            change(current);
        });

        // 最後のボタンをクリック
        $this.find('.last').on('click', function(){
            var current = tatalpageNum - 1;
            if(currentIndex == $pagerInner.length - 1){
                if (o.linkInvalid) {
                    return false;
                }
            }
            change(current);
        });

        // 前のボタンをクリック
        $this.find('.prev').on('click', function(){
            var current = currentIndex - 1;
            if(currentIndex == 0){
                if (o.linkInvalid) {
                    return false;
                } else {
                    current = currentIndex;
                }
            }
            change(current);
        });

        // 次のボタンをクリック
        $this.find('.next').on('click', function(){
            var current = currentIndex + 1;
            if(currentIndex == $pagerInner.length - 1){
                if (o.linkInvalid) {
                    return false;
                } else {
                    current = currentIndex;
                }
            }
            change(current);
        });

        // 番号をクリック
        $pagerInner.each(function (current) {
            $(this).on('click', function(){
                if($(this).hasClass('current')){
                    if (o.linkInvalid) {
                        return false;
                    }
                }
                change(current);
            });
        });

        // 切り替え実行
        var change = function (current) {
            // コンテンツの表示
            $element.not('.pager, .pageNum').hide();
            for(var i = (current * o.viewNum) ; i < ((current + 1) * o.viewNum) ; i++){
                $($element[i]).show();
            }
            // ページャーの表示
            $pagerInner.hide();
            if(o.ellipsis) {
                if(ellipsisFlag){
                    $ellipsisFirst.remove();
                    $ellipsisLast.remove();
                }
            }
            var num = current - 1;
            if(num < 0) {
                num = 0;
            }
            if(num > (tatalpageNum - o.pagerNum)){
                num = tatalpageNum - o.pagerNum;
            }
            for(var i = num ; i < (num + o.pagerNum) ; i++){
                    $($pagerInner[i]).show();
            };
            // 省略記号の表示
            if(o.ellipsis) {
                if(ellipsisFlag){
                    // 前の省略記号
                    $($pagerInner[0]).show();
                    if(num > 1){
                            $($pagerInner[0]).after(function() {
                              return $ellipsisFirst;
                            });
                    }
                    // 後ろの省略記号
                    if(num < (tatalpageNum - o.pagerNum - 1)) {
                        $($pagerInner[tatalpageNum - 1]).before(function() {
                          return $ellipsisLast;
                        });
                    }
                    $($pagerInner[tatalpageNum - 1]).show();
                }
            }
            // 現在位置設定
            currentIndex = current;
            // デザイン
            $pagerInner.removeClass('current');
            $($pagerInner[current]).addClass('current');
            if (o.linkInvalid) {
                if(current == 0 ) {
                    $this.find('.prev').addClass('invalid');
                    $this.find('.first').addClass('invalid');
                } else {
                    $this.find('.prev').removeClass('invalid');
                    $this.find('.first').removeClass('invalid');
                }
                if(current == tatalpageNum - 1 ) {
                    $this.find('.next').addClass('invalid');
                    $this.find('.last').addClass('invalid');
                } else {
                    $this.find('.next').removeClass('invalid');
                    $this.find('.last').removeClass('invalid');
                }
            }
            // ページトップへの戻り
            if(o.goTop){
                $('html,body').scrollTop(0);
            }
            // ページカウンター
            $this.find('.nownum').text(currentIndex + 1);
        }
    }
});
</script>
<!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/css3-mediaqueries.js"></script>
<![endif]-->

<script>
$(function($) {
	$(".journalWrap_box--list").each(function(){
        $(this).wrap("<li/>")
    });
    $('.journalWrap_box').pagination({
        element      :'li',
        prevText     : '＜',
        nextText     : '＞',
        firstText    : '≪',
        lastText     : '≫',
        ellipsisText : '…',
        viewNum      : 12,
        pagerNum     : 3,
        ellipsis     : false,
        linkInvalid  : true,
        goTop        : true,
        firstLastNav : false,
        prevNextNav  : true
    });

});
</script>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>
