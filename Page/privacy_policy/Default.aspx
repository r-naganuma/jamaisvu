<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="プライバシーポリシー｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="プライバシーポリシーページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>

<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<style>@charset "UTF-8";
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
		letter-spacing: 0.08em;
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

#Wrap .LPpageWrap .mgt40 {
	margin-top: 40px !important;
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
	margin-top: 50px;
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
	margin-top: 17px;
	margin-bottom: 0;
	line-height: 25.5px;
}

#Wrap .LPpageWrap .privacyBox .fusoku {
	margin-top: 80px;
	margin-bottom: 0;
}

@media screen and (max-width: 769px) {
	#Wrap .LPpageWrap .privacyBox .fusoku {
		margin-top: 60px;
		margin-bottom: 0;
	}
}

#Wrap .LPpageWrap .privacyBox .fusoku + .fusoku {
	margin-top: 50px;
	margin-bottom: 0;
}

@media screen and (max-width: 769px) {
	#Wrap .LPpageWrap .privacyBox .fusoku {
		margin-top: 40px;
		margin-bottom: 0;
	}
}
</style>

<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>

<div class="topSpace__txt">
  <h2>プライバシーポリシー</h2>
  <p class="mgt40">伊藤忠商事株式会社は、JAMAIS VU公式ブランドサイト「https://jamaisvu.co.jp」（以下、「当サイト」と呼びます）を管理・運営するにあたり、取得したすべてのお客様の個人情報が大切な資産であることを認識し、お客様が安心して当サイトをご利用いただけるよう、以下の通り個人情報を取り扱います。</p>

</div>


	<div class="privacyBox">
		<div class="privacyBox__section">
      <h4>1.個人情報の取得、利用及び提供について</h4>
      <p>当サイトでは、お客様の個人情報について、適切な取得、利用及び提供を行い、特定した利用目的の達成に必要な範囲を超えて、個人情報を取り扱うことはありません。利用目的を超えて個人情報の取り扱う場合には、あらかじめご本人の同意を得ます。</p>
    </div>
    <div class="privacyBox__section">
      <h4>2.個人情報の利用目的について</h4>
      <p>当サイトでは以下の目的で個人情報を利用します。<br>
        (1)ご注文の受付及び商品の発送のため<br>
        (2)当サイトに関する情報を、お客様にメールでご提供するため<br>
        (3)当サイトのマーケティング分析のための統計情報として利用するため<br>
        (4)各種お問い合わせ対応、アフターサービス対応のため<br>
        (5)その他、お客様へのサービス向上や運営上必要なご連絡のため</p>
    </div>
    <div class="privacyBox__section">
      <h4>3.個人情報に関する法令や指針、規範について</h4>
      <p>個人情報に関する法令・国が定める指針その他の規範を守ります。</p>
    </div>
    <div class="privacyBox__section">
      <h4>4.個人情報の安全管理について</h4>
      <p>個人情報への不正アクセスや、個人情報の漏えい、紛失、破壊、改ざん等に対して、合理的な防止並びに是正措置を行います。</p>
    </div>
    <div class="privacyBox__section">
      <h4>5.Googleアナリティクスとcookieについて</h4>
      <p>当サイトでは、サイトの分析と改善のためにGoogleアナリティクスを使用しています。当サイトをご利用中のウェブブラウザは、Google に特定の情報（たとえば、アクセスしたページのウェブ アドレスや IP アドレスなど）を自動的に送信します。その際、データ収集のためにGoogle がお使いのブラウザに cookie を設定したり、既存のcookieを読み取ったりする場合があります。
            <br>また、当サイトでは、お客様の利便性を考慮し、cookieの利用を前提としたサービスを提供しています。そのためcookieの利用を許可しない場合、当サイトの一部のサービスが受けられないことがあります。cookieの利用を許可するかどうかは、お客様のブラウザで設定できます。必要に応じて設定をご確認ください。</p>
    </div>
    <div class="privacyBox__section">
      <h4>6.個人情報取り扱いの委託について</h4>
      <p>当社は、当サイトに関する業務の全部又は一部を社外に委託しております。委託先に対し当社が委託した業務以外に個人情報を利用することがないよう、また個人情報を適切に管理するよう契約を締結した上で、業務の遂行に関して当社が十分に管理・監督してまいります。<br>
        <br>
          ※お客様へのご連絡について<br>
          お客様からのお問い合わせに対して、当サイトの運営委託先からご回答したほうが適切と当社が判断した場合、お客様の連絡先を当社から運営委託先に開示し、運営委託先から直接お客様にご連絡するケースがございますので、ご了承ください。
          </p>
    </div>
    <div class="privacyBox__section">
      <h4>7.個人情報の第三者への提供について</h4>
      <p>当社は、次の場合を除き、個人情報を第三者（上記６の委託先との共同利用先は除きます）に開示又は提供することはございません。
        <br>(1)あらかじめ通知又は公表し、お客様が同意している場合
        <br>(2)法令に基づく場合
        <br>(3)人の生命、身体又は財産の保護のために必要である場合であって、本人の同意を得ることが困難である場合
        <br>(4)公衆衛生上の向上又は児童の健全な育成の推進のために特に必要がある場合であって、本人の同意を得ることが困難であるとき
        <br>(5)国の機関もしくは地方公共団体又はその委託を受けた者が法令の定める事務を遂行することに対して協力する必要がある場合であって、本人の同意を得る事により当該事務の遂行に支障を及ぼす恐れがある場合
      </p>
    </div>
    <div class="privacyBox__section">
      <h4>8.個人情報の開示、訂正、削除等について</h4>
      <p>ご提供いただいたお客様の個人情報の開示・訂正・削除、利用停止・消去（及び第三者提供の停止）をご希望される場合は、以下に記載してある連絡先までご連絡ください。開示等のご請求についての手続及び対応をさせていただきます。<br>
        <br>
          (1)開示等の申し出<br>
           JAMAIS VU 公式ブランドサイト　運営事務局 <br>
          メールアドレス：contact@jamaisvu.co.jp<br>
          <br>
          (2)本人確認方法について<br>
          免許証、住民基本台帳ネットワークカード（写真付き）等にてご確認させていただきます。またお電話でご連絡いただいた場合には、改めて当社よりご連絡をさせていただきます。</p>
    </div>
    <div class="privacyBox__section">
      <h4>9.個人情報に関する苦情及び相談について</h4>
      <p>当サイトの個人情報の取り扱いに関する苦情・相談は、以下の＜個人情報に関する連絡先＞までご連絡ください。<br>
        <br>
        ＜個人情報に関する連絡先＞<br>
        伊藤忠商事株式会社　繊維カンパニー<br>
        ファッションアパレル第二部ファッションアパレル課<br>
        TEL: 03-3497-xxxx
      </p>
    </div>
    <div class="privacyBox__section">
      <h4>10.プライバシーポリシーの変更について</h4>
      <p>個人情報の保護を適切に行うため、継続的にその取り組みを見直し、プライバシーポリシーの維持改定を随時行ってまいります。</p>
    </div>

    <div class="fusoku">
      <p>付則 （本規約の適用）<br>
            2019年9月1日　制定</p>
    </div>
    <div class="fusoku">
      <p>伊藤忠商事株式会社　繊維カンパニー<br>
        ファッションアパレル第二部ファッションアパレル課<br>
        〒107-8077　東京都港区北青山2-5-1<br>
        TEL: 03-3497-xxxx
        </p>
    </div>
    <div class="fusoku">
            <p>個人情報管理責任者<br>
      伊藤忠商事株式会社　繊維カンパニー<br>
      ファッションアパレル第二部ファッションアパレル課長</p>
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
					プライバシーポリシー
				</a>
			</li>
		</ul>
	</div>
<%-- △編集可能領域△ --%>
</div>
</asp:Content>
