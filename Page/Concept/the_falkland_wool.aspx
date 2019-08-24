<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="THE FALKLAND WOOL | Jamais Vu オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
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
	<h2>CONCEPT</h2>

	<div class="conceptBox">
		<div class="conceptBox_header">
			<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/falkland_main.jpg" alt="THE FALKLAND WOOL">
			<h3>
				<span>
					THE FALKLAND WOOL
				</span>
				世界一の白度を誇る<br class="sp_contents">最高級ウール
			</h3>
		</div>

		<div class="conceptBox_where">
			<div class="conceptBox_where--pic">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/falkland_02.jpg" alt="THE FALKLAND WOOL">
			</div>
			<div class="conceptBox_where--txt">
				<h4>
					WHERE
					<span>
						産地
					</span>
				</h4>
				<p>
					オーストラリア本土の南東部に位置するタスマニア島。東西 296 キロ、面積は7万平方キロメートル弱のタスマニア島は、一年を通して多くの観光客が訪れる観光地でもあります。本土から切り離され、独自の生態系を持つタスマニア島。自然豊かで環境に恵まれたこの地で、高級・高品質な「タスマニアンメリノ」が作られます。
				</p>
				<p>
					農産や畜産が盛んに行われているのは、タスマニア島の東部一帯。砂漠からの風が吹かない、砂漠からの熱波が来ない、そして南からの多湿の風が吹くことから、非常に放牧に適したエリアです。
				</p>
			</div>
			<div class="conceptBox_where--map">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/falkland_01.jpg" alt="THE FALKLAND WOOL">
			</div>
		</div>

		<div class="conceptBox_quality">
			<div class="conceptBox_quality--pic">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/falkland_03.jpg" alt="THE FALKLAND WOOL">
			</div>
			<div class="conceptBox_quality--txt">
				<h4>
					QUALITY
					<span>
						品質
					</span>
				</h4>
				<p>
					ウールに厳しい欧州で最高品質と認められているサクソンメリノ種が初めてオーストラリアに持ち込まれたのが、タスマニア島。今なおドイツから持ち込まれたサクソンメリノ種の血統を持つ羊がタスマニア島で放牧されています。一流ブランドの支持も厚く、タスマニア産以外のウールは扱わないというブランドもあるほど。
				</p>
				<p>
					最大の特長は、その白度。世界一の白さと称され、貴重な最高級のファインウールとして国際的に支持されています。安定した気候により汗をかかず、砂漠からの風による毛の汚れもありません。
				</p>
			</div>
		</div>

		<div class="conceptBox_history">
			<h4>
				HISTORY
				<span>
					歴史
				</span>
			</h4>
			<div class="conceptBox_history--table">
				<dl>
					<dt>1829</dt>
					<dd>
						スコットランドのファーロング夫人が、ドイツのサクソン系メリノ羊をタスマニアに持ち込む。
					</dd>
				</dl>
				<dl>
					<dt>1839–</dt>
					<dd>
						純血種のメリノ羊からロンドンの市場向けの高品質のウールが産出される。<br>
						オーストラリア本土の飼育業者が品種改良のためタスマニアを訪れるようになる。
					</dd>
				</dl>
				<dl class="mrgT19">
					<dt>1860–</dt>
					<dd>
						オーストラリア国内の羊飼育産業でタスマニア産の種羊がトップとなる。
					</dd>
				</dl>
				<dl>
					<dt>1865</dt>
					<dd>
						羊毛ブローカーとしてケンプ ・ロバーツ商会（現在のロバーツ社）がタスマニアに創設される。
					</dd>
				</dl>
				<dl class="mrgT27">
					<dt>1902</dt>
					<dd>
						タスマニアで初の羊毛オークションが行われる。
					</dd>
				</dl>
				<dl class="mrgT59">
					<dt>1973<br>
					–1990</dt>
					<dd>
						羊毛価格の世界記録でタスマニアが業界の首位となる。
					</dd>
				</dl>
				<dl class="mrgT27">
					<dt>2003</dt>
					<dd>
						伊藤忠商事が日本市場での販促を一手に担う。
					</dd>
				</dl>
			</div>
		</div>

		<div class="conceptBox_feature">
			<h4>
				FEATURE
				<span>
					3つの特徴
				</span>
			</h4>
			<h5 class="oneline">
				<span>
					01
				</span>
				独特のドレープを持つ
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/falkland_04.jpg" alt="THE FALKLAND WOOL">
				</div>
				<div class="conceptBox_feature--box--txt">
					<p>
						サクソンメリノ種の血統により毛は伸びが早く、細く長いのが特長です。高い白度を持ちながら、光沢感と独特のドレープを持つタスマニアンメリノ。スーツなど製品化した時に、その風合いの違いをより感じることができます。
					</p>
					<p>
						細く長い毛質により、ウール特有のチクチク感が少ないのもタスマニアンメリノの魅力のひとつ。長く着続けるためには、型崩れ防止のために毎日の着用は避け、1シーズンごとのドライクリーニングを推奨します。
					</p>
				</div>
			</div>

			<h5 class="oneline">
				<span>
					02
				</span>
				血統を守り品質を担保する
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/falkland_05.jpg" alt="THE FALKLAND WOOL">
				</div>
				<div class="conceptBox_feature--box--txt">
					<p>
						世界的に認められているタスマニア産のウール。この品質を保証すべく、タスマニア島では外来種の受け入れをせずに純度の高いサクソンメリノの血統を守る努力を行なっています。
					</p>
					<p>
						毛の伸びが早いサクソンメリノ種は、一年を通して気温の低いタスマニア島の気候と好相性。最適な環境の中で飼育を行い、タスマニア産のサクソンメリノ種という価値を守るために、認証システムも実用されています。
					</p>
				</div>
			</div>

			<div class="conceptBox_feature--btn">
				<a href="<%= Constants.PATH_ROOT %>Page/Concept/about.aspx">製品化までのストーリー</a>
			</div>
		</div>

		<div class="conceptBox_item">
			<p class="conceptBox_item--ttl">
				THE FALKLAND WOOL を使ったアイテム
			</p>
			<div class="conceptBox_item--box">
				<div class="conceptBox_item--box--list">
					<a href="">
						<img src="<%= Constants.PATH_ROOT %>Contents/ProductImages/0/rptest_LL.jpg" alt="THE FALKLAND WOOL">
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
						<img src="<%= Constants.PATH_ROOT %>Contents/ProductImages/0/rptest_LL.jpg" alt="THE FALKLAND WOOL">
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
						<img src="<%= Constants.PATH_ROOT %>Contents/ProductImages/0/rptest_LL.jpg" alt="THE FALKLAND WOOL">
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
						<img src="<%= Constants.PATH_ROOT %>Contents/ProductImages/0/rptest_LL.jpg" alt="THE FALKLAND WOOL">
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
				<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&_material=%E3%83%95%E3%82%A9%E3%83%BC%E3%82%AF%E3%83%A9%E3%83%B3%E3%83%89%E3%82%A6%E3%83%BC%E3%83%AB&pno=1">MORE</a>
			</div>
		</div>

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
				<div class="conceptBox_other--box--list">
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
					THE FALKLAND WOOL
				</a>
			</li>
		</ul>
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

