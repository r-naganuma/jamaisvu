<%--
=========================================================================================================
  Module      : 問合せ確認画面(InquiryConfirm.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2010 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="Captcha" Src="~/Form/Common/Captcha.ascx" %>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_Inquiry_InquiryConfirm, App_Web_inquiryconfirm.aspx.97d9c6ad" title="お問い合わせ内容確認｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="お問い合わせ内容確認ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap topSpace inquiryWrap">
	<h2>お問い合わせ内容確認</h2>

	<div class="registWrap_box">

		<%-- 問合せ項目入力フォーム --%>
		<div class="registWrap_box--input">

			<%-- 問合せ項目開始 --%>
			<dl class="inputBox inputBox_confirm">
				<%-- 問合せ件名 --%>
				<dt class="inputBox_left must">お問い合わせ種別</dt>
				<dd class="inputBox_right"><%= WebSanitizer.HtmlEncode(this.InquiryInput["inquiry_title"])%></dd>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.name.name@@") %>
				</dt>
				<dd class="inputBox_right"><%= WebSanitizer.HtmlEncode(this.InquiryInput[Constants.FIELD_USER_NAME1])%>
				<%= WebSanitizer.HtmlEncode(this.InquiryInput[Constants.FIELD_USER_NAME2])%></dd>
				<dt class="inputBox_left must">
					かな
				</dt>
				<dd class="inputBox_right"><%= WebSanitizer.HtmlEncode(this.InquiryInput[Constants.FIELD_USER_NAME_KANA1])%>
				<%= WebSanitizer.HtmlEncode(this.InquiryInput[Constants.FIELD_USER_NAME_KANA2])%></dd>
				<dt class="inputBox_left must">メールアドレス</dt>
				<dd class="inputBox_right"><%= WebSanitizer.HtmlEncode(this.InquiryInput[Constants.FIELD_USER_MAIL_ADDR])%></dd>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.tel1.name@@") %>
				</dt>
				<dd class="inputBox_right"><%= WebSanitizer.HtmlEncode(this.InquiryInput[Constants.FIELD_USER_TEL1_1])%>-<%= WebSanitizer.HtmlEncode(this.InquiryInput[Constants.FIELD_USER_TEL1_2])%>-<%= WebSanitizer.HtmlEncode(this.InquiryInput[Constants.FIELD_USER_TEL1_3])%></dd>
				<dt class="inputBox_left must">内容</dt>
				<dd class="inputBox_right"><%= WebSanitizer.HtmlEncodeChangeToBr(this.InquiryInput["inquiry_text"])%></dd>
			</dl>
		</div>

		<%-- キャプチャ認証 --%>
		<uc:Captcha ID="ucCaptcha" runat="server" EnabledControlClientID="<%# lbSend.ClientID %>" />

		<%-- 問合せ項目ここまで --%>
		<div class="allBtnBox">
			<asp:LinkButton ID="lbBack" runat="server" OnClientClick="return exec_submit()" OnClick="lbBack_Click" class="prevBtn">
				戻る
			</asp:LinkButton>
			<asp:LinkButton ID="lbSend" runat="server" OnClientClick="return exec_submit();" OnClick="lbSend_Click" class="nextBtn">
				送信する
			</asp:LinkButton>
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
			<a href="/Form/Inquiry/InquiryInput.aspx">
				お問い合わせ
			</a>
		</li>
		<li> >
			<a href="#">
				お問い合わせ内容確認
			</a>
		</li>
	</ul>
</div>
</asp:Content>