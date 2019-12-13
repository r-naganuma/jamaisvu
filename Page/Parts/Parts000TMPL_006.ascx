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
			<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20191206/">
				<div class="journalTop_archive--list--pic">
            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191206journal.jpg">
                </div>
				<div class="journalTop_archive--list--txt">
	                <p class="journalCat">FEATURE</p>
	                <p class="journalTtl">
	                	初回購入限定 ALL 50%OFF
	                </p>
	                <p class="journalDate">2019.12.06</p>
	            </div>
			</a>
			<!-- -->
		</div>
		<div class="journalTop_archive">
	        <div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20191213/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191213journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	普段着を格上げ。楽に着映える優秀ワンピース
		                </p>
		                <p class="journalDate">2019.12.13</p>
		            </div>
				</a>
	        </div>
	        <div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Column/Column_20191210/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/column_191210journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">COLUMN</p>
		                <p class="journalTtl">
		                	「上質を纏う。素材の良さを追求した物づくり」 Vol.1
		                </p>
		                <p class="journalDate">2019.12.10</p>
		            </div>
				</a>
	        </div>
	        <div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191126/">
					<div class="journalTop_archive--list--pic">
	                	<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191126journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	定番チノパンと合わせる、上質ニット
		                </p>
		                <p class="journalDate">2019.11.26</p>
		            </div>
				</a>
	        </div>
	        <!-- <div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/topics/feature/feature_20191122/">
					<div class="journalTop_archive--list--pic">
	                	<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191122journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	Knit Fair 4,000円OFF キャンペーン
		                </p>
		                <p class="journalDate">2019.11.22</p>
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
