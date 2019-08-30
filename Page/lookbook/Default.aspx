<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="LOOKBOOK一覧｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="JAMAIS VU （ジャメヴ）のLOOKBOOKページ。2019AWコレクションを掲載中。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="LOOKBOOK,ルックブック,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
	<div class="lookWrap">
		<h2>LOOKBOOK</h2>
		<div class="lookWrap_archive">
			<!-- <div class="lookWrap_archive--list">
				<img src="<%= Constants.PATH_ROOT %>Page/lookbook/images/edition3.jpg" alt="edition3">
				<div class="mask">
					<div class="caption">
						<p>EDITION 3</p>
						<div class="caption_more">
							<a href="<%= Constants.PATH_ROOT %>Page/lookbook/edition3/">MORE</a>
						</div>
					</div>
				</div>
			</div>
			<div class="lookWrap_archive--list">
				<img src="<%= Constants.PATH_ROOT %>Page/lookbook/images/edition2.jpg" alt="edition2">
				<div class="mask">
					<div class="caption">
						<p>EDITION 2</p>
						<div class="caption_more">
							<a href="<%= Constants.PATH_ROOT %>Page/lookbook/edition2/">MORE</a>
						</div>
					</div>
				</div>
			</div> -->
			<div class="lookWrap_archive--list">
				<img src="<%= Constants.PATH_ROOT %>Page/lookbook/images/edition1.jpg" alt="edition1">
				<div class="mask">
					<div class="caption">
						<p>EDITION 1</p>
						<div class="caption_more">
							<a href="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/">MORE</a>
						</div>
					</div>
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
					LOOKBOOK
				</a>
			</li>
		</ul>
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

