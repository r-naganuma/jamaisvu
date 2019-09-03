<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="EDITION 1｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="JAMAIS VU （ジャメヴ）のEDITION 1｜LOOKBOOKページ。2019AWコレクションを掲載中。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="LOOKBOOK,ルックブック,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
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
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930317111">
						<span class="itemName">ショートカーディガン</span>
						<span class="price">¥22,680<span>(tax in)</span></span>
					</a>
					<span class="slash">/</span>
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930318111">
						<span class="itemName">ビッグカーディガン</span>
						<span class="price">¥25,920<span>(tax in)</span></span>
					</a>
					<span class="slash">/</span>
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930305111">
						<span class="itemName">ニットスウェットパンツ</span>
						<span class="price">¥22,680<span>(tax in)</span></span>
					</a>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic02.jpg" alt="edition2">
				</div>
				<div class="creditArea">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930304131">
						<span class="itemName">タンクドレス</span>
						<span class="price">¥24,840<span>(tax in)</span></span>
					</a>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea small">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic03.jpg" alt="edition3">
				</div>
				<div class="creditArea small">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930315155">
						<span class="itemName">Vネックベスト</span>
						<span class="price">¥16,200<span>(tax in)</span></span>
					</a>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic04.jpg" alt="edition4">
				</div>
				<div class="creditArea">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930122117">
						<span class="itemName">フリーサイズコート</span>
						<span class="price">¥51,840<span>(tax in)</span></span>
					</a>
					<span class="slash">/</span>
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930312161">
						<span class="itemName">ヘアリーパーカー</span>
						<span class="price">¥22,680<span>(tax in)</span></span>
					</a>
					<span class="slash">/</span>
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930306149">
						<span class="itemName">ニットワイドパンツ</span>
						<span class="price">¥20,520<span>(tax in)</span></span>
					</a>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic05.jpg" alt="edition5">
				</div>
				<div class="creditArea">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930309161">
						<span class="itemName">ヘアリーポロ</span>
						<span class="price">¥19,440<span>(tax in)</span></span>
					</a>
					<span class="slash">/</span>
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930305165">
						<span class="itemName">ニットスウェットパンツ</span>
						<span class="price">¥22,680<span>(tax in)</span></span>
					</a>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic06.jpg" alt="edition6">
				</div>
				<div class="creditArea">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930302155">
						<span class="itemName">ビルトネックタートル</span>
						<span class="price">¥19,440<span>(tax in)</span></span>
					</a>
					<span class="slash">/</span>
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930305155">
						<span class="itemName">ニットスウェットパンツ</span>
						<span class="price">¥22,680<span>(tax in)</span></span>
					</a>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic07.jpg" alt="edition7">
				</div>
				<div class="creditArea">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930316135">
						<span class="itemName">ホールガーメントTシャツ</span>
						<span class="price">¥15,120<span>(tax in)</span></span>
					</a>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic08.jpg" alt="edition8">
				</div>
				<div class="creditArea">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930313255">
						<span class="itemName">フィットカーディガン</span>
						<span class="price">¥18,360<span>(tax in)</span></span>
					</a>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic09.jpg" alt="edition9">
				</div>
				<div class="creditArea">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930317121">
						<span class="itemName">ショートカーディガン</span>
						<span class="price">¥22,680<span>(tax in)</span></span>
					</a>
					<span class="slash">/</span>
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930318121">
						<span class="itemName">ビッグカーディガン</span>
						<span class="price">¥25,920<span>(tax in)</span></span>
					</a>
					<span class="slash">/</span>
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930306165">
						<span class="itemName">ニットワイドパンツ</span>
						<span class="price">¥20,520<span>(tax in)</span></span>
					</a>
				</div>
			</div>
			<div class="lookWrap_box--list">
				<div class="picArea">
					<img src="<%= Constants.PATH_ROOT %>Page/lookbook/edition1/images/pic10.jpg" alt="edition10">
				</div>
				<div class="creditArea">
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930317121">
						<span class="itemName">ショートカーディガン</span>
						<span class="price">¥22,680<span>(tax in)</span></span>
					</a>
					<span class="slash">/</span>
					<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930318121">
						<span class="itemName">ビッグカーディガン</span>
						<span class="price">¥25,920<span>(tax in)</span></span>
					</a>
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

