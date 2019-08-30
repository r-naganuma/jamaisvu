<%--
=========================================================================================================
  Module      : アドレス帳一覧画面(UserShippingList.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserShippingList, App_Web_usershippinglist.aspx.b2a7112d" title="お届け先情報｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="お届け先情報ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>お届け先情報</h2>

	<div class="registWrap_box">
		<%-- メッセージ --%>
		<strong>
			<span>
				<% if (this.IsDelete){%>
					お届け先情報を削除致しました。
				<%} %>
			</span>
		</strong>
		<asp:Repeater id="rUserShippingList" runat="server" ItemType="w2.Domain.UserShipping.UserShippingModel" OnItemCommand="rUserShippingList_ItemCommand">
			<ItemTemplate>
				<div class="MypageCreditBox">
					<h3><%# WebSanitizer.HtmlEncode(Item.Name) %></h3>
					<div class="registWrap_box--input">
						<dl class="inputBox inputBox_confirm noSepa">
							<dt class="inputBox_left">
								氏名
							</dt>
							<dd class="inputBox_right">
								<%#: Item.ShippingName1 %>　<%#: Item.ShippingName2 %>
							</dd>
							<dt class="inputBox_left">
								かな
							</dt>
							<dd class="inputBox_right">
								<%#: Item.ShippingNameKana1 %>　<%#: Item.ShippingNameKana2 %>
							</dd>
							<dt class="inputBox_left">
								電話番号
							</dt>
							<dd class="inputBox_right">
								<%#: Item.ShippingTel1 %>
							</dd>
							<dt class="inputBox_left">
								住所
							</dt>
							<dd class="inputBox_right">
								<%# IsCountryJp(Item.ShippingCountryIsoCode) ? "〒" + WebSanitizer.HtmlEncode(Item.ShippingZip) + "<br />" : "" %>
								<%#: Item.ShippingAddr1 %><%#: Item.ShippingAddr2 %><%#: Item.ShippingAddr3 %><br />
								<%#  (string.IsNullOrEmpty(Item.ShippingAddr4) == false) ? WebSanitizer.HtmlEncode(Item.ShippingAddr4) + "<br />" : "" %>
								<%#  (string.IsNullOrEmpty(Item.ShippingAddr5) == false) ? WebSanitizer.HtmlEncode(Item.ShippingAddr5) + "<br />" : "" %>
								<%# (IsCountryJp(Item.ShippingCountryIsoCode) == false) ? WebSanitizer.HtmlEncode(Item.ShippingZip) + "<br />" : "" %>
								<%#: Item.ShippingCountryName %>
							</dd>
						</dl>
						<div class="MypageCreditBox_edit">
							<asp:LinkButton id="lbUpdate" runat="server" CommandName="Update" CommandArgument="<%# Item.ShippingNo %>">修正</asp:LinkButton>
						</div>
						<div class="MypageCreditBox_delete">
							<asp:LinkButton id="lbDelete" runat="server" CommandName="Delete" CommandArgument="<%# Item.ShippingNo %>" OnClientClick="return confirm('削除しますか？');">削除</asp:LinkButton>
						</div>
					</div>
				</div>
			</ItemTemplate>
		</asp:Repeater>

		<%-- エラーメッセージ --%>
		<% if(StringUtility.ToEmpty(this.ErrorMessage) != ""){ %>
			<%: this.ErrorMessage %>
		<% } %>

		<div class="allBtnBox">
			<a href="javascript:history.back()" class="prevBtn">戻る</a>
			<asp:LinkButton id="lbInsert" runat="server" OnClick="lbInsert_Click" class="nextBtn">追加する</asp:LinkButton>
		</div>
	</div>
</div>
</div>
<div class="userBread">
	<ul>
		<li>
			<a href="<%= WebSanitizer.HtmlEncode(this.UnsecurePageProtocolAndHost + Constants.PATH_ROOT) %>">
				トップ
			</a>
		</li>
		<li> >
			<a href="/Form/User/MyPage.aspx">
				マイページ
			</a>
		</li>
		<li> >
			<a href="#">
				お届け先情報
			</a>
		</li>
	</ul>
</div>
</asp:Content>