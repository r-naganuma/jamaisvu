﻿<%--
=========================================================================================================
  Module      : ユーザクレジットカード入力画面(UserCreditCardInput.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2010 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserCreditCardInput, App_Web_usercreditcardinput.aspx.b2a7112d" title="クレジットカード情報｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="クレジットカード情報（新規入力）ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<%-- ▼削除禁止：クレジットカードTokenコントロール▼ --%>
<%@ Register TagPrefix="uc" TagName="CreditToken" Src="~/Form/Common/CreditToken.ascx" %>
<%-- ▲削除禁止：クレジットカードTokenコントロール▲ --%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>クレジットカード情報追加</h2>

	<p class="catchTxt">登録内容をご入力ください。<br>
	登録名はサイト内の表示に使われる名称です。</p>

	<div class="registWrap_box">
		<div class="registWrap_box--input creditListBox">
			
			<%-- UPDATE PANEL開始 --%>
			<asp:UpdatePanel ID="upUpdatePanel" runat="server">
			<ContentTemplate>
			<table cellspacing="0" class="inputBox tableInputBox">
				<tr>
					<th class="inputBox_left must">登録名</th>
					<td class="inputBox_right">
						<asp:TextBox id="tbUserCreditCardName" Runat="server" maxlength="30" CssClass="nameCreditCard"></asp:TextBox>
						<asp:CustomValidator ID="cvUserCreditCardName" runat="Server"
							ControlToValidate="tbUserCreditCardName"
							ValidationGroup="UserCreditCardRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<%--▼▼ クレジット Token保持用 ▼▼--%>
						<asp:HiddenField ID="hfCreditToken" Value="" runat="server" />
						<%--▲▲ クレジット Token保持用 ▲▲--%>
					</td>
				</tr>
				<%--▼▼ カード情報入力（トークン未取得・利用なし） ▼▼--%>
				<tbody id="divCreditCardNoToken" runat="server">
				<%if (OrderCommon.CreditCompanySelectable) {%>
				<tr>
					<th class="inputBox_left must">カード会社</th>
					<td class="inputBox_right">
						<asp:DropDownList id="ddlCreditCardCompany" runat="server" CssClass="input_border"></asp:DropDownList>
					</td>
				</tr>
				<%} %>
				<tr>
					<th class="inputBox_left must">カード名義</th>
					<td class="inputBox_right">
						<asp:TextBox ID="tbCreditAuthorName" runat="server" MaxLength="50" placeholder="HANAKO ITO" autocomplete="off"></asp:TextBox>
						<asp:CustomValidator ID="cvCreditAuthorName" runat="Server"
							ControlToValidate="tbCreditAuthorName"
							ValidationGroup="UserCreditCardRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</td>
				</tr>
				<tr>
					<th class="inputBox_left must">カード番号</th>
					<td class="inputBox_right">
						<asp:TextBox id="tbCreditCardNo1" runat="server" MaxLength="19" Type="tel"></asp:TextBox>
						<small class="fred">
						<asp:CustomValidator ID="cvCreditCardNo1" runat="Server"
							ControlToValidate="tbCreditCardNo1"
							ValidationGroup="UserCreditCardRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
						<%--▼▼ カード情報取得用 ▼▼--%>
						<input type="hidden" id="hidCinfo" name="hidCinfo" value="<%= CreateGetCardInfoJsScriptForCreditToken() %>" />
						<span id="spanErrorMessageForCreditCard" class="error_inline" runat="server"></span>
						<%--▲▲ カード情報取得用 ▲▲--%>
						</small>
					</td>
				</tr>
				<tr>
					<th class="inputBox_left must">有効期限</th>
					<td class="inputBox_right">
						<dl class="birthArea">
							<dt>
								<asp:DropDownList ID="ddlCreditExpireMonth" runat="server" ></asp:DropDownList>
							</dt>
							<dd>
								月　/
							</dd>
							<dt>
								<asp:DropDownList ID="ddlCreditExpireYear" runat="server" ></asp:DropDownList>
							</dt>
							<dd>
								年
							</dd>
						</dl>
					</td>
				</tr>
				<tr id="trSecurityCode" runat="server">
					<th class="inputBox_left must">セキュリティコード</th>
					<td class="inputBox_right">
						<asp:TextBox ID="tbCreditSecurityCode" runat="server" MaxLength="4" class="input_widthA" autocomplete="off" Type="tel"></asp:TextBox>
						<asp:CustomValidator ID="cvCreditSecurityCode" runat="Server"
							ControlToValidate="tbCreditSecurityCode"
							ValidationGroup="UserCreditCardRegist"
							ValidateEmptyText="true"
							SetFocusOnError="true"
							ClientValidationFunction="ClientValidate"
							CssClass="error_inline" />
					</td>
				</tr>
				</tbody>
				<%--▲▲ カード情報入力（トークン未取得・利用なし） ▲▲--%>
				<%--▼▼ カード情報入力（トークン取得済） ▼▼--%>
				<tbody id="divCreditCardForTokenAcquired" runat="server">
				<%if (OrderCommon.CreditCompanySelectable) {%>
				<tr>
					<th class="inputBox_left must">カード会社</th>
					<td class="inputBox_right"><asp:Literal ID="lCreditCardCompanyNameForTokenAcquired" runat="server"></asp:Literal></td>
				</tr>
				<%} %>
				<tr>
					<th class="inputBox_left must">カード名義</th>
					<td class="inputBox_right">
						<asp:Literal ID="lCreditAuthorNameForTokenAcquired" runat="server"></asp:Literal>
					</td>
				</tr>
				<tr>
					<th class="inputBox_left must">カード番号</th>
					<td class="inputBox_right">
						**** **** **** <asp:Literal ID="lLastFourDigitForTokenAcquired" runat="server"></asp:Literal>
						<asp:LinkButton id="lbEditCreditCardNoForToken" OnClick="lbEditCreditCardNoForToken_Click" runat="server">再入力</asp:LinkButton>
					</td>
				</tr>
				<tr>
					<th class="inputBox_left must">有効期限</th>
					<td class="inputBox_right">
						<asp:Literal ID="lExpirationMonthForTokenAcquired" runat="server"></asp:Literal>
						/
						<asp:Literal ID="lExpirationYearForTokenAcquired" runat="server"></asp:Literal>
						(月/年)
					</td>
				</tr>
				</tbody>
				<%--▲▲ カード情報入力（トークン取得済） ▲▲ --%>
			</table>
			</ContentTemplate>
			</asp:UpdatePanel>
			<%-- UPDATE PANELここまで --%>
		</div>
		<div class="allBtnBox">
			<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_CREDITCARD_LIST) %>" class="prevBtn">戻る</a>
			<asp:LinkButton ID="lbConfirm" OnClientClick="doPostbackEvenIfCardAuthFailed=false;return true;" runat="server" OnClick="lbConfirm_Click" class="nextBtn">確認する</asp:LinkButton>
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
			<a href="#">
				変更
			</a>
		</li>
	</ul>
</div>

<%--▼▼ クレジットカードToken用スクリプト ▼▼--%>
<script type="text/javascript">
	var getTokenAndSetToFormJs = "<%= CreateGetCreditTokenAndSetToFormJsScript().Replace("\"", "\\\"") %>";
	var maskFormsForTokenJs = "<%= CreateMaskFormsForCreditTokenJsScript().Replace("\"", "\\\"") %>";
</script>
<uc:CreditToken runat="server" ID="CreditToken" />
<%--▲▲ クレジットカードToken用スクリプト ▲▲--%>
</asp:Content>