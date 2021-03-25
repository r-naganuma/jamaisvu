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
			<% if ((((this.Request.Url.Query.Contains("param")) ? (DateTime.ParseExact(this.Request.QueryString["param"], "yyyyMMddHHmmss", null)) : DateTime.Now) > (DateTime.ParseExact("20210322120000", "yyyyMMddHHmmss", null)))){ %>
			<a href="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20210322">
				<div class="journalTop_archive--list--pic">
					<img src="<%= Constants.PATH_ROOT %>Page/Journal/Feature/Feature_20210322/images/mv_pc.jpg">
				</div>
				<div class="journalTop_archive--list--txt">
					<p class="journalCat">FEATURE</p>
					<p class="journalTtl">
						POP UP STORE「Stay home, stay fun」開催 西武渋谷店
					</p>
					<p class="journalDate">2021.03.22</p>
				</div>
			</a>
			<% } %>
			<% if ((((this.Request.Url.Query.Contains("param")) ? (DateTime.ParseExact(this.Request.QueryString["param"], "yyyyMMddHHmmss", null)) : DateTime.Now) > (DateTime.ParseExact("20210219180000", "yyyyMMddHHmmss", null))) && (((this.Request.Url.Query.Contains("param")) ? (DateTime.ParseExact(this.Request.QueryString["param"], "yyyyMMddHHmmss", null)) : DateTime.Now) < (DateTime.ParseExact("20210322115900", "yyyyMMddHHmmss", null)))){ %>
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20210129/">
					<div class="journalTop_archive--list--pic">
						<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_210129journal.jpg">
					</div>
					<div class="journalTop_archive--list--txt">
						<p class="journalCat">FEATURE</p>
						<p class="journalTtl">
							伊勢丹新宿店
							POP UP STORE開催決定！
						</p>
						<p class="journalDate">2021.01.29</p>
					</div>
				</a>
			<% } %>
			<!-- -->
		</div>


		<div class="journalTop_archive">
			<% if ((((this.Request.Url.Query.Contains("param")) ? (DateTime.ParseExact(this.Request.QueryString["param"], "yyyyMMddHHmmss", null)) : DateTime.Now) > (DateTime.ParseExact("20210322120000", "yyyyMMddHHmmss", null)))){ %>
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Page/Journal/Feature/Feature_20210129/">
					<div class="journalTop_archive--list--pic">
						<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_210129journal.jpg">
					</div>
					<div class="journalTop_archive--list--txt">
						<p class="journalCat">FEATURE</p>
						<p class="journalTtl">
							伊勢丹新宿店
							POP UP STORE開催決定！
						</p>
						<p class="journalDate">2021.01.29</p>
					</div>
				</a>
			</div>
			<% } %>
			<div class="journalTop_archive--list">
				<a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=sale&udns=2&fpfl=0&pno=1">
					<div class="journalTop_archive--list--pic">
						<img src="<%= Constants.PATH_ROOT %>Page/Journal/images/feature_210121journal.jpg">
					</div>
					<div class="journalTop_archive--list--txt">
						<p class="journalCat">FEATURE</p>
						<p class="journalTtl">
							FINAL SALE 開催！MAX70%OFF
						</p>
						<p class="journalDate">2021.01.21</p>
					</div>
				</a>
			</div>
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
			<% if ((((this.Request.Url.Query.Contains("param")) ? (DateTime.ParseExact(this.Request.QueryString["param"], "yyyyMMddHHmmss", null)) : DateTime.Now) > (DateTime.ParseExact("20210222000000", "yyyyMMddHHmmss", null))) && (((this.Request.Url.Query.Contains("param")) ? (DateTime.ParseExact(this.Request.QueryString["param"], "yyyyMMddHHmmss", null)) : DateTime.Now) < (DateTime.ParseExact("20210322115900", "yyyyMMddHHmmss", null)))){ %>
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
			<% } %>
		</div>
		<div class="btnBoxver2 btn--more">
			<a href="<%= Constants.PATH_ROOT %>Page/Journal/">READ MORE</a>
		</div>
	</div>
</div>

<%-- △編集可能領域△ --%>
