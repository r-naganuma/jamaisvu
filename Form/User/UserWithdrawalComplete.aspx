<%--
=========================================================================================================
  Module      : 会員退会完了画面(UserWithdrawalComplete.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserWithdrawalComplete, App_Web_userwithdrawalcomplete.aspx.b2a7112d" title="退会完了｜マイページ｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="退会完了ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>退会手続き完了</h2>

	<div class="registWrap_box">
		<p class="psCompleteTxt">
			退会処理が完了いたしました。<br>
			<%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopName")) %>をご利用いただき<br>
			誠にありがとうございました。
		</p>
		<div class="submitBtnBox">
			<asp:LinkButton ID="lbTopPage" runat="server" OnClick="lbTopPage_Click" class="prevBtn">トップページへ戻る</asp:LinkButton>
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
				退会手続き
			</a>
		</li>
		<li> >
			<a href="#">
				完了
			</a>
		</li>
	</ul>
</div>
</asp:Content>