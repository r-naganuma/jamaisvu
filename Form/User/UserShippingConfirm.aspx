<%--
=========================================================================================================
  Module      : アドレス帳確認画面(UserShippingConfirm.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserShippingConfirm, App_Web_usershippingconfirm.aspx.b2a7112d" title="アドレス帳確認ページ" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>お届け先情報変更</h2>

	<p class="catchTxt">
		ご入力内容をご確認ください。
	</p>

	<div class="registWrap_box">
		<div class="registWrap_box--input">
			<dl class="inputBox inputBox_confirm">
				<dt class="inputBox_left must">お届け先名称</dt>
				<dd class="inputBox_right"><%: this.UserShipping.Name %></dd>
				<%-- 氏名 --%>
				<dt class="inputBox_left must"><%: ReplaceTag("@@User.name.name@@") %></dt>
				<dd class="inputBox_right">
					<%: this.UserShipping.ShippingName1 %>　<%: this.UserShipping.ShippingName2 %>
				</dd>
				<% if (this.IsShippingAddrJp) { %>
				<dt class="inputBox_left must">
					<%-- 氏名 --%>
					ふりがな
				</dt>
				<dd class="inputBox_right">
					<%: this.UserShipping.ShippingNameKana1 %>　<%: this.UserShipping.ShippingNameKana2 %>
				</dd>
				<% } %>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.tel1.name@@", this.ShippingAddrCountryIsoCode) %>
				</dt>
				<dd class="inputBox_right">
					<%: this.UserShipping.ShippingTel1 %></dd>
				<%-- 住所 --%>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.addr.name@@") %>
				</dt>
				<dd class="inputBox_right">
					<% if (this.IsShippingAddrJp){ %>
					〒<%: this.UserShipping.ShippingZip %><br />
					<% } %>
					<%: this.UserShipping.ShippingAddr1 %><%: this.UserShipping.ShippingAddr2 %><%: this.UserShipping.ShippingAddr3 %><br />
					<%: this.UserShipping.ShippingAddr4 %><br />
					<%: this.UserShipping.ShippingAddr5 %>
					<% if (this.IsShippingAddrJp == false) { %>
					<%: this.UserShipping.ShippingZip %><br />
					<% } %>
					<%: this.UserShipping.ShippingCountryName %>
				</dd>
			<% if (Constants.DISPLAY_CORPORATION_ENABLED){ %>
				<dt class="inputBox_left">
					会社・部署</dt>
				<dd class="inputBox_right">
					<%: this.UserShipping.ShippingCompanyName %><br />
					<%: this.UserShipping.ShippingCompanyPostName %>
				</dd>
			<%} %>
			</dl>
		</div>
		<div class="allBtnBox">
			<asp:LinkButton ID="lbBack" runat="server" OnClientClick="return exec_submit()" OnClick="lbBack_Click" class="prevBtn">戻る</asp:LinkButton>
			<asp:LinkButton ID="lbRegist" runat="server" OnClientClick="return exec_submit()" OnClick="lbSend_Click" class="nextBtn">登録する</asp:LinkButton>
			<asp:LinkButton ID="lbModify" runat="server" OnClientClick="return exec_submit()" OnClick="lbSend_Click" class="nextBtn">変更する</asp:LinkButton>
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
			<a href="/Form/User/UserShippingList.aspx">
				お届け先情報
			</a>
		</li>
		<li> >
			<a href="/Form/User/UserShippingInput.aspx">
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