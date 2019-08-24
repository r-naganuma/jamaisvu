<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="LOOKBOOK | JAMAIS VU (ジャメヴ) 公式ブランドサイト" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<link href="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/css/style.css" rel="stylesheet" type="text/css">
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
	<div class="lookWrap">
		<h2>LOOKBOOK<span>EDITION 1</span></h2>
		<div class="lookWrap_box">
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic01.jpg" alt="edition1">
				</div>
				<div class="creditArea">
					<p class="itemName">Vネックニットベスト</p>
					<p class="price">¥25,920<span>(tax in)</span></p>
					<div class="moreBtn">
						<a href="">MORE</a>
					</div>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic02.jpg" alt="edition2">
				</div>
				<div class="creditArea">
					<p class="itemName">Vネックニットベスト</p>
					<p class="price">¥25,920<span>(tax in)</span></p>
					<div class="moreBtn">
						<a href="">MORE</a>
					</div>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic03.jpg" alt="edition3">
				</div>
				<div class="creditArea">
					<p class="itemName">Vネックニットベスト</p>
					<p class="price">¥25,920<span>(tax in)</span></p>
					<div class="moreBtn">
						<a href="">MORE</a>
					</div>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic04.jpg" alt="edition4">
				</div>
				<div class="creditArea">
					<p class="itemName">Vネックニットベスト</p>
					<p class="price">¥25,920<span>(tax in)</span></p>
					<div class="moreBtn">
						<a href="">MORE</a>
					</div>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic05.jpg" alt="edition5">
				</div>
				<div class="creditArea">
					<p class="itemName">Vネックニットベスト</p>
					<p class="price">¥25,920<span>(tax in)</span></p>
					<div class="moreBtn">
						<a href="">MORE</a>
					</div>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic06.jpg" alt="edition6">
				</div>
				<div class="creditArea">
					<p class="itemName">Vネックニットベスト</p>
					<p class="price">¥25,920<span>(tax in)</span></p>
					<div class="moreBtn">
						<a href="">MORE</a>
					</div>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic07.jpg" alt="edition7">
				</div>
				<div class="creditArea">
					<p class="itemName">Vネックニットベスト</p>
					<p class="price">¥25,920<span>(tax in)</span></p>
					<div class="moreBtn">
						<a href="">MORE</a>
					</div>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic08.jpg" alt="edition8">
				</div>
				<div class="creditArea">
					<p class="itemName">Vネックニットベスト</p>
					<p class="price">¥25,920<span>(tax in)</span></p>
					<div class="moreBtn">
						<a href="">MORE</a>
					</div>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic09.jpg" alt="edition9">
				</div>
				<div class="creditArea">
					<p class="itemName">Vネックニットベスト</p>
					<p class="price">¥25,920<span>(tax in)</span></p>
					<div class="moreBtn">
						<a href="">MORE</a>
					</div>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic10.jpg" alt="edition10">
				</div>
				<div class="creditArea">
					<p class="itemName">Vネックニットベスト</p>
					<p class="price">¥25,920<span>(tax in)</span></p>
					<div class="moreBtn">
						<a href="">MORE</a>
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
				<a href="<%= Constants.PATH_ROOT %>Page/lookbook/">
					LOOKBOOK
				</a>
			</li>
			<li> >
				<a href="#">
					EDITION 1
				</a>
			</li>
		</ul>
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

