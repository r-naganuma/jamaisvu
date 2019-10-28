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
<%@ Page Title="TOP - メインビジュアル" %>
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<%-- ▽編集可能領域：コンテンツ▽ --%>
<ul class="mainVisual">
    <li>
            <img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_1.jpg" alt="">
            <img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_1_sp.jpg" alt="">
    </li>
    <li>
            <img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_2.jpg" alt="">
            <img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_2_sp.jpg" alt="">
    </li>
    <li>
            <img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_3.jpg" alt="">
            <img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_3_sp.jpg" alt="">
    </li>
    <li>
            <img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_4.jpg" alt="">
            <img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_4_sp.jpg" alt="">
    </li>
    <li>
            <img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_5.jpg" alt="">
            <img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_5_sp.jpg" alt="">
    </li>
</ul>
<%-- △編集可能領域△ --%>
