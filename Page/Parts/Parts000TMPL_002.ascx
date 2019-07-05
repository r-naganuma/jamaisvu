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
<%@ Page Title="TOP - CONCEPT" %>
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="sec sec--concept pc_contents">
    <div class="sec__inner">
        <h2 class="sec__title">CONCEPT</h2>
        <div class="concept">
            <div class="concept__phrase">
                <p>世界中から厳選した原料と日本屈指の生産背景で<br>本当に良いと思える素材を追求。</p>
                <p>その素材の個性を活かし、時代の気分を反映しながら、<br>上質で洗練された洋服を提案します。</p>
            </div>
            <div class="concept__list">
                <div class="concept__list-item">
                    <a href="">HAMILTON<br>LAMBWOOL</a>
                </div>
                <div class="concept__list-item">
                    <a href="">HAMILTON<br>LAMBWOOL</a>
                </div>
                <div class="concept__list-item">
                    <a href="">HAMILTON<br>LAMBWOOL</a>
                </div>
                <div class="concept__list-item">
                    <a href="">HAMILTON<br>LAMBWOOL</a>
                </div>
                <div class="concept__list-item">
                    <a href="">HAMILTON<br>LAMBWOOL</a>
                </div>
                <div class="concept__list-item">
                    <a href="">HAMILTON<br>LAMBWOOL</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="sec sec--topics">
    <div class="sec__inner">    
        <h2 class="vertical-title">
            TOPICS
        </h2>
        <div class="topicsContent">
            <div class="topicsContent__list">
                <div class="topicsContent__list-item item-1">
                    <a href="">
                        <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/top_topics_1.png" alt="topics 1">
                        <p>NEW ARRIVALS</p>
                    </a>
                </div>
                <div class="topicsContent__list-item item-2">
                    <a href="">
                        <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/top_topics_2.png" alt="topics 2">
                        <p>KNIT! KNIT! KNIT!</p>
                    </a>
                </div>
                <div class="topicsContent__list-item item-3">
                    <a href="">
                        <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/top_topics_3.png" alt="topics 3">
                        <p>CARE ITEMS vol.1</p>
                    </a>
                </div>
                <div class="topicsContent__list-item item-4">
                    <a href="">
                        <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/top_topics_4.png" alt="topics 4">
                        <p>クリスウェブ佳子さんが語る、素材へのこだわり vol.1</p>
                    </a>
                </div>
            </div>

        </div>
    </div>
    <div class="btnBox btn--more">
        <a href="">MORE</a>
    </div>
</div>
<div class="sec sec--concept sp_contents">
    <div class="sec__inner">
        <h2 class="sec__title">CONCEPT</h2>
        <div class="concept">
            <div class="concept__phrase">
                <p>世界中から厳選した原料と日本屈指の生産背景で<br>本当に良いと思える素材を追求。</p>
                <p>その素材の個性を活かし、<br class="sp_contents">時代の気分を反映しながら、<br>上質で洗練された洋服を提案します。</p>
            </div>
            <div class="concept__list">
                <div class="concept__list-item">
                    <a href="">HAMILTON<br>LAMBWOOL</a>
                </div>
                <div class="concept__list-item">
                    <a href="">HAMILTON<br>LAMBWOOL</a>
                </div>
                <div class="concept__list-item">
                    <a href="">HAMILTON<br>LAMBWOOL</a>
                </div>
                <div class="concept__list-item">
                    <a href="">HAMILTON<br>LAMBWOOL</a>
                </div>
                <div class="concept__list-item">
                    <a href="">HAMILTON<br>LAMBWOOL</a>
                </div>
                <div class="concept__list-item">
                    <a href="">HAMILTON<br>LAMBWOOL</a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="sec sec--category sp_contents">
	<ul class="category_top">
		<li>
			<a href="">全てのアイテム</a>
		</li>
		<li>
			<a href="">新着アイテム</a>
		</li>
	</ul>
	<ul class="category_bottom">
		<li>
			<a href="">トップス</a>
		</li>
		<li>
			<a href="">パンツ</a>
		</li>
		<li>
			<a href="">スカート</a>
		</li>
		<li>
			<a href="">グッズ</a>
		</li>
		<li>
			<a href="">トップス</a>
		</li>
		<li>
			<a href="">トップス</a>
		</li>
		<li>
			<a href="">トップス</a>
		</li>
		<li>
			<a href="">トップス</a>
		</li>
	</ul>
</div>

<div class="sec sec--lookbook">
    <div class="sec__inner">
        <h2 class="sec__title">LOOKBOOK<span>NEW EDITION</span></h2>
        <div class="btnBox btn--moreWhite">
            <a href="">MORE</a>
        </div>
    </div>
</div>
<%-- △編集可能領域△ --%>
