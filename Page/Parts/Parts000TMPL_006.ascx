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
				<a href="https://jamaisvu.co.jp/Page/Journal/Column/Column_20191224/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/column_191224journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">COLUMN</p>
		                <p class="journalTtl">
		                	「上質を纏う。素材の良さを追求した物づくり」 Vol.2
		                </p>
		                <p class="journalDate">2019.12.24</p>
		            </div>
				</a>
	        </div>
	        <div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20191220/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_191220journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">RECOMMEND</p>
		                <p class="journalTtl">
		                	着心地を追求したJAMAIS VUの上質ハイネック
		                </p>
		                <p class="journalDate">2019.12.20</p>
		            </div>
				</a>
	        </div>
	        <div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Column/Column_20191217/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/column_191217journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">COLUMN</p>
		                <p class="journalTtl">
		                	本当の意味でのラグジュアリー
		                </p>
		                <p class="journalDate">2019.12.17</p>
		            </div>
				</a>
	        </div>
	        <!-- <div class="journalTop_archive--list">
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
	        </div> -->
		</div>
		<div class="btnBoxver2 btn--more">
			<a href="<%= Constants.PATH_ROOT %>Page/Journal/">READ MORE</a>
		</div>
	</div>
</div>

<%-- △編集可能領域△ --%>
