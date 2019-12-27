﻿<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="年末年始期間の営業及び配送についてのご案内｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="NEWS" MetaKeywords="TOPICS,トピックス,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<link href='./css/common.css?1233' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://use.typekit.net/bjg8gnb.css">
<link href="https://fonts.googleapis.com/css?family=Noto+Sans+JP:300,400,500,700&display=swap&subset=japanese" rel="stylesheet">
<!-- 一番下のボタンのcss入ってて便利 -->
<link href='../../../topics/css/common.css?1233' rel='stylesheet' type='text/css'>
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="featureWrap topicsWrap feature">
  <div class="mainArea">
    <h2>年末年始期間の営業及び<br class="sp_content">配送についてのご案内</h2>

    <p>
      日頃よりJAMAIS VUを御愛顧いただき、誠にありがとうございます。<br class="pc_content">誠に勝手ながら、年末年始期間中の営業につきまして下記の通りとさせていただきます。<br class="pc_content">お客様にはご不便、ご迷惑をおかけいたしますが、何卒ご理解いただきます様よろしくお願いいたします。
    </p>
  </div>

  <div class="ctsList">
    <p class="ctsList_ttl">■お客様窓口休業日</p>
    <p class="ctsList_txt">
      <span>休業日は2019年12月28日(土)～2020年1月5日(日)</span> となっております。<br>
      年末年始期間中もお問合せフォーム及びメールでのお問い合せを受け付けておりますが、<br class="pc_content"><span>1月6日(月)以降</span>、順次ご返答させていただく形となります。あらかじめご了承下さい。<br><br>
      ※商品のご注文に関しましては引き続き24時間自動で受け付けております。
    </p>
  </div>

  <div class="ctsList">
    <p class="ctsList_ttl">■お荷物の配送</p>
    <p class="ctsList_txt">
      2019年12月27日(金)12時～2020年1月5日(日)にご注文いただいた商品に関しましては、<br class="pc_content"><span>1月6日(月)以降</span>、順次ご発送致します。<br>
      ご注文の集中や交通機関混雑等の事情により通常よりお届けまでに日数がかかる場合がございますので、あらかじめご了承ください。
    </p>
  </div>

  <div class="ctsList">
    <p class="ctsList_ttl">■返品・返金について</p>
    <p class="ctsList_txt">
      年末年始前後 より受付を行ったご返品やご返金のお手続きは、<span>1月6日(月)以降</span>、順次対応いたします。
    </p>
  </div>

  <div class="lastArea">
    <p>
      今後ともJAMAIS VUをよろしくお願いいたします。<br><br>
      掲載日：2019年12月26日
    </p>
  </div>

</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>
