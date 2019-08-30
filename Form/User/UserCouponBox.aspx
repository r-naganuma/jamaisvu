<%--
=========================================================================================================
  Module      : クーポンBOX画面(UserCouponBox.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2017 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_CouponBox, App_Web_usercouponbox.aspx.b2a7112d" title="クーポン確認｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="クーポン確認ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<%@ Import Namespace="w2.Domain.Coupon.Helper" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<script type="text/javascript" charset="Shift_JIS" src="<%= Constants.PATH_ROOT %>Js/floatingWindow.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<%-- UPDATE PANEL開始 --%>
<asp:UpdatePanel ID="upUpdatePanel" runat="server">
<ContentTemplate>
<div class="registWrap mypageCts">
	<h2>クーポン</h2>
	<p class="catchTxt">
	<%-- 利用可能クーポンなし--%>
	<% if(StringUtility.ToEmpty(this.AlertMessage) != "") {%>
		<%: this.AlertMessage %>
	<%} else {%>
		現在ご利用いただけるクーポンです。<br>
		ご利用の際はご注文画面から設定できます。
	<%} %>
	</p>
	<div class="registWrap_box">
		<asp:Repeater ID="rCouponList" ItemType="UserCouponDetailInfo" Runat="server">
			<ItemTemplate>
			<h3><%#: Item.CouponDispName %></h3>
			<div class="registWrap_box--input">
				<dl class="couponArea">
					<dt class="couponArea_left">クーポンコード</dt>
					<dd class="couponArea_right">
					<span runat="server" visible="<%# (Item.ExpireEnd < DateTime.Now) %>">
						[有効期限切れ]<br />
					</span>
					<%#: Item.CouponCode %></dd>
					<dt class="couponArea_left">内容</dt>
					<dd class="couponArea_right">
						<%#: (StringUtility.ToEmpty(Item.DiscountPrice) != "")
								? CurrencyManager.ToPrice(Item.DiscountPrice)
								: (StringUtility.ToEmpty(Item.DiscountRate) != "")
									? StringUtility.ToEmpty(Item.DiscountRate) + "%"
									: "-" %>
					</dd>
					<dt class="couponArea_left">ご利用回数</dt>
					<dd class="couponArea_right">
						<%#: GetCouponCount(Item) %>
					</dd>
					<dt class="couponArea_left">有効期限</dt>
					<dd class="couponArea_right">
						<%#: DateTimeUtility.ToStringFromRegion(Item.ExpireEnd, DateTimeUtility.FormatType.LongDateHourMinute1Letter) %>
					</dd>
					<dt class="couponArea_left">ご利用条件</dt>
					<dd class="couponArea_right">
						<%#: Item.CouponDiscription %>
					</dd>
				</dl>
			</div>
			</ItemTemplate>
		</asp:Repeater>
	<%-- ページャ--%>
	<!-- <div id="pagination" class="below clearFix"><%= this.PagerHtml %></div>-->
		<!-- <div class="aboutRank">
			<a href="">クーポンについて</a>
		</div> -->
	</div>
</div>
</div>
</ContentTemplate>
</asp:UpdatePanel>

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
				クーポン
			</a>
		</li>
	</ul>
</div>
</asp:Content>