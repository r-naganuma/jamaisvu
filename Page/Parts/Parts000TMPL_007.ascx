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
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031133111&cat=500011">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031133111_sub08_L.jpg">
                <p class="itemsName">ハミルトンルーズフィットタートル</p>
                <p class="itemsPrice priceOld">¥23,100 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥16,170 <span>(tax in)</span> <span class="off">30%OFF</span></p>
                <!-- <p class="itemsPrice">¥22,000 <span>(tax in)</span></p> -->
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031132131&cat=500031">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031132131_sub08_L.jpg">
                <p class="itemsName">ハミルトンモックネックプルオーバー</p>
                <p class="itemsPrice priceOld">¥20,900 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥10,450 <span>(tax in)</span> <span class="off">50%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030255155&cat=500055">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2030255155_sub07_L.jpg">
                <p class="itemsName">★再入荷★【長尾悦美さんコラボ】ハミルトンスキッパーニット</p>
                <p class="itemsPrice priceOld">¥22,000 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥15,400 <span>(tax in)</span> <span class="off">30%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031431211&cat=500011">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/2031431211_L.jpg">
                <p class="itemsName">ハミルトンニットワイドパンツ</p>
                <p class="itemsPrice priceOld">¥20,900 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥14,630 <span>(tax in)</span> <span class="off">30%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031247165&cat=500065">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031247165_sub06_L.jpg">
                <p class="itemsName">メリノオプティモ ワイドリブカーディガン</p>
                <p class="itemsPrice priceOld">¥22,000 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥8,800 <span>(tax in)</span> <span class="off">60%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031122142&cat=500042">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/2031122142_L.jpg">
                <p class="itemsName">メリノオプティモ　18Ｇポロ</p>
                <p class="itemsPrice priceOld">¥22,000 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥13,200 <span>(tax in)</span> <span class="off">40%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030194141&cat=500041">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/1930128141_L.jpg">
                <p class="itemsName">ハミルトン薄中綿フリーサイズコート</p>
                <p class="itemsPrice priceOld">¥52,800 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥21,120 <span>(tax in)</span> <span class="off">60%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031137119&cat=500019">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031137119_sub08_L.jpg">
                <p class="itemsName">フォークランドハイネックカーディガン</p>
                <p class="itemsPrice priceOld">¥28,600 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥17,160 <span>(tax in)</span> <span class="off">40%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031146149&cat=500049">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031146149_sub06_L.jpg">
                <p class="itemsName">メリノオプティモ ワイドリブプルオーバー</p>
                <p class="itemsPrice priceOld">¥20,900 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥8,360 <span>(tax in)</span> <span class="off">60%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930337131&cat=500031">
                <img src="https://jamaisvu.co.jp/Contents/ImagesPkg/user/top/topItem_210115_01.png">
                <p class="itemsName">ビルトネックプルオーバー</p>
                <p class="itemsPrice priceOld">¥23,100 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥9,240 <span>(tax in)</span> <span class="off">60%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2030195141&cat=500041">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/1930129141_L.jpg">
                <p class="itemsName">ハミルトン薄中綿コートジャケット</p>
                <p class="itemsPrice priceOld">¥42,900 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥17,160 <span>(tax in)</span> <span class="off">60%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031118165&cat=500065">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031118165_sub07_L.jpg">
                <p class="itemsName">メリノオプティモ 18G ハイネック</p>
                <p class="itemsPrice priceOld">¥23,100 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥13,860 <span>(tax in)</span> <span class="off">40%OFF</span></p>
			</a>
		</div>
	</div>
	<div class="btnBoxver2 btn--more">
		<a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">VIEW MORE ITEMS</a>
	</div>
</div>

<%-- △編集可能領域△ --%>
