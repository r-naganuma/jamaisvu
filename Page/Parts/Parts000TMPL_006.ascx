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
			<a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191119">
				<div class="journalTop_new--pic">
	            	<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191130journal.jpg">
				</div>
				<div class="journalTop_new--txt">
	                <p class="journalCat">FEATURE</p>
	                <p class="journalTtl">
	                	人気コラムニスト クリス-ウェブ 佳子が<br>
	                	“JAMAIS VU”に惹かれる理由とは。
	                </p>
	                <p class="journalDate">2019.10.16</p>
				</div>
	        </a>
		</div>
		<div class="journalTop_archive">
	        <div class="journalTop_archive--list">
				<a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191119">
					<div class="journalTop_archive--list--pic">
	                	<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191130journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	人気コラムニスト クリス-ウェブ 佳子が<br class="pc_contents">“JAMAIS VU”に惹かれる理由とは。
		                </p>
		                <p class="journalDate">2019.10.16</p>
		            </div>
				</a>
	        </div>
	        <div class="journalTop_archive--list">
				<a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191119">
					<div class="journalTop_archive--list--pic">
	                	<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191130journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	人気コラムニスト クリス-ウェブ 佳子が<br class="pc_contents">“JAMAIS VU”に惹かれる理由とは。
		                </p>
		                <p class="journalDate">2019.10.16</p>
		            </div>
				</a>
	        </div>
	        <div class="journalTop_archive--list">
				<a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20191119">
					<div class="journalTop_archive--list--pic">
	                	<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191130journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	人気コラムニスト クリス-ウェブ 佳子が<br class="pc_contents">“JAMAIS VU”に惹かれる理由とは。
		                </p>
		                <p class="journalDate">2019.10.16</p>
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
