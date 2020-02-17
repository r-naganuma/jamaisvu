<%--
=========================================================================================================
  Module      : 問合せ入力画面(InquiryInput.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_Inquiry_InquiryInput, App_Web_inquiryinput.aspx.97d9c6ad" title="お問い合わせ｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="お問い合わせページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<div class="registWrap topSpace inquiryWrap">
	<h2>お問い合わせ</h2>

	<div class="registWrap_box">
		
		<%-- 問合せ項目入力フォーム --%>
		<div class="registWrap_box--input creditListBox">

		<%-- 問合せ項目開始 --%>
		<dl class="inputBox">
			<%-- 問合せ件名 --%>
				<dt class="inputBox_left must">お問い合わせ種別</dt>
				<dd class="inputBox_right">
					<asp:DropDownList ID="ddlInquiryTitle" runat="server">
						<asp:ListItem Text="選択してください" Value=""></asp:ListItem>
						<asp:ListItem Text="商品について" Value="商品について"></asp:ListItem>
						<asp:ListItem Text="返品・交換について" Value="返品・交換について"></asp:ListItem>
						<asp:ListItem Text="在庫について" Value="在庫について"></asp:ListItem>
						<asp:ListItem Text="その他" Value="その他"></asp:ListItem>
					</asp:DropDownList>
					<asp:CustomValidator runat="Server"
						ControlToValidate="ddlInquiryTitle"
						ValidationGroup="Inquiry"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<%= WebSanitizer.HtmlEncode(this.ProductInquiry)%>
					<asp:DropDownList ID="ddlProductVariation" runat="server" Width="400"></asp:DropDownList>
					<asp:HiddenField ID="hfProductTitlePrefix" runat="server" Value="商品名 : " />
				</dd>
			<%-- 氏名 --%>
				<dt class="inputBox_left must"><%: ReplaceTag("@@User.name.name@@") %></dt>
				<dd class="inputBox_right">
					<dl class="nameArea">
						<dt>
							<% SetMaxLength(WtbUserName1, "@@User.name1.length_max@@"); %>
							<span>姓</span>
						</dt>
						<dd>
							<asp:TextBox id="tbUserName1" Runat="server" placeholder="伊藤" CssClass="nameFirst"></asp:TextBox>
						</dd>
						<dt>
							<% SetMaxLength(WtbUserName2, "@@User.name2.length_max@@"); %>
							<span>名</span>
						</dt>
						<dd>
							<asp:TextBox id="tbUserName2" Runat="server" placeholder="花子" CssClass="nameLast"></asp:TextBox>
						</dd>
					</dl>
					<asp:CustomValidator runat="Server"
						ControlToValidate="tbUserName1"
						ValidationGroup="Inquiry"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<asp:CustomValidator runat="Server"
						ControlToValidate="tbUserName2"
						ValidationGroup="Inquiry"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
			<%-- 氏名（かな） --%>
				<dt class="inputBox_left must">かな
					<% if (this.IsJapanese){ %>
					
					<% } %>
				</dt>
				<dd class="inputBox_right">
					<dl class="nameArea">
						<dt>
							<% SetMaxLength(WtbUserNameKana1, "@@User.name_kana1.length_max@@"); %>
							<span>せい</span>
						</dt>
						<dd>
							<asp:TextBox id="tbUserNameKana1" Runat="server" placeholder="いとう" CssClass="nameFirst"></asp:TextBox>
						</dd>
						<dt>
							<% SetMaxLength(WtbUserNameKana2, "@@User.name_kana2.length_max@@"); %>
							<span>めい</span>
						</dt>
						<dd>
							<asp:TextBox id="tbUserNameKana2" Runat="server" placeholder="はなこ" CssClass="nameLast"></asp:TextBox>
						</dd>
					</dl>
					<% if (this.IsJapanese){ %>
					<asp:CustomValidator runat="Server"
						ControlToValidate="tbUserNameKana1"
						ValidationGroup="Inquiry"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<asp:CustomValidator runat="Server"
						ControlToValidate="tbUserNameKana2"
						ValidationGroup="Inquiry"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<% } %>
				</dd>
			<%-- メールアドレス --%>
				<dt class="inputBox_left must">
					メールアドレス
				</dt>
				<dd class="inputBox_right">
					<asp:TextBox id="tbUserMailAddr" Runat="server" placeholder="sample@sample.com" MaxLength="256" CssClass="mailAddr" Type="email"></asp:TextBox>
					<asp:CustomValidator runat="Server"
						ControlToValidate="tbUserMailAddr"
						ValidationGroup="Inquiry"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
			<%-- メールアドレス(確認) --%>
				<dt class="inputBox_left must">
					メールアドレス（確認）
				</dt>
				<dd class="inputBox_right">
					<asp:TextBox id="tbUserMailAddrConf" Runat="server" MaxLength="256" placeholder="sample@sample.com" CssClass="mailAddr" Type="email"></asp:TextBox>
					<asp:CustomValidator runat="Server"
						ControlToValidate="tbUserMailAddrConf"
						ValidationGroup="Inquiry"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
			<%-- 電話番号 --%>
				<dt class="inputBox_left must">
					<%: ReplaceTag("@@User.tel1.name@@") %>
				</dt>
				<dd class="inputBox_right">
					<dl class="zipArea">
						<dt>
							<asp:TextBox id="tbUserTel1" Runat="server" MaxLength="6" placeholder="012" CssClass="tel1" Type="tel"></asp:TextBox>
						</dt>
						<dd>ー</dd>
						<dt>
							<asp:TextBox id="tbUserTel2" Runat="server" MaxLength="4" placeholder="3456" CssClass="tel2" Type="tel"></asp:TextBox>
						</dt>
						<dd>ー</dd>
						<dt>
							<asp:TextBox id="tbUserTel3" Runat="server" MaxLength="4" placeholder="7890" CssClass="tel3" Type="tel"></asp:TextBox>
						</dt>
					<asp:CustomValidator runat="Server"
						ControlToValidate="tbUserTel1"
						ValidationGroup="Inquiry"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<asp:CustomValidator runat="Server"
						ControlToValidate="tbUserTel2"
						ValidationGroup="Inquiry"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<asp:CustomValidator runat="Server"
						ControlToValidate="tbUserTel3"
						ValidationGroup="Inquiry"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					</dl>
				</dd>
			<%-- 問合せ内容 --%>
				<dt class="inputBox_left must noCenter2">内容</dt>
				<dd class="inputBox_right">
					<asp:TextBox ID="tbInquiryText" runat="server" placeholder="ここにお問い合わせ内容を入力してください。&#13;&#10;「返品・交換」に関するお問い合わせの場合は、お買い上げ明細書に記載の「受注番号」および返品理由（当店都合かお客様ご都合かでご案内が異なるため）も入力してください。" TextMode="MultiLine" Rows="10" CssClass="inquirytext" Text=""></asp:TextBox>
					<asp:CustomValidator runat="Server"
						ControlToValidate="tbInquiryText"
						ValidationGroup="Inquiry"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
		</dl>
		<%-- 問合せ項目ここまで --%>

		<div class="registWrap_box--inquiryNote">
			<p>
				・土曜・日曜・祝日は休業日となりますため、ご質問・返品・交換に関するメールでのご返信は平日10時から18時の間に順次対応させていただきます。<br><br>
				・お問い合せから3営業日以内を目処にご返信させていただきますが、万が一、3営業日以内に返信が届かない場合は、大変お手数をおかけいたしますが、再度ご連絡くださいますようお願いいたします。<br><br>
				・フリーメール(Yahoo!メール、Gmail等)をご利用の場合、ご連絡が迷惑メールフォルダ等に振り分けられてしまう可能性がございますのでご注意ください。<br><br>
				・迷惑メール対策を行われている方は、@jamaisvu.co.jpのドメイン指定受信の設定をお願いいたします。 設定いただいていない場合、当オンラインストアからのご連絡等を受けられない場合がございます。
			</p>
		</div>

		<div class="submitBtnBox">
			<asp:LinkButton ID="lbConfirm" runat="server" ValidationGroup="Inquiry" OnClientClick="return exec_submit();" OnClick="lbConfirm_Click" class="nextBtn">
				入力内容を確認する
			</asp:LinkButton>
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
				お問い合わせ
			</a>
		</li>
	</ul>
</div>
<style>
#Wrap .userWrap .registWrap_box--input .inputBox_right .nameArea dd {
    width: 170px;
}
@media (max-width: 768px){
#Wrap .userWrap .registWrap_box--input .inputBox_right .nameArea dd {
    width: 85%;
    margin-top: 16px;
}
}
</style>
<script type="text/javascript">
<!--
	bindExecAutoKana();

	<%-- 氏名（姓・名）の自動振り仮名変換のイベントをバインドする --%>
	function bindExecAutoKana() {
		execAutoKanaWithKanaType(
			$("#<%= tbUserName1.ClientID %>"),
			$("#<%= tbUserNameKana1.ClientID %>"),
			$("#<%= tbUserName2.ClientID %>"),
			$("#<%= tbUserNameKana2.ClientID %>"));
	}
//-->
</script>

</asp:Content>
