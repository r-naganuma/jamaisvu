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
			<a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=sale&udns=2&fpfl=0&pno=1">
				<div class="journalTop_archive--list--pic">
					<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_201221journal.jpg">
				</div>
				<div class="journalTop_archive--list--txt">
					<p class="journalCat">FEATURE</p>
					<p class="journalTtl">
                        WINTER SALE 開催！MAX40%OFF
					</p>
					<p class="journalDate">2020.12.21</p>
				</div>
			</a>
			<!-- -->
		</div>


			<div class="journalTop_archive">
				<div class="journalTop_archive--list">
					<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20201112/">
						<div class="journalTop_archive--list--pic">
							<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_201112journal.jpg">
						</div>
						<div class="journalTop_archive--list--txt">
							<p class="journalCat">FEATURE</p>
							<p class="journalTtl">
								モデル、Kanocoさんに聞く
								自分だけの「MY RULE」
							</p>
							<p class="journalDate">2020.11.12</p>
						</div>
					</a>
				</div>
				<div class="journalTop_archive--list">
					<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20201105/">
						<div class="journalTop_archive--list--pic">
							<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_201105journal.jpg">
						</div>
						<div class="journalTop_archive--list--txt">
							<p class="journalCat">FEATURE</p>
							<p class="journalTtl">
								モデル、Kanocoさんに聞く
								自分だけの「MY RULE」
							</p>
							<p class="journalDate">2020.11.05</p>
						</div>
					</a>
				</div>
				<div class="journalTop_archive--list">
					<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20201029/">
						<div class="journalTop_archive--list--pic">
							<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_201029journal.jpg">
						</div>
						<div class="journalTop_archive--list--txt">
							<p class="journalCat">FEATURE</p>
							<p class="journalTtl">
								自分らしく着こなす、大本命ニット
							</p>
							<p class="journalDate">2020.10.29</p>
						</div>
					</a>
				</div>
				<!-- <div class="journalTop_archive--list">
					<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20201019/">
						<div class="journalTop_archive--list--pic">
							<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_201019journal.jpg">
						</div>
						<div class="journalTop_archive--list--txt">
							<p class="journalCat">FEATURE</p>
							<p class="journalTtl">
								ディレクター長尾 悦美×JAMAIS VU<br>
								コラボアイテム発売開始・来店イベント開催決定
							</p>
							<p class="journalDate">2020.10.19</p>
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
