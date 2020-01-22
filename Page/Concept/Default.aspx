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
					<p class="conceptPageLead">
						過去と未来  既知と未知<br>
						いつだってその真ん中が心地良い
					</p>
					<p class="conceptPageTxt">
						JAMAIS VUは「自由で正直なものづくりを大切にしたい」という考えから、<br class="pc_contents">素材から作り手に至るまで本当に良いものを追求し、<br class="pc_contents">流行に縛られないオーセンティックな製品を提案しています。<br>
						<br>
						世界各国から良質な素材を選りすぐり、信頼できる職人により手がけられた<br class="pc_contents">「日常でありながら特別」「シンプルでいながらスペシャル」<br class="pc_contents">「サイズレス・シーズンレス・エイジレス」な<br class="pc_contents">新しいニュートラルスタイルをご提案いたします。
					</p>
				</div>
			</div>
		</div>
		<uc:Parts000TMPL_009 runat="server" />
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

