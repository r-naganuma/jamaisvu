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
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
	<div class="conceptPage suvinPage">
		<div class="suvinPage_ttl">
			<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/icn_suvin.png" alt="SUVIN SAPPHIRE">
		</div>
		<p class="suvinPage_lead">
			SUVIN COTTONは世界に数あるコットンの中で最も繊維長が長いコットン。<br class="pc_contents">また、超極細の繊維であるため、シルクのような光沢感と<br class="pc_contents">カシミヤのようなしっとりとした風合いが特徴の超高級コットンです。
		</p>
		<div class="suvinPage_main">
			<img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/suvin01_pc.jpg" alt="SUVIN SAPPHIRE">
			<img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/suvin01_sp.jpg" alt="SUVIN SAPPHIRE">
		</div>
		<div class="suvinPage_about">
			<div class="suvinPage_about--txt">
				<p class="aboutTtl">
					コットン界の<br>
					超エリート血統
				</p>
				<p class="aboutTxt">
					カリブ海の島国であるセントビンセント（St.VINCENT）で栽培されている世界最高級の海島綿と、インド原産の高級綿：スジャータ（SUJATA）綿を両親に持つ、血統の良いハイブリッドコットン。<br>
					<br>
					実は、スビン（SUVIN）と言う名称はそれぞれの頭文字を取られているんです。
				</p>
			</div>
			<div class="suvinPage_about--pic">
				<img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/suvin02_pc.jpg" alt="SUVIN SAPPHIRE">
				<img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/suvin02_sp.jpg" alt="SUVIN SAPPHIRE">
			</div>
		</div>
		<div class="suvinPage_cts">
			<div class="suvinPage_cts--inner">
				<div class="ctsTxt">
					<p class="ctsTxt_ttl">
						大事に大事に育てられた<br>
						箱入り娘
					</p>
					<p class="ctsTxt_txt">
						品質を維持するためにインド南部、タミナールドゥ州の限られた農家でしか栽培することができません。また、機械や農薬にあまり頼らず、なんと、今でも手摘みによって収穫が行われています。<br>
						<br>
						手摘みで収穫された大切な綿花を、傷めることなく大事に大事にと種から分けることで、綿花の高いクオリティが失われずに保たれ、しなやかな風合いを生み出すのです。
					</p>
				</div>
				<div class="ctsPic">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/suvin03.jpg" alt="SUVIN SAPPHIRE">
				</div>
			</div>
		</div>
		<uc:Parts000TMPL_009 runat="server" />
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

