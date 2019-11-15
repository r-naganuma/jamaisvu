<%--
=========================================================================================================
  Module      : カスタムパーツテンプレート画面(CustomPartsTemplate.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Control Language="C#" Inherits="BaseUserControl" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
タイトルタグはカスタムパーツのみ利用します。
<%@ Page Title="TOP - CONCEPT" %>
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<%-- ▽編集可能領域：コンテンツ▽ --%>
<script type="text/javascript">
    $(function(){
        $('.noLink').click(function(){
            return false;
        });
    });
</script>
<!-- <div class="sec sec--lead">
    <p>
        【メンテナンスのお知らせ】<br>
        平素は当サイトをご利用頂き、<br class="sp_contents">誠にありがとうございます。<br>
        この度、メンテナンスのためサイトを<br class="sp_contents">一時停止いたします。<br>
        <span>期間：2019年9月30日(月)23:00～<br class="sp_contents">2019年10月1日(火)1:00</span><br>
        上記期間中は、サイトの閲覧・商品の購入等が<br class="sp_contents">出来なくなります。<br>
        皆さまには大変ご迷惑をお掛けしますが、<br class="sp_contents">何卒ご了承いただけますようお願い申し上げます。
    </p>
</div> -->
<div class="sec sec--concept pc_contents">
    <div class="sec__inner">
        <h2 class="sec__title">CONCEPT</h2>
        <div class="concept">
            <div class="concept__phrase">
                <p class="concept_txt1">過去と未来　既知と未知<br>いつだってその真ん中が心地良い</p>
                <p class="concept_txt2">Rather be wearing Jamais Vu.</p>
                <p class="concept_txt3">
                    JAMAIS VUは「自由で正直なものづくりを大切にしたい」という考えから、<br>
                    素材から作り手に至るまで本当に良いものを追求し、<br>
                    流行に縛られないオーセンティックな製品を提案しています。
                </p>
                <p class="concept_txt4">
                    世界各国から良質な素材を選りすぐり、信頼できる職人により手がけられた<br>
                    「日常でありながら特別」「シンプルでいながらスペシャル」「サイズレス・シーズンレス・エイジレス」な<br>
                    新しいニュートラルスタイルをご提案いたします。
                </p>
                <p class="concept_txt5">
                    素材を知る
                </p>
            </div>
            <div class="concept__list">
                <div class="concept__list-item">
                    <a href="<%= Constants.PATH_ROOT %>Page/Concept/hamilton_lambs_wool.aspx">
                        HAMILTON<br>
                        LAMBS WOOL
                    </a>
                </div>
                <div class="concept__list-item">
                    <a href="<%= Constants.PATH_ROOT %>Page/Concept/merino_optimo.aspx">
                        MERINO<br>
                        OPTIMO
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="sec sec--topics">
    <div class="sec__inner">
        <h2 class="vertical-title IEpdr0">
            TOPICS
        </h2>
        <div class="topicsContent">
            <div class="topicsContent__list">
                <div class="topicsContent__list-item item-1">
                    <a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191112/">
                        <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/top_topics_1_1112.jpg" alt="topics 1">
                    </a>
                </div>
                <div class="topicsContent__list-item item-2">
                    <a href="https://jamaisvu.co.jp/Page/topics/column/vol2/" target="_blank">
                        <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/top_topics_2_1108.jpg" alt="topics 1">
                    </a>
                </div>
                <div class="topicsContent__list-item item-3">
                    <a href="https://jamaisvu.co.jp/Page/topics/styling/style_20191115/">
                        <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/top_topics_3_191115.jpg" alt="topics 3">
                    </a>
                </div>
                <div class="topicsContent__list-item item-4">
                    <a href="https://jamaisvu.co.jp/Page/lookbook/">
                        <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/top_topics_4.jpg" alt="topics 4">
                    </a>
                </div>
            </div>

        </div>
    </div>
    <div class="btnBox btn--more">
        <a href="https://jamaisvu.co.jp/category/topics/">MORE</a>
    </div>
</div>
<div class="sec sec--concept sp_contents">
    <div class="sec__inner">
        <h2 class="sec__title">CONCEPT</h2>
        <div class="concept">
            <div class="concept__phrase">
                <p class="concept_txt1">過去と未来　既知と未知<br>いつだってその真ん中が心地良い</p>
                <p class="concept_txt2">Rather be wearing Jamais Vu.</p>
                <p class="concept_txt3">
                    JAMAIS VUは「自由で正直なものづくりを大切にしたい」という考えから、素材から作り手に至るまで本当に良いものを追求し、流行に縛られないオーセンティックな製品を提案しています。
                </p>
                <p class="concept_txt4">
                    世界各国から良質な素材を選りすぐり、信頼できる職人により手がけられた「日常でありながら特別」「シンプルでいながらスペシャル」「サイズレス・シーズンレス・エイジレス」な新しいニュートラルスタイルをご提案いたします。
                </p>
                <p class="concept_txt5">
                    素材を知る
                </p>
            </div>
            <div class="concept__list">
                <div class="concept__list-item">
                    <a href="<%= Constants.PATH_ROOT %>Page/Concept/hamilton_lambs_wool.aspx">
                        HAMILTON LAMBS WOOL
                    </a>
                </div>
                <div class="concept__list-item">
                    <a href="<%= Constants.PATH_ROOT %>Page/Concept/merino_optimo.aspx">
                        MERINO OPTIMO
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="sec sec--category sp_contents">
    <ul class="category_top">
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">全てのアイテム</a>
        </li>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&cicon=1&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">新着アイテム</a>
        </li>
    </ul>
    <ul class="category_bottom">
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=001&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">アウター</a>
        </li>
        <!-- <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=002&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="lh">シャツ・<br>ブラウス</a>
        </li> -->
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=003&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">ニット</a>
        </li>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=004&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">カットソー</a>
        </li>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=005&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">ワンピース</a>
        </li>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=006&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">スカート</a>
        </li>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=007&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">パンツ</a>
        </li>
        <!-- <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=008&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">帽子</a>
        </li> -->
        <!-- <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=009&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">靴下</a>
        </li> -->
    </ul>
</div>
<script>
/*!
 * jQuery Cookie Plugin v1.4.1
 * https://github.com/carhartl/jquery-cookie
 *
 * Copyright 2006, 2014 Klaus Hartl
 * Released under the MIT license
 */
(function (factory) {
    if (typeof define === 'function' && define.amd) {
        // AMD (Register as an anonymous module)
        define(['jquery'], factory);
    } else if (typeof exports === 'object') {
        // Node/CommonJS
        module.exports = factory(require('jquery'));
    } else {
        // Browser globals
        factory(jQuery);
    }
}(function ($) {

    var pluses = /\+/g;

    function encode(s) {
        return config.raw ? s : encodeURIComponent(s);
    }

    function decode(s) {
        return config.raw ? s : decodeURIComponent(s);
    }

    function stringifyCookieValue(value) {
        return encode(config.json ? JSON.stringify(value) : String(value));
    }

    function parseCookieValue(s) {
        if (s.indexOf('"') === 0) {
            // This is a quoted cookie as according to RFC2068, unescape...
            s = s.slice(1, -1).replace(/\\"/g, '"').replace(/\\\\/g, '\\');
        }

        try {
            // Replace server-side written pluses with spaces.
            // If we can't decode the cookie, ignore it, it's unusable.
            // If we can't parse the cookie, ignore it, it's unusable.
            s = decodeURIComponent(s.replace(pluses, ' '));
            return config.json ? JSON.parse(s) : s;
        } catch(e) {}
    }

    function read(s, converter) {
        var value = config.raw ? s : parseCookieValue(s);
        return $.isFunction(converter) ? converter(value) : value;
    }

    var config = $.cookie = function (key, value, options) {

        // Write

        if (arguments.length > 1 && !$.isFunction(value)) {
            options = $.extend({}, config.defaults, options);

            if (typeof options.expires === 'number') {
                var days = options.expires, t = options.expires = new Date();
                t.setMilliseconds(t.getMilliseconds() + days * 864e+5);
            }

            return (document.cookie = [
                encode(key), '=', stringifyCookieValue(value),
                options.expires ? '; expires=' + options.expires.toUTCString() : '', // use expires attribute, max-age is not supported by IE
                options.path    ? '; path=' + options.path : '',
                options.domain  ? '; domain=' + options.domain : '',
                options.secure  ? '; secure' : ''
            ].join(''));
        }

        // Read

        var result = key ? undefined : {},
            // To prevent the for loop in the first place assign an empty array
            // in case there are no cookies at all. Also prevents odd result when
            // calling $.cookie().
            cookies = document.cookie ? document.cookie.split('; ') : [],
            i = 0,
            l = cookies.length;

        for (; i < l; i++) {
            var parts = cookies[i].split('='),
                name = decode(parts.shift()),
                cookie = parts.join('=');

            if (key === name) {
                // If second argument (value) is a function it's a converter...
                result = read(cookie, value);
                break;
            }

            // Prevent storing a cookie that we couldn't decode.
            if (!key && (cookie = read(cookie)) !== undefined) {
                result[name] = cookie;
            }
        }

        return result;
    };

    config.defaults = {};

    $.removeCookie = function (key, options) {
        // Must not alter options, thus extending a fresh object...
        $.cookie(key, '', $.extend({}, options, { expires: -1 }));
        return !$.cookie(key);
    };

}));



jQuery( function() {
    var $sampleCount = jQuery.cookie( 'sampleCount' );
    if( $sampleCount != undefined ){
        $sampleCount++;
    }else{
        $sampleCount = 1;
    }

        var date = new Date();
        date.setTime(date.getTime() + ( 3 * 24 * 60 * 60 * 1000)); //　クッキー保持時間
        // date.setTime(date.getTime() + (  60 * 1000)); //　クッキー保持時間

    var $cokkie_day = jQuery.cookie( 'cokkie_day',"cokkie_day" , { expires: date } );
    if($sampleCount > 2){
        // $sampleCount = 0;

        if($sampleCount === 2){
            jQuery( '#sampleCount' ) . html( $sampleCount );
            jQuery.cookie( 'sampleCount', $sampleCount, { expires: date } );
        }
        if($cokkie_day){
            // jQuery( '.popup' ).hide()
            // $sampleCount = 0;
            jQuery( '.popup' ).hide()
            $sampleCount = 0;
        }
    }else{
        jQuery( '#sampleCount' ) . html( $sampleCount );
        jQuery.cookie( 'sampleCount', $sampleCount, { expires: date } );
        if($cokkie_day){
            jQuery( '.popup' ).show();
            $sampleCount = 0;
        }
    }

    $(".close").click(function(){
        $(".popup").fadeOut(500);
        return false;
    });
} );
</script>
<div class="popup">
    <a class="close" href=""><img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/close.png" alt=""></a>
    <a href="https://line.me/R/ti/p/%40461wwkgx" target="_blank">
    <div class="pc_contents"><img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/pc_bnr.jpg" alt=""></div>
    <div class="sp_contents"><img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/sp_bnr.jpg" alt=""></div>
    </a>
</div>
<style>
a.close img {
    width: 13px!important;
}
.popup{
    display: none;
    position: fixed;
    width: 300px;
    right: 20px;
    bottom: 20px;
    z-index: 99
}
.popup a:hover{
    opacity: 1!important;
}
.popup img{
    width: 100%;
}
.close {
/*  display: none;*/
    width: 40px;
    height: 40px;
    display: flex;
    background: #fff;
    border-radius: 75%;
    color: #000;
    align-items: center;
    justify-content: center;
    position: absolute;
    right: -15px;
    top: -15px;
    border: 1px solid #e3e3e3;
    font-size: 11px;
    z-index: 10;
}
@media screen and (max-width: 980px){
    .popup{
        position: fixed;
        width: 100%;
        right: 0px;
        bottom: 0px;
        z-index: 999;
    }
    .close {
        position: absolute;
        right: 7px;
        top: -26px;
        border: 1px solid #e3e3e3;
        font-size: 11px;
    }
}
</style>
<!-- <div class="sec sec--lookbook">
    <div class="sec__inner">
        <h2 class="sec__title">LOOKBOOK<span>NEW EDITION</span></h2>
        <div class="btnBox btn--moreWhite">
            <a href="<%= Constants.PATH_ROOT %>Page/lookbook/">MORE</a>
        </div>
    </div>
</div> -->
<%-- △編集可能領域△ --%>
