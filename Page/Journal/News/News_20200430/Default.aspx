<%--
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
    <h2>ゴールデンウィーク期間の休業に関するお知らせ</h2>

    <p>
      平素よりJAMAIS VU公式ブランドサイトをご利用いただき、誠にありがとうございます。<br>
      誠に勝手ながら以下ゴールデンウィーク期間を休業とさせていただきます。<br>
      あらかじめご了承くださいますよう、お願い申し上げます。
    </p>
  </div>

  <div class="ctsList">
    <p class="ctsList_ttl">【休業期間】</p>
    <p class="ctsList_txt">
      2020年5月2日(土)～2020年5月6日(水)
    </p>
  </div>

  <div class="ctsList">
    <p class="ctsList_ttl">【ご注文につきまして】</p>
    <p class="ctsList_txt">
      ゴールデンウィーク休業中も通常どおりご注文は承っております。
    </p>
  </div>

  <div class="ctsList">
    <p class="ctsList_ttl">【配送につきまして】</p>
    <p class="ctsList_txt">
      2020年5月1日(金)午前11時59分までのご注文→当日中に発送させていただきます。<br>
      2020年5月1日(金)午後12時以降のご注文→2020年5月7日(木)以降に順次発送させていただきます。
    </p>
  </div>

  <div class="ctsList">
    <p class="ctsList_ttl">【お問い合わせにつきまして】</p>
    <p class="ctsList_txt">
      2020年5月1日(金)午後18時以降にいただいたお問い合わせ（ご質問・返品・交換等）につきましては、<br class="pc_contents">2020年5月7日(木)以降に順次ご返信をさせていただきます。
    </p>
  </div>

</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>
