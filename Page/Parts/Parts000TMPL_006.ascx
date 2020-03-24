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
			<!-- -->
		</div>
		<div class="journalTop_archive">
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200319/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200319journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	今売れている、人気の新作ランキング
		                </p>
		                <p class="journalDate">2020.03.19</p>
		            </div>
				</a>
	        </div>
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200317/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200317journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	最新ワンピースで、簡単におしゃれを格上げ
		                </p>
		                <p class="journalDate">2020.03.17</p>
		            </div>
				</a>
	        </div>
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200313/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200313journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	夏先まで重宝する、頼れるリブニット
		                </p>
		                <p class="journalDate">2020.03.13</p>
		            </div>
				</a>
	        </div>
			<!-- <div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200310/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200310journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	JAMAIS VU×editor_kaoの<br>
		                	「彩りのある着こなし」vol.2 &lt;Beige&gt;
		                </p>
		                <p class="journalDate">2020.03.10</p>
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
