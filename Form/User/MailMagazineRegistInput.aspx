<%--
=========================================================================================================
  Module      : メールマガジン登録入力画面(MailMagazineRegistInput.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2010 All Rights Reserved.
=========================================================================================================
--%>
<%@ page language="C#" masterpagefile="~/Form/Common/UserPage.master" autoeventwireup="true" inherits="Form_User_MailMagazineRegistInput, App_Web_mailmagazineregistinput.aspx.b2a7112d" title="ニュースレター登録｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="ニュースレター登録ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="registWrap topSpace">
	<h2>ニュースレター登録</h2>

	<p class="catchTxt">JAMAIS VU（ジャメヴ）の新商品のご案内やキャンペーン情報をお届けいたします。<br>
	ぜひご登録ください。</p>

	<div class="registWrap_box">
		<div class="registWrap_box--input">	
			<dl class="inputBox">
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
					<asp:CustomValidator ID="cvUserName1" runat="Server"
						ControlToValidate="tbUserName1"
						ValidationGroup="MailMagazineRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<asp:CustomValidator ID="cvUserName2" runat="Server"
						ControlToValidate="tbUserName2"
						ValidationGroup="MailMagazineRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
				<%-- 氏名（かな） --%>
				<dt class="inputBox_left must">かな
					<% if (this.IsJapanese) { %>
						
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
					<% if (this.IsJapanese) { %>
					<asp:CustomValidator ID="cvUserNameKana1" runat="Server"
						ControlToValidate="tbUserNameKana1"
						ValidationGroup="MailMagazineRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<asp:CustomValidator ID="cvUserNameKana2" runat="Server"
						ControlToValidate="tbUserNameKana2"
						ValidationGroup="MailMagazineRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
					<% } %>
				</dd>
				<dt class="inputBox_left must">
					メールアドレス
				</dt>
				<dd class="inputBox_right"><asp:TextBox ID="tbUserMailAddr" Runat="server" placeholder="sample@sample.com" CssClass="mailAddr" MaxLength="256" Type="email"></asp:TextBox>
				<asp:CustomValidator ID="cvUserMailAddr" runat="Server"
					ControlToValidate="tbUserMailAddr"
					ValidationGroup="MailMagazineRegist"
					ValidateEmptyText="true"
					SetFocusOnError="true"
					ClientValidationFunction="ClientValidate"
					CssClass="error_inline" />
				</dd>
				<dt class="inputBox_left must">
					メールアドレス（確認）
				</dt>
				<dd class="inputBox_right">
					<asp:TextBox id="tbUserMailAddrConf" Runat="server" placeholder="sample@sample.com" MaxLength="256" CssClass="mailAddr" Type="email"></asp:TextBox>
					<asp:CustomValidator ID="cvUserMailAddrConf" runat="Server"
						ControlToValidate="tbUserMailAddrConf"
						ValidationGroup="MailMagazineRegist"
						ValidateEmptyText="true"
						SetFocusOnError="true"
						ClientValidationFunction="ClientValidate"
						CssClass="error_inline" />
				</dd>
			</dl>
		</div>

		<div class="registWrap_box--inquiryNote">
			<p>
				ご登録後、ご入力いただいたメールアドレス宛に「ニュースレター登録完了のご連絡」を自動送信いたします。<br><br class="sp_contents">					各キャリアやメールソフトの設定により「迷惑メール」と認識され、メールが届かない場合がありますので、<br class="pc_contents">お手数ですがご登録前に「@jamaisvu.co.jp」を受信できるようドメインの受信設定をお願いいたします。
			</p>
		</div>
		<div class="submitBtnBox">
			<asp:LinkButton ID="lbConfirm" ValidationGroup="MailMagazineRegist" OnClientClick="return exec_submit();" runat="server" OnClick="lbConfirm_Click" class="nextBtn">登録内容を確認する</asp:LinkButton>
		</div>
	</div>
</div>

		<!-- <h2>メールマガジン解除</h2>

	<div class="unit">
		<p>メールマガジンを解除される方は、下記のボタンをクリックして、メールマガジン解除画面へ。</p>
		<div class="dvUserBtnBox">
			<p>
				<span><a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_MAILMAGAZINE_CANCEL_INPUT) %>" class="btn btn-large btn-inverse">
					メールマガジン解除</a>
				</span>
			</p>
		</div>
	</div> -->

<div class="userBread">
	<ul>
		<li>
			<a href="<%= WebSanitizer.HtmlEncode(this.UnsecurePageProtocolAndHost + Constants.PATH_ROOT) %>">
				トップ
			</a>
		</li>
		<li> >
			<a href="#">
				ニュースレター登録
			</a>
		</li>
	</ul>
</div>

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