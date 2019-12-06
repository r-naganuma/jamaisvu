<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  CopyrightBox   : CopyrightBox w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="STYLE IDEA一覧｜JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="JAMAIS VU （ジャメヴ）のSTYLE IDEA一覧ページ。「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="Styling,JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
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
<link href='./css/archive.css' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="https://use.typekit.net/qxr7okk.css">

<div class="main_contents styleIdeaWrap">
  <section class="topArea">

    <h2>STYLE IDEA</h2>

    <p class="subTtl"> Always with Your Style.</p>

  </section>
      	<div class="style_list">
      		<ul class="style_list__ul">

            <li>
              <div class="leftBox"><a href="<%= Constants.PATH_ROOT %>Page/styling/201912"><img src="<%= Constants.PATH_ROOT %>Page/styling/images/style_main_1912.jpg" alt=""></a></div>
              <div class="rightBox">
                <p class="sub">RELASE DATE</p>
                <a href="<%= Constants.PATH_ROOT %>Page/styling/201912" class="relaseDate">2019 DECEMBER</a>
              </div>
            </li>
            <li>
              <div class="leftBox"><a href="<%= Constants.PATH_ROOT %>Page/styling/201911"><img src="<%= Constants.PATH_ROOT %>Page/styling/201911/images/styleImage2-1.jpg" alt=""></a></div>
              <div class="rightBox">
                <p class="sub">RELASE DATE</p>
                <a href="<%= Constants.PATH_ROOT %>Page/styling/201911" class="relaseDate">2019 NOVEMBER</a>
              </div>
            </li>
            <li>
              <div class="leftBox"><a href="<%= Constants.PATH_ROOT %>Page/styling/201910"><img src="<%= Constants.PATH_ROOT %>Page/styling/201910/images/styleImage1.jpg" alt=""></a></div>
              <div class="rightBox">
                <p class="sub">RELASE DATE</p>
                <a href="<%= Constants.PATH_ROOT %>Page/styling/201910" class="relaseDate">2019 OCTOBER</a>
              </div>
            </li>
            <li>
              <div class="leftBox"><a href="<%= Constants.PATH_ROOT %>Page/styling/201909"><img src="<%= Constants.PATH_ROOT %>Page/styling/201909/images/styleImage1.jpg" alt=""></a></div>
              <div class="rightBox">
                <p class="sub">RELASE DATE</p>
                <a href="<%= Constants.PATH_ROOT %>Page/styling/201909" class="relaseDate">2019 SEPTEMBER</a>
              </div>
            </li>

          </ul>

      	</div>
      </div>


<%-- △編集可能領域△ --%>


</div>
</asp:Content>
