﻿<%--
=========================================================================================================
  Module      : 商品一覧ソートリンク出力コントローラ(BodyProductSortBox.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ control language="c#" autoeventwireup="true" inherits="Form_Common_Product_BodyProductSortBox, App_Web_bodyproductsortbox.ascx.acb385f3" %>
<div class="pdList_sort">
<%--- 表示件数 ---%>
<!-- <asp:Repeater ID="rNumberDisplayLinks" runat="server">
	<HeaderTemplate>
	<div class="box clearFix">
	<p class="title">表示件数</p>
	<ul class="nav clearFix">
	</HeaderTemplate>
		<ItemTemplate>
		<%--- 未選択 ---%>
		<li visible='<%# this.DisplayCount != (int)Container.DataItem %>' runat="server">
		<a href='<%# WebSanitizer.UrlAttrHtmlEncode(CreateDisplayCountUrl(int.Parse(WebSanitizer.HtmlEncode(Container.DataItem)))) %>'>
		<%# WebSanitizer.HtmlEncode(Container.DataItem)%></a>
		</li>
		<%--- 選択中 ---%>
		<li visible='<%# this.DisplayCount == (int)Container.DataItem %>' class='active' runat="server">
		<%# WebSanitizer.HtmlEncode(Container.DataItem)%>
		</li>
		</ItemTemplate>
	<FooterTemplate>
	</ul>
	</div>
	</FooterTemplate>
</asp:Repeater> -->

<%--- 並び替え ---%>
<asp:Repeater ID="rSortList" runat="server">
	<HeaderTemplate>
	<div class="pdList_sort--list sortChange">
	<p class="sortTtl">表示順</p>
	<ul>
	</HeaderTemplate>
		<ItemTemplate>
		<%--- 未選択 ---%>
		<li visible='<%# this.SortKbn != ((ProductListDispSettingModel)Container.DataItem).SettingId %>' runat="server"><a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateSortUrl(((ProductListDispSettingModel)Container.DataItem).SettingId)) %>"><%# WebSanitizer.HtmlEncode(((ProductListDispSettingModel)Container.DataItem).SettingName)%></a></li>
		<%--- 選択中 ---%>
		<li visible='<%# this.SortKbn == ((ProductListDispSettingModel)Container.DataItem).SettingId %>' class='active' runat="server">
		<%# WebSanitizer.HtmlEncode(((ProductListDispSettingModel)Container.DataItem).SettingName)%></li>
		</ItemTemplate>
	<FooterTemplate>
		<%--- 未選択 ---%>
		<li visible='<%# (string.IsNullOrEmpty(this.ProductGroupId) == false) && (this.SortKbn != Constants.KBN_SORT_PRODUCT_LIST_PRODUCT_GROUP_ITEM_NO_ASC)  %>' runat="server">
			<a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateSortUrl(Constants.KBN_SORT_PRODUCT_LIST_PRODUCT_GROUP_ITEM_NO_ASC)) %>">特集おすすめ順</a></li>
		<%--- 選択中 ---%>
		<li visible='<%# (string.IsNullOrEmpty(this.ProductGroupId) == false) && (this.SortKbn == Constants.KBN_SORT_PRODUCT_LIST_PRODUCT_GROUP_ITEM_NO_ASC) %>'
			class='active' runat="server">特集おすすめ順</li>
	</ul>
	</div>
	</FooterTemplate>
</asp:Repeater>

<!-- <div class="box clearFix">
	<p class="title">表示切替</p>
	<ul class="nav clearFix">
		<li<%if (this.IsDispImageKbnOn) {%> class="active"<% } %>><%if (this.IsDispImageKbnOn == false) {%>
		<a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateImageDispTypeUrl(Constants.KBN_REQUEST_DISP_IMG_KBN_ON)) %>">一覧</a><%}else{%>一覧<%} %></li>
		<li<%if (this.IsDispImageKbnWindowsShopping) {%> class="active"<% } %>><%if (this.IsDispImageKbnWindowsShopping == false) {%>
		<a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateImageDispTypeUrl(Constants.KBN_REQUEST_DIST_IMG_KBN_WINDOWSHOPPING)) %>">ウィンドウショッピング</a><%}else{%>ウィンドウショッピング<%} %></li>
	</ul>
</div> -->

<%--- 在庫有無 ---%>
	<div class="pdList_sort--list sortItem">
	<p class="sortTtl">在庫</p>
	<ul>
		<li<%if (this.UndisplayNostock == Constants.KBN_PRODUCT_LIST_UNDISPLAY_NOSTOCK_PRODUCT_DISPLAY_NOSTOCK){%> class="active"<% } %>><%if (this.UndisplayNostock != Constants.KBN_PRODUCT_LIST_UNDISPLAY_NOSTOCK_PRODUCT_DISPLAY_NOSTOCK){%>
		<a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateDisplayStockUrl(Constants.KBN_PRODUCT_LIST_UNDISPLAY_NOSTOCK_PRODUCT_DISPLAY_NOSTOCK)) %>">すべての商品</a><%}
		else{%>すべての商品<%} %></li>
		<li<%if (this.UndisplayNostock == Constants.KBN_PRODUCT_LIST_UNDISPLAY_NOSTOCK_PRODUCT_UNDISPLAY_NOSTOCK){%> class="active"<% } %>><%if (this.UndisplayNostock != Constants.KBN_PRODUCT_LIST_UNDISPLAY_NOSTOCK_PRODUCT_UNDISPLAY_NOSTOCK){%>
		<a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateDisplayStockUrl(Constants.KBN_PRODUCT_LIST_UNDISPLAY_NOSTOCK_PRODUCT_UNDISPLAY_NOSTOCK)) %>">在庫あり</a><%}
		else{%>在庫あり<%} %></li>
		<!-- <li<%if (this.UndisplayNostock == Constants.KBN_PRODUCT_LIST_UNDISPLAY_NOSTOCK_PRODUCT_DISPLAY_NOSTOCK_BOTTOM){%> class="active"<% } %>><%if (this.UndisplayNostock != Constants.KBN_PRODUCT_LIST_UNDISPLAY_NOSTOCK_PRODUCT_DISPLAY_NOSTOCK_BOTTOM){%>
		<a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateDisplayStockUrl(Constants.KBN_PRODUCT_LIST_UNDISPLAY_NOSTOCK_PRODUCT_DISPLAY_NOSTOCK_BOTTOM)) %>">すべて表示(在庫あり優先)</a><%}
		else{%>すべて表示(在庫あり優先)<%} %></li> -->
		<!-- <li<%if (this.UndisplayNostock == Constants.KBN_PRODUCT_LIST_UNDISPLAY_NOSTOCK_PRODUCT_DISPLAY_NOSTOCK_ONLY){%> class="active"<% } %>><%if (this.UndisplayNostock != Constants.KBN_PRODUCT_LIST_UNDISPLAY_NOSTOCK_PRODUCT_DISPLAY_NOSTOCK_ONLY){%>
		<a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateDisplayStockUrl(Constants.KBN_PRODUCT_LIST_UNDISPLAY_NOSTOCK_PRODUCT_DISPLAY_NOSTOCK_ONLY)) %>">在庫無しのみ表示</a><%}
		else{%>在庫無しのみ表示<%} %></li> -->
		</ul>
	</div>
<% if (Constants.FIXEDPURCHASE_OPTION_ENABLED) {%>
<%--- 定期購入フィルタ ---%>
<!-- <div class="box clearFix">
	<p class="title">通常・定期</p>
	<ul class="nav clearFix">
		<li<%if (this.FixedPurchaseFilter == Constants.KBN_PRODUCT_LIST_FIXED_PURCHASE_FILTER_ALL){%> class="active"<% } %>><%if (this.FixedPurchaseFilter != Constants.KBN_PRODUCT_LIST_FIXED_PURCHASE_FILTER_ALL){%>
		<a href="<%#: CreateFixedPurchaseFilterUrl(Constants.KBN_PRODUCT_LIST_FIXED_PURCHASE_FILTER_ALL) %>">すべて表示</a><%}
		else{%>すべて表示<%} %></li>
		<li<%if (this.FixedPurchaseFilter == Constants.KBN_PRODUCT_LIST_FIXED_PURCHASE_FILTER_NORMAL){%> class="active"<% } %>><%if (this.FixedPurchaseFilter != Constants.KBN_PRODUCT_LIST_FIXED_PURCHASE_FILTER_NORMAL){%>
		<a href="<%#: CreateFixedPurchaseFilterUrl(Constants.KBN_PRODUCT_LIST_FIXED_PURCHASE_FILTER_NORMAL) %>">通常購入可能</a><%}
		else{%>通常購入可能<%} %></li>
		<li<%if (this.FixedPurchaseFilter == Constants.KBN_PRODUCT_LIST_FIXED_PURCHASE_FILTER_FIXED_PURCHASE){%> class="active"<% } %>><%if (this.FixedPurchaseFilter != Constants.KBN_PRODUCT_LIST_FIXED_PURCHASE_FILTER_FIXED_PURCHASE){%>
		<a href="<%#: CreateFixedPurchaseFilterUrl(Constants.KBN_PRODUCT_LIST_FIXED_PURCHASE_FILTER_FIXED_PURCHASE) %>">定期購入可能</a><%}
		else{%>定期購入可能<%} %></li>
	</ul>
</div> -->
<% } %>
</div>