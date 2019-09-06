﻿<%--
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
                <p class="concept_txt1">過去と未来　既知と未知<br>いつだってその真ん中が心地良い</p>
                <p class="concept_txt2">Rather be wearing Jamais Vu.</p>
                <p class="concept_txt3">
                    JAMAIS VUは「自由で正直なものづくりを大切にしたい」という考えから、<br>
                    素材から作り手に至るまで本当に良いものを追求し、<br>
                    流行に縛られないオーセンティックな製品を提案しています。
                </p>
                <p class="concept_txt4">
                    世界各国から良質な素材を選りすぐり、信頼できる職人により手がけられた<br>
                    「日常でありながら特別」「シンプルでいながらスペシャル」「サイズレス・シーズンレス・エイジレス」な<br>
                    新しいニュートラルスタイルをご提案いたします。 
                </p>
            </div>
            <div class="concept__list">
                <div class="concept__list-item">
                    <a href="<%= Constants.PATH_ROOT %>Page/Concept/hamilton_lambs_wool.aspx">
                        HAMILTON<br>
                        LAMBS WOOL
                    </a>
                </div>
                <div class="concept__list-item">
                    <a href="<%= Constants.PATH_ROOT %>Page/Concept/merino_optimo.aspx">
                        MERINO<br>
                        OPTIMO
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="sec sec--topics">
    <div class="sec__inner">    
        <h2 class="vertical-title IEpdr0">
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
        <a href="https://jamaisvu.co.jp/category/topics/">MORE</a>
    </div>
</div>
<div class="sec sec--concept sp_contents">
    <div class="sec__inner">
        <h2 class="sec__title">CONCEPT</h2>
        <div class="concept">
            <div class="concept__phrase">
                <p class="concept_txt1">過去と未来　既知と未知<br>いつだってその真ん中が心地良い</p>
                <p class="concept_txt2">Rather be wearing Jamais Vu.</p>
                <p class="concept_txt3">
                    JAMAIS VUは「自由で正直なものづくりを大切にしたい」という考えから、素材から作り手に至るまで本当に良いものを追求し、流行に縛られないオーセンティックな製品を提案しています。
                </p>
                <p class="concept_txt4">
                    世界各国から良質な素材を選りすぐり、信頼できる職人により手がけられた「日常でありながら特別」「シンプルでいながらスペシャル」「サイズレス・シーズンレス・エイジレス」な新しいニュートラルスタイルをご提案いたします。 
                </p>
            </div>
            <div class="concept__list">
                <div class="concept__list-item">
                    <a href="<%= Constants.PATH_ROOT %>Page/Concept/hamilton_lambs_wool.aspx">
                        HAMILTON LAMBS WOOL
                    </a>
                </div>
                <div class="concept__list-item">
                    <a href="<%= Constants.PATH_ROOT %>Page/Concept/merino_optimo.aspx">
                        MERINO OPTIMO
                    </a>
                </div>
            </div>
        </div>
    </div>
</div>
<div class="sec sec--category sp_contents">
	<ul class="category_top">
		<li>
			<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">全てのアイテム</a>
		</li>
		<li>
			<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&cicon=1&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">新着アイテム</a>
		</li>
	</ul>
	<ul class="category_bottom">
		<li>
			<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=001&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">アウター</a>
		</li>
		<!-- <li>
			<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=002&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="lh">シャツ・<br>ブラウス</a>
		</li> -->
		<li>
			<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=003&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">ニット</a>
		</li>
		<li>
			<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=004&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">カットソー</a>
		</li>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=005&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">ワンピース</a>
        </li>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=006&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">スカート</a>
        </li>
        <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=007&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">パンツ</a>
        </li>
        <!-- <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=008&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">帽子</a>
        </li> -->
        <!-- <li>
            <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=009&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">靴下</a>
        </li> -->
	</ul>
</div>

<div class="sec sec--lookbook">
    <div class="sec__inner">
        <h2 class="sec__title">LOOKBOOK<span>NEW EDITION</span></h2>
        <div class="btnBox btn--moreWhite">
            <a href="<%= Constants.PATH_ROOT %>Page/lookbook/">MORE</a>
        </div>
    </div>
</div>
<%-- △編集可能領域△ --%>
