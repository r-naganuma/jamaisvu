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
	<div class="conceptPage">
		<div class="conceptPage_ttl">
			<p>
				RATHER<br>
				BE<br>
				WEARING<br>
				JAMAIS<br>
				VU.
			</p>
		</div>
		<div class="conceptPage_about">
			<div class="conceptPage_about--inner">
				<div class="conceptPageCts">
					<p class="conceptPageTxt">
						「JAMAIS VU（ジャメヴ）」とは「DÉJÀ VU（デジャヴ）」の反対を意味する言葉です。DÉJÀ VUが、すでにどこかで経験したことがあるような既視感を指すのに対して、<br class="pc_contents">JAMAIS VUは“日常見慣れたものを初めて見たと感じる体験”を意味します。<br>
						服の中に、過去と未来、既知と未知がバランス良く共存し、着る人それぞれが「なんだかしっくりくるちょうど良さ」への拘りこそがJAMAIS VUの大切なアイデンティティーなのです。<br>
						<br>
						原料から縫製に至るまでの服作りの過程を顔の見えるパートナーと取り組んでいくことで、肌に触れて初めて気がつく心地良さや快適さを正直に追求しています。<br>
						そして、「何色」とは表現出来ないけれど、誰もがいつか見た風景の中にあるような色。その色彩はいつも身近で包み込んでくれているかのように、着る人の自然体の美しさを引き立ててくれるという想いに基づいています。<br>
						<br>
						雨上がりの雲間から溢れる眩しい光や、夕暮れに肌をそっと撫でていく風のような、ありふれた日常の中からこぼれ落ちてくる煌めくような一瞬。そんな袖を通した人がふと顔がほころぶようなJAMAIS VUな体験を提供します。
					</p>
					<p class="conceptPageLead">
						過去と未来  既知と未知<br>
						いつだってその真ん中が心地良い
					</p>
				</div>
			</div>
		</div>
		<uc:Parts000TMPL_009 runat="server" />
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

