<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="特定商取引法に基づく表示｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="特定商取引法に基づく表示ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>

<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<style></style>

<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>

<style media="screen">@charset "UTF-8";
#Wrap .LPpageWrap {
	width: 720px;
	height: auto;
	margin: auto;
}

@media screen and (max-width: 769px) {
	#Wrap .LPpageWrap {
		width: 90.4vw;
	}
}

#Wrap .LPpageWrap p, #Wrap .LPpageWrap li, #Wrap .LPpageWrap a, #Wrap .LPpageWrap h2, #Wrap .LPpageWrap h3, #Wrap .LPpageWrap h4 {
	font-family: 'Noto Sans JP', "ヒラギノ角ゴ Pro W3","Hiragino Kaku Gothic Pro",'Open Sans',"ＭＳ Ｐゴシック","MS PGothic",Helvetica, sans-serif;
}

#Wrap .LPpageWrap p, #Wrap .LPpageWrap li {
	font-size: 14px;
	letter-spacing: 0.08em;
	line-height: 25.2px;
	color: #333;
	text-align: left;
}

@media screen and (max-width: 769px) {
	#Wrap .LPpageWrap p, #Wrap .LPpageWrap li {
		font-size: 13px;
		line-height: 2;
	}
}

#Wrap .LPpageWrap h2 {
	font-size: 18px;
	font-weight: bold;
	text-align: left;
	line-height: 32.4px;
	letter-spacing: 0.04em;
}

#Wrap .LPpageWrap .topSpace__txt h2 {
	text-align: center;
}

#Wrap .LPpageWrap .privacyBox {
	width: 720px;
}

@media screen and (max-width: 769px) {
	#Wrap .LPpageWrap .privacyBox {
		width: 100%;
		padding: 0;
	}
}

#Wrap .LPpageWrap .privacyBox__section {
	margin-top: 48px;
	margin-bottom: 0;
}

#Wrap .LPpageWrap .privacyBox__section h4 {
	font-size: 14px;
	letter-spacing: 0.04em;
	line-height: 1;
	font-weight: bold;
}

#Wrap .LPpageWrap .privacyBox__section p {
	font-size: 14px;
	letter-spacing: 0.08em;
	margin-top: 8px;
	margin-bottom: 0;
	line-height: 25.5px;
}

#Wrap .LPpageWrap .privacyBox__section p > a {
	display: inline;
	word-break: normal;
	color: #968680;
	text-decoration: underline;
}
</style>

<div class="topSpace__txt">
  <h2>特定商取引に関する法律に基づく表示</h2>


</div>




	<div class="privacyBox">

    <div class="privacyBox__section">
      <h4>販売業者</h4>
    <p>会社名：伊藤忠商事株式会社<br>
    <br>運営責任者：ファッションアパレル第二部ファッションアパレル課長　山村 智則
    <br>所在地：東京都港区北青山2丁目5-1</p>
    </div>
    <div class="privacyBox__section">
      <h4>運営委託先</h4>
      <p>会社名：株式会社 Roseau Pensant
        <br>代表者 : 代表取締役　上原 英暢
        <br>住所：東京都港区六本木7-3-16六本木インターナショナルアネックスビル4F
        <br>会社概要：https://roseaupensant.jp/</p>
    </div>
    <div class="privacyBox__section">
      <h4>販売価格</h4>
      <p>商品詳細ページに表示</p>
    </div>
    <div class="privacyBox__section">
      <h4>商品代金以外にご負担いただく費用</h4>
      <p>送料、消費税<br>
          詳細は<a href="">お支払いについて</a>を参照</p>
    </div>
    <div class="privacyBox__section">
      <h4>送料</h4>
      <p>全国一律650円</p>
    </div>
    <div class="privacyBox__section">
      <h4>代金の支払い時期及び方法</h4>
      <p><a href="">お支払い方法</a>を参照</p>
    </div>
    <div class="privacyBox__section">
      <h4>商品の引渡時期</h4>
      <p>配送地域・ご注文の時間帯により異なりますが、ご注文後から7日以内でのお届けとなります。</p>
    </div>
    <div class="privacyBox__section">
      <h4>商品の返品の可否と条件</h4>
      <p><a href="">返品・交換についてのご質問</a>を参照</p>
    </div>
    <div class="privacyBox__section">
      <h4>お問い合わせ先</h4>
      <p>ご購入いただいた商品の返品やその他ご質問のお問い合わせは<a href="">こちら</a><br>
        <br>
        メールマガジンの配信停止は<a href="">こちら</a><br>
        メールマガジン配信アドレス：<br class="sp_contents">info@jamaisvu.co.jp（※配信専用）</p>
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
				<a href="#">
					特定商取引に関する法律に基づく表示
				</a>
			</li>
		</ul>
	</div>
<%-- △編集可能領域△ --%>
</div>
</asp:Content>
