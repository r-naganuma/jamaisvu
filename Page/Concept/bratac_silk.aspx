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
	<div class="conceptPage bratacPage">
		<div class="bratacPage_ttl">
			<img src="images/bratac_silk/icn_bratac.jpg" alt="BRATAC SILK">
		</div>
		<p class="bratacPage_lead">
			20世紀前半、ブラジル日系開拓移民が日本養蚕業のDNAを引き継ぎ、<br class="pc_contents">極めた世界最高峰シルクを算出するBRATAC社のシルクのこと。<br>
			欧州の著名コレクションブランドが採用する、世界最高峰の貴重なシルクです。
		</p>
		<div class="bratacPage_main">
			<img class="pc_contents" src="images/bratac_silk/bratac_mv.jpg" alt="BRATAC SILK">
			<img class="sp_contents" src="images/bratac_silk/bratac_mv_sp.jpg" alt="BRATAC SILK">
		</div>
		<div class="bratacPage_about">
			<div class="bratacPage_about--txt">
				<p class="aboutTtl">
					里帰りシルク
				</p>
				<p class="aboutTxt">
					かつて、日本の養蚕業は質、取扱量ともに世界一を誇っていました。<br>
					そんな日系開拓民達がブラジルに渡って作ったのがブラジル拓殖組合、BRATAC社の前身です。<br>
					凡そ100年のながい時間を経て、日本で再び光り輝くBRATACのシルクを『里帰りシルク、Fiacao de Seda BRATAC s.a.』としてブランディング致します。
				</p>
			</div>
			<div class="bratacPage_about--pic">
				<img src="images/bratac_silk/img_01_01.jpg" alt="BRATAC SILK">
			</div>
		</div>
		<div class="bratacPage_about about02">
			<div class="bratacPage_about--txt">
				<p class="aboutTtl">
					ずっと触っていたくなる、<br>
					しなやかな風合い
				</p>
				<p class="aboutTxt">
					BRATAC 社のシルクは、シルクの等級で 6A という最もランクの高いシルクのみを使用。<br>
					繊維が均一なため本当に滑らかで、うっすらと光沢感が感じられます。<br>
					いつまでも触っていたくなる、そんな素材です。
				</p>
			</div>
			<div class="bratacPage_about--pic">
				<img src="images/bratac_silk/img_02_01.jpg" alt="BRATAC SILK">
			</div>
		</div>
		<uc:Parts000TMPL_009 runat="server" />
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

