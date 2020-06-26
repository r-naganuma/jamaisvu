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
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010323121&cat=500021">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2010323121_sub06_L.jpg">
                <p class="itemsName">【クリス-ウェブ 佳子コラボ】バックレースアップリブニット</p>
                <!-- <p class="itemsPrice priceOld">¥17,600 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥13,200 <span>(tax in)</span> <span class="off">25%OFF</span></p> -->
                <p class="itemsPrice">¥15,400 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010575119&cat=500019">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2010575119_sub08_L.jpg">
                <p class="itemsName">【クリス-ウェブ 佳子コラボ】バックバックルコンビネゾン</p>
                <p class="itemsPrice">¥28,600 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010318211&cat=500011">
                <img src="https://jamaisvu.co.jp/Contents/ImagesPkg/user/top/topItem_200610_01.jpg">
                <p class="itemsName"><!-- 【kanoco着用】 -->SUVINフィットカーディガンハーフ</p>
                <p class="itemsPrice priceOld">¥16,500 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥11,550 <span>(tax in)</span> <span class="off">30%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010267168&cat=500068">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2010267168_sub07_L.jpg">
                <p class="itemsName">リバティードローストリングブラウス</p>
                <p class="itemsPrice priceOld">¥17,600 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥8,800 <span>(tax in)</span> <span class="off">50%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010552151&cat=500051">
                <img src="https://jamaisvu.co.jp/Contents/ImagesPkg/user/top/topItem_200610_02.jpg">
                <p class="itemsName"><!-- 【kanoco着用】 -->ペルビアンピマコットンワンピース</p>
                <p class="itemsPrice">¥19,800 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010314111&cat=500011">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2010314111_sub06_L.jpg">
                <p class="itemsName"><!-- 【kanoco着用】 -->ICE COTTON リブヘンリーネック</p>
                <p class="itemsPrice">¥14,300 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010315119&cat=500019">
                <img src="https://jamaisvu.co.jp/Contents/ImagesPkg/user/top/topItem_200610_03.jpg">
                <p class="itemsName">ICE COTTON リブカーディガン</p>
                <p class="itemsPrice">¥15,400 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010769241&cat=500041">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2010769241_sub06_L.jpg">
                <p class="itemsName"><!-- 【kanoco着用】 -->フリーサイズテーパード</p>
                <p class="itemsPrice">¥23,100 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010322151&cat=500051">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2010322151_sub06_L.jpg">
                <p class="itemsName">SUVINラグランニットスウェット</p>
                <p class="itemsPrice priceOld">¥14,300 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥10,010 <span>(tax in)</span> <span class="off">30%OFF</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930632117&cat=500017">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/1930632117_sub10_L.jpg">
                <p class="itemsName"><!-- 【kanoco着用】 -->フリーサイズラップ</p>
                <p class="itemsPrice">¥20,900 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010435159&cat=500059">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2010435159_sub07_L.jpg">
                <p class="itemsName">SUVINワッフルワンピース</p>
                <p class="itemsPrice">¥16,500 <span>(tax in)</span></p>
			</a>
		</div>
		<div class="itemsTop_box--list">
			<a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=2010317141&cat=500041">
                <img src="https://jamaisvu.co.jp/Contents/ProductSubImages/0/2010317141_sub06_L.jpg">
                <p class="itemsName">ペイパーポロシャツ</p>
                <p class="itemsPrice priceOld">¥17,600 <span>(tax in)</span></p>
                <p class="itemsPrice priceNew">¥12,320 <span>(tax in)</span> <span class="off">30%OFF</span></p>
			</a>
		</div>
	</div>
	<div class="btnBoxver2 btn--more">
		<a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">VIEW MORE ITEMS</a>
	</div>
</div>

<%-- △編集可能領域△ --%>
