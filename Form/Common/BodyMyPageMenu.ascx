<%--
=========================================================================================================
  Module      : MYページメニュー出力コントローラ(BodyMyPageMenu.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ control language="C#" autoeventwireup="true" inherits="Form_Common_BodyMyPageMenu, App_Web_bodymypagemenu.ascx.2af06a88" %>
<script type="text/javascript">
$(function(){
    if(document.URL.match("MyPage.aspx")) {
    	$("li.myPegeTopBtn").addClass("on");
    }
    if(document.URL.match("UserModifyInput.aspx")) {
    	$("li.myPegeRegistBtn").addClass("on");
    }
    if(document.URL.match("UserModifyConfirm.aspx")) {
    	$("li.myPegeRegistBtn").addClass("on");
    }
    if(document.URL.match("UserModifyComplete.aspx")) {
    	$("li.myPegeRegistBtn").addClass("on");
    }
    if(document.URL.match("UserCouponBox.aspx")) {
    	$("li.myPegeCouponBtn").addClass("on");
    }
    if(document.URL.match("FavoriteList.aspx")) {
    	$("li.myPegeFavoBtn").addClass("on");
    }
})
</script>
<div class="mypageWrap topSpace">
	<div class="mypageMenu">
		<p class="mypageMenu_ttl">会員情報</p>
		<ul>
			<li class="myPegeTopBtn"><a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_MYPAGE) %>">
				マイページ トップ</a></li>
			<li class="myPegeRegistBtn"><a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_MODIFY_INPUT) %>">
				会員情報確認・変更</a></li>
			<%if (Constants.MAX_NUM_REGIST_CREDITCARD > 0) { %>
			<li class="myPegeCreditBtn"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_CREDITCARD_LIST) %>">
				クレジットカード情報</a></li>
			<%} %>
			<%if (Constants.W2MP_COUPON_OPTION_ENABLED) { %>
			<li class="myPegeCouponBtn"><a href="<%: Constants.PATH_ROOT + Constants.PAGE_FRONT_COUPON_BOX %>">
				クーポン</a></li>
			<%} %>
		</ul>

		<p class="mypageMenu_ttl">お買い物情報</p>
		<ul>
			<li class="myPegeFavoBtn"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_FAVORITE_LIST) %>">
				お気に入りリスト</a></li>
			<li class="myPegeHistoryBtn"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_ORDER_HISTORY_LIST) %>">
				購入履歴</a></li>
			<%if (Constants.FIXEDPURCHASE_OPTION_ENABLED) { %>
			<li style="display: none;"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_FIXED_PURCHASE_LIST) %>">
				定期購入情報</a></li>
			<%} %>
			<%if (this.DisplayMailSendLogs) { %>
			<li style="display: none;"><a href="<%: Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_RECIEVE_MAIL_LIST %>">
				受信メール履歴</a></li>
			<%} %>
			<li style="display: none;"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_PRODUCT_ARRIVAL_MAIL_LIST) %>">
				入荷お知らせメール情報</a></li>
		</ul>

		<p class="mypageMenu_ttl">お問い合わせ</p>
		<ul>
			<li><a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_INQUIRY_INPUT) %>">
				お問い合わせ</a></li>
			<li>
	        	<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_LOGOFF) %>" onclick="return confirm('ログアウトします。\nよろしいですか？');return false;">ログアウト</a>
	        </li>
			<li class="myPegeWithdrawalBtn"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_WITHDRAWAL_INPUT) %>">
				退会手続き</a></li>
			<li style="display: none;"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_SHIPPING_LIST) %>">
				アドレス帳</a></li>
			<%if (Constants.W2MP_POINT_OPTION_ENABLED) { %>
			<li style="display: none;"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_USERPOINTHISTORY_LIST) %>">
				ポイント履歴一覧</a></li>
			<%} %>
			<%if (Constants.COMMON_SOCIAL_LOGIN_ENABLED) { %>
			<li style="display: none;"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_SOCIAL_LOGIN_COOPERATION) %>">
				ソーシャルログイン連携</a></li>
			<%} %>
			<%-- 通常会員のみ表示 --%>
			<%if (this.IsEasyUser == false) { %>
			<li style="display: none;"><a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_DEFAULT_ORDER_SETTING_LIST) %>">
				注文方法の保存</a></li>
			<%} %>
		</ul>
	</div>