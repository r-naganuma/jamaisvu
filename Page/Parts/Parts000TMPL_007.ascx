<%--
=========================================================================================================
  Module      : カスタムパーツテンプレート画面(CustomPartsTemplate.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Control Language="C#" Inherits="BaseUserControl" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
タイトルタグはカスタムパーツのみ利用します。
<%@ Page Title="TOP ver.2 - ITEMS" %>
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="itemsTop">
	<h2 class="itemsTop_ttl">
		Rather be wearing<br>
		Jamais Vu.
	</h2>
	<p class="itemsTop_txt">
		JAMAIS VUは「自由で正直なものづくりを大切にしたい」という考えから、<br class="pc_contents">素材から作り手に至るまで本当に良いものを追求し、<br class="pc_contents">流行に縛られないオーセンティックな製品を提案しています。
	</p>
	<div class="itemsTop_box">
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2111515155&cat=500055">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/2111515155_M.jpg?91837">
                <p class="itemsName">アイスコットンアシンメトリースカート</p>
                <!-- <p class="itemsPrice priceOld">¥23,100 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥16,170 <span>(tax in)</span> <span class="off">30%OFF</span></p> -->
                <p class="itemsPrice">¥15,400 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2111114117&cat=500017">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2111114117_sub07_M.jpg?91837">
                <p class="itemsName">アイスコットンビルトネックヘンリー</p>
                <p class="itemsPrice">¥15,400 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2111004165&cat=500065">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/2111004165_M.jpg?91837">
                <p class="itemsName">SUVINオゾン加工ショートスリーブ</p>
                <p class="itemsPrice">¥15,400 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2111118163&cat=500063">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2111118163_sub07_M.jpg?91837">
                <p class="itemsName">SUVINコットンシアードルマンスウェット</p>
                <p class="itemsPrice">¥9,900 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010253161&cat=500061">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/2010253161_M.jpg?91837">
                <p class="itemsName">ペルビアンピマコットンスリットネック</p>
                <p class="itemsPrice">¥17,600 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2111216143&cat=500043">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2111216143_sub07_M.jpg?91837">
                <p class="itemsName">SUVINコットンスウェットカーディガン</p>
                <p class="itemsPrice">¥12,100 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2111109129&cat=50029">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2111109129_sub07_M.jpg?91837">
                <p class="itemsName">18Gブイプルオーバー</p>
                <p class="itemsPrice">¥18,700 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2111219161&cat=500061">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2111219161_sub07_M.jpg?91837">
                <p class="itemsName">SUVIN オゾン加工５Gカーディガン</p>
                <p class="itemsPrice">¥19,800 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031416211&cat=500011">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031416211_sub07_M.jpg?91837">
                <p class="itemsName">SUVINオゾンニットパンツ</p>
                <p class="itemsPrice">¥17,600 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2111208157&cat=50057">
                <!-- <img src="https://jamaisvu.co.jp/Contents/ImagesPkg/user/top/topItem_210115_01.png"> -->
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2111208157_sub07_M.jpg?91837">
                <p class="itemsName">18Gワイドカーディガン</p>
                <p class="itemsPrice">¥18,700 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552111&cat=500011">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/2010552111_M.jpg?91837">
                <p class="itemsName">ペルビアンピマコットンワンピース</p>
                <p class="itemsPrice">¥19,800 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2111213125&cat=500025">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/2111213125_M.jpg?91837">
                <p class="itemsName">アイスコットンポロカーディガン</p>
                <p class="itemsPrice">¥15,400 <span>(tax in)</span></p>
			</a>
		</div>
	</div>
	<div class="btnBoxver2 btn--more">
		<a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">VIEW MORE ITEMS</a>
	</div>
</div>

<%-- △編集可能領域△ --%>
