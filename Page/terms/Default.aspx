<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="利用規約｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="利用規約ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
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

#Wrap .LPpageWrap .privacyBox__contents {
	margin-top: 80px;
}

@media screen and (max-width: 769px) {
	#Wrap .LPpageWrap .privacyBox__contents__section {
		font-size: 16px;
		line-height: 28.8px;
	}
}

#Wrap .LPpageWrap .privacyBox__contents__parts > li > h3 {
	font-size: 14px;
	letter-spacing: 0.04em;
	line-height: 25.2px;
	text-align: left;
	margin-top: 30px;
	margin-bottom: 0;
	padding-bottom: 16.5px;
	border-bottom: 1px solid #C0B6B3;
	font-weight: bold;
}

@media screen and (max-width: 769px) {
	#Wrap .LPpageWrap .privacyBox__contents__parts > li > h3 {
		font-size: 13px;
		line-height: 26px;
		margin-top: 32px;
	}
}

#Wrap .LPpageWrap .privacyBox__contents__parts p {
	margin-top: 16.5px;
	text-align: left;
}

#Wrap .LPpageWrap .privacyBox__contents__parts__list {
	margin-top: 30px;
}

@media screen and (max-width: 769px) {
	#Wrap .LPpageWrap .privacyBox__contents__parts__list {
		margin-top: 40px;
	}
}

#Wrap .LPpageWrap .privacyBox__contents__parts__list li {
	margin-top: 6px;
	margin-bottom: 0;
}

@media screen and (max-width: 769px) {
	#Wrap .LPpageWrap .privacyBox__contents__parts__list li {
		margin-top: 6.5px;
	}
}

#Wrap .LPpageWrap .privacyBox__contents__parts__list--large {
	margin-top: 16.5px;
}

#Wrap .LPpageWrap .privacyBox__contents__parts__list--large li {
	margin-top: 40px;
	margin-bottom: 0;
}

#Wrap .LPpageWrap .privacyBox__contents__parts__list--large li ul {
	margin-top: 30px;
	margin-bottom: 0;
}

#Wrap .LPpageWrap .privacyBox__contents__parts__list--large li ul > li {
	margin-top: 6px;
	margin-bottom: 0;
}

#Wrap .LPpageWrap .privacyBox .fusoku {
	margin-top: 80px;
	margin-bottom: 0;
}
</style>
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="topSpace__txt">
   <h2>利用規約</h2>
   <p>伊藤忠商事株式会社（以下、「当社」という）は、当社が提供するオンラインショッピングサイト<br>「JAMAIS VU 公式ブランドサイト」（以下、「本サイト」という）が提供するサービス（以下、「本サービス」という）をご利用いただくに際し遵守していただく規約（以下、「本規約」という）を以下の通り定めます。本サービスをご利用される方は、本規約の全ての条項に承諾のうえご利用ください。</p>
 </div>

	<div class="privacyBox">


    <div class="privacyBox__contents">
      <h2 class="privacyBox__contents__section">第1章　本サービスの総則</h2>
      <ul class="privacyBox__contents__parts">
        <li>
          <h3>第1条（本規約の範囲および変更）</h3>
          <p>伊藤忠商事株式会社（以下、「当社」という）は、当社が提供するオンラインショッピングサイト<br>「JAMAIS VU 公式ブランドサイト」（以下、「本サイト」という）が提供するサービス（以下、「本サービス」という）をご利用いただくに際し遵守していただく規約（以下、「本規約」という）を以下の通り定めます。本サービスをご利用される方は、本規約の全ての条項に承諾のうえご利用ください。</p>
        </li>
      </ul>
    </div>


    <div class="privacyBox__contents">
      <h2 class="privacyBox__contents__section">第2章　利用者</h2>
      <ul class="privacyBox__contents__parts">
        <li>
          <h3>第2条（利用者）</h3>
          <p>本規約において「利用者」とは、当社が本サービスで提供する画像、テキスト、デザイン、ロゴ、映像、プログラム、アイディア、情報等（以下「コンテンツ」と総称します）を検索、閲覧または利用する者を総称し、会員（第3条で定義します）を含みます。</p>
        </li>
      </ul>
    </div>
    <div class="privacyBox__contents">
      <h2 class="privacyBox__contents__section">第3章　会員</h2>
      <ul class="privacyBox__contents__parts">
        <li>
          <h3>第3条（会員の定義）</h3>
          <p>会員とは、本規約を承認の上入会を申請した方で、当社が承認した方とします。</p>
        </li>
        <li>
          <h3>第4条（入会）</h3>
          <p>会員への登録希望者は、本サイト上の新規登録ページにおいて必要事項を入力し､入会申込みをした時点で、本規約の内容を承諾したものとします。当社は、次の場合を除き､入会希望者の申請を承諾するものとします。</p>
          <ul class="privacyBox__contents__parts__list">
            <li>1.	過去に本規約に基づき会員資格を剥奪されている場合</li>
            <li>2.	申込内容に虚偽の申請があった場合</li>
            <li>3.	その他、当社が会員として不適切と判断した場合</li>
          </ul>
        </li>
        <li>
          <h3>第5条（登録個人情報）</h3>
          <p>会員は、住所、氏名、電話番号、その他当社に登録している事項に変更が生じた場合、また、当社から会員に対し登録情報の追加要請があった場合、当社が別途定める方法により、速やかに手続きを行うものとします。会員が登録した情報は、個人情報として当社が厳重に管理します。当社は、会員の承諾なしに個人情報の修正・変更をしないものとします。</p>
        </li>
        <li>
          <h3>第6条（会員の禁止行為）</h3>
          <p>当社は、会員がサービスを利用するにあたり、会員の次の行為を禁止します。</p>
          <ul class="privacyBox__contents__parts__list">
            <li>1.	公序良俗に反する行為 ・ 法令に違反する行為</li>
            <li>2.	犯罪に結びつく行為</li>
            <li>3.	他の会員および第三者の著作権その他知的財産権を侵害する行為</li>
            <li>4.	他の会員および第三者を誹謗､中傷しその他名誉を毀損する行為</li>
            <li>5.	他の会員および第三者の財産､プライバシーを侵害する行為</li>
            <li>6.	他の会員および第三者に不利益を与える行為</li>
            <li>7.	他の会員のサービスの利用を妨げる行為</li>
            <li>8.	当社の運営を妨害する行為（情報の改ざん、ウィルス等の入力･送信等）</li>
            <li>9.	当社が認めていない営利目的の行為</li>
            <li>10.	その他、当社が不適当と判断する行為</li>
          </ul>
        </li>
        <li>
          <h3>第7条（会員資格の停止および資格の抹消）</h3>
          <p>会員が次の項目のいずれかに該当した場合、当社は、会員への事前の承諾なしに、そのサービスの利用停止または会員資格の抹消を行うことができるものとします。</p>
          <ul class="privacyBox__contents__parts__list">
            <li>1.	ＩＤ/パスワードを不正使用した場合</li>
            <li>2.	入会申請内容に虚偽の事項があった場合</li>
            <li>3.	本サイトの情報を改ざん､不正利用し、その他運営を故意に妨害した場合</li>
            <li>4.	会員資格に不適当で抹消が必要であると当社が判断した場合</li>
            <li>5.	過去に本規約違反をしたことなどにより会員登録抹消の処分を受けていることが判明した場合</li>
            <li>6.	本サービスに関する料金などの支払債務の履行遅延その他の不履行があった場合</li>
            <li>7.	会員に対し、差押、仮差押、仮処分、強制執行、破産の申し立てがなされた場合、または会員が破産、民事再生を申し立てた場合</li>
            <li>8.	その他、本規約に違反した場合</li>
          </ul>
        </li>
        <li>
          <h3>第8条（会員の退会）</h3>
          <p>会員は、所定の手続きにより随時退会できるものとします。</p>
        </li>
        <li>
          <h3>第9条（ＩＤ・パスワードの管理）</h3>
          <p>会員は、入会後承認、登録されたＩＤおよびパスワードを使用することができます。また､その管理については、会員本人が責任を負うものとします。会員は、会員ＩＤおよびパスワードの第三者への譲渡､名義変更､売買または貸与等はできません。当社は、会員による会員ＩＤならびにパスワードの使用上の過失又は第三者による当該会員ＩＤならびにパスワードの使用（不正使用を含む）により生じた会員の損害については､一切の責任を負わないものとします。</p>
        </li>
      </ul>
    </div>
    <div class="privacyBox__contents">
      <h2 class="privacyBox__contents__section">第4章　商品の購入</h2>
      <ul class="privacyBox__contents__parts">
        <li>
          <h3>第10条（購入、返品について）</h3>

          <ul class="privacyBox__contents__parts__list--large">
            <li>
              <h3>1.	購入</h3>
              <p>利用者は、本サービスを利用して商品を購入することができます。商品の購入を希望する場合、当社が指定する方法に従って商品の購入を申込むものとします。当該申込に対して、当社より承諾する旨の電子メールを利用者宛に発信した時点で利用者と当社との間に当該商品に関する売買契約が成立するものとします。ただし、本サービスの利用に関して不正行為または不適当な行為（通常の常識の範囲を超える大量注文・大量キャンセルなど）があった場合のほか、受取拒否・中長期の不在により会員の受領確認ができない場合には、当社は自社の判断により売買契約について取消、解除その他の適切な措置をとることができるものとします。</p>
            </li>
            <li>
              <h3>2.	支払い方法</h3>
              <p>支払い方法は、利用者本人名義のクレジットカードによる決済をもって行うものとします。なお、クレジットカードによる決済については、利用者がクレジットカード会社との間で別途契約する条件に従うこととし、利用者と当該クレジットカード会社等の間で紛争が発生した場合は、当該当事者双方で解決するものとし、当社には一切責任はないものとします。</p>
            </li>
            <li>
              <h3>3.	配送</h3>
              <p>商品の引渡しは、ご注文の際に指定されたお届け先に商品が配送されたことをもって完了したものとします。 商品の出荷は日本国内のみに限らせていただきます。</p>
            </li>
            <li>
              <h3>4.	利用者都合による返品</h3>
              <p>利用者は、利用者都合により延着させた場合を除き、本サービスにより購入した商品の到着日から8日以内に限り、購入した商品を返品することができます。この場合の送料は利用者が負担するものとします。但し、以下の条件に該当する場合、返品はできません。</p>
              <ul>
                <li>①	使用済み、お直しや洗濯、クリーニングをした商品</li>
                <li>②	納品書を紛失した場合</li>
                <li>③	商品タグ・ラベル・付属品を紛失した場合</li>
                <li>④	返送時の商品（箱、商品の付属品を含みますが、これらに限りません）の状態がお届け時と比べて毀損、汚損、紛失等している場合</li>
                <li>⑤	お客様の元で商品に臭いが付着したり、汚れ、傷が生じた場合</li>
                <li>⑥	丈詰めをした商品</li>
              </ul>
            </li>
            <li>
              <h3>5.	当社瑕疵による返品</h3>
              <p>利用者は、本サービスにより購入した商品が以下に定める条件に該当する場合、商品の到着日から●日以内に限り、購入した商品を返品することができます。この場合の送料は当社が負担するものとします。</p>
              <ul>
                <li>①	商品に瑕疵があった場合</li>
                <li>②	ご注文内容と異なる商品が到着した場合</li>
                <li>③	配送中に破損した商品の場合</li>
                <li>④	商品が偽造品であることが判明した場合</li>
              </ul>
            </li>
            <li>
              <h3>6.	交換</h3>
              <p>利用者の都合による商品の交換は承ることができません。</p>
            </li>

          </ul>
        </li>
      </ul>
    </div>
    <div class="privacyBox__contents">
      <h2 class="privacyBox__contents__section">第5章　サービスの利用</h2>
      <ul class="privacyBox__contents__parts">
        <li>
          <h3>第11条（サービスの中断･停止および内容の変更等）</h3>
          <p>当社は、次の場合は､利用者への事前の通知､承諾なく､サービスの一部または全部の一時的な中断･停止及び、変更・追加・削除を行います。</p>

          <ul class="privacyBox__contents__parts__list">
            <li>1.	システムトラブル等で緊急な保守点検が必要な場合</li>
            <li>2.	第一種（電話会社等）および第二種電気通信事業者（プロバイダー等）の役務が提供されない場合</li>
            <li>3.	火災､停電､天災地変、（地震･噴火･洪水･津波等）が発生し、サービスの提供ができない場合</li>
            <li>4.	人為的災害（戦争､暴動､騒乱､労働争議等）によりサービスの提供ができないとき</li>
            <li>5.	その他､当社が必要と判断した場合</li>

          </ul>

          <p class="mgt40">上記に掲げる事態が発生し､利用者に不利益、損害が生じた場合においても、当社は利用者に対し､その責任を負わないものとします。また、利用者のインターネット・携帯端末利用環境によって、当社からのメールが不着だった際に、利用者に不利益・損害が 生じた場合においても同様です。</p>
        </li>
        <li>
          <h3>第12条（営業の停止）</h3>
          <p>当社は、利用者の承諾なしに、当社の運営またはこれによる営業の全部または一部を中止することができるものとします。</p>
        </li>
        <li>
          <h3>第13条（著作権等の帰属）</h3>
          <p>本サイトに掲載する情報､デザインに関する著作権または商標権その他の知的財産権は、すべて当社の著作権者等正当な権利者に帰属するものとし、利用者はこれらの知的財産権に対して何らの権利を有しないものとします。</p>
        </li>
        <li>
          <h3>第14条（利用者の責任）</h3>
          <p>当社は､利用者が本サービスを利用して被った損害について、一切の責任を負わないものとします。利用者は､ 当社が提供するサービスを利用することによって第三者に対して損害を与えた場合､自己の責任と費用をもって解決し、当社に損害を与えないものとします。利用者が不正または不当な手段･方法により当社に損害を与えた場合、利用者は、当社に対し損害賠償の責任を負うこととなります。</p>
        </li>
        <li>
          <h3>第15条（合意管轄裁判所）</h3>
          <p>利用者と当社との間で本規約について訴訟の必要が生じた場合、東京地方裁判所を合意管轄裁判所とします。</p>
        </li>
        <li>
          <h3>第16条（準拠法）</h3>
          <p>本規約の成立､効力､履行および解釈に関しては､日本法が適用されるものとします。</p>
        </li>
      </ul>
    </div>


    <div class="fusoku">
      <p>付則 （本規約の適用）<br>2019年9月1日　制定</p>
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
					利用規約
				</a>
			</li>
		</ul>
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>
