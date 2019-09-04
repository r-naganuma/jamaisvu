<%--
=========================================================================================================
  Module      : 商品表示履歴出力コントローラ(BodyProductHistory.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ control language="C#" autoeventwireup="true" inherits="Form_Common_Product_BodyProductHistory, App_Web_bodyproducthistory.ascx.acb385f3" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
タイトルタグはカスタムパーツのみ利用します。
<%@ Page Title="無名のパーツ" %>
<%@ FileInfo LastChanged="最終更新者" %>

--%>
<%-- ▽編集可能領域：コンテンツ▽ --%>
<%-- ▽商品表示履歴ループ▽ --%>
<asp:Repeater ID="rProductHistory" runat="server">
<HeaderTemplate>
<div class="sec sec--history">
    <div class="sec__inner">
    <h2 class="vertical-title">
        HISTORY
    </h2>

    <div class="historyContent">
        <div class="historyContent__list">
</HeaderTemplate>
<ItemTemplate>
                <div class="historyContent__list-item">
                    <a href="<%# WebSanitizer.UrlAttrHtmlEncode(CreateProductDetailUrl(Container.DataItem)) %>">
                        <w2c:ProductImage ImageTagId="picture" ImageSize="M" ProductMaster="<%# Container.DataItem %>" IsVariation="false" runat="server" /></a>
						<%-- ▽在庫切れ可否▽ --%>
						<span visible='<%# ProductListUtility.IsProductSoldOut(Container.DataItem) %>' runat="server" class="soldout">SOLD OUT</span>
						<%-- △在庫切れ可否△ --%>
                    </a>
                </div>
</ItemTemplate>
<FooterTemplate>
        	</div>
    	</div>
    </div>
</div>
</FooterTemplate>
</asp:Repeater>
<%-- △商品表示履歴ループ△ --%>
<%-- △編集可能領域△ --%>