<%--
=========================================================================================================
  Module      : ユーザクレジットカード確認画面(UserCreditCardConfirm.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2010 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserCreditCardConfirm, App_Web_usercreditcardconfirm.aspx.b2a7112d" title="登録クレジットカード確認ページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>クレジットカード情報変更</h2>

	<p class="catchTxt">
		ご入力内容をご確認ください。<br>
		変更を確定する場合は 変更ボタン を押してください。
	</p>

	<div class="registWrap_box">
		<div class="registWrap_box--input">
			<dl class="inputBox inputBox_confirm">
				<dt class="inputBox_left must">登録名</dt>
				<dd class="inputBox_right"><asp:Literal ID="lCardDispName" runat="server"></asp:Literal></dd>
			<%if (OrderCommon.CreditCompanySelectable) {%>
				<dt class="inputBox_left must">カード会社</dt>
				<dd class="inputBox_right"><asp:Literal ID="lCardCompanyName" runat="server"></asp:Literal></dd>
			<%} %>
				<dt class="inputBox_left must">カード名義</dt>
				<dd class="inputBox_right"><asp:Literal ID="lAuthorName" runat="server"></asp:Literal></dd>
				<dt class="inputBox_left must">カード番号</dt>
				<dd class="inputBox_right">**** **** **** <asp:Literal ID="lLastFourDigit" runat="server"></asp:Literal></dd>
				<dt class="inputBox_left must">有効期限</dt>
				<dd class="inputBox_right">
					<asp:Literal ID="lExpirationMonth" runat="server"></asp:Literal> 月 / <asp:Literal ID="lExpirationYear" runat="server"></asp:Literal> 年
				</dd>
				<dt class="inputBox_left must">セキュリティコード</dt>
				<dd class="inputBox_right">
					***
				</dd>
			</dl>
		</div>
		<div class="allBtnBox">
			<asp:LinkButton ID="lbBack" runat="server" OnClientClick="return exec_submit()" OnClick="lbBack_Click" class="prevBtn">戻る</asp:LinkButton>
			<asp:LinkButton ID="lbSend" runat="server" OnClientClick="return exec_submit()" OnClick="lbSend_Click" class="nextBtn">変更する</asp:LinkButton>
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
			<a href="/Form/User/UserCreditCardList.aspx">
				クレジットカード情報
			</a>
		</li>
		<li> >
			<a href="/Form/User/UserCreditCardList.aspx">
				変更
			</a>
		</li>
		<li> >
			<a href="#">
				入力内容確認
			</a>
		</li>
	</ul>
</div>
</asp:Content>