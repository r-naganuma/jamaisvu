<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="MERINO OPTIMO（メリノオプティモ）｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="MERINO OPTIMO（メリノオプティモ）ページ。上質なニットのカギとなる素材をご紹介します。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="MERINO OPTIMO,メリノオプティモ,素材,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
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
	<h2 class="ctsTtl">
		MERINO OPTIMO
		<span class="conceptSub">
			0.2%の希少な羊が生むしなやかなウール
		</span>
	</h2>

	<div class="conceptBox">
		<div class="conceptBox_header">
			<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/merino_main.jpg" alt="MERINO OPTIMO">
		</div>

		<div class="conceptBox_where">
			<!-- <div class="conceptBox_where--pic">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/merino_02.jpg" alt="MERINO OPTIMO">
			</div> -->
			<div class="conceptBox_where--txt">
				<h4>
					WHERE
					<span>
						産地
					</span>
				</h4>
				<p>
					羊の一種「メリノ種」の毛から生まれるメリノウールは、繊細さと柔らかさを併せ持つ品質の高さで世界中から愛されています。毛が細く、均一な長さを保つ上質なメリノウール。さらに品種改良を重ね誕生した高級メリノウールが、「メリノオプティモ」です。
				</p>
				<p>
					メリノウールは現在、オーストラリアやニュージーランドを中心に生産されています。対してメリノオプティモとなる羊は、特に自然豊かで放牧に適したオーストラリアの高原地帯・を中心としたエリアと、タスマニア島の東海岸エリアで飼育されています。
				</p>
			</div>
			<div class="conceptBox_where--map">
				<img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/merino_01.jpg" alt="MERINO OPTIMO">
				<img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/merino_01_sp.jpg" alt="MERINO OPTIMO">
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
					メリノオプティモは、メリノ種を交配し誕生した希少種により生み出されます。長年の研究を重ね誕生した特殊な毛を持つ羊の割合は、全メリノ種のうちのわずか0.2%。皮膚が薄く、毛穴が多いのが特徴で、その毛はしなやかで光沢を持っています。
				</p>
				<p>
					メリノオプティモと一般的なウールの最大の違いは、毛の縮れ具合を表す「クリンプ」の大きさといえるでしょう。欧州で最高級メリノと称されるサクソンメリノが非常に細かいクリンプを持つのに対し、メリノオプティモは深く大きなクリンプを持ちます。この違いにより、天鵞絨のようなエレガントさを生み出すのです。
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
				10年という年月をかけて<br class="sp_contents">生まれた希少ウール
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/merino_04.jpg" alt="MERINO OPTIMO">
				</div>
				<div class="conceptBox_feature--box--txt">
					<p>
						メリノオプティモは、メリノ種を交配し誕生した希少種により生み出されます。10年にも及ぶ長年の研究を重ね誕生したこの特殊な毛を持つ羊の割合は、全メリノ種のうちのわずか0.2%。非常に高い希少性を誇ります。
					</p>
					<p>
						皮膚が薄く、毛穴が多いのが特徴で、その毛はしなやかで光沢を持っています。毛の成長スピードが速いため生産性が高く、それでいて天鵞絨のような上質な毛が採れることから、農家にとってもメリットの多いウールとして注目されつつあります。
					</p>
				</div>
			</div>

			<h5 class="oneline">
				<span>
					02
				</span>
				なめらかで着心地も抜群
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic ord1">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/merino_05.jpg" alt="MERINO OPTIMO">
				</div>
				<div class="conceptBox_feature--box--txt ord2">
					<p>
						メリノオプティモの魅力は、なめらかな肌触りによる着心地の良さにあります。それはもちろん、長年の品種改良によるもの。メリノオプティモは柔らかく薄い皮膚を持ち毛穴の深さが均等なため、毛が生えてくる速さもほぼ均一。毛同士が絡み合うことなくまっすぐ伸びていくため、潤沢な脂がすべての毛に均等に行き渡り、独特のぬめりとカシミアのような肌触りの良さを実現します。
					</p>
					<p>
						チクチク感の少ない、肌に優しい着心地を実現します。美しい光沢感は、イタリアの高級メゾンでも採用されるほど。
					</p>
				</div>
			</div>

			<h5>
				<span>
					03
				</span>
				着れば着るほど<br class="sp_contents">肌になじんでいく
			</h5>
			<div class="conceptBox_feature--box">
				<div class="conceptBox_feature--box--pic">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/merino_06.jpg" alt="MERINO OPTIMO">
				</div>
				<div class="conceptBox_feature--box--txt">
					<p>
						ウールの品質の高さの指標となる、発色の良さ。メリノオプティモは、鮮やかな発色を高い発色の良さを誇るほか、天然の吸放湿性・消臭性といった機能性にも優れています。
					</p>
					<p>
						チクチク感の少ないメリノオプティモは、着れば着るほど肌になじみ、次第にカシミアのようななめらかな風合いに育っていきます。スーツやニットに最適ですが、肌に直接触れてもべたつくような不快感がないため、インナーなどにもぴったりです。
					</p>
				</div>
			</div>

			<!-- <div class="conceptBox_feature--btn">
				<a href="<%= Constants.PATH_ROOT %>Page/Concept/about.aspx">製品化までのストーリー</a>
			</div> -->
		</div>

		<!-- <div class="conceptBox_item">
			<p class="conceptBox_item--ttl">
				MERINO OPTIMO を使ったアイテム
			</p>
			<div class="conceptBox_item--box">
				<div class="conceptBox_item--box--list">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?pid=1930313255">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/merino_item01.jpg" alt="MERINO OPTIMO">
						<p class="itemName">
							フィットカーディガン
						</p>
						<p class="price">
							¥18,360(tax in)
						</p>
					</a>
				</div>
				<div class="conceptBox_item--box--list">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?pid=1930315161">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/merino_item02.jpg" alt="MERINO OPTIMO">
						<p class="itemName">
							Vネックベスト
						</p>
						<p class="price">
							¥16,200(tax in)
						</p>
					</a>
				</div>
				<div class="conceptBox_item--box--list">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?pid=1930316135">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/merino_item03.jpg" alt="MERINO OPTIMO">
						<p class="itemName">
							ホールガーメントTシャツ
						</p>
						<p class="price">
							¥15,120(tax in)
						</p>
					</a>
				</div>
				<div class="conceptBox_item--box--list">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?pid=1930314241">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/merino_item04.jpg" alt="MERINO OPTIMO">
						<p class="itemName">
							フィットプルオーバー
						</p>
						<p class="price">
							¥18,360(tax in)
						</p>
					</a>
				</div>
			</div>

			<div class="conceptBox_item--btn">
				<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&_material=%e3%83%a1%e3%83%aa%e3%83%8e%e3%82%aa%e3%83%97%e3%83%86%e3%82%a3%e3%83%a2&pno=1">MORE</a>
			</div>
		</div> -->

		<div class="conceptBox_other">
			<p class="conceptBox_other--ttl">
				他の素材をみる
			</p>
			<div class="conceptBox_other--box">
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
					MERINO OPTIMO
				</a>
			</li>
		</ul>
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

