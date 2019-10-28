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

<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="campaignWrap">
  <div class="mainArea">
    <h2>CAMPAIGN 
      <span>2019.10.21</span>
    </h2>
    <img class="pc_contents" src="images/mv_pc.jpg" alt="">
    <img class="sp_contents" src="images/mv_sp.jpg" alt="">
    <p>
      対象期間中、LINEお友だち限定で必要期間中<br class="sp_contents">送料・返品送料どちらも0円！<br>
      この機会にぜひ、JAMAIS VU製品を<br class="sp_contents">手に取ってくださいませ。
    </p>
  </div>

  <div class="aboutArea">
    <h3>
      <span>LINE限定</span>
      ご試着無料キャンペーン概要
    </h3>
    <div class="aboutArea_box">
      <div class="aboutArea_box--list">
        <img src="images/icn01.png" alt="">
        <p>
          LINE限定で<br>
          送料・返品送料いつでも0円
        </p>
      </div>
      <div class="aboutArea_box--list">
        <img src="images/icn02.png" alt="">
        <p>
          たっぷりお試し可能
          <span>※商品到着から<br class="sp_contents">8日以内に返品完了</span>
        </p>
      </div>
    </div>
  </div>

  <div class="conditionsArea">
    <h3>
      返品条件
    </h3>
    <p class="conditionsArea_lead">
      以下の条件を満たしている場合、<br class="sp_contents">返品送料0円でご試着の対象となります。
    </p>
    <div class="conditionsArea_box">
      <div class="conditionsArea_box--list">
        <img src="images/icn03.png" alt="">
        <p>
          <span>お受け取りから8日以内の返品</span>
          商品のお受け取り日（配達完了日）を含め8日以内に返品のご連絡をお願いいたします。
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

  <div class="itemArea">
    <h3>
      気になるアイテムを探して、<br class="sp_contents">さっそくお買い物！
    </h3>
    <ul>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930317111&cat=003">
          <img src="images/01.jpg" alt="">
          <p>
            ショートカーディガン
            <span>¥23,100(tax in)</span>
          </p>
        </a>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930317121&cat=003">
          <img src="images/02.jpg" alt="">
          <p>
            ショートカーディガン
            <span>¥23,100(tax in)</span>
          </p>
        </a>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930318149&cat=003">
          <img src="images/03.jpg" alt="">
          <p>
            ビッグカーディガン
            <span>¥26,400(tax in)</span>
          </p>
        </a>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930318155&cat=003">
          <img src="images/04.jpg" alt="">
          <p>
            ビッグカーディガン
            <span>¥26,400(tax in)</span>
          </p>
        </a>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930319111&cat=003">
          <img src="images/05.jpg" alt="">
          <p>
            ボートネックジッププルオーバー
            <span>¥23,100(tax in)</span>
          </p>
        </a>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930338131&cat=003">
          <img src="images/06.jpg" alt="">
          <p>
            クルーネックプルオーバー
            <span>¥20,900(tax in)</span>
          </p>
        </a>
      </li>
    </ul>
    <div class="btnBox">
      <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="itemArea_btn">全てのアイテムを見る</a>
    </div>
    <p class="itemArea_lead">
      まずはLINEで友だち追加して、<br class="sp_contents">「失敗しらずのお買い物」をお楽しみください。
    </p>
    <a id="click_id3" href="https://line.me/R/ti/p/%40461wwkgx" class="itemArea_line" target="_blank" onclick="gtag('event', 'click3', {'event_category': 'link3','event_label': 'entered3'});">LINE友だち追加はこちら</a>
  </div>

  <div class="noticeArea">
    <p class="noticeArea_ttl">注意事項</p>
    <p class="noticeArea_sub">返品方法</p>
    <div class="noticeArea_indent">
      <p>
        ・返品の際は必ず商品の入っていたパッケージ（箱・袋等）に入れてください。
      </p>
    </div>
    <p class="noticeArea_sub">下記に該当する場合は返品をお受けできません。</p>
    <div class="noticeArea_indent">
      <p>
        ・商品タグ・値札・ラベル等が切り離された商品<br>
        ・パッケージを紛失してしまった商品<br>
        ・ご試着以外でご使用になった商品<br>
        ・お直しや洗濯、クリーニングされた商品<br>
        ・お客様のもとでにおい、汚れ、傷などの不具合が発生した商品<br>
        ・返品期間が過ぎたご注文の商品
      </p>
    </div>
    <p class="noticeArea_sub">返品時の注意事項</p>
    <div class="noticeArea_indent">
      <p>
        ・ご返送途中での破損や紛失等の事故・トラブルにつきましては、弊社では責任を負いかねます。<br>
        ・商品のご返品は、1件の注文番号に対し1回に限らせていただきます。<br>
        ・試着の際はタグ（下げ札）類の切り離しをしないでください。<br>
        ・返品商品は、お届け時と同じ状態でお戻しください。
      </p>
    </div>
  </div>

  <div class="contactArea">
    <h3>
      キャンペーンに関する<br class="sp_contents">お問い合わせ先
    </h3>
    <p>JAMAIS VU 公式ブランドサイト　運営事務局</p>
    <a href="<%= Constants.PATH_ROOT %>Form/Inquiry/InquiryInput.aspx">お問い合わせフォーム</a>
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

