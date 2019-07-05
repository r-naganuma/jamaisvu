<%--
=========================================================================================================
  Module      : 商品のカラー検索パーツ (ProductColorSearchBox.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2018 All Rights Reserved.
=========================================================================================================
--%>
<%@ control language="C#" autoeventwireup="true" inherits="Form_Common_Product_ProductColorSearchBox, App_Web_productcolorsearchbox.ascx.acb385f3" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
タイトルタグはカスタムパーツのみ利用します。
<%@ Page Title="無名のパーツ" %>
<%@ FileInfo LastChanged="ｗ２ユーザー" %>

--%>
<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="categoryList" runat="server" Visible="<%# this.IsVisible %>">
<a href="javascript:void(0);" class="title toggle active">色から探す</a>
<ul>
	<asp:Repeater ID="rColorSearch" runat="server" ItemType="w2.App.Common.Product.ProductColor">
		<HeaderTemplate>
			<li>
				<asp:LinkButton runat="server" id="lbSearch" onclick="lbSearch_Click" CommandArgument="">
				全ての色
				</asp:LinkButton>
			</li>
		</HeaderTemplate>
		<ItemTemplate>
		<li style="<%#: (this.ProductColorId == Item.Id) ? "outline: thin solid #000000" : "" %>">
			<asp:LinkButton runat="server" id="lbSearch" onclick="lbSearch_Click" CommandArgument='<%# Item.Id %>'>
				<img src='<%#: Item.Url %>' width="25" height="25" />
				&nbsp;<%#: Item.DispName %></asp:LinkButton>
		</li>
		</ItemTemplate>
	</asp:Repeater>
</ul>
</div>
<%-- △編集可能領域△ --%>