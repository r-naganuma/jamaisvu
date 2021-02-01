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
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2111102157&cat=50057">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/2111102157_L.jpg">
                <p class="itemsName">SUVIN8Gオーバーサイズスウェット</p>
                <!-- <p class="itemsPrice priceOld">¥23,100 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥16,170 <span>(tax in)</span> <span class="off">30%OFF</span></p> -->
                <p class="itemsPrice">¥17,600 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031133111&cat=500011">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031133111_sub08_L.jpg">
                <p class="itemsName">ハミルトンルーズフィットタートル</p>
                <p class="itemsPrice priceOld">¥23,100 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥13,860 <span>(tax in)</span> <span class="off">40%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031115133&cat=500033">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031115133_sub07_L.jpg">
                <p class="itemsName">SUVINオゾンニットパーカー</p>
                <p class="itemsPrice">¥17,600 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031137111&cat=500011">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031137111_sub08_L.jpg">
                <p class="itemsName">フォークランドハイネックカーディガン</p>
                <p class="itemsPrice priceOld">¥28,600 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥14,300 <span>(tax in)</span> <span class="off">50%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2111101143&cat=500043">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/2111101143_L.jpg">
                <p class="itemsName">SUVIN8Gドルマンスウェット</p>
                <p class="itemsPrice">¥17,600 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031132125&cat=500025">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031132125_sub07_L.jpg">
                <p class="itemsName">ハミルトンモックネックプルオーバー</p>
                <p class="itemsPrice priceOld">¥20,900 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥10,450 <span>(tax in)</span> <span class="off">50%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031118159&cat=500059">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031118159_sub06_L.jpg">
                <p class="itemsName">メリノオプティモ 18G ハイネック</p>
                <p class="itemsPrice priceOld">¥23,100 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥13,860 <span>(tax in)</span> <span class="off">40%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031431211&cat=500011">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031431211_sub06_L.jpg">
                <p class="itemsName">ハミルトンニットワイドパンツ</p>
                <p class="itemsPrice priceOld">¥20,900 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥12,540 <span>(tax in)</span> <span class="off">40%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030276112&cat=500012">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2030276112_sub07_L.jpg">
                <p class="itemsName">ボーイズシャツ</p>
                <p class="itemsPrice priceOld">¥19,800 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥11,880 <span>(tax in)</span> <span class="off">40%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031020142&cat=500042">
                <!-- <img src="https://jamaisvu.co.jp/Contents/ImagesPkg/user/top/topItem_210115_01.png"> -->
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031020142_sub06_L.jpg">
                <p class="itemsName">メリノオプティモ ワイドリブベスト</p>
                <p class="itemsPrice priceOld">¥16,500 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥6,600 <span>(tax in)</span> <span class="off">60%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552151&cat=500051">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2010552151_sub07_L.jpg">
                <p class="itemsName">ペルビアンピマコットンワンピース</p>
                <p class="itemsPrice">¥19,800 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030255155&cat=500055">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2030255155_sub07_L.jpg">
                <p class="itemsName">【長尾悦美さんコラボ】ハミルトンスキッパーニット</p>
                <p class="itemsPrice priceOld">¥22,000 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥15,400 <span>(tax in)</span> <span class="off">30%OFF</span></p>
			</a>
		</div>
	</div>
	<div class="btnBoxver2 btn--more">
		<a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">VIEW MORE ITEMS</a>
	</div>
</div>

<%-- △編集可能領域△ --%>
