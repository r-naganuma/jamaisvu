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
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20201019/">
					<div class="journalTop_archive--list--pic">
						<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_201019journal.jpg">
					</div>
					<div class="journalTop_archive--list--txt">
						<p class="journalCat">FEATURE</p>
						<p class="journalTtl">
							ディレクター長尾 悦美×JAMAIS VU<br>
							コラボアイテム発売開始
						</p>
						<p class="journalDate">2020.10.19</p>
					</div>
				</a>
			<!-- -->
		</div>

		<div class="journalTop_archive">
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20201015/">
					<div class="journalTop_archive--list--pic">
						<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_201015journal.jpg">
					</div>
					<div class="journalTop_archive--list--txt">
						<p class="journalCat">FEATURE</p>
						<p class="journalTtl">
							エディター小林 文リコメンド　“季節になじむニット” の話
							前編／秋のこっくりカラーニット
						</p>
						<p class="journalDate">2020.10.15</p>
					</div>
				</a>
			</div>
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20201013/">
					<div class="journalTop_archive--list--pic">
						<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_201013journal.jpg">
					</div>
					<div class="journalTop_archive--list--txt">
						<p class="journalCat">FEATURE</p>
						<p class="journalTtl">
							JAMAIS VU POP UP STORE 開催 ！
						</p>
						<p class="journalDate">2020.10.13</p>
					</div>
				</a>
			</div>
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&cicon=1&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
					<div class="journalTop_archive--list--pic">
						<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_200812journal.jpg">
					</div>
					<div class="journalTop_archive--list--txt">
						<p class="journalCat">FEATURE</p>
						<p class="journalTtl">
							NEW ARRIVAL
						</p>
						<p class="journalDate">2020.08.12</p>
					</div>
				</a>
			</div>
<!-- 			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20200626/">
					<div class="journalTop_archive--list--pic">
						<img src="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20200626/images/mv_pc.jpg">
					</div>
					<div class="journalTop_archive--list--txt">
						<p class="journalCat">FEATURE</p>
						<p class="journalTtl">
							JAMAIS VU×editor_kaoの<br>「彩りのある着こなし」vol.4 &lt;Black&gt;
						</p>
						<p class="journalDate">2020.06.26</p>
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
