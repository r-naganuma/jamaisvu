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
        <a href="">
            <img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_1.png" alt="">
            <img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_1_sp.jpg" alt="">
        </a>
    </li>
    <li>
        <a href="">
            <img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_1.png" alt="">
            <img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_1_sp.jpg" alt="">
        </a>
    </li>
    <li>
        <a href="">
            <img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_1.png" alt="">
            <img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/main_visual_1_sp.jpg" alt="">
        </a>
    </li>
</ul>
<%-- △編集可能領域△ --%>
