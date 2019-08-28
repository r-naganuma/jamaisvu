<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="HAMILTON LAMS WOOL | Jamais Vu オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
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
	<h2>CONCEPT</h2>

	<div class="conceptBox">
		<div class="conceptBox_header">
			<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_main.jpg" alt="HAMILTON LAMS WOOL">
			<h3>
				<span>
					HAMILTON LAMBS WOOL
				</span>
				肌にしっとり馴染む<br class="sp_contents">高級ラムウール
			</h3>
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
					オーストラリアのヴィクトリア州、西部に広がる街・ジローン。この地域の名を冠した「ジローンラム」は、高級ラムウールとして世界的に愛されています。ジローンという街は、あくまで州西部のウールの集積地・取引所。実際に高級ウールを携えた子羊を飼育しているのが、「ハミルトンラムズウール」の産地・ハミルトン地方です。
				</p>
				<p>
					ハミルトン地方は、砂漠からの風と海からの風がちょうどぶつかる場所。年中しとしとと雨が降り注ぎ、気温は冬でも氷点下になりづらく、夏でも30℃を越すことはほとんどありません。また、霧がよくかかることから常に地面が湿っており、羊の餌となる青々とした牧草が地面を覆っています。
				</p>
			</div>
			<div class="conceptBox_where--map">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_01.png" alt="HAMILTON LAMS WOOL">
			</div>
		</div>

		<div class="conceptBox_quality">
			<!-- <div class="conceptBox_quality--pic">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_03.jpg" alt="HAMILTON LAMS WOOL">
			</div> -->
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
		</div>

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
				一生に一度しか採れない<br class="sp_contents">最高級ウール
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_04.jpg" alt="HAMILTON LAMS WOOL">
				</div>
				<div class="conceptBox_feature--box--txt">
					<p>
						ハミルトンラムズウールと認められるのは、誕生してから一度も毛を刈っていない仔羊たちの毛。毛の根元から毛先にかけて、徐々に細くなっているのが特徴です。これは、羊の一生で最初の一度しか採れない貴重なウールです。
					</p>
					<p>
						多くのラムウール素材は短く刈った毛を集めて糸にするため、チクチク感やごわつきが気になるもの。ですがハミルトンラムズウールは長く、毛先が細いラムウールを使用するため、紡績時の糸の飛び出しが少なく、ごわつき感を軽減してくれます。
					</p>
				</div>
			</div>

			<h5>
				<span>
					02
				</span>
				肌にしっとりと馴染む<br class="sp_contents">柔らかな心地よさ
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic ord1">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_05.jpg" alt="HAMILTON LAMS WOOL">
				</div>
				<div class="conceptBox_feature--box--txt ord2">
					<p>
						寒さを凌ぐ厚手のコートから薄手のニットまで、多彩な製品で重宝されるハミルトンラムズウール。毛先が細く・長く、柔らかであること、独特なぬめりと光沢を持っていることから、肌に触れた時の柔らかさ、肌馴染みの良さは格別です。
					</p>
					<p>
						長年ウールの選別に携わってきた目利きのいい買い付け人が、現地に足を伸ばしてハミルトンラムズウールとして使用できる高級ラムウールのみを買い付け。ウールの最高ランクに位置付けられる平均17.5マイクロン（スーパー エクストラファインメリノ）という繊維の細さを徹底し、しなやかな糸を生み出します。
					</p>
				</div>
			</div>

			<h5>
				<span>
					03
				</span>
				防縮加工を行わないことで<br class="sp_contents">なめらかな着心地を叶える
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/hamilton_06.jpg" alt="HAMILTON LAMS WOOL">
				</div>
				<div class="conceptBox_feature--box--txt">
					<p>
						ハミルトンラムズウールの製品は、その柔らかさを最大限に活かすため、防縮加工を行なっていません。これにより、ハミルトンラムズウール本来のふわりとした着心地、なめらかさを肌で感じることができるのです。
					</p>
					<p>
						防縮加工をしていないことから、毛同士が擦れ合い、ピリング（毛玉）ができやすいという特性も。気になるピリングは適度に手で取るなどの日頃の手入れをすることで、製品が長持ちします。縮みや型崩れを防ぐため、ドライクリーニングを施すのも大切です。
					</p>
				</div>
			</div>

			<div class="conceptBox_feature--btn">
				<a href="<%= Constants.PATH_ROOT %>Page/Concept/about.aspx">製品化までのストーリー</a>
			</div>
		</div>

		<div class="conceptBox_item">
			<p class="conceptBox_item--ttl">
				HAMILTON LAMBS WOOL を使ったアイテム
			</p>
			<div class="conceptBox_item--box">
				<div class="conceptBox_item--box--list">
					<a href="">
						<img src="<%= Constants.PATH_ROOT %>Contents/ProductImages/0/rptest_LL.jpg" alt="HAMILTON LAMS WOOL">
						<p class="itemName">
							商品名が入ります1行以上は省略表示します。商品名が入ります1行以上は省略表示します。
						</p>
						<p class="price">
							¥25,920(tax in)
						</p>
					</a>
				</div>
				<div class="conceptBox_item--box--list">
					<a href="">
						<img src="<%= Constants.PATH_ROOT %>Contents/ProductImages/0/rptest_LL.jpg" alt="HAMILTON LAMS WOOL">
						<p class="itemName">
							商品名が入ります1行以上は省略表示します。商品名が入ります1行以上は省略表示します。
						</p>
						<p class="price">
							¥25,920(tax in)
						</p>
					</a>
				</div>
				<div class="conceptBox_item--box--list">
					<a href="">
						<img src="<%= Constants.PATH_ROOT %>Contents/ProductImages/0/rptest_LL.jpg" alt="HAMILTON LAMS WOOL">
						<p class="itemName">
							商品名が入ります1行以上は省略表示します。商品名が入ります1行以上は省略表示します。
						</p>
						<p class="price">
							¥25,920(tax in)
						</p>
					</a>
				</div>
				<div class="conceptBox_item--box--list">
					<a href="">
						<img src="<%= Constants.PATH_ROOT %>Contents/ProductImages/0/rptest_LL.jpg" alt="HAMILTON LAMS WOOL">
						<p class="itemName">
							商品名が入ります1行以上は省略表示します。商品名が入ります1行以上は省略表示します。
						</p>
						<p class="price">
							¥25,920(tax in)
						</p>
					</a>
				</div>
			</div>

			<div class="conceptBox_item--btn">
				<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&_material=%e3%83%8f%e3%83%9f%e3%83%ab%e3%83%88%e3%83%b3%e3%83%a9%e3%83%a0%e3%82%a6%e3%83%bc%e3%83%ab&pno=1">MORE</a>
			</div>
		</div>

		<div class="conceptBox_other">
			<p class="conceptBox_other--ttl">
				他の素材をみる
			</p>
			<div class="conceptBox_other--box">
				<div class="conceptBox_other--box--list">
					<a href="<%= Constants.PATH_ROOT %>Page/Concept/the_falkland_wool.aspx">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/other_falkland.jpg" alt="THE FALKLAND WOOL">
						<div class="btnTxt">
							<p>
								THE FALKLAND<br>
								WOOL
							</p>
						</div>
					</a>
				</div>
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

