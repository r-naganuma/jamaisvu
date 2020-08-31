<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="HAMILTON LAMBS WOOL（ハミルトンラムズウール）｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="HAMILTON LAMBS WOOL（ハミルトンラムズウール）ページ。上質なニットのカギとなる素材をご紹介します。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="HAMILTON LAMBS WOOL,ハミルトンラムズウール,素材,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<link href="https://fonts.googleapis.com/css?family=Noto+Serif+JP&display=swap" rel="stylesheet">
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
	<h2 class="splh ctsTtl">
		HAMILTON <br class="sp_contents">LAMBS WOOL
		<span class="conceptSub">
			優れた環境から作られる高級ラムウール
		</span>
	</h2>

	<div class="conceptBox">
		<div class="conceptBox_header">
			<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_main.jpg" alt="HAMILTON LAMS WOOL">
		</div>

		<div class="conceptBox_where">
			<!-- <div class="conceptBox_where--pic">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_02.jpg" alt="HAMILTON LAMS WOOL">
			</div> -->
			<div class="conceptBox_where--txt">
				<h4>
					WHERE
					<span>
						産地
					</span>
				</h4>
				<p>
					オーストラリアのヴィクトリア州、西部に広がる街・ジローン。この地域の名を冠した「ジローンラム」は、高級ラムウールとして世界的に愛されています。<br>
					ジローンという街は、あくまで州西部のウールの集積地・取引所。実際に高級ウールを携えた子羊を飼育している地域の中でトップクラスの品質を誇るのが、「ハミルトンラムズウール」の産地・ハミルトン地方です。
				</p>
				<p>
					ハミルトン地方は、砂漠からの風と海からの風がちょうどぶつかる場所。年中しとしとと雨が降り注ぎ、気温は冬でも氷点下になりづらく、夏でも30℃を越すことはほとんどありません。また、霧がよくかかることから常に地面が湿っており、羊の餌となる青々とした牧草が地面を覆っています。
				</p>
			</div>
			<div class="conceptBox_where--map">
				<img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_01.jpg" alt="HAMILTON LAMS WOOL">
				<img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_01_sp.jpg" alt="HAMILTON LAMS WOOL">
			</div>
		</div>

		<!-- <div class="conceptBox_quality">
			<div class="conceptBox_quality--txt">
				<h4>
					QUALITY
					<span>
						品質
					</span>
				</h4>
				<p>
					ハミルトンラムズウールの魅力は、柔らかさとぬめり、そして白度の高さにあります。これは、ハミルトン地方の気候が大きく関係しています。安定した気候により水分と栄養をたっぷり含んだ牧草を母羊が食べ、そのミルクを仔羊が飲む。すると、自然と仔羊の毛質が柔らかく上質なものになり、肌にしっとりと馴染むぬめりを生み出すのです。
				</p>
				<p>
					白度や光沢の高さも、気候が関係しています。羊毛が黄色くくすむのは、暑さによる汗や放牧で砂埃の混じった風を受けるため。ハミルトン地方は一年を通して気温が落ち着いていることから発汗が少なく、潤沢な草木のおかげで風による砂埃も立ちません。ハミルトンラムズウールの品質の高さは環境から作られています。
				</p>
			</div>
		</div> -->

		<div class="conceptBox_feature">
			<h4>
				FEATURE
				<span>
					3つの特徴
				</span>
			</h4>
			<h5>
				<span>
					01
				</span>
				整った環境が<br class="sp_contents">最高のラムウールを生み出す
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_04.jpg" alt="HAMILTON LAMS WOOL">
				</div>
				<div class="conceptBox_feature--box--txt">
					<p>
						ハミルトンラムズウールの産地は、最高レベルのラムウールの質を誇るオーストラリアのハミルトン地方。その安定した気候により水分と栄養をたっぷり含んだ牧草が育ち、その牧草を母羊が食べ、ミルクを仔羊が飲む。すると、自然と仔羊の毛質が柔らかく上質なものになるのです。
					</p>
					<p>
						白度や光沢の高さも気候が関係します。羊毛がくすむのは、暑さによる汗や放牧で砂埃の混じった風を受けるため。ハミルトン地方は一年を通して気温が落ち着いていることから発汗が少なく、潤沢な草木のおかげで風による砂埃も立ちません。
					</p>
				</div>
			</div>

			<h5>
				<span>
					02
				</span>
				一生に一度しか採れない<br class="sp_contents">希少な最高級ウール
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic ord1">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_05.jpg" alt="HAMILTON LAMS WOOL">
				</div>
				<div class="conceptBox_feature--box--txt ord2">
					<p>
						ハミルトンラムズウールと認められるのは、誕生してから一度も毛を刈っていない仔羊たちの毛。毛の根元から毛先にかけて、徐々に細くなっていくのが特徴です。これは、羊の一生で最初の毛刈りでしか採れない極めて貴重なウールです。
					</p>
					<p>
						多くのラムウール素材は短く刈った毛を集めて糸にするため、チクチク感やごわつきが気になるもの。ですがハミルトンラムズウールは毛先が細く長いラムウールを使用するため、紡績時の糸の飛び出しが少なく、ごわつき感を軽減してくれます。
					</p>
				</div>
			</div>

			<h5>
				<span>
					03
				</span>
				厳選した牧場から<br class="sp_contents">買い付けを行う
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_06.jpg" alt="HAMILTON LAMS WOOL">
				</div>
				<div class="conceptBox_feature--box--txt">
					<p>
						ハミルトン地方で育てられたラムウールの中でも、ハミルトンラムズウールに適した羊毛が生み出されるのは限られた牧場のみ。その厳選した牧場から買い付けを行うのは、長年ウールの選別に携わってきた目利き人です。白度、触り心地、繊維の細さなどいくつもの基準をクリアしたラムウールのみを、ハミルトンラムズウールとして使用します。
					</p>
					<p>
						ハミルトンラムズウールの肌に触れた時の柔らかさ、肌馴染みの良さは格別。素材が本来持つ柔らかな特性がより際立つため、セーターにぴったりの風合いを実現します。
					</p>
				</div>
			</div>

			<!-- <div class="conceptBox_feature--btn">
				<a href="<%= Constants.PATH_ROOT %>Page/Concept/about.aspx">製品化までのストーリー</a>
			</div> -->
		</div>

		<!-- <div class="conceptBox_item">
			<p class="conceptBox_item--ttl">
				HAMILTON LAMBS WOOL を使ったアイテム
			</p>
			<div class="conceptBox_item--box">
				<div class="conceptBox_item--box--list">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?pid=1930310165">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_item01.jpg" alt="HAMILTON LAMS WOOL">
						<p class="itemName">
							ヘアリーTシャツ
						</p>
						<p class="price">
							¥17,280(tax in)
						</p>
					</a>
				</div>
				<div class="conceptBox_item--box--list">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?pid=1930304131">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_item02.jpg" alt="HAMILTON LAMS WOOL">
						<p class="itemName">
							タンクドレス
						</p>
						<p class="price">
							¥24,840(tax in)
						</p>
					</a>
				</div>
				<div class="conceptBox_item--box--list">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?pid=1930309111">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_item03.jpg" alt="HAMILTON LAMS WOOL">
						<p class="itemName">
							へアリーポロ
						</p>
						<p class="price">
							¥19,440(tax in)
						</p>
					</a>
				</div>
				<div class="conceptBox_item--box--list">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?pid=1930311149">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_item04.jpg" alt="HAMILTON LAMS WOOL">
						<p class="itemName">
							ヘアリーショートパンツ
						</p>
						<p class="price">
							¥17,280(tax in)
						</p>
					</a>
				</div>
			</div>

			<div class="conceptBox_item--btn">
				<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&_material=%e3%83%8f%e3%83%9f%e3%83%ab%e3%83%88%e3%83%b3%e3%83%a9%e3%83%a0%e3%82%ba%e3%82%a6%e3%83%bc%e3%83%ab&pno=1">MORE</a>
			</div>
		</div> -->

		<div class="conceptBox_other">
			<p class="conceptBox_other--ttl">
				他の素材をみる
			</p>
			<div class="conceptBox_other--box">
				<div class="conceptBox_other--box--list">
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
					HAMILTON LAMS WOOL
				</a>
			</li>
		</ul>
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

