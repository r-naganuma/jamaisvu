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
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200410/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200410journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	シンプルに着映える、身長別ベストコーディネート
		                </p>
		                <p class="journalDate">2020.04.10</p>
		            </div>
				</a>
			<!-- -->
		</div>
		<div class="journalTop_archive">
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Column/Column_20200331/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/column_200331journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">COLUMN</p>
		                <p class="journalTtl">
		                	カーディガン効果
		                </p>
		                <p class="journalDate">2020.03.31</p>
		            </div>
				</a>
	        </div>
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200327/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200327journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	普段着がひときわ華やぐ。<br>この春選びたいカーディガン2Type
		                </p>
		                <p class="journalDate">2020.03.27</p>
		            </div>
				</a>
	        </div>
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200324/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200324journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	身長別スタイリング、私に似合うパンツの着こなし方
		                </p>
		                <p class="journalDate">2020.03.24</p>
		            </div>
				</a>
	        </div>
		</div>
		<div class="btnBoxver2 btn--more">
			<a href="<%= Constants.PATH_ROOT %>Page/Journal/">READ MORE</a>
		</div>
	</div>
</div>

<%-- △編集可能領域△ --%>
