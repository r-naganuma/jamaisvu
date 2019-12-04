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
            <!-- これ使って！<div class="journalWrap_box--list">
				<a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191119">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191130journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                    	テンプレート
                    </p>
                    <p class="journalDate">2019.12.05</p>
				</a>
            </div> -->
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191126/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191126journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        MIDDLE GAUGE KNIT STYLE
                    </p>
                    <p class="journalDate">2019.11.26</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191122/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191122journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        Knit Fair ￥4,000 OFF
                    </p>
                    <p class="journalDate">2019.11.22</p>
                </a>
            </div>
            <div class="journalWrap_box--list">
                <a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191119/">
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191119journal.jpg">
                    <p class="journalCat">FEATURE</p>
                    <p class="journalTtl">
                        OUTER COLLECTION
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
                    <img src="<%= Constants.PATH_ROOT %>Page/Journal/images/column_191007journal.jpg">
                    <p class="journalCat">COLUMN</p>
                    <p class="journalTtl">
                        EDITORS COLUMN
                    </p>
                    <p class="journalDate">2019.10.07</p>
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
