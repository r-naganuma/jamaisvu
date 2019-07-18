<%--
=========================================================================================================
  Module      : 商品詳細検索ボックス出力コントローラ(BodyProductAdvancedSearchBox.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2011 All Rights Reserved.
=========================================================================================================
--%>
<%@ control language="C#" autoeventwireup="true" inherits="Form_Common_Product_BodyProductAdvancedSearchBox, App_Web_bodyproductadvancedsearchbox.ascx.acb385f3" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ｗ２ユーザー" %>

--%>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<%
	// 検索テキストボックスEnterで検索させる（UpdatePanelで括っておかないと非同期処理時に検索が効かなくなる）
	this.SetAttributes();
%>
</ContentTemplate>
</asp:UpdatePanel>
<%-- ▽編集可能領域：コンテンツ▽ --%>
<div id="dvProductAdvancedSearch" runat="server" class="dvProductAdvancedSearch">
<div class="searchBox">
<p class="sp_contents searchBtnCloseSp">商品を絞り込む</p>
<table>
<tbody>
<tr>
	<th style="display: none;">フリーワード</th>
	<td class="sort-word">
		<div class="searchBox_list searchBox_keyword">
			<p class="searchBox_list--ttl">キーワード</p>
			<div class="searchBox_list--input">
				<w2c:ExtendedTextBox ID="tbSearchWord" type="search" runat="server" placeholder="キーワードまたは商品番号を入力"></w2c:ExtendedTextBox>
			</div>
		</div>
	</td>
</tr>
<tr>
	<th style="display: none;">カテゴリー</th>
	<td class="sort-category">
		<div class="searchBox_list searchBox_category">
			<p class="searchBox_list--ttl">カテゴリー</p>
			<p class="searchBox_list--ttlSelect sp_contents"></p>
			<asp:DropDownList ID="ddlCategories" Style="display:none;" Runat="server"></asp:DropDownList>
			<ul class="searchBox_list--column searchBox_list--category">
				<li>
					<p>すべて</p>
				</li>
				<li>
					<p>トップス</p>
				</li>
				<li>
					<p>アウター</p>
				</li>
				<li>
					<p>ワンピース</p>
				</li>
				<li>
					<p>パンツ</p>
				</li>
				<li>
					<p>スカート</p>
				</li>
				<li>
					<p>グッズ</p>
				</li>
			</ul>
		</div>
	</td>
</tr>
<tr>
	<td class="sort-size">
		<div class="searchBox_list searchBox_size">
			<p class="searchBox_list--ttl">価格タイプ</p>
			<p class="searchBox_list--ttlSelect sp_contents"></p>
			<ul class="searchBox_list--column searchBox_list--size">
				<li></li>
				<li><input id="ctl00_ContentPlaceHolder1_ctl00_size_1" type="radio" name="ctl00$ContentPlaceHolder1$ctl00$size" value="すべて"><label>すべて</label></li>
				<li><input id="ctl00_ContentPlaceHolder1_ctl00_size_2" type="radio" name="ctl00$ContentPlaceHolder1$ctl00$size" value="REGULAR"><label>セール</label></li>
			</ul>
		</div>
	</td>
</tr>
<tr>
	<th style="display: none;">カラー</th>
	<td>
		<div class="searchBox_list searchBox_color">
			<p class="searchBox_list--ttl">カラー</p>
			<asp:DropDownList ID="ddlColors" runat="server" Style="display:none;" DataTextField="text" DataValueField="value"></asp:DropDownList>
			<asp:Repeater runat="server" ID="rColors" DataSource="<%# ProductColorUtility.GetProductColorList() %>" ItemType="w2.App.Common.Product.ProductColor">
				<HeaderTemplate><ul class="searchBox_list--column searchBox_list--color"></HeaderTemplate>
				<ItemTemplate>
					<li><img ID="<%# "iColor" + Item.Id %>" name="iColor" data-color='<%#: Item.Id %>' src='<%#: Item.Url %>' /></li>
				</ItemTemplate>
				<FooterTemplate></ul></FooterTemplate>
			</asp:Repeater>
		</div>
	</td>
</tr>
<tr style="display: none;">
	<th>価格帯</th>
	<td colspan="3">
		<ul class="sort-price">
		<% if (this.CurrentCurrencyCode == "JPY") { %>
		<li><input id="discount1" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true) %> /><label for="discount1">指定なし</label></li>
		<li><input id="discount2" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, 0m, 3000m) %> /><label for="discount2">～ 3,000円</label></li>
		<li><input id="discount3" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, 3000m, 5000m) %> /><label for="discount3">3,000円 ～ 5,000円</label></li>
		<li><input id="discount4" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, 5000m, 8000m) %> /><label for="discount4">5,000円 ～ 8,000円</label></li>
		<li><input id="discount5" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, 8000m, 10000m) %> /><label for="discount5">8,000円 ～ 10,000円</label></li>
		<li><input id="discount6" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, 10000m, 15000m) %> /><label for="discount6">10,000円 ～ 15,000円</label></li>
		<li><input id="discount7" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, 15000m, 20000m) %> /><label for="discount7">15,000円 ～ 20,000円</label></li>
		<li><input id="discount8" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, 20000m, 30000m) %> /><label for="discount8">20,000円 ～ 30,000円</label></li>
		<li><input id="discount9" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, minPrice: 30000m) %> /><label for="discount9">30,000円 ～</label></li>
		<%} else if (this.CurrentCurrencyCode == "USD") { %>
		<li><input id="discount1" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true) %> /><label for="discount1">指定なし</label></li>
		<li><input id="discount2" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, 0m, 30m) %> /><label for="discount2">～ $30.00</label></li>
		<li><input id="discount3" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, 30m, 50m) %> /><label for="discount3">$30.00 ～ $50.00</label></li>
		<li><input id="discount4" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, 50m, 80m) %> /><label for="discount4">$50.00 ～ $80.00</label></li>
		<li><input id="discount5" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, 80m, 100m) %> /><label for="discount5">$80.00 ～ $100.00</label></li>
		<li><input id="discount6" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, 100m, 150m) %> /><label for="discount6">$100.00 ～ $150.00</label></li>
		<li><input id="discount7" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, 150m, 200m) %> /><label for="discount7">$150.00 ～ $200.00</label></li>
		<li><input id="discount8" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, 200m, 300m) %> /><label for="discount8">$200.00 ～ $300.00</label></li>
		<li><input id="discount9" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(true, minPrice: 300m) %> /><label for="discount9">$300.00 ～</label></li>
		<%} else { %>
		<li><input id="discount1" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(false) %> /><label for="discount1">指定なし</label></li>
		<li><input id="discount2" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(false, 0m, 3000m) %> /><label for="discount2">～ <%: CurrencyManager.ToPrice(3000m) %></label></li>
		<li><input id="discount3" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(false, 3000m, 5000m) %> /><label for="discount3"><%: CurrencyManager.ToPrice(3000m) %> ～ <%: CurrencyManager.ToPrice(5000m) %></label></li>
		<li><input id="discount4" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(false, 5000m, 8000m) %> /><label for="discount4"><%: CurrencyManager.ToPrice(5000m) %> ～ <%: CurrencyManager.ToPrice(8000m) %></label></li>
		<li><input id="discount5" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(false, 8000m, 10000m) %> /><label for="discount5"><%: CurrencyManager.ToPrice(8000m) %> ～ <%: CurrencyManager.ToPrice(10000m) %></label></li>
		<li><input id="discount6" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(false, 10000m, 15000m) %> /><label for="discount6"><%: CurrencyManager.ToPrice(10000m) %> ～ <%: CurrencyManager.ToPrice(15000m) %></label></li>
		<li><input id="discount7" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(false, 15000m, 20000m) %>> /><label for="discount7"><%: CurrencyManager.ToPrice(15000m) %> ～ <%: CurrencyManager.ToPrice(20000m) %></label></li>
		<li><input id="discount8" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(false, 20000m, 30000m) %> /><label for="discount8"><%: CurrencyManager.ToPrice(20000m) %> ～ <%: CurrencyManager.ToPrice(30000m) %></label></li>
		<li><input id="discount9" type="radio" name="price" <%: CreateAttributesForPriceSearchControl(false, minPrice: 30000m) %> /><label for="discount9"><%: CurrencyManager.ToPrice(30000m) %> ～</label></li>
		<%} %>
		</ul>
	</td>
</tr>
<tr style="display: none;">
	<th>在庫</th>
	<td colspan="3">
	<%-- 在庫有無 --%>
	<ul class="horizon">
	<li>
		<input id="udns0" name="udns" type="radio" value="0" <%= (StringUtility.ToEmpty(Request["udns"]) == "" || StringUtility.ToEmpty(Request["udns"]) == "0") ? "checked" : "" %> />
		<label for="udns0">すべて表示</label>
	</li>
	<li>
		<input id="udns2" name="udns" type="radio" value="2" <%= (StringUtility.ToEmpty(Request["udns"]) == "2") ? "checked" : "" %> />
		<label for="udns2">すべて表示(在庫あり優先)</label>
	</li>
	<li>
		<input id="udns1" name="udns" type="radio" value="1" <%= (StringUtility.ToEmpty(Request["udns"]) == "1") ? "checked" : "" %> />
		<label for="udns1">在庫あり</label>
	</li>
	<li>
		<input id="udns3" name="udns" type="radio" value="3" <%= (StringUtility.ToEmpty(Request["udns"]) == "3") ? "checked" : "" %>  />
		<label for="udns3">在庫無し</label>
	</li>
	</ul>
	</td>
</tr>
<% if (Constants.FIXEDPURCHASE_OPTION_ENABLED) {%>
<tr style="display: none;">
	<th>通常・定期</th>
	<td colspan="3">
	<%-- 通常・定期 --%>
	<ul class="horizon">
	<li>
		<input id="fpfl0" name=<%: Constants.FORM_NAME_FIXED_PURCHASE_RADIO_BUTTON %> type="radio" value="0" <%= ((StringUtility.ToEmpty(Request["fpfl"]) == "0") || (StringUtility.ToEmpty(Request["fpfl"]) == "")) ? "checked" : "" %> />
		<label for="fpfl0">すべて表示</label>
	</li>
	<li>
		<input id="fpfl1" name=<%: Constants.FORM_NAME_FIXED_PURCHASE_RADIO_BUTTON %> type="radio" value="1" <%= (StringUtility.ToEmpty(Request["fpfl"]) == "1") ? "checked" : "" %> />
		<label for="fpfl1">通常購入可能</label>
	</li>
	<li>
		<input id="fpfl2" name=<%: Constants.FORM_NAME_FIXED_PURCHASE_RADIO_BUTTON %> type="radio" value="2" <%= (StringUtility.ToEmpty(Request["fpfl"]) == "2") ? "checked" : "" %> />
		<label for="fpfl2">定期購入可能</label>
	</li>
	</ul>
	</td>
</tr>
<% } %>
<tr>
	<td class="sort-size">
		<div class="searchBox_list searchBox_size">
			<p class="searchBox_list--ttl">サイズ</p>
			<p class="searchBox_list--ttlSelect sp_contents"></p>
			<asp:CheckBoxList ID="size" DataTextField="size" DataValueField="Value" RepeatDirection="Vertical" RepeatLayout="UnorderedList" runat="server" class="searchBox_list--column searchBox_list--size">
				<asp:ListItem>REGULAR</asp:ListItem>
				<asp:ListItem>LOOSE</asp:ListItem>
				<asp:ListItem>FREE</asp:ListItem>
			</asp:CheckBoxList>
		</div>
	</td>
</tr>
<tr>
	<td>
		<div class="searchBox_list searchBox_material">
			<p class="searchBox_list--ttl">素材</p>
			<p class="searchBox_list--ttlSelect sp_contents"></p>
			<asp:CheckBoxList ID="material" DataTextField="material" DataValueField="Value" RepeatDirection="Vertical" RepeatLayout="UnorderedList" runat="server" class="searchBox_list--column searchBox_list--material">
				<asp:ListItem>ハミルトンラムウール</asp:ListItem>
				<asp:ListItem>ペルビアンコットン</asp:ListItem>
				<asp:ListItem>メリノウール</asp:ListItem>
				<asp:ListItem>ワンコットン</asp:ListItem>
				<asp:ListItem>フォークランドウール</asp:ListItem>
				<asp:ListItem>タスマニアンウール</asp:ListItem>
			</asp:CheckBoxList>
		</div>
	</td>
</tr>
<!-- <tr>
	<td>
		<div class="searchBox_list searchBox_edition">
			<p class="searchBox_list--ttl">見出しは検討</p>
			<asp:RadioButtonList ID="edition" DataTextField="edition" DataValueField="Value" RepeatDirection="Vertical" RepeatLayout="UnorderedList" runat="server" class="searchBox_list--column searchBox_list--edition">
				<asp:ListItem></asp:ListItem>
				<asp:ListItem>EDITION - 1</asp:ListItem>
				<asp:ListItem>EDITION - 2</asp:ListItem>
				<asp:ListItem>EDITION - 3</asp:ListItem>
			</asp:RadioButtonList>
		</div>
	</td>
</tr> -->
</tbody>
</table>
<div class="searchBox_submit">
	<asp:LinkButton ID="lbSearch" runat="server" OnClick="lbSearch_Click"><span class="pc_contents">絞り込む</span><span class="sp_contents">この条件で絞り込む</span></asp:LinkButton>
</div>
</div>
</div>

<script>

	$(".searchBox_category li").each(function(x){
	   $(this).attr("id","category"+x)

	});
	$("#ctl00_ContentPlaceHolder1_ctl00_ddlCategories option").each(function(x){
	   $(this).addClass("category"+x)
	});
	$(".searchBox_category li").click(function(){
	    $("#ctl00_ContentPlaceHolder1_ctl00_ddlCategories option").prop("selected", false);
	   $('.'+$(this).attr("id")).prop("selected",true);
	   return false;
	});

	var requestColor = "<%# this.ProductColorId %>";
	$("[name=iColor]").each(function (i) {
		e = $("#" + $("[name=iColor]")[i].id);
		if ($("[name=iColor]")[i].getAttribute("data-color") == requestColor) {
		}
		e.on('click', function (elem) {
			var data = elem.target.getAttribute("data-color");
			var ddl = $("#<%# ddlColors.ClientID %>");
			if (data != ddl.val()) {
				ddl.val(data).prop("selected", true);
				$(".searchBox_list--color li").addClass('on');
			} else {
				ddl.val("").prop("selected", false);
				$(".searchBox_list--color li").removeClass('on');
			}
			$("[name=iColor]").each(function (i) {
				var e2 = $("#" + $("[name=iColor]")[i].id);
				if ($("[name=iColor]")[i].getAttribute("data-color") != data) {
					$(".searchBox_list--color li").removeClass('on');
				}
			});
		});
	});
</script>
<%-- △編集可能領域△ --%>