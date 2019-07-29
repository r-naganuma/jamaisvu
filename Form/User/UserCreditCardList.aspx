<%--
=========================================================================================================
  Module      : ユーザクレジットカード一覧画面(UserCreditCardList.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2010 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserCreditCardList, App_Web_usercreditcardlist.aspx.b2a7112d" title="登録クレジット一覧ページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>クレジットカード情報</h2>

	<p class="catchTxt">ご登録内容をご確認ください。<br>
	クレジットカードの新規登録は、オンラインストアでのご購入時のみ可能です。</p>

	<div class="registWrap_box">
		<%-- メッセージ --%>
		<!-- <strong>
			<span><asp:Literal ID="lDeleteMessage" Runat="server" Text="登録クレジットカードを削除致しました。" Visible="false"></asp:Literal></span>
		</strong> -->
		<div class="submitBtnBox">
			<asp:LinkButton id="lbInsert" runat="server" OnClick="lbInsert_Click" class="nextBtn">クレジットカードの追加</asp:LinkButton>
		</div>
		<asp:Repeater id="rUserCreditCardList" ItemType="w2.App.Common.Order.UserCreditCard" runat="server" OnItemCommand="rUserCreditCardList_ItemCommand">
			<ItemTemplate>
				<div class="MypageCreditBox">
					<h3><%#: Item.CardDispName %></h3>
					<div class="registWrap_box--input">
						<dl class="inputBox">
							<%if (OrderCommon.CreditCompanySelectable) {%>
							<dt>
								カード会社
							</dt>
							<dd>
								<%#: Item.CompanyName %>
							</dd>
							<%} %>
							<dt>
								カード名義
							</dt>
							<dd>
								<%#: Item.AuthorName %>
							</dd>
							<dt>
								カード番号
							</dt>
							<dd>
								**** **** **** <%#: Item.LastFourDigit %>
							</dd>
							<dt>
								有効期限
							</dt>
							<dd>
								<%#: Item.ExpirationMonth %> 月　/　<%#: Item.ExpirationYear %> 年
							</dd>
							<dt>
								セキュリティコード
							</dt>
							<dd>
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

		<div class="submitBtnBox">
			<a href="javascript:history.back()" class="prevBtn">戻る</a>
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