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
<%@ Page Title="TOP ver.2 - メインビジュアル" %>
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="mainVisualRev">
	<div class="mainVisualRev_slide">
	    <div class="mainVisualRev_main">
	        <img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/mv_main01.jpg" alt="">
	        <img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/mv_sp01.jpg" alt="">
	    </div>
	    <div class="mainVisualRev_sub pc_contents">
	        <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/mv_sub01.jpg" alt="">
	    </div>
	</div>
	<div class="mainVisualRev_slide">
	    <div class="mainVisualRev_main">
	        <img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/mv_main02.jpg" alt="">
	        <img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/mv_sp02.jpg" alt="">
	    </div>
	    <div class="mainVisualRev_sub pc_contents">
	        <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/mv_sub02.jpg" alt="">
	    </div>
	</div>
	<div class="mainVisualRev_slide">
	    <div class="mainVisualRev_main">
	        <img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/mv_main03.jpg" alt="">
	        <img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/mv_sp03.jpg" alt="">
	    </div>
	    <div class="mainVisualRev_sub pc_contents">
	        <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/mv_sub03.jpg" alt="">
	    </div>
	</div>
	<div class="mainVisualRev_slide">
	    <div class="mainVisualRev_main">
	        <img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/mv_main04.jpg" alt="">
	        <img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/mv_sp04.jpg" alt="">
	    </div>
	    <div class="mainVisualRev_sub pc_contents">
	        <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/mv_sub04.jpg" alt="">
	    </div>
	</div>
</div>
<%-- △編集可能領域△ --%>
