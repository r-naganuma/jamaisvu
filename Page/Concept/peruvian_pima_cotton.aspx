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
<%@ Register TagPrefix="uc" TagName="Parts000TMPL_009" Src="~/Page/Parts/Parts000TMPL_009.ascx" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<link href='css/common.css?123' rel='stylesheet' type='text/css'>
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
	<div class="conceptPage peruvianPage">
		<div class="peruvianPage_ttl">
			<img src="images/peruvian_pima_cotton/icn_ppc.jpg" alt="PERUVIAN PIMA COTTON">
		</div>
		<p class="peruvianPage_lead">
			ペルヴィアンピマは、欧米で特にその評価は高く、<br>
			イタリアの高級シャツ地、高級ニット地などにもよく採用されています。<br>
			数々のブランドがその風合いを評価し、高級綿素材の一つとしてペルヴィアンピマを選んでいます。
		</p>
		<div class="peruvianPage_main">
			<img class="pc_contents" src="images/peruvian_pima_cotton/ppc_mv.jpg" alt="PERUVIAN PIMA COTTON">
			<img class="sp_contents" src="images/peruvian_pima_cotton/ppc_mv_sp.jpg" alt="PERUVIAN PIMA COTTON">
		</div>
		<div class="peruvianPage_about">
			<div class="peruvianPage_about--txt">
				<p class="aboutTtl">
					SLOW FASHION
				</p>
				<p class="aboutTxt">
					ペルヴィアンピマは、古代から伝わる伝統的な農法を代々受け継ぎ、<br>地元の農家によって大切に育てられています。<br>
					機械や農薬にあまり頼らず、有機肥料や農耕馬などを活用し、手摘みによって収穫が行われています。<br>
					また綿花の繊維と種を分ける綿繰り（ジン）という作業を行う機械は、なんと1870年代製の旧式のローラー・ジンをまだ使っています。<br>
					最新の機械と比べると生産効率は格段に落ちますが、手積みで収穫された大切な綿花を、傷めずゆっくりと種から分けることで、 綿花の高いクオリティが失われずに保たれています。<br>
					<br>
					このように大事に育てられ摘み取られたペルヴィアンピマは、 超長綿の素晴らしさをそのまま表現できるプレミアムコットンなのです。
				</p>
			</div>
			<div class="peruvianPage_about--pic">
				<img src="images/peruvian_pima_cotton/img_01.jpg" alt="PERUVIAN PIMA COTTON">
			</div>
		</div>
		<div class="peruvianPage_aboutWrap">
			<div class="peruvianPage_about about02">
				<div class="peruvianPage_about--txt">
					<p class="aboutTtl">
						EXTRA LONG<br>STAPLE COTTON
					</p>
					<p class="aboutTxt">
						綿花の中で、上質で高級衣料に使われるのが「超長綿」と呼ばれる繊維長の長いワタです。約35mm以上の繊維長を持つため、より細番手の糸を作ることができ、きめ細かく上質な風合いを生み出します。<br>
						超長綿は植物学上ではゴシピウム属・バルバデンセ種（Gossypium Barbadense）と分類されますが、 発祥は紀元前の南米のペルー北部であり、 そこから世界に伝播していったといわれています。<br>
						<br>
						超長綿として有名な、カリブ海の「海島綿」、アメリカの「スーピマ」なども、そのルーツを辿っていくと、古代文明の栄えたペルーにいきつくのです。<br>
						その発祥の地ペルーにて、豊かな文明の発展とともに綿花栽培は代々受け継がれ、今でも世界有数の超長綿を生産しています。
					</p>
				</div>
				<div class="peruvianPage_about--pic">
					<img src="images/peruvian_pima_cotton/img_02.jpg" alt="PERUVIAN PIMA COTTON">
				</div>
			</div>
		</div>
		<uc:Parts000TMPL_009 runat="server" />
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

