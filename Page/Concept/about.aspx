<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="製品化までのストーリー｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="JAMAIS VU （ジャメヴ）の製品化までのストーリーページ。上質なニットが作られる製造工程をご紹介します。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="素材,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
	<h2 class="aboutTtl">CONCEPT<span>製品化までのストーリー</span></h2>

	<div class="conceptBox">
		<div class="conceptBox_aboutHeader">
			<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/about_main.jpg" alt="製品化までのストーリー">
			<p class="conceptBox_aboutHeader--ttl">
				「誰が見ても<br class="sp_contents">“良い”ニット」を
			</p>
			<p class="conceptBox_aboutHeader--txt">
				肌触りも、着心地もよい。そして何よりも、見た目が美しい。<br class="pc_contents">そんな誰が見ても“良い”と感じるニットを作るためには、<br class="pc_contents">作り手自身が胸を張ってお届けできるものづくりをしていかなければなりません。<br><br>
				まずは作り手が「着たい」と思うニットを作ること。<br class="pc_contents">その思いのもと、“良い”素材を知り尽くした伊藤忠商事がタッグを組むのは、<br class="pc_contents">日本を代表するニットの産地・新潟県五泉市に立つニットメーカー。<br><br>
				“良い”ニット作りを徹底して行う新潟県トップの工場で、<br class="pc_contents">伊藤忠商事の美しく上質なニットはつくられています。<br class="pc_contents">そのカギとなるのは、職人の経験と知識による手作業です。
			</p>
			<p class="conceptBox_aboutHeader--ttl">
				職人の手作業により<br class="sp_contents">“本物のニット”を生み出す
			</p>
		</div>

		<div class="conceptBox_feature">
			<h5 class="oneline aboutMenu">
				<span>
					01
				</span>
				編み立て
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/about_01.jpg" alt="製品化までのストーリー">
				</div>
				<div class="conceptBox_feature--box--txt">
					<p>
						糸からニットへと成形していく編み立て。ニットは、ゲージと呼ばれる編み目の密度によってさまざまな表情をつくり出します。
					</p>
					<p>
						使うのは、世界トップクラスに位置する2社の編み機。日本を代表する編み機メーカー・島精機製作所と、ドイツのストーン社です。
					</p>
					<p>
						素材に適したニットの風合いになるよう、どういうパターンで、どういう編み方で、どのゲージと編み機を使うのかなどを、職人が知識と経験をもとに決めていきます。
					</p>
				</div>
			</div>

			<h5 class="oneline aboutMenu">
				<span>
					02
				</span>
				縫製・リンキング
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic ord1">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/about_02.jpg" alt="製品化までのストーリー">
				</div>
				<div class="conceptBox_feature--box--txt ord2">
					<p>
						前身、後ろ身、袖、襟の各パーツを、ミシンとリンキング機を使い縫い合わせていきます。
					</p>
					<p>
						ネックラインに合わせて円形に縫い合わせていく必要がある襟は、一度アイロンの熱により成形し、縫い合わせにはリンキング機を使用。前身、後ろ身、袖はミシン縫製を行います。
					</p>
					<p>
						息が止まるような細かな作業ですが、縫い合わせをていねいに行うことで着心地の良いニットに仕上がります。素材や製品の質感によって針の太さや縫い合わせの糸の太さを変えていきますが、どれを使って縫製をしていくかは、全て職人がその場で触り、目で見て判断します。
					</p>
				</div>
			</div>

			<h5 class="oneline aboutMenu">
				<span>
					03
				</span>
				検査・糸始末
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/about_03.jpg" alt="製品化までのストーリー">
				</div>
				<div class="conceptBox_feature--box--txt">
					<p>
						完成した製品をひとつひとつ検査していきます。編み目がほつれてはいないか、均等に編まれているかなどを、光を通して人の目で念入りにチェックします。
					</p>
					<p>
						編み終わり部分の糸や、縫製で余った糸などを始末していくスティッチングの作業です。リッパーや糸通しといった道具を使いながら、余分な糸をカットしたり、編み地にもぐしたり。美しいニット作りには欠かせない工程です。
					</p>
				</div>
			</div>

			<h5 class="oneline aboutMenu">
				<span>
					04
				</span>
				加工
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic ord1">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/about_04.jpg" alt="製品化までのストーリー">
				</div>
				<div class="conceptBox_feature--box--txt ord2">
					<p>
						ニットの風合いを決める大切な工程です。柔らかな風合いを見せるミンク加工や刺繍にふくらみを持たせるパーマック加工など、加工の種類はさまざま。素材の種類によっても、最適な加工時間や温度は異なります。
					</p>
					<p>
						熱や圧力をかけていくため、ニットが縮むことを考慮した上で加工を行い、職人の英知により製品の規格通りのサイズに仕上げていきます。職人の経験と感覚で、寸分の狂いもない美しいニットが仕上がるのです。
					</p>
				</div>
			</div>

			<h5 class="oneline aboutMenu">
				<span>
					05
				</span>
				検品・出荷
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/about_05.jpg" alt="製品化までのストーリー">
				</div>
				<div class="conceptBox_feature--box--txt">
					<p>
						最後にもう一度、糸のほつれはないか、汚れはないかを人の目で確認していきます。ひとつひとつの製品を念入りにチェックしたら、タグ付け、袋入れを行い、異物混入がないかどうか機械で検針を行います。十分なスペースが確保された広い空間を設けることで、よりていねいな検品を可能にしています。
					</p>
				</div>
			</div>
		</div>

		<div class="conceptBox_desc">
			<p class="conceptBox_desc--ttl">
				いいニットを<br class="sp_contents">長く着るために
			</p>
			<p class="conceptBox_desc--txt">
				糸の太さ、柔らかさ、肌触りなど素材そのものの良さを活かした伊藤忠商事のニット。<br class="pc_contents">上質なニットを長く着続けるために、ニットは正しく手入れしましょう。<br><br>
				形がよれやすいニットにとって、ハンガー干しはNG。<br class="pc_contents">風通しの良い日陰での置き干しを推奨します。<br class="pc_contents">日なたでの置き干しは乾きやすいですが、<br class="pc_contents">陽光の熱によって縮んだり、色落ちしてしまったりする可能性も。<br><br>
				洗濯機よりも、ぬるま湯を張ったボウルなどに洗剤を入れてもみ洗いする方が、<br class="pc_contents">縮みやよれを予防してくれます。
			</p>
		</div>

		<div class="conceptBox_category">
			<h4>
				ITEMS
			</h4>
			<ul>
				<li>
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=001&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">アウター</a>
				</li>
				<li>
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=002&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">シャツ・ブラウス</a>
				</li>
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
				<li>
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=008&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">帽子</a>
				</li>
				<li>
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=009&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">靴下</a>
				</li>
			</ul>
		</div>

		<div class="conceptBox_aboutOther">
			<p class="conceptBox_aboutOther--ttl">
				素材を知る
			</p>
			<div class="conceptBox_aboutOther--box">
				<div class="conceptBox_aboutOther--box--list">
					<a href="<%= Constants.PATH_ROOT %>Page/Concept/merino_optimo.aspx">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/other_merino.jpg" alt="MERINO OPTIMO">
						<div class="btnTxt">
							<p>
								MERINO<br>
								OPTIMO
							</p>
						</div>
					</a>
				</div>
				<div class="conceptBox_aboutOther--box--list">
					<a href="<%= Constants.PATH_ROOT %>Page/Concept/hamilton_lambs_wool.aspx">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/other_hamilton.jpg" alt="HAMILTON LAMBS WOOL">
						<div class="btnTxt">
							<p>
								HAMILTON<br>
								LAMBS WOOL
							</p>
						</div>
					</a>
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
					製品化までのストーリー
				</a>
			</li>
		</ul>
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

