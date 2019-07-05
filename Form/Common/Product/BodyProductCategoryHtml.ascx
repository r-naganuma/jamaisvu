<%--
=========================================================================================================
  Module      : 商品カテゴリHTML出力コントローラ(BodyProductCategoryHtml.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ control language="C#" autoeventwireup="true" inherits="Form_Common_Product_BodyProductCategoryHtml, App_Web_bodyproductcategoryhtml.ascx.acb385f3" %>
<%-- html別ファイル領域※カテゴリ毎に所定のhtmlファイルを所定のディレクトリに設置する事で自動で読み込まれます。ファイルが存在しない場合は、default.htmlが読み込まれます。--%>
<div id="divCategoryHtml" runat="server"></div>