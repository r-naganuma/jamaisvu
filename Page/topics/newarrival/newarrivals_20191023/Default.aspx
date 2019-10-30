<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="NEW ARRIVALS｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="NEW ARRIVALS" MetaKeywords="TOPICS,トピックス,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
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
<link href='../../css/common.css?123' rel='stylesheet' type='text/css'>
<style type="text/css">
      .topics_under_list__ul__1{
            text-decoration: underline;
      }
#Contents div.column {
     width: auto; 
     float: none; 
}
#Wrap .LPpageWrap a {
    display: flex!important;
}

@media (max-width: 768px){
#Wrap .LPpageWrap a {
    display: block!important;
}

}
</style>

<div class="main_contents topics_under">
  <h2 class="main_contents_title">NEW ARRIVALS 
    <span>2019.10.23</span>
  </h2>
  <div class="topics_under_list">
    <ul class="topics_under_list__ul">
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930321131&cat=003">
          <img src="images/01.jpg" alt="商品画像">
        </a>
        <div>
          <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930321131&cat=003">
            <span class="topics_under_list__ul__1">ガンジーニット</span>
            <div class="div_innar">
              <span class="topics_under_list__ul__2">¥20,900
                <span>(tax in)</span>
              </span>
              <!-- <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930313241&cat=003">MORE </a> -->
            </div>
          </a>
        </div>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930321145&cat=003">
          <img src="images/02.jpg" alt="商品画像">
        </a>
        <div>
          <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930321145&cat=003">
            <span class="topics_under_list__ul__1">ガンジーニット</span>
            <div class="div_innar">
              <span class="topics_under_list__ul__2">¥20,900
                <span>(tax in)</span>
              </span>
              <!-- <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930313231&cat=003">MORE </a> -->
            </div>
          </a>
        </div>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930336111&cat=003">
          <img src="images/03.jpg" alt="商品画像">
        </a>
        <div>
          <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930336111&cat=003">
            <span class="topics_under_list__ul__1">ワイドリブプルオーバー</span>
            <div class="div_innar">
              <span class="topics_under_list__ul__2">¥20,900
                <span>(tax in)</span>
              </span>
              <!-- <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930313259&cat=003">MORE </a> -->
            </div>
          </a>
        </div>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930336165&cat=003">
          <img src="images/04.jpg" alt="商品画像">
        </a>
        <div>
          <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930336165&cat=003">
            <span class="topics_under_list__ul__1">ワイドリブプルオーバー</span>
            <div class="div_innar">
              <span class="topics_under_list__ul__2">¥20,900
                <span>(tax in)</span>
              </span>
              <!-- <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930314265&cat=003">MORE </a> -->
            </div>
          </a>
        </div>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930336161&cat=003">
          <img src="images/05.jpg" alt="商品画像">
        </a>
        <div>
          <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930336161&cat=003">
            <span class="topics_under_list__ul__1">ワイドリブプルオーバー</span>
            <div class="div_innar">
              <span class="topics_under_list__ul__2">¥20,900
                <span>(tax in)</span>
              </span>
              <!-- <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930314241&cat=003">MORE </a> -->
            </div>
          </a>
        </div>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930320117&cat=003">
          <img src="images/06.jpg" alt="商品画像">
        </a>
        <div>
          <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930320117&cat=003">
            <span class="topics_under_list__ul__1">ジップケーブル</span>
            <div class="div_innar">
              <span class="topics_under_list__ul__2">¥23,100
                <span>(tax in)</span>
              </span>
              <!-- <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930725117&cat=007">MORE </a> -->
            </div>
          </a>
        </div>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930320145&cat=003">
          <img src="images/07.jpg" alt="商品画像">
        </a>
        <div>
          <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930320145&cat=003">
            <span class="topics_under_list__ul__1">ジップケーブル</span>
            <div class="div_innar">
              <span class="topics_under_list__ul__2">¥23,100
                <span>(tax in)</span>
              </span>
              <!-- <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930306165&cat=003">MORE </a> -->
            </div>
          </a>
        </div>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930334131&cat=003">
          <img src="images/08.jpg" alt="商品画像">
        </a>
        <div>
          <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930334131&cat=003">
            <span class="topics_under_list__ul__1">ドルマンプルオーバー</span>
            <div class="div_innar">
              <span class="topics_under_list__ul__2">¥17,600
                <span>(tax in)</span>
              </span>
              <!-- <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930306111&cat=003">MORE </a> -->
            </div>
          </a>
        </div>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930334111&cat=003">
          <img src="images/09.jpg" alt="商品画像">
        </a>
        <div>
          <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930334111&cat=003">
            <span class="topics_under_list__ul__1">ドルマンプルオーバー</span>
            <div class="div_innar">
              <span class="topics_under_list__ul__2">¥17,600
                <span>(tax in)</span>
              </span>
              <!-- <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930305155&cat=003">MORE </a> -->
            </div>
          </a>
        </div>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930335131&cat=003">
          <img src="images/10.jpg" alt="商品画像">
        </a>
        <div>
          <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930335131&cat=003">
            <span class="topics_under_list__ul__1">ボートネックワンピース</span>
            <div class="div_innar">
              <span class="topics_under_list__ul__2">¥25,300
                <span>(tax in)</span>
              </span>
              <!-- <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930305131&cat=003">MORE </a> -->
            </div>
          </a>
        </div>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930333165&cat=003">
          <img src="images/11.jpg" alt="商品画像">
        </a>
        <div>
          <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930333165&cat=003">
            <span class="topics_under_list__ul__1">ポロワンピース</span>
            <div class="div_innar">
              <span class="topics_under_list__ul__2">¥25,300
                <span>(tax in)</span>
              </span>
              <!-- <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930724117&cat=007">MORE </a> -->
            </div>
          </a>
        </div>
      </li>
      <li>
        <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930333149&cat=003">
          <img src="images/12.jpg" alt="商品画像">
        </a>
        <div>
          <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930333149&cat=003">
            <span class="topics_under_list__ul__1">ポロワンピース</span>
            <div class="div_innar">
              <span class="topics_under_list__ul__2">¥25,300
                <span>(tax in)</span>
              </span>
              <!-- <a href="<%= Constants.PATH_ROOT %>Form/Product/ProductDetail.aspx?shop=0&pid=1930626117&cat=006">MORE </a> -->
            </div>
          </a>
        </div>
      </li>
    </ul>
    <div class="pager"></div>
  </div>
</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

