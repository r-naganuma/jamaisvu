<%--
=========================================================================================================
  Module      : カスタムパーツテンプレート画面(CustomPartsTemplate.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Control Language="C#" Inherits="BaseUserControl" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
タイトルタグはカスタムパーツのみ利用します。
<%@ Page Title="CONCEPT - INDEX" %>
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="conceptPage_material">
	<p class="conceptPage_material--ttl">JAMAIS VUの素材を知る</p>
	<div class="conceptPage_material--box">
		<div class="materialList">
			<a href="<%= Constants.PATH_ROOT %>Page/Concept/hamilton_lambs_wool.aspx">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/icn_hamilton.png" alt="HAMILTON LAMBSWOOL">
				<p>HAMILTON <br class="sp_contents">LAMBSWOOL</p>
			</a>
		</div>
		<div class="materialList">
			<a href="<%= Constants.PATH_ROOT %>Page/Concept/merino_optimo.aspx">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/icn_merino.png" alt="MERINO OPTIMO">
				<p>MERINO OPTIMO</p>
			</a>
		</div>
		<div class="materialList">
			<a href="<%= Constants.PATH_ROOT %>Page/Concept/suvin_cotton.aspx">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/icn_suvin.png" alt="SUVIN COTTON">
				<p>SUVIN COTTON</p>
			</a>
		</div>
		<!-- <div class="materialList">
			<a href="<%= Constants.PATH_ROOT %>Page/Concept/merino_optimo.aspx">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/icn_one.png" alt="ONE COTTON">
				<p>ONE COTTON</p>
			</a>
		</div>
		<div class="materialList">
			<a href="<%= Constants.PATH_ROOT %>Page/Concept/merino_optimo.aspx">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/icn_peruvian.png" alt="PERUVIAN PIMA COTTON">
				<p>PERUVIAN <br class="sp_contents">PIMA COTTON</p>
			</a>
		</div>
		<div class="materialList">
			<a href="<%= Constants.PATH_ROOT %>Page/Concept/merino_optimo.aspx">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/icn_ice.png" alt="ICE COTTON">
				<p>ICE COTTON</p>
			</a>
		</div>
		<div class="materialList">
			<a href="<%= Constants.PATH_ROOT %>Page/Concept/merino_optimo.aspx">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/icn_bratac.png" alt="BRATAC SILK">
				<p>BRATAC SILK</p>
			</a>
		</div>
		<div class="materialList">
			<a href="<%= Constants.PATH_ROOT %>Page/Concept/merino_optimo.aspx">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/icn_terre.png" alt="TERRE  DE LIN">
				<p>TERRE DE LIN</p>
			</a>
		</div> -->
		<div class="materialList">
			<a href="<%= Constants.PATH_ROOT %>Page/Concept/ozone_finishing.aspx">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/concept/icn_ozone.png" alt="OZONE FINISHING">
				<p>OZONE FINISHING</p>
			</a>
		</div>
	</div>
</div>
<%-- △編集可能領域△ --%>
