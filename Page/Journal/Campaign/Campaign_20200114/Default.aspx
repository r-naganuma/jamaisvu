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
<link href='css/common.css?1233' rel='stylesheet' type='text/css'>
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<div class="campaignWrap">
  <div class="mainArea">
    <h2>CAMPAIGN 
      <span>2020.01.14</span>
    </h2>
    <img src="images/mv.jpg" alt="">
    <p>
      日頃のご愛顧に感謝いたしまして、<br class="sp_contents">送料無料キャンペーンを開催いたします。<br>
      対象期間中のお買い物なら、<br class="sp_contents">全品どれでも送料・返品送料どちらも0円！<br>
      お得なこの機会をぜひご利用くださいませ。
    </p>
  </div>

  <div class="aboutArea">
    <h3>
      送料・返品無料キャンペーン概要
    </h3>
    <div class="aboutArea_box">
      <div class="aboutArea_box--list">
        <img src="images/icn01.png" alt="">
        <p>
          送料・返品送料いつでも0円
        </p>
      </div>
      <div class="aboutArea_box--list">
        <img src="images/icn02.png" alt="">
        <p>
          たっぷりお試し可能
          <span>※商品到着から7日以内に返品申請</span>
        </p>
      </div>
    </div>
  </div>

  <div class="couponArea">
    <p class="couponArea_txt txt01">
      ご購入時に下記クーポンコードをご入力ください。
    </p>
    <p class="couponArea_txt txt02">
      クーポンコード
    </p>
    <div class="couponArea_code">
      <p>free2001</p>
    </div>
    <p class="couponArea_txt txt03">
      キャンペーン対象期間<span class="pc_inline"> : </span><br class="sp_contents">2020年1月14日(火)～2020年01月31日(金)
    </p>
    <p class="couponArea_notice">
      ※対象期間を過ぎた時点で、<br class="sp_contents">クーポンは自動的に失効いたします。<br>
      ※他のクーポンと併用してご利用にはなれません。<br class="sp_contents">予めご了承ください。
    </p>
  </div>

  <div class="conditionsArea">
    <h3>
      返品条件
    </h3>
    <p class="conditionsArea_lead">
      ご購入時に下記クーポンコードをご入力ください。<br>
      その上で、以下の条件を満たしている場合、返品送料0円でご試着の対象となります。
    </p>
    <div class="conditionsArea_box">
      <div class="conditionsArea_box--list">
        <img src="images/icn03.png" alt="">
        <p>
          <span>お受け取りから7日以内に返品申請</span>
          商品のお受け取り日（配達完了日）を含め7日以内に返品申請をお願いいたします。
        </p>
      </div>
      <div class="conditionsArea_box--list">
        <img src="images/icn04.png" alt="">
        <p>
          <span>試着以外でご利用してない商品</span>
          試着の際は汚れやにおいが生じないようご注意ください。また、靴は土足で歩かず、室内でご試着ください。
        </p>
      </div>
      <div class="conditionsArea_box--list">
        <img src="images/icn05.png" alt="">
        <p>
          <span>お届け時と同状態での返品</span>
          商品並びに商品タグ・ラベル、パッケージ（箱・袋）が破損してしまうと返品を承れません。
        </p>
      </div>
    </div>
  </div>

  <div class="flowArea">
    <h3>
      返品手順
    </h3>
    <div class="flowArea_step">
      <div class="flowArea_step--num">
        <p>STEP 1</p>
      </div>
      <div class="flowArea_step--cts">
        <p>
          お問い合わせフォームから「返品申請」を行ってください。<br>
          サイトトップ下部、お問い合わせフォームから「お問い合わせ種別」を「返品・交換について」に設定し、<br>
          <span class="fwBold">①返品希望の商品名<br>
          ②商品のご注文日</span><br>
          をご記載の上送信をお願いいたします。
        </p>
      </div>
    </div>
    <div class="flowArea_step">
      <div class="flowArea_step--num">
        <p>STEP 2</p>
      </div>
      <div class="flowArea_step--cts">
        <p>
          返品する商品を梱包してください。<br>
          商品に同封しております、「お買い上げ明細書」(コピー可)を同梱ください。
        </p>
      </div>
    </div>
    <div class="flowArea_step">
      <div class="flowArea_step--num">
        <p>STEP 3</p>
      </div>
      <div class="flowArea_step--cts">
        <p>
          お近くの郵便局またはコンビニから着払いでご発送ください。<br>
          <span class="fontS">
            送り先 : <br>
            (株)ケンオー　ケンオーアパレルセンター　<br class="sp_contents">堀　宛て<br>
            〒252-1121 神奈川県綾瀬市小園959-1<br>
            TEL : 0467-78-3277
          </span>
        </p>
      </div>
    </div>
    <div class="flowArea_step">
      <div class="flowArea_step--num">
        <p>STEP 4</p>
      </div>
      <div class="flowArea_step--cts">
        <p>
          商品到着次第、返金処理をいたします。<br>
          クレジットカード会社より請求が済んでいない場合、請求がキャンセルされます。<br>
          既に請求済の場合、お使いのクレジットカード会社よりご返金致します。
          <span class="note">
            ※返金まで、商品発送から最大2ヶ月ほどかかることがあります。
          </span>
        </p>
      </div>
    </div>
  </div>

</div>

<div class="userBread">
  <ul>
    <li>
      <a href="<%= WebSanitizer.HtmlEncode(this.UnsecurePageProtocolAndHost + Constants.PATH_ROOT) %>">
        トップ
      </a>
    </li>
    <li> >
      <a href="<%= Constants.PATH_ROOT %>Page/topics/">
        TOPICS
      </a>
    </li>
    <li> >
      <a href="#">
        CAMPAIGN
      </a>
    </li>
  </ul>
</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

