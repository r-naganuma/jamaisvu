<%--
=========================================================================================================
  Module      : 会員登録変更完了画面(UserModifyComplete.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserModifyComplete, App_Web_usermodifycomplete.aspx.b2a7112d" title="会員登録完了（変更）｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="会員登録完了（変更）ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap mypageCts">
	<h2>会員情報の変更が完了しました</h2>
	<div class="registWrap_box">
		<p class="psCompleteTxt">
			ご登録情報を変更しました。<br>
			引き続き、<%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopName")) %>でのお買い物をお楽しみください。
		</p>
		<%-- メッセージ --%>
		<div class="submitBtnBox">
			<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_MYPAGE) %>" class="prevBtn">マイページへ戻る</asp:LinkButton></a>
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
			<a href="/Form/User/UserModifyInput.aspx">
				会員情報登録・変更
			</a>
		</li>
		<li> >
			<a href="#">
				変更完了
			</a>
		</li>
	</ul>
</div>
</asp:Content>