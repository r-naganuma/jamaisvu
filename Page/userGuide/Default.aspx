<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="ご利用ガイド｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="ご利用ガイドページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<script type="text/javascript">
$(function(){
	$('.guideWrap_menu a').click(function(){
	  var speed = 500;
	  var href= $(this).attr("href");
	  var target = $(href == "#" || href == "" ? 'html' : href);
	  var position = target.offset().top;
	  $("html, body").animate({scrollTop:position}, speed, "swing");
	  return false;
	});
	$(".guideWrap_menu p").on("click", function () {
		$(this).toggleClass('on');
		$(".guideWrap_menu ul").slideToggle('slow');
	});

	$(window).scroll(function () {

        if ($(this).scrollTop() > 115) {
            $('.guideWrap_menu.pc_contents').addClass('is-fixed');
        } else {
            $('.guideWrap_menu.pc_contents').removeClass('is-fixed');
        }
    });
});
</script>
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
	<div class="guideWrap">
		<div class="guideWrap_menu pc_contents">
			<ul>
				<li>
					<a href="#a01">商品について</a>
				</li>
				<li>
					<a href="#a02">ご注文について</a>
				</li>
				<li>
					<a href="#a03">お支払いについて</a>
				</li>
				<li>
					<a href="#a04">配送について</a>
				</li>
				<li>
					<a href="#a05">返品・交換について</a>
				</li>
				<li>
					<a href="#a06">会員サービスについて</a>
				</li>
			</ul>
		</div>

		<div class="guideWrap_cts">
			<h2>ご利用ガイド</h2>
			<div class="guideWrap_menu sp_contents">
				<p>カテゴリー</p>
				<ul>
					<li>
						<a href="#a01">商品について</a>
					</li>
					<li>
						<a href="#a02">ご注文について</a>
					</li>
					<li>
						<a href="#a03">お支払いについて</a>
					</li>
					<li>
						<a href="#a04">配送について</a>
					</li>
					<li>
						<a href="#a05">返品・交換について</a>
					</li>
					<li>
						<a href="#a06">会員サービスについて</a>
					</li>
				</ul>
			</div>
			<div id="a01" class="guideWrap_cts--list">
				<h3>商品について</h3>
				<div class="inner">
					<div class="inner_column">
						<h4>サイズ</h4>
						<p>
							JAMAIS VUの商品は<a href="<%= Constants.PATH_ROOT %>Page/sizeGuide/">サイズガイド</a>にしたがって採寸しています。
						</p>
					</div>
					<div class="inner_column">
						<h4>カラー</h4>
						<p>
							商品の画像は、できる限り実際の商品に近づけた状態で掲載しております。<br>
							色味は、商品ページの画像で必ずご確認の上ご購入ください。
						</p>
					</div>
					<div class="inner_column">
						<h4>お取り扱いの注意</h4>
						<p>
							商品を使用される前に、タグ等に記載されている「取り扱い上の注意書き」「洗濯表示」を必ずご確認ください。なお、「洗濯表示」は各商品ページにも掲載しております。
						</p>
					</div>
					<div class="inner_column">
						<h4>お直し</h4>
						<p>
							JAMAIS VU 公式ブランドサイトでは商品のお直しを承っておりません。
						</p>
					</div>
				</div>
			</div>

			<div id="a02" class="guideWrap_cts--list">
				<h3>ご注文について</h3>
				<div class="inner">
					<div class="inner_column">
						<h4>注文方法</h4>
						<p class="indentTxt">
							１）欲しい商品が見つかったらサイズを選択し「カートに入れる」ボタンをクリックしてください。
						</p>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/guide01.jpg" class="pc_contents">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/guide01_sp.jpg" class="sp_contents">
					</div>
					<div class="inner_column">
						<p class="indentTxt">
							２）カートアイコンからカートの中身をご確認ください。内容に誤りがなければ、<br class="pc_contents">会員登録をして購入するか、ゲストとして購入するかを選択の上決済画面へ進んでください。
						</p>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/guide02.jpg" class="pc_contents">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/guide02_sp.jpg" class="sp_contents">
					</div>
					<div class="inner_column">
						<p class="indentTxt">
							３）決済画面の項目に全て入力し、注文を確定してください。
						</p>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/guide03.jpg" class="pc_contents">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/guide03_sp.jpg" class="sp_contents">
					</div>
					<div class="inner_column">
						<h4>予約商品</h4>
						<p>
							販売開始前の商品について、予約注文を承ります。商品ページで配送時期をご確認の上ご注文ください。<br>
							なお、通常配送商品とあわせてご購入いただく場合、予約商品と通常配送商品とでカート（注文番号）が分かれますので、あらかじめご了承ください。（それぞれに送料が発生いたします）<br>
							また、予約商品は全ての商品が揃い次第、一括配送をいたします。

						</p>
					</div>
					<div class="inner_column">
						<h4>再入荷</h4>
						<p>
							在庫切れの商品について、再入荷をお知らせするメールを配信いたします。再入荷通知を希望する商品ページから、メールアドレスをご入力の上配信登録ください。なお、本機能は再入荷を確約するものや在庫の取り置きを行うものではありませんので、あらかじめご了承ください。
						</p>
					</div>
					<div class="inner_column">
						<h4>注文状況の確認</h4>
						<p>
							ご注文が確定した取引について、マイページの「<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_ORDER_HISTORY_LIST) %>">購入履歴</a>」から注文状況（配送状況）をご確認いただけます。
						</p>
					</div>
					<div class="inner_column">
						<h4>注文確定後のキャンセルおよび内容変更について</h4>
						<p>
							ご注文確定後のキャンセルおよび内容変更(商品追加・商品削除・別商品への変更)は承ることができません。ご注文完了前に、【サイズ】・【カラー】・【価格】・【数量】等、ご注文内容にお間違いがないか必ずご確認ください。

							<!-- サイト内ではキャンセルいただけないため、<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_INQUIRY_INPUT) %>">お問い合わせ</a>よりご連絡ください。 -->
						</p>
					</div>
				</div>
			</div>

			<div id="a03" class="guideWrap_cts--list">
				<h3>お支払いについて</h3>
				<div class="inner">
					<div class="inner_column">
						<p>
							以下のお支払い方法がご利用いただけます。
						</p>
					</div>
					<div class="inner_column">
						<h4>クレジットカード</h4>
						<p>
							・ご利用可能なクレジットカード種別
						</p>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/guide_card.jpg" class="pic_card">
						<p>
							・お支払い回数<br>
							　１回払いのみとします。<br><br>
							※カード決済日はご注文日となります。<br>
							※お引き落としは、各クレジットカードの会員規約に準じます。<br class="pc_contents">詳しくはカード発行会社に直接お問い合わせください。<br>
							※海外発行のクレジットカードは、注文をキャンセルさせていただく場合があります。
						</p>
					</div>
				</div>
			</div>

			<div id="a04" class="guideWrap_cts--list">
				<h3>配送について</h3>
				<div class="inner">
					<div class="inner_column">
						<h4>配送料金</h4>
						<p>
							全国一律650円でお届けいたします。
						</p>
					</div>
					<div class="inner_column">
						<h4>配送タイミング</h4>
						<p>
							ご注文日から3営業日以内に出荷いたします。なお、ご注文の際にお届け時間指定が可能です。<br>
							※お届け時間を指定いただいた場合でも、当日の交通事情や天候など、配送会社の発送状況などにより到着が遅延する場合があります。<br>
							<br>
							【時間帯の指定】<br>
							1）午前中<br>
							2）14時～16時<br>
							3）16時～18時<br>
							4）18時～20時<br>
							5）19時～21時
						</p>
					</div>
					<div class="inner_column">
						<h4>配送先の変更</h4>
						<p>
							<!-- ショッピングカートの配送先指定画面か、マイページ「<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_SHIPPING_LIST) %>">お届け先情報</a>」からご設定ください。 -->
							出荷作業前であれば可能です。マイページ「<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_SHIPPING_LIST) %>">お届け先情報</a>」よりご変更いただくか、<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_INQUIRY_INPUT) %>">お問い合わせ</a>よりご連絡ください。
							既に出荷作業中のご注文につきましては、ご変更いただきましてもご変更前のご住所への配送となります。あらかじめご了承ください。

						</p>
					</div>
					<div class="inner_column">
						<h4>予約商品の配送について</h4>
						<p>
							予約商品は全ての商品が揃い次第、一括配送をいたします。<br><br><br>
						</p>
						<h4>ご注文のおまとめ配送について</h4>
						<p>商品の配送はご注文毎となり、システム上ひとつにおまとめすることが出来かねます。<br>
							誠に恐縮ではございますが、注文番号ごとの配送とさせていただいております。あらかじめご了承ください。<br><br><br></p>

						<h4>一度配送した商品の再配達について</h4>
						<p>長期不在などで配送した商品が当店に戻ってきた場合、やむを得ずキャンセル処理を行わせていただきますので十分にご注意ください。なお、一度配送した商品の再配達は承ることが出来かねますので、あらかじめご了承ください。ご希望がございましたら再度ご注文をお願いいたします。（再注文時にご希望の商品の在庫切れ等がございましてもご容赦ください。）<br>
						クレジットカード決済のお取り消しにつきましては、決済が確定していた場合は、一度お引き落としとなり、後日クレジットカード会社よりご返金となりますので、あらかじめご了承ください。<br><br><br>
						</p>
						
					</div>
				</div>
			</div>

			<div id="a05" class="guideWrap_cts--list">
				<h3>返品・交換について</h3>
				<div class="inner">
					<div class="inner_column">
						<h4>返品について</h4>
						<p class="indentTxt1em">
							・お客様都合での返品<br>
							<!-- 購入した商品の到着日から8日以内に限り可能です。<br class="pc_contents">この場合の送料はお客様にてご負担ください。 -->
							ご購入いただいた商品の到着日から7日以内に<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_INQUIRY_INPUT) %>">お問い合わせ</a>よりご連絡ください。
							この場合、配送時の送料およびご返送時の送料はお客様ご負担となります。あらかじめご了承ください。

							但し、以下の条件に該当する場合、返品はできません。<br>
							<br>
							①使用済み、お直しや洗濯、クリーニングをした商品<br>
							②納品書を紛失した場合<br>
							③商品タグ・ラベル・付属品を紛失した場合<br>
							④返送時の商品（箱、商品の付属品を含みますが、これらに限りません）の状態がお届け時と比べて毀損、汚損、紛失等している場合<br>
							⑤お客様の元で商品に臭いが付着したり、汚れ、傷が生じた場合<br>
							⑥丈詰めをした商品
						</p>
					</div>
					<div class="inner_column">
						<p class="indentTxt1em">
							・商品に不具合があった場合の返品<br>
							お客様が購入した商品が以下の条件に該当する場合、<!-- 商品の到着日から7日以内に限り、購入した商品を返品することができます。この場合の送料は当社が負担するものとします。 -->ご購入いただいた商品の到着日から7日以内に<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_INQUIRY_INPUT) %>">お問い合わせ</a>よりご連絡ください。この場合、配送時の送料およびご返送時の送料は当店負担とさせていただきます。
							<br>
							<br>
							①商品に瑕疵があった場合<br>
							②ご注文内容と異なる商品が到着した場合<br>
							③配送中に破損した商品の場合<br>
							④商品が偽造品であることが判明した場合
						</p>
					</div>
					<div class="inner_column">
						<h4>交換について</h4>
						<p>
							お客様都合による商品の交換は承ることができません。但し、前項の通り商品に不具合があった場合は交換対応いたしますので、ご購入いただいた商品の到着日から7日以内に<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_INQUIRY_INPUT) %>">お問い合わせ</a>よりご連絡ください。

						</p>
					</div>
<!-- 					<div class="inner_column">
						<h4>返品・交換の流れ</h4>
						<p>
							まずは<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_INQUIRY_INPUT) %>">お問い合わせ</a>からご連絡ください。内容確認の上、スタッフから折り返しご連絡いたします。
						</p>
					</div> -->
				</div>
			</div>

			<div id="a06" class="guideWrap_cts--list">
				<h3>会員サービスについて</h3>
				<div class="inner">
					<div class="inner_column">
						<h4>会員特典</h4>
						<p>
							年間購入金額に応じて会員ランクが設定されます。ランクに応じて設定された特典を、ぜひご利用ください。
						</p>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/guide_rank.jpg" class="pic_rank rank1">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/guide_stepup.jpg" class="pic_rank">
					</div>
					<div class="inner_column">
						<h4 id="a07" style="padding-top: 80px">ニュースレター</h4>
						<p>
							おすすめ商品やイベント、セールなどの最新情報をメールで受け取れる会員サービスです。<br>
							ニュースレターの登録・変更・停止は、マイページ内<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_MODIFY_INPUT) %>">会員情報確認・変更</a>よりお手続き頂くか、<a href="mailto:contact@jamaisvu.co.jp?subject=会員情報確認・変更">contact@jamaisvu.co.jp</a>までご連絡をお願いいたします。<br>
							<br>
							※ニュースレターが届かない場合は、以下の設定をご確認ください。<br>
							・迷惑メールボックスの設定解除<br>
							・ドメイン指定受信（@jamaisvu.co.jp）の設定
						</p>
					</div>
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
				<a href="#">
					ご利用ガイド
				</a>
			</li>
		</ul>
	</div>

<%-- △編集可能領域△ --%>


</div>
</asp:Content>

