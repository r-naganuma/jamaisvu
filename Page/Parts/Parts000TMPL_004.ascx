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
<%@ Page Title="TOP - LOOK BOOK" %>
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<%-- ▽編集可能領域：コンテンツ▽ --%>
<script type="text/javascript">
    $(function(){
        $('.noLink').click(function(){
            return false;
        });
    });
</script>

<!-- <div class="sec sec--lookbook">
    <div class="sec__inner">
        <h2 class="sec__title">LOOKBOOK<span>NEW EDITION</span></h2>
        <div class="btnBox btn--moreWhite">
            <a href="<%= Constants.PATH_ROOT %>Page/lookbook/">MORE</a>
        </div>
    </div>
</div> -->
<%-- △編集可能領域△ --%>
