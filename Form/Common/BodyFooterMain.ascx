﻿<%--
=========================================================================================================
  Module      : 共通フッタ出力コントローラ(BodyFooterMain.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="AccessLogTrackerScript" Src="~/Form/Common/AccessLogTrackerScript.ascx" %>
<%@ control language="C#" autoeventwireup="true" inherits="Form_Common_BodyFooterMain, App_Web_bodyfootermain.ascx.2af06a88" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="最終更新者" %>

--%>
<%-- ▽編集可能領域：フッタ領域▽ --%>
<div class="sec sec--news">
    <div class="sec__inner">
        <h2 class="news__title">NEWS LETTER</h2>
        <p>新商品のご紹介や会員様限定のイベント情報など、<br>最新ニュースをメールマガジンにてお知らせいたします。</p>
        <div class="btnBox btn--more">
            <a href="<%= Constants.PATH_ROOT %>Form/User/MailMagazineRegistInput.aspx">ニュースレターを受け取る</a>
        </div>
    </div>
</div>

<footer class="footer">
	<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/logo.png" alt="LOGO" class="footer_logo">
	<div class="footer_box">
		<ul class="footer_box--list">
			<li>
				<a href="">
					初めての方へ
				</a>
			</li>
			<li>
				<a href="">
					サイズガイド
				</a>
			</li>
			<li>
				<a href="">
					利用規約
				</a>
			</li>
			<li>
				<a href="">
					プライバシーポリシー
				</a>
			</li>
			<li>
				<a href="">
					個人情報取扱方針
				</a>
			</li>
			<li>
				<a href="">
					特定商取引法に基づく表示
				</a>
			</li>
			<li>
				<a href="">
					企業情報
				</a>
			</li>
			<li>
				<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_INQUIRY_INPUT) %>">
					お問い合わせ
				</a>
			</li>
		</ul>
		<ul class="footer_box--list">
			<li>
				<a href="" target="_blank">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_insta.png" alt="Instagram">
				</a>
			</li>
			<li>
				<a href="" target="_blank">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_line.png" alt="LINE">
				</a>
			</li>
			<li>
				<a href="" target="_blank">
					<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_fb.png" alt="Facebook">
				</a>
			</li>
		</ul>
	</div>
	<p class="footer_copy">Copyright &copy; ITOCHU Corporation. All Rights Reserved.</p>
</footer>
<%-- △編集可能領域△ --%>

<%-- w2アクセスログトラッカー出力 --%>
<uc:AccessLogTrackerScript id="AccessLogTrackerScript1" runat="server" />