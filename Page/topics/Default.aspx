<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="LOOKBOOK一覧｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="JAMAIS VU （ジャメヴ）のLOOKBOOKページ。2019AWコレクションを掲載中。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="LOOKBOOK,ルックブック,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
<link href='css/common.css?123' rel='stylesheet' type='text/css'>
<script>
// タイトル
$("title").text("TOPICS｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store")
</script>
<div class="main_contents topics">
      	<h2 class="main_contents_title">TOPICS</h2>
      	<div class="topics_list">
      		<ul class="topics_list__ul"> 

                              <li>
                                    <a href="https://jamaisvu.co.jp/Page/topics/styling/style_20191010/">
                                          <img src="https://jamaisvu.co.jp/Page/topics/images/thumbnail191010.jpg" alt="styling">
                                          <p class="topics_list__ul__day">2019.10.10</p>
                                          <h3 class="topics_list__category">
                                          STYLING</h3>

                                    </a>
                              </li>
                              <li>
                                    <a href="https://jamaisvu.co.jp/Page/topics/column/vol1/">
                                          <img src="https://jamaisvu.co.jp/Page/topics/column/vol1/images/thumbnail.jpg" alt="COLUMN">
                                          <p class="topics_list__ul__day">2019.10.07</p>
                                          <h3 class="topics_list__category">
                                          COLUMN</h3>

                                    </a>
                              </li>
                              <li>
                                    <a href="/Page/topics/newarrival/newarrivals_20190930/">
                                          <img src="images/top_topics_1.jpg" alt="NEW ARRIVALS">
                                          <p class="topics_list__ul__day">2019.09.30</p>
                                          <h3 class="topics_list__category">
                                          NEW ARRIVALS</h3>
                                          <!-- <p class="topics_list__title">NEW ARRIVALS_2019.09.30</p> -->
                                    </a>
                              </li>


                              
                              <li>
                                    <a href="/Page/topics/styling/style_20190909-2/">
                                          <img src="images/3topics_-right_A_534x260_01.jpg" alt="STYLING">
                                          <p class="topics_list__ul__day">2019.09.27</p>
                                          <h3 class="topics_list__category">
                                          STYLING</h3>
                                          <!-- <p class="topics_list__title">styling_20190927</p> -->
                                    </a>
                              </li>


                              
                              <li>
                                    <a href="/Page/topics/column/editorscolumn_001/">
                                          <img src="images/editor.jpg" alt="EDITORS COLUMN">
                                          <p class="topics_list__ul__day">2019.09.18</p>
                                          <h3 class="topics_list__category">
                                          EDITORS COLUMN</h3>
                                          <!-- <p class="topics_list__title">EDITORS COLUMN</p> -->
                                    </a>
                              </li>


                              
                              <li>
                                    <a href="/Page/topics/newarrival/newarrivals_20190909/">
                                          <img src="images/1930309161-1.jpg" alt="">
                                          <p class="topics_list__ul__day">2019.09.09</p>
                                          <h3 class="topics_list__category">
                                          NEW ARRIVALS</h3>
                                          <!-- <p class="topics_list__title">NEW ARRIVALS_2019.09.09</p> -->
                                    </a>
                              </li>


                                    		</ul>
      		<div class="pager">
      			
      		</div>
      	</div>
      </div>


<%-- △編集可能領域△ --%>


</div>
</asp:Content>

