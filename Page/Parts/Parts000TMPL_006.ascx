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
<%@ Page Title="TOP ver.2 - JOURNAL" %>
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="journalTop">
	<div class="journalTop_inner">
		<h2 class="journalTop_ttl">
			See the latest<br>
			from our Journal.
		</h2>
		<div class="journalTop_new">
			<!-- aタグコピーで -->
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200218/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200218journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	JAMAIS VU×editor_kaoの<br>
                        	「彩りのある着こなし」vol.1 &lt;Blue&gt;
		                </p>
		                <p class="journalDate">2020.02.18</p>
		            </div>
				</a>
			<!-- -->
		</div>
		<div class="journalTop_archive">
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&_sale=%E3%82%BB%E3%83%BC%E3%83%AB&pno=1">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200203journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">NEWS</p>
		                <p class="journalTtl">
		                	対象アイテム拡大！全品60％OFF
		                </p>
		                <p class="journalDate">2020.02.03</p>
		            </div>
				</a>
	        </div>
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200212/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200212journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	2020 Spring Summer Collection<br>Vol.1
		                </p>
		                <p class="journalDate">2020.02.12</p>
		            </div>
				</a>
	        </div>
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200210/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200210journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	「SUVINオゾンニットパーカー」の<br>着こなし方を身長別で紹介
		                </p>
		                <p class="journalDate">2020.02.10</p>
		            </div>
				</a>
	        </div>
			<!-- <div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Newarrival/Newarrival_20200204/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/newarrivals_200204journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">NEW ARRIVAL</p>
		                <p class="journalTtl">
		                	長く使い続けたい、サステナブルな名品
		                </p>
		                <p class="journalDate">2020.02.04</p>
		            </div>
				</a>
	        </div> -->
		</div>
		<div class="btnBoxver2 btn--more">
			<a href="<%= Constants.PATH_ROOT %>Page/Journal/">READ MORE</a>
		</div>
	</div>
</div>

<%-- △編集可能領域△ --%>
