<%--
=========================================================================================================
  Module      : ユーザクレジットカード一覧画面(UserCreditCardList.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2010 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserCreditCardList, App_Web_usercreditcardlist.aspx.b2a7112d" title="クレジットカード情報｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="クレジットカード情報ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>クレジットカード情報</h2>

	<p class="catchTxt">ご登録内容をご確認ください。</p>

	<div class="registWrap_box">
		<%-- メッセージ --%>
		<!-- <strong>
			<span><asp:Literal ID="lDeleteMessage" Runat="server" Text="登録クレジットカードを削除致しました。" Visible="false"></asp:Literal></span>
		</strong> -->
		<asp:Repeater id="rUserCreditCardList" ItemType="w2.App.Common.Order.UserCreditCard" runat="server" OnItemCommand="rUserCreditCardList_ItemCommand">
			<ItemTemplate>
				<div class="MypageCreditBox">
					<h3><%#: Item.CardDispName %></h3>
					<div class="registWrap_box--input">
						<dl class="inputBox inputBox_confirm noSepa">
							<%if (OrderCommon.CreditCompanySelectable) {%>
							<dt class="inputBox_left">
								カード会社
							</dt>
							<dd class="inputBox_right">
								<%#: Item.CompanyName %>
							</dd>
							<%} %>
							<dt class="inputBox_left">
								カード名義
							</dt>
							<dd class="inputBox_right">
								<%#: Item.AuthorName %>
							</dd>
							<dt class="inputBox_left">
								カード番号
							</dt>
							<dd class="inputBox_right">
								**** **** **** <%#: Item.LastFourDigit %>
							</dd>
							<dt class="inputBox_left">
								有効期限
							</dt>
							<dd class="inputBox_right">
								<%#: Item.ExpirationMonth %> 月　/　<%#: Item.ExpirationYear %> 年
							</dd>
							<dt class="inputBox_left">
								セキュリティコード
							</dt>
							<dd class="inputBox_right">
								***
							</dd>
						</dl>
					</div>
					<div class="MypageCreditBox_delete">
						<asp:LinkButton id="lbDelete" runat="server" CommandName="Delete" CommandArgument="<%# Item.BranchNo %>" OnClientClick="return confirm('削除しますか？');">削除</asp:LinkButton>
					</div>
				</div>
			</ItemTemplate>
		</asp:Repeater>
		<!-- <asp:Literal ID="lErrorMessage" Runat="server"></asp:Literal> -->

		<div class="allBtnBox allBtnBoxCredit">
			<a href="javascript:history.back()" class="prevBtn">戻る</a>
			<asp:LinkButton id="lbInsert" runat="server" OnClick="lbInsert_Click" class="nextBtn">クレジットカードの追加</asp:LinkButton>
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
				クレジットカード情報
			</a>
		</li>
	</ul>
</div>
</asp:Content>