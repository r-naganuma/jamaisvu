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
	<div class="conceptPage terredelin">
		<div class="terredelin_ttl">
			<img src="images/terredelin/icn_terredelin.png" alt="TERRE DE LIN">
		</div>
		<div class="terredelin_main">
			<img class="pc_contents" src="images/terredelin/terredelin_mv.jpg" alt="TERRE DE LIN">
			<img class="sp_contents" src="images/terredelin/terredelin_mv_sp.jpg" alt="TERRE DE LIN">
		</div>
		<div class="terredelinLead">
			<img src="images/terredelin/img_01.png" alt="TERRE DE LIN">
		</div>
		<div class="terredelin_about about01">
			<div class="terredelin_about--txt">
				<p class="aboutTtl">
					世界最大級のリネンの農協
				</p>
				<p class="aboutTxt">
					TERRE DE LIN はノルマンディ地方に拠点を置く世界最大級の<br class="pc_contents">フラックス農家 ( リネン原料の草 ) の協同組合、リネン業界の<br class="pc_contents">チャンピオンです! フラックスから作られるリネンは、<br class="pc_contents">工程が複雑なのと、育つ地域が限られるためちょっと高価。<br class="pc_contents">でもとっても優秀な素材なんです。
				</p>
			</div>
			<div class="terredelin_about--pic">
				<img src="images/terredelin/img_02.jpg" alt="TERRE DE LIN">
			</div>
		</div>
		<div class="terredelin_aboutWrap">
			<div class="terredelin_about about02">
				<div class="terredelin_about--txt">
					<div class="aboutTxtBox aboutTxtBox01">
						<p class="aboutTtl">
							麻ってごわごわ?
						</p>
						<p class="aboutTxt">
							麻と言っても、リネン、大麻、ヘンプなど種類は様々。<br>
							ヘンプや大麻は固い繊維で質感もハード。<br class="pc_contents">リネンはより柔らかな繊維のため、女性らしいやわらかーい<br>
							シルエットが特徴。また、シワはありますが、<br class="sp_contents">「紙を折ったような」シワにはならず、<br class="sp_contents">「ナチュラルな」織シワになります。
						</p>
					</div>
					<div class="aboutTxtBox">
						<p class="aboutTtl">
							夏に涼しいリネン
						</p>
						<p class="aboutTxt">
							リネンはコットンやシルクと比べて、<br class="sp_contents">水分や汗をすばやく吸い取り、すぐに発散します。<br class="sp_contents">肌にサラッとして、爽やかな涼感特徴です。<br>
							これからどんどん暑くなっていく季節に、<br>さらっと涼やかな最高の相棒です。
						</p>
					</div>
				</div>
				<div class="terredelin_about--pic">
					<img src="images/terredelin/img_03.jpg" alt="TERRE DE LIN">
				</div>
			</div>
		</div>
		<uc:Parts000TMPL_009 runat="server" />
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

