<%--
=========================================================================================================
  Module      : 商品カテゴリリスト出力コントローラ(BodyHeaderUserRegist.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ control language="c#" inherits="Form_Common_Product_BodyProductCategoryLinks, App_Web_bodyproductcategorylinks.ascx.acb385f3" %>
<asp:Repeater id="rCategoriesLink" runat="server">
<HeaderTemplate><ul class="breadMenu"><li><a href="<%= WebSanitizer.UrlAttrHtmlEncode(this.UnsecurePageProtocolAndHost + Constants.PATH_ROOT) %>">jamaisvu オンラインストア</a></li>
</HeaderTemplate>
<ItemTemplate>
	<li>
		<span>&nbsp;/&nbsp;</span><a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateCategoryLinkUrl(Eval(Constants.FIELD_PRODUCTCATEGORY_SHOP_ID), Eval(Constants.FIELD_PRODUCTCATEGORY_CATEGORY_ID), Eval(Constants.FIELD_PRODUCTCATEGORY_URL), (string)Eval(Constants.FIELD_PRODUCTCATEGORY_NAME))) %>'><%# WebSanitizer.HtmlEncode(Eval(Constants.FIELD_PRODUCTCATEGORY_NAME)) %></a>
	</li>
</ItemTemplate>
<FooterTemplate>
	</ul>
	<!-- &nbsp;<%#: string.IsNullOrEmpty(this.ProductColorId) ? "" : "(" + this.ProductColorId + "系)" %> -->
</FooterTemplate>
</asp:Repeater>
