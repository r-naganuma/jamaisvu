﻿<%--
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
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031132149&cat=500049">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031132149_sub08_L.jpg">
                <p class="itemsName">ハミルトンモックネックプルオーバー</p>
                <!-- <p class="itemsPrice priceOld">¥15,400 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥7,700 <span>(tax in)</span> <span class="off">50%OFF</span></p> -->
                <p class="itemsPrice">¥20,900 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031122149&cat=500049">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/2031122149_L.jpg">
                <p class="itemsName">メリノオプティモ　18Ｇポロ</p>
                <p class="itemsPrice">¥22,000 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031226111&cat=500011">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/2031226111_L.jpg">
                <p class="itemsName">ハミルトン　ミドルゲージ　ビッグカーディガン</p>
                <p class="itemsPrice">¥26,400 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031492165&cat=500065">
                <img src="https://jamaisvu.co.jp/Contents/ImagesPkg/user/top/topItem_201015_01.jpg">
                <p class="itemsName">ハミルトンヘアリーショートパンツ</p>
                <p class="itemsPrice">¥17,600 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031241249&cat=500049">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031241249_sub06_L.jpg">
                <p class="itemsName">メリノオプティモ　フィットカーディガン</p>
                <p class="itemsPrice">¥22,000 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031431211&cat=500011">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031431211_sub06_L.jpg">
                <p class="itemsName">ハミルトンニットワイドパンツ</p>
                <p class="itemsPrice">¥20,900 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031146149&cat=500049">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031146149_sub06_L.jpg">
                <p class="itemsName">メリノオプティモ ワイドリブプルオーバー</p>
                <p class="itemsPrice">¥20,900 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031247142&cat=500042">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031247142_sub06_L.jpg">
                <p class="itemsName">メリノオプティモ ワイドリブカーディガン</p>
                <p class="itemsPrice">¥22,000 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031325155&cat=500055">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/2031325155_L.jpg">
                <p class="itemsName">クリアハミルトン　ビッグタートル</p>
                <p class="itemsPrice">¥23,100 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031230111&cat=500011">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2031230111_sub07_L.jpg">
                <p class="itemsName">ハミルトン Vネックワンピース</p>
                <p class="itemsPrice">¥26,400 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031127149&cat=500049">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/2031127149_L.jpg">
                <p class="itemsName">ハミルトン　ミドルゲージ　プルオーバー</p>
                <p class="itemsPrice">¥20,900 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2031219151&cat=500051">
                <img src="https://jamaisvu.co.jp/Contents/ProductImages/0/2031219151_L.jpg">
                <p class="itemsName">メリノオプティモ　ワイドカーデ</p>
                <p class="itemsPrice">¥22,000 <span>(tax in)</span></p>
			</a>
		</div>
	</div>
	<div class="btnBoxver2 btn--more">
		<a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">VIEW MORE ITEMS</a>
	</div>
</div>

<%-- △編集可能領域△ --%>
