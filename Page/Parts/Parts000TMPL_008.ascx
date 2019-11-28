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
<%@ Page Title="TOP ver.2 - SP CATEGORY" %>
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="sp_contents categoryTop">
	<h2 class="categoryTop_ttl">
		Category
	</h2>
    <ul>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">すべてのアイテム</a>
        </li>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=001&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">アウター</a>
        </li>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=003&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">ニット</a>
        </li>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=004&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">カットソー</a>
        </li>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=005&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">ワンピース</a>
        </li>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=006&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">スカート</a>
        </li>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=007&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">パンツ</a>
        </li>
    </ul>
</div>

<%-- △編集可能領域△ --%>
