<%--
=========================================================================================================
  Module      : トラッカー出力ユーザコントローラ(AccessLogTrackerScript.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ control language="C#" autoeventwireup="true" inherits="Form_Common_AccessLogTrackerScript, App_Web_accesslogtrackerscript.ascx.2af06a88" %>

<!-- w2tracker -->
<%-- トラッカー読み込み --%>
<div id="divTracker" runat="server" visible="false">
<script type='text/javascript'>
<!--
	var w2accesslog_account_id = "<%= Constants.W2MP_ACCESSLOG_ACCOUNT_ID %>";
	var w2accesslog_target_domain = "<%= Constants.W2MP_ACCESSLOG_TARGET_DOMAIN %>";
	var w2accesslog_cookie_root = "<%= Constants.PATH_ROOT %>";
	var w2accesslog_getlog_path = "<%= Constants.PATH_ROOT + Constants.W2MP_ACCESSLOG_GETLOG_PATH %>";

	<%-- XMLパーサが特殊文字（「<」「>」）をタグとして認識しないようエスケープしておく（XHTMLに対応） --%>
	document.write(unescape("%3Csc" + "ript type='text/javascript' src='" + (("https:" == document.location.protocol) ? "https:" : "http:") + "//<%= Request.Url.Host + Constants.PATH_ROOT + Constants.W2MP_ACCESSLOG_TRACKER_PATH %>'%3E%3C/sc" + "ript%3E"));
// -->
</script>
</div>

<%-- GoogleAnaytics解析タグ --%>
<% if ((Constants.GOOGLEANALYTICS_ENABLED) && (Constants.SETTING_PRODUCTION_ENVIRONMENT)
			&& (Request.Url.AbsolutePath.ToLower().Contains((Constants.PAGE_FRONT_ORDER_COMPLETE).ToLower()) == false))
		{ %>
<script type='text/javascript'>
		(function (i,s,o,g,r,a,m) {
			i['GoogleAnalyticsObject'] = r; i[r] = i[r] || function () {
				(i[r].q = i[r].q || []).push(arguments)
			}, i[r].l = 1 * new Date(); a = s.createElement(o),
			m = s.getElementsByTagName(o)[0]; a.async = 1; a.src = g; m.parentNode.insertBefore(a, m)
		})(window, document, 'script', 'https://www.google-analytics.com/analytics.js', 'ga');

		ga('create', '<%= Constants.GOOGLEANALYTICS_PROFILE_ID %>', 'auto');
		ga('send', 'pageview');
</script>
<%} %>




<%-- ログを取得 --%>
<div id="divGetLog" runat="server" visible="false">
<script type='text/javascript'>
<!--
	getlog();
// -->
</script>
</div>
<%-- ログを取得（ログイン用）--%>
<div id="divGetLogForLogin" runat="server" visible="false">
<script type='text/javascript'>
<!--
	getlog_for_login("<%= this.LoginUserId %>");
// -->
</script>
</div>
<%-- ログを取得（退会用）--%>
<div id="divGetLogForLeave" runat="server" visible="false">
<script type='text/javascript'>
<!--
	getlog_for_leave("<%= Session[Constants.SESSION_KEY_W2MP_ACCESSLOG_LOGIN_USER_ID] %>");
// -->
</script>
</div>