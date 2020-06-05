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
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200605/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200605journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	モデル、Kanocoさんが伝える“私らしいスタイル”vol.5
		                </p>
		                <p class="journalDate">2020.06.05</p>
		            </div>
				</a>
			<!-- -->
		</div>
		<div class="journalTop_archive">
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200602/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200602journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	モデル、Kanocoさんが伝える“私らしいスタイル”vol.4
		                </p>
		                <p class="journalDate">2020.06.02</p>
		            </div>
				</a>
	        </div>
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200529/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200529journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	モデル、Kanocoさんが伝える“私らしいスタイル”vol.3
		                </p>
		                <p class="journalDate">2020.05.29</p>
		            </div>
				</a>
	        </div>
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200526/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200526journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	モデル、Kanocoさんが伝える“私らしいスタイル”vol.2
		                </p>
		                <p class="journalDate">2020.05.26</p>
		            </div>
				</a>
	        </div>
			<!-- <div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200522/">
					<div class="journalTop_archive--list--pic">
	            		<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200522journal.jpg">
	                </div>
					<div class="journalTop_archive--list--txt">
		                <p class="journalCat">FEATURE</p>
		                <p class="journalTtl">
		                	モデル、Kanocoさんが伝える“私らしいスタイル”vol.1
		                </p>
		                <p class="journalDate">2020.05.22</p>
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
