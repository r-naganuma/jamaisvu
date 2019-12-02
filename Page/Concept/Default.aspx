<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="CONCEPT｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="JAMAIS VU （ジャメヴ）の製品化までのストーリーページ。上質なニットが作られる製造工程をご紹介します。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="素材,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
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
	<div class="conceptPage">
		<p class="conceptPage_txt1">
			過去と未来　既知と未知<br>
			いつだってその真ん中が心地良い
		</p>
		<p class="conceptPage_txt2">
			Rather be wearing Jamais Vu.
		</p>
		<p class="conceptPage_txt3">
			JAMAIS VUは<br class="sp_contents">「自由で正直なものづくりを大切にしたい」<br class="sp_contents">という考えから、<br>
			素材から作り手に至るまで<br class="sp_contents">本当に良いものを追求し、<br>
			流行に縛られないオーセンティックな製品を<br class="sp_contents">提案しています。
		</p>
		<p class="conceptPage_txt4">
			世界各国から良質な素材を選りすぐり、<br class="sp_contents">信頼できる職人により手がけられた<br>
			「日常でありながら特別」<br class="sp_contents">「シンプルでいながらスペシャル」<br class="sp_contents">「サイズレス・シーズンレス・エイジレス」な<br>
			新しいニュートラルスタイルをご提案いたします。 
		</p>
		<div class="conceptPage_material">
			<p class="conceptPage_material--ttl">素材を知る</p>
			<ul>
				<li>
					<a href="<%= Constants.PATH_ROOT %>Page/Concept/hamilton_lambs_wool.aspx">HAMILTON LAMBS WOOL</a>
				</li>
				<li>
					<a href="<%= Constants.PATH_ROOT %>Page/Concept/merino_optimo.aspx">MERINO OPTIMO</a>
				</li>
			</ul>
		</div>
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

