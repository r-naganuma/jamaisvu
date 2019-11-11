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
    display: flex;
}
.sibr_box h3 {
    font-size: 13px!important;
    font-weight: bold;
    letter-spacing: 0.08em;
    font-family: 'baskerville', 'Noto Sans JP', "ヒラギノ角ゴ Pro W3","Hiragino Kaku Gothic Pro",'Open Sans',"ＭＳ Ｐゴシック","MS PGothic",Helvetica, sans-serif;
    margin: 0 0 15px!important;
    font-size: 50px!important;
}
.noclick:hover{
opacity: 1!important;
}
@media (max-width: 768px){
  .sibr_box h3 {
      font-size: 30px!important;
  }
  .styling__innar__box__right__innar .sibr_box {
      display: block;
      margin: 15px 0 0px;
  }
  .styling__innar__box.c_type.c2 {
      margin: 0 0 0px;
  }
  .styling__innar__box.c_type {
      -webkit-box-align: start !important;
      -ms-flex-align: start !important;
      align-items: flex-start !important;
      margin: 0 0 40px;
      font-size: 0;
  }
  #Wrap .topSpace {
      padding-top: 0;
  }
}
</style>
<script>
// タイトル
$("title").text("STYLING｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store")
</script>
<div class="main_contents topics_under styling">
  <h2 class="main_contents_title">STYLING
    <span>2019.10.11</span>
  </h2>
  <p class="styling__text1"></p>
  <div class="styling__innar">
    <div class="styling__innar__box a_type">
      <div class="styling__innar__box__left">
        <img src="images/1-1-min.jpg" alt="商品画像">
      </div>
      <div class="styling__innar__box__right">
        <div class="styling__innar__box__right__innar">
          <div class="sibr_box">
            <h3 style="margin: 0px;">01</h3>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319149&cat=003">
                <span class="topics_under_list__ul__1">ボートネックジッププルオーバー</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥23,100
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306125&cat=003" class="">
                <span class="topics_under_list__ul__1">ニットワイドパンツ</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥20,900
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="styling__innar__box c_type">
      <div class="styling__innar__box__left">
        <img src="images/2-1-min.jpg" alt="商品画像">
      </div>
      <div class="styling__innar__box__right">
        <img src="images/2-2-min.jpg" alt="商品画像">
        <div class="styling__innar__box__right__innar">
          <div class="sibr_box" style="margin: 0px;">
            <h3 style="margin: 0px;">02</h3>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313255&cat=003">
                <span class="topics_under_list__ul__1">フィットカーディガン</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥18,700
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930626117&cat=006">
                <span class="topics_under_list__ul__1">フリーサイズラップ</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥20,900
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="sp_contents">
        <div class="add_contents">
          <div class="sibr_box" style="margin: 0px;">
            <h3 style="margin: 0px;">02</h3>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313255&cat=003">
                <span class="topics_under_list__ul__1">フィットカーディガン　</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥18,700
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930626117&cat=006">
                <span class="topics_under_list__ul__1">フリーサイズラップ</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥20,900
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="styling__innar__box c_type">
      <div class="styling__innar__box__left">
        <img src="images/3-1-min.jpg" alt="商品画像">
      </div>
      <div class="styling__innar__box__right">
        <img src="images/3-2-min.jpg" alt="商品画像">
        <div class="styling__innar__box__right__innar">
          <div class="sibr_box" style="margin: 0px;">
            <h3 style="margin: 0px;">03</h3>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&vid=1930318131free&cat=003">
                <span class="topics_under_list__ul__1">ビッグカーディガン</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥26,400
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930334131&cat=003">
                <span class="topics_under_list__ul__1">ドルマンプルオーバー</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥17,600
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305149&cat=003">
                <span class="topics_under_list__ul__1">ニットスウェットパンツ</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥23,100
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="sp_contents">
        <div class="add_contents">
          <div class="sibr_box" style="margin: 0px;">
            <h3 style="margin: 0px;">03</h3>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&vid=1930318131free&cat=003">
                <span class="topics_under_list__ul__1">ビッグカーディガン</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥26,400
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930334131&cat=003">
                <span class="topics_under_list__ul__1">ドルマンプルオーバー</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥17,600
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930305149&cat=003">
                <span class="topics_under_list__ul__1">ニットスウェットパンツ</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥23,100
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <div class="styling__innar__box c_type c2">
      <div class="styling__innar__box__left">

      </div>
      <div class="styling__innar__box__right">
         <img src="images/4-1-min.jpg" alt="商品画像">
      </div>
    </div>
    <div class="styling__innar__box c_type">
      <div class="styling__innar__box__left">
        <img src="images/4-2-min.jpg" alt="商品画像">
      </div>
      <div class="styling__innar__box__right">
        <img src="images/4-3-min.jpg" alt="商品画像">
        <div class="styling__innar__box__right__innar">
          <div class="sibr_box" style="margin: 0px;">
            <h3 style="margin: 0px;">04</h3>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930123117&cat=001">
                <span class="topics_under_list__ul__1">コートジャケット</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥42,900
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338161&vid=1930338161free&cat=003">
                <span class="topics_under_list__ul__1">クルーネックプルオーバー</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥20,900
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=003" class="">
                <span class="topics_under_list__ul__1">ニットワイドパンツ</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥20,900
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
      <div class="sp_contents">
        <div class="add_contents">
          <div class="sibr_box" style="margin: 0px;">
            <h3 style="margin: 0px;">04</h3>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930123117&cat=001">
                <span class="topics_under_list__ul__1">コートジャケット</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥42,900
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338161&vid=1930338161free&cat=003">
                <span class="topics_under_list__ul__1">クルーネックプルオーバー</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥20,900
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
            <div>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=003" class="">
                <span class="topics_under_list__ul__1">ニットワイドパンツ</span>
                <div class="div_innar">
                  <span class="topics_under_list__ul__2">¥20,900
                    <span>(tax in)</span>
                  </span>
                </div>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
<script>
  $(".noclick").css({
    "cursor": "default"
  });
  $(".noclick").click(function(){
    return false;
  })
</script>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>
