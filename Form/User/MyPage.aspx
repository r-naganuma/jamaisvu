<%--
=========================================================================================================
  Module      : マイページ画面(MyPage.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="BodyUserProductRecommend" Src="~/Form/Common/Product/BodyUserProductRecommend.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductRecommendByRecommendEngine" Src="~/Form/Common/Product/BodyProductRecommendByRecommendEngine.ascx" %>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_MyPage, App_Web_mypage.aspx.b2a7112d" title="マイページ｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="マイページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
	<div class="mypageCts">
		<h2>マイページ</h2>
		<div class="mypageCts_topBox">
			<p class="mypageCts_topBox--ttl">会員ランク</p>
			<%if (this.LastLoggedinDate != "") { %>
				<h4 style="display: none;">前回ログイン日時：<%: DateTimeUtility.ToStringFromRegion(this.LastLoggedinDate, DateTimeUtility.FormatType.LongDateHourMinute1Letter) %>
				</h4>
			<%} %>
			<%if (HasLoginMemberRank()) { %>
			<ul>
				<li>
					<%: this.MemberRankName %>
				</li>
			<%if (MemberRankUtility.IsBenefitOrderDiscount(this.LoginMemberRankInfo)) { %>
				<!-- <div style="margin-left:20px;margin-bottom:3px;">注文金額割引：<%: MemberRankUtility.GetBenefitOrderDiscount(this.LoginMemberRankInfo, "{0} 以上お買い上げ時 {1}") %></div> -->
			<%} %>
			<%if (MemberRankUtility.IsBenefitPointAdd(this.LoginMemberRankInfo)) { %>
				<!-- <div style="margin-left:20px;margin-bottom:3px;">ポイント加算：<%: MemberRankUtility.GetBenefitPointAdd(this.LoginMemberRankInfo) %></div> -->
			<%} %>
			<% if (MemberRankUtility.IsBenefitShippingDiscount(this.LoginMemberRankInfo)) { %>
				<!-- <div style="margin-left:20px;margin-bottom:3px;">配送料割引：<%: MemberRankUtility.GetBenefitShippingDiscount(this.LoginMemberRankInfo) %></div> -->
			<%} %>
			<% if (MemberRankUtility.IsBenefitFixedFuchaseDiscountRate(this.LoginMemberRankInfo)) { %>
				<!-- <div style="margin-left:20px;margin-bottom:3px;">定期会員割引：<%: MemberRankUtility.GetBenefitFixedPurchaseDiscountRate(this.LoginMemberRankInfo, " {0} % 割引") %></div> -->
			<%} %>
			<%} %>
			</ul>
			<div class="aboutRank">
				<a href="<%= Constants.PATH_ROOT %>Page/userGuide/#a06">会員ランクについて</a>
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
			<a href="#">
				マイページ
			</a>
		</li>
	</ul>
</div>
</asp:Content>