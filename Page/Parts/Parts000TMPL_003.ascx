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
<%@ Page Title="TOP - NEW ARRIVALS" %>
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<%-- ▽編集可能領域：コンテンツ▽ --%>
<div class="sec sec--newarrivals">
    <div class="sec__inner">
        <h2 class="vertical-title">
            NEW ARRIVALS
        </h2>
        <div class="newarrivalsContent">
            <div class="newarrivalsContent__list">
                <div class="newarrivalsContent__list-item item-1">
                    <div class="newarrivalsContent__img-large">
                        <a href="">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/newarrivals_1_large.jpg" alt="image 1">
                        </a>
                    </div>
                    <div class="newarrivalsContent__img-little">
                        <a href="">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/newarrivals_1_little.jpg" alt="image 1">
                            <div class="newarrivalsContent__desc">
                                <p class="newarrivalsContent__itemName">Vネックベスト</p>
                                <p class="newarrivalsContent__price">¥16,200+tax</p>
                            </div>
                        </a>
                        <a href="javascript:void(0);" class="readMore sp_contents"></a>
                    </div>
                </div>
                <div class="newarrivalsContent__list-item item-2">
                    <div class="newarrivalsContent__img-large">
                        <a href="">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/newarrivals_2_large.jpg" alt="image 2">
                        </a>
                    </div>
                    <div class="newarrivalsContent__img-little">
                        <a href="">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/newarrivals_2_little.jpg" alt="image 2">
                            <div class="newarrivalsContent__desc">
                                <p class="newarrivalsContent__itemName">フィットカーディガン</p>
                                <p class="newarrivalsContent__price">¥18,360+tax</p>
                            </div>
                        </a>
                        <a href="javascript:void(0);" class="readMore sp_contents"></a>
                    </div>
                </div>
                <div class="newarrivalsContent__list-item item-3">
                    <div class="newarrivalsContent__img-large">
                        <a href="">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/newarrivals_3_large.jpg" alt="image 3">
                        </a>
                    </div>
                    <div class="newarrivalsContent__img-little">
                        <a href="">
                            <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/newarrivals_3_little.jpg" alt="image 3">
                            <div class="newarrivalsContent__desc">
                                <p class="newarrivalsContent__itemName">タンクドレス</p>
                                <p class="newarrivalsContent__price">¥24,840+tax</p>
                            </div>
                        </a>
                        <a href="javascript:void(0);" class="readMore sp_contents"></a>
                    </div>
                </div>
            </div>
            <div class="btnBox btn--more">
                <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx">MORE</a>
            </div>
        </div>
    </div>
</div>
<%-- △編集可能領域△ --%>
