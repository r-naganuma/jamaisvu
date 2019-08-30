<%--
=========================================================================================================
  Module      : 会員登録完了画面(UserRegistComplete.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_UserRegistComplete, App_Web_userregistcomplete.aspx.b2a7112d" title="会員登録完了（新規登録）｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="会員登録完了（新規登録）ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap topSpace">
	<h2>会員登録</h2>

	<%-- 会員登録系パンくず --%>
	<img src="../../Contents/ImagesPkg/user/user/registration_step03.png" class="registStep pc_contents" alt="登録完了" />
	<img src="../../Contents/ImagesPkg/user/user/registration_step03_sp.png" class="registStep sp_contents" alt="登録完了" />

	<div class="registWrap_box">
		<%-- メッセージ --%>
		<p class="completeTxt01">
			ご登録ありがとうございます
		</p>
		<p class="completeTxt02">
			<%= WebSanitizer.HtmlEncode(ShopMessage.GetMessage("ShopName")) %>へのご登録ありがとうございます。<br class="pc_contents">登録完了メールをご登録のメールアドレスに送信しました。<br><br>
			メールが届かない場合は、ご登録のメールアドレスが間違っている可能性がございます。<br class="pc_contents">マイページの「登録内容の確認・変更」からご確認ください。<br><br>
			引き続き、お買い物をお楽しみください。
		</p>
		<div class="submitBtnBox">
			<asp:LinkButton ID="lbTopPage" runat="server" OnClick="lbTopPage_Click" class="prevBtn">トップページへ戻る</asp:LinkButton>
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
				会員登録
			</a>
		</li>
	</ul>
</div>
<script type="text/javascript" charset="utf-8" src="https://api.socialplus.jp/jamaisvu/jamaisvu/form_assist/done.js"></script>
</asp:Content>