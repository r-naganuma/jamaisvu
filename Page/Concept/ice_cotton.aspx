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
	<div class="conceptPage icePage">
		<div class="icePage_ttl">
			<img src="images/ice_cotton/icn_ice.png" alt="SPOERRY ICE COTTON">
		</div>
		<div class="icePage_main">
			<img class="pc_contents" src="images/ice_cotton/ice_mv.jpg" alt="SPOERRY ICE COTTON">
			<img class="sp_contents" src="images/ice_cotton/ice_mv_sp.jpg" alt="SPOERRY ICE COTTON">
		</div>
		<div class="icePage_about about01">
			<div class="icePage_about--txt">
				<p class="aboutTtl">
					ひんや～りしたコットン？
				</p>
				<p class="aboutTxt">
					普通、コットンというと毛羽が空気層を作って保温性のあるもの。<br>
					アイスコットンはコットンを極限まで撚ることで空気層を無くし、<br class="pc_contents">ひんやりとした肌触りを生み出しています。ひんやりした心地よい冷感だけでなく、さらっとしたドライな肌触りが気持ちいい素材です。
				</p>
			</div>
			<div class="icePage_about--pic">
				<img src="images/ice_cotton/img_01.jpg" alt="SPOERRY ICE COTTON">
			</div>
		</div>
		<div class="icePage_aboutWrap">
			<div class="icePage_about about02">
				<div class="icePage_about--txt">
					<p class="aboutTtl">
						スイスの名門紡績<br>
						Spoerry 1866社の<br class="sp_contents">超高機能素材
					</p>
					<p class="aboutTxt">
						150年以上の歴史を持つ、スイスの名門紡績Spoerry 1866社は革新的な技術をベースに、<br class="sp_contents">オリジナリティに富んだコットン糸を作り続け、ラグジュアリーブランド中心に高い評価を得ています。
					</p>
				</div>
				<div class="icePage_about--pic">
					<img src="images/ice_cotton/img_02.jpg" alt="SPOERRY ICE COTTON">
				</div>
			</div>
		</div>
		<div class="icePage_about about03">
			<div class="icePage_about--txt">
				<p class="aboutTtl">
					天然X高機能の優れモノ
				</p>
				<p class="aboutTxt">
					アイスコットンの生み出す機能は薬剤でも合成繊維でもありません。<br class="pc_contents">あくまでも、<br class="sp_contents">品質の良い厳選された綿花、スイスの高い技術力、手間のかかる丁寧な工程、を経て実現しています。
				</p>
			</div>
			<div class="icePage_about--pic">
				<img src="images/ice_cotton/img_03.jpg" alt="SPOERRY ICE COTTON">
			</div>
		</div>
		<uc:Parts000TMPL_009 runat="server" />
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

