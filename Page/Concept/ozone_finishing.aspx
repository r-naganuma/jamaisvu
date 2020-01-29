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
	<div class="conceptPage ozonePage">
		<div class="ozonePage_ttl">
			<p>OZONE FINISHING</p>
		</div>
		<div class="ozonePage_main">
			<img class="pc_contents" src="<%= Constants.PATH_ROOT %>Page/Concept/images/ozone_finishing/ozone_mv.jpg" alt="OZONE FINISHING">
			<img class="sp_contents" src="<%= Constants.PATH_ROOT %>Page/Concept/images/ozone_finishing/ozone_mv_sp.jpg" alt="OZONE FINISHING">
		</div>
		<div class="ozonePage_about">
			<div class="ozonePage_about--txt">
				<p class="aboutTtl">
					オゾンとは
				</p>
				<p class="aboutTxt">
					オゾンには強い殺菌、脱臭、脱色の作用があり、実は、東京の飲用水にも殺菌にオゾンが使われています。<br>
					食品添加物にもオゾンを使うことが認めれていて、安全性もばっちりです。
				</p>
			</div>
			<div class="ozonePage_about--pic">
				<img src="<%= Constants.PATH_ROOT %>Page/Concept/images/ozone_finishing/img_01_01.jpg" alt="OZONE FINISHING">
			</div>
		</div>
		<div class="ozonePage_cts">
			<div class="ozonePage_cts--inner">
				<div class="ctsTxt">
					<p class="ctsTxt_ttl">
						オゾン加工＝<br>
						環境に配慮したユーズド加工
					</p>
					<p class="ctsTxt_txt">
						ユーズド感を出すための加工と言えば、ストーンウォッシュ（軽石を入れて洋服と一緒に洗う）、バイオウォッシュ（酵素を使って洋服にダメージを与える）が有名です。<br>
						しかし、いずれも加工中に洋服が傷んでしまいます。<br>
						それだけでなく、大量の排水が出たり、環境に有害な薬剤を使っていることも。<br>
						オゾン加工は水の使用量が少なくて、有害な薬剤の使用を抑えた加工です。<br>
						<br>
						従来のジーンズの加工では約 9000リットルの水を使用しますが、オゾン加工を使用した場合、半分以下の約 4000リットルの水の使用量に抑える事が可能です。<br>
						注）　当社比による数値です。加工内容によって変動します。
					</p>
				</div>
				<div class="ctsPic">
					<img src="<%= Constants.PATH_ROOT %>Page/Concept/images/ozone_finishing/img_02_01.jpg" alt="OZONE FINISHING">
				</div>
			</div>
			<div class="ozonePage_cts--inner inner02">
				<div class="ctsTxt">
					<p class="ctsTxt_ttl">
						オゾン加工機
					</p>
					<p class="ctsTxt_txt">
						1. 大気中の空気を機械内に取り込みます。<br>
						2. この空気は機械内部に移動しオゾンガスとなります。<br>
						3. オゾン (O3) は衣類品の色を退色させる効果があります。<br>
						4. 加工後のオゾン (O3) は空気 (O2) となって大気中に戻されます
					</p>
				</div>
				<div class="ctsPic">
					<img src="<%= Constants.PATH_ROOT %>Page/Concept/images/ozone_finishing/img_02_02.jpg" alt="OZONE FINISHING">
				</div>
			</div>
		</div>
		<div class="ozonePage_cts--inner inner03">
			<div class="ctsTxt">
				<p class="ctsTxt_ttl">
					加工後の排水にまで<br>
					気を使っています
				</p>
				<p class="ctsTxt_txt">
					排水が環境に負荷をかけないように、本格的な排水施設を作りました。浄化された排水の中で、魚が生き生きと泳げるほど綺麗にしています。
				</p>
			</div>
			<div class="ctsPic">
				<img src="<%= Constants.PATH_ROOT %>Page/Concept/images/ozone_finishing/img_03_01.jpg" alt="OZONE FINISHING">
			</div>
		</div>
		<uc:Parts000TMPL_009 runat="server" />
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

