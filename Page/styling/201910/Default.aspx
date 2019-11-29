<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="Style Idea 2019.10｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="Style Idea 2019.10" MetaKeywords="TOPICS,トピックス,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<link rel="stylesheet" href="https://use.typekit.net/qxr7okk.css">
<script src="https://cdn.jsdelivr.net/npm/modaal@0.4.4/dist/js/modaal.min.js"></script>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/modaal@0.4.4/dist/css/modaal.min.css">
<link href='<%= Constants.PATH_ROOT %>Page/styling/css/common.css?1233' rel='stylesheet' type='text/css'>
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">



  <%-- ▽編集可能領域：コンテンツ▽ --%>
  <article class="styleIdeaWrap">
    <section class="topArea">

      <h2>Style Idea</h2>

      <p class="subTtl"> Always with Your Style.</p>
      <p class="date">2019.10.11 UPDATE</p>

    </section>

    <section class="contentsArea">

      <a href="#modal1" class="contentsArea__content"><img src="./images/styleImage1.jpg" alt="スタイリング画像1"></a>
      <section id="modal1" class="modal" style="display:none;">
        <div class="modal__mainVisual">
          <img src="./images/styleImage1.jpg" alt="" class="modal__mainVisual">
        </div>

        <section class="modal__itemDetail">
          <h3>着用アイテムはこちら</h3>
          <section class="modal__itemDetail__itemWrap">
            <section class="item">
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319149&cat=003" class="item__img">
                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930319149_sub05_M.jpg" alt="着用アイテム画像"></a>
              <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319149&cat=003">
                ボートネックジッププルオーバー<br><span class="item__price">¥23,100(tax in)</span>
              </a>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930319149&cat=003" class="item__btn">ITEM DETAIL</a>
            </section>
            <section class="item">
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306125&cat=003" class="item__img">
                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930306125_sub05_M.jpg" alt="着用アイテム画像"></a>
              <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306125&cat=003">
                ニットワイドパンツ<br><span class="item__price">¥20,900(tax in)</span>
              </a>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306125&cat=003" class="item__btn">ITEM DETAIL</a>
            </section>
          </section>
        </section>
        <button type="button" class="closeBtn modaal-close pc_contents" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span></button>
        <button type="button" class="closeBtn sp_contents modaal-close" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span>CLOSE</button>

      </section>


      <a href="#modal2" class="contentsArea__content"><img src="./images/styleImage2.jpg" alt="スタイリング画像2"></a>

      <section id="modal2" class="modal" style="display:none;">
        <div class="modal__mainVisual">
          <img src="./images/styleImage2.jpg" alt="" class="modal__mainVisual">
        </div>

        <section class="modal__itemDetail">
          <h3>着用アイテムはこちら</h3>
          <section class="modal__itemDetail__itemWrap">
            <section class="item">
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313255&cat=003" class="item__img">
                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930313255_sub05_M.jpg" alt="着用アイテム画像"></a>
              <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313255&cat=003">
                フィットカーディガン<br><span class="item__price">¥18,700(tax in)</span>
              </a>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313255&cat=003" class="item__btn">ITEM DETAIL</a>
            </section>
            <section class="item">
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930632117&cat=006" class="item__img">
                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930632117_sub10_M.jpg" alt="着用アイテム画像"></a>
              <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930632117&cat=006">
                フリーサイズラップ<br><span class="item__price">¥20,900(tax in)</span>
              </a>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930632117&cat=006" class="item__btn">ITEM DETAIL</a>
            </section>
          </section>
        </section>
        <button type="button" class="closeBtn modaal-close pc_contents" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span></button>
        <button type="button" class="closeBtn sp_contents modaal-close" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span>CLOSE</button>
      </section>

      <a href="#modal3" class="contentsArea__content"><img src="./images/styleImage3.jpg" alt="スタイリング画像3"></a>

      <section id="modal3" class="modal" style="display:none;">
        <div class="modal__mainVisual">
          <img src="./images/styleImage3.jpg" alt="" class="modal__mainVisual">
        </div>

        <section class="modal__itemDetail">
          <h3>着用アイテムはこちら</h3>


          <section class="modal__itemDetail__itemWrap">
            <section class="item">
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313255&cat=003" class="item__img">
                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930313255_sub05_M.jpg" alt="着用アイテム画像"></a>
              <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313255&cat=003">
                フィットカーディガン<br><span class="item__price">¥18,700(tax in)</span>
              </a>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930313255&cat=003" class="item__btn">ITEM DETAIL</a>
            </section>
            <section class="item">
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930632117&cat=006" class="item__img">
                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930632117_sub10_M.jpg" alt="着用アイテム画像"></a>
              <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930632117&cat=006">
                フリーサイズラップ<br><span class="item__price">¥20,900(tax in)</span>
              </a>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930632117&cat=006" class="item__btn">ITEM DETAIL</a>
            </section>
          </section>

        </section>
        <button type="button" class="closeBtn modaal-close pc_contents" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span></button>
        <button type="button" class="closeBtn sp_contents modaal-close" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span>CLOSE</button>
      </section>

      <a href="#modal4" class="contentsArea__content"><img src="./images/styleImage4.jpg" alt="スタイリング画像4"></a>

      <section id="modal4" class="modal" style="display:none;">
        <div class="modal__mainVisual">
          <img src="./images/styleImage4.jpg" alt="" class="modal__mainVisual">
        </div>

        <section class="modal__itemDetail">
          <h3>着用アイテムはこちら</h3>
        <section class="modal__itemDetail__itemWrap">
        <section class="item">
          <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&vid=1930318131free&cat=003" class="item__img">
            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930318131_sub05_M.jpg" alt="着用アイテム画像"></a>
          <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&vid=1930318131free&cat=003">
            ビッグカーディガン<br><span class="item__price">¥26,400(tax in)</span>
          </a>
          <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&vid=1930318131free&cat=003" class="item__btn">ITEM DETAIL</a>
        </section>
        <section class="item">
          <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930334131&cat=003" class="item__img">
            <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930334131_sub10_M.jpg" alt="着用アイテム画像"></a>
          <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930334131&cat=003">
            ドルマンプルオーバー<br><span class="item__price">¥17,600(tax in)</span>
          </a>
          <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930334131&cat=003" class="item__btn">ITEM DETAIL</a>
        </section>

      </section>
      </section>
        <button type="button" class="closeBtn modaal-close pc_contents" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span></button>
        <button type="button" class="closeBtn sp_contents modaal-close" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span>CLOSE</button>
      </section>

      <a href="#modal5" class="contentsArea__content"><img src="./images/styleImage5.jpg" alt="スタイリング画像5"></a>

      <section id="modal5" class="modal" style="display:none;">
        <div class="modal__mainVisual">
          <img src="./images/styleImage5.jpg" alt="" class="modal__mainVisual">
        </div>
        <section class="modal__itemDetail">
          <h3>着用アイテムはこちら</h3>
          <section class="modal__itemDetail__itemWrap">
            <section class="item">
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&vid=1930318131free&cat=003" class="item__img">
                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930318131_sub05_M.jpg" alt="着用アイテム画像"></a>
              <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&vid=1930318131free&cat=003">
                ビッグカーディガン<br><span class="item__price">¥26,400(tax in)</span>
              </a>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930318131&vid=1930318131free&cat=003" class="item__btn">ITEM DETAIL</a>
            </section>
            <section class="item">
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930334131&cat=003" class="item__img">
                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930334131_sub10_M.jpg" alt="着用アイテム画像"></a>
              <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930334131&cat=003">
                ドルマンプルオーバー<br><span class="item__price">¥17,600(tax in)</span>
              </a>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930334131&cat=003" class="item__btn">ITEM DETAIL</a>
            </section>

          </section>

        </section>
        <button type="button" class="closeBtn modaal-close pc_contents" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span></button>
        <button type="button" class="closeBtn sp_contents modaal-close" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span>CLOSE</button>
      </section>

      <a href="#modal6" class="contentsArea__content"><img src="./images/styleImage6.jpg" alt="スタイリング画像6"></a>

      <section id="modal6" class="modal" style="display:none;">
        <div class="modal__mainVisual">
          <img src="./images/styleImage6.jpg" alt="" class="modal__mainVisual">
        </div>
        <section class="modal__itemDetail">
          <h3>着用アイテムはこちら</h3>
          <section class="modal__itemDetail__itemWrap">
            <!-- 商品1 -->
            <section class="item">
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930129117&cat=003" class="item__img">
                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930129117_sub05_M.jpg" alt="着用アイテム画像"></a>
              <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930129117&cat=003">
                コートジャケット<br><span class="item__price">¥42,900(tax in)</span>
              </a>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930129117&cat=003" class="item__btn">ITEM DETAIL</a>
            </section>
            <!-- 商品2 -->
            <section class="item">
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338161&vid=1930338161free&cat=003" class="item__img">
                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930338161_sub06_M.jpg" alt="着用アイテム画像"></a>
              <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338161&vid=1930338161free&cat=003">
                クルーネックプルオーバー<br><span class="item__price">¥20,900(tax in)</span>
              </a>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338161&vid=1930338161free&cat=003" class="item__btn">ITEM DETAIL</a>
            </section>
            <!-- 商品3 -->
            <section class="item">
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=003" class="item__img">
                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930306161_sub09_M.jpg" alt="着用アイテム画像"></a>
              <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=003">
                ニットワイドパンツ<br><span class="item__price">¥20,900(tax in)</span>
              </a>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=003" class="item__btn">ITEM DETAIL</a>
            </section>
          </section>

        </section>
        <button type="button" class="closeBtn modaal-close pc_contents" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span></button>
        <button type="button" class="closeBtn sp_contents modaal-close" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span>CLOSE</button>
      </section>

      <a href="#modal7" class="contentsArea__content"><img src="./images/styleImage7.jpg" alt="スタイリング画像7"></a>

      <section id="modal7" class="modal" style="display:none;">
        <div class="modal__mainVisual">
          <img src="./images/styleImage7.jpg" alt="" class="modal__mainVisual">
        </div>
        <section class="modal__itemDetail">
          <h3>着用アイテムはこちら</h3>

          <section class="modal__itemDetail__itemWrap">
            <!-- 商品1 -->
            <section class="item">
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930129117&cat=003" class="item__img">
                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930129117_sub05_M.jpg" alt="着用アイテム画像"></a>
              <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930129117&cat=003">
                コートジャケット<br><span class="item__price">¥42,900(tax in)</span>
              </a>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930129117&cat=003" class="item__btn">ITEM DETAIL</a>
            </section>
            <!-- 商品2 -->
            <section class="item">
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338161&vid=1930338161free&cat=003" class="item__img">
                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930338161_sub06_M.jpg" alt="着用アイテム画像"></a>
              <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338161&vid=1930338161free&cat=003">
                クルーネックプルオーバー<br><span class="item__price">¥20,900(tax in)</span>
              </a>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338161&vid=1930338161free&cat=003" class="item__btn">ITEM DETAIL</a>
            </section>
            <!-- 商品3 -->
            <section class="item">
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=003" class="item__img">
                <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930306161_sub09_M.jpg" alt="着用アイテム画像"></a>
              <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=003">
                ニットワイドパンツ<br><span class="item__price">¥20,900(tax in)</span>
              </a>
              <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=003" class="item__btn">ITEM DETAIL</a>
            </section>
          </section>

        </section>
        <button type="button" class="closeBtn modaal-close pc_contents" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span></button>
        <button type="button" class="closeBtn sp_contents modaal-close" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span>CLOSE</button>
      </section>


          <a href="#modal8" class="contentsArea__content"><img src="./images/styleImage8.jpg" alt="スタイリング画像8"></a>

          <section id="modal8" class="modal" style="display:none;">
            <div class="modal__mainVisual">
              <img src="./images/styleImage8.jpg" alt="" class="modal__mainVisual">
            </div>
            <section class="modal__itemDetail">
              <h3>着用アイテムはこちら</h3>

              <section class="modal__itemDetail__itemWrap">
                <!-- 商品1 -->
                <section class="item">
                  <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930129117&cat=003" class="item__img">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930129117_sub05_M.jpg" alt="着用アイテム画像"></a>
                  <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930129117&cat=003">
                    コートジャケット<br><span class="item__price">¥42,900(tax in)</span>
                  </a>
                  <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930129117&cat=003" class="item__btn">ITEM DETAIL</a>
                </section>
                <!-- 商品2 -->
                <section class="item">
                  <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338161&vid=1930338161free&cat=003" class="item__img">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930338161_sub06_M.jpg" alt="着用アイテム画像"></a>
                  <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338161&vid=1930338161free&cat=003">
                    クルーネックプルオーバー<br><span class="item__price">¥20,900(tax in)</span>
                  </a>
                  <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930338161&vid=1930338161free&cat=003" class="item__btn">ITEM DETAIL</a>
                </section>
                <!-- 商品3 -->
                <section class="item">
                  <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=003" class="item__img">
                    <img src="<%= Constants.PATH_ROOT %>Contents/ProductSubImages/0/1930306161_sub09_M.jpg" alt="着用アイテム画像"></a>
                  <a class="item__name" href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=003">
                    ニットワイドパンツ<br><span class="item__price">¥20,900(tax in)</span>
                  </a>
                  <a href="https://jamaisvu.co.jp/Form/Product/ProductDetail.aspx?shop=0&pid=1930306161&cat=003" class="item__btn">ITEM DETAIL</a>
                </section>
              </section>

        </section>
        <button type="button" class="closeBtn modaal-close pc_contents" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span></button>
        <button type="button" class="closeBtn sp_contents modaal-close" id="modaal-close" aria-label="CLOSE"><span class="cancel"></span>CLOSE</button>
      </section>


    </section>

    <a href="../" class="backToArchive">STYLE ARCHIVES</a>


  </article>

  <div class="userBread">
    <ul>
      <li>
        <a href="<%= WebSanitizer.HtmlEncode(this.UnsecurePageProtocolAndHost + Constants.PATH_ROOT) %>">
          トップ
        </a>
      </li>
      <li> >
        <a href="<%= Constants.PATH_ROOT %>Page/styling/">
          Style Idea
        </a>
      </li>
      <li> >
        <a href="#">
          Style Idea 2019.10
        </a>
      </li>
    </ul>
  </div>


  <script type="text/javascript">
    $(function(){
        $('.contentsArea__content').modaal({
          // hide_close: true,
          close_text:"",
          // loading_content: 'Now Loading...',
          close_aria_label: ""
        });
      });


  </script>

  <%-- △編集可能領域△ --%>


</div>
</asp:Content>
