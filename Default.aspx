<%--
=========================================================================================================
  Module      : トップ画面(Default.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%@ Register TagPrefix="uc" TagName="BodyProductCategoryTree" Src="~/Form/Common/Product/BodyProductCategoryTree.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductRanking" Src="~/Form/Common/Product/BodyProductRanking.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductRecommendAdvanced" Src="~/Form/Common/Product/BodyProductRecommendAdvanced.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductHistory" Src="~/Form/Common/Product/BodyProductHistory.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyNews" Src="~/Form/Common/BodyNews.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyProductRecommendByRecommendEngine" Src="~/Form/Common/Product/BodyProductRecommendByRecommendEngine.ascx" %>
<%@ Register TagPrefix="uc" TagName="BodyCategoryRecommendByRecommendEngine" Src="~/Form/Common/Product/BodyCategoryRecommendByRecommendEngine.ascx" %>
<%@ Register TagPrefix="uc" TagName="Parts010RCMD_001" Src="~/Page/Parts/Parts010RCMD_001.ascx" %>
<%@ Register TagPrefix="uc" TagName="Parts010RCMD_002" Src="~/Page/Parts/Parts010RCMD_002.ascx" %>
<%@ Register TagPrefix="uc" TagName="ProductColorSearchBox" Src="~/Form/Common/Product/ProductColorSearchBox.ascx" %>
<%@ Register TagPrefix="uc" TagName="Parts000TMPL_005" Src="~/Page/Parts/Parts000TMPL_005.ascx" %>
<%@ Register TagPrefix="uc" TagName="Parts000TMPL_006" Src="~/Page/Parts/Parts000TMPL_006.ascx" %>
<%@ Register TagPrefix="uc" TagName="Parts000TMPL_007" Src="~/Page/Parts/Parts000TMPL_007.ascx" %>
<%@ Register TagPrefix="uc" TagName="Parts000TMPL_008" Src="~/Page/Parts/Parts000TMPL_008.ascx" %>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Register TagPrefix="uc" TagName="Criteo" Src="~/Form/Common/Criteo.ascx" %>
<%@ page language="C#" masterpagefile="~/Form/Common/DefaultPage.master" autoeventwireup="true" inherits="Default, App_Web_default.aspx.cdcab7d2" title="JAMAIS VU（ジャメヴ）公式サイト｜Official Online Store" MetaDescription="「自由で正直なものづくり」にこだわり、世界各国から選び抜かれた良質な素材と職人の高度な技術に裏付けられた、流行に縛られないオーセンティックな洋服を提案。" MetaKeywords="JAMAIS VU,ジャメヴ,ジャメブ,通販,ファッション通販,Official Online Store,オンラインストア"%>
<%--

下記は保持用のダミー情報です。削除しないでください。
<%@ FileInfo LastChanged="ｗ２ユーザー" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<% if (Constants.MOBILEOPTION_ENABLED){%>
	<link rel="Alternate" media="handheld" href="<%= GetMobileUrl() %>" />
<% } %>
<%= this.BrandAdditionalDsignTag %>
<%-- △編集可能領域△ --%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<!--- page --->
<div class="page pageTop">
    <div class="content">
        <div class="topFront">
            <%-- ▽メインビジュアル▽ --%>
            <uc:Parts000TMPL_005 runat="server" />
            <%-- △メインビジュアル△ --%>
            <%-- ▽JOURNAL▽ --%>
            <uc:Parts000TMPL_006 runat="server" />
            <%-- △JOURNAL△ --%>
        </div>
        <%-- ▽ITEMS▽ --%>
        <uc:Parts000TMPL_007 runat="server" />
        <%-- △ITEMS△ --%>
        <%-- ▽SP用カテゴリ▽ --%>
        <uc:Parts000TMPL_008 runat="server" />
        <%-- △SP用カテゴリ△ --%>
        <%-- ▽HISTORY▽ --%>
        <uc:BodyProductHistory runat="server" />
        <%-- △HISTORY△ --%>
    </div>
        
    <% if ((((this.Request.Url.Query.Contains("param")) ? (DateTime.ParseExact(this.Request.QueryString["param"], "yyyyMMddHHmmss", null)) : DateTime.Now) > (DateTime.ParseExact("20210611120000", "yyyyMMddHHmmss", null)))){ %>
    <div class="floating200124">
        <a href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=sale&udns=2&fpfl=0&pno=1">
            <img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/floating210611_pc.png" alt="">
            <img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/floating210611_sp.jpg" alt="">
        </a>
        <div class="button">
            <span class="bar1"></span>
            <span class="bar2"></span>
        </div>
    </div>
    <% } %>
    <!-- <div class="floating200124">
        <a
            href="https://jamaisvu.co.jp/Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=shirt3000off&udns=0&fpfl=0&pno=1">
            <img class="pc_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/floating210409_pc.png?91827"
                alt="">
            <img class="sp_contents" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/floating210409_sp.jpg"
                alt="">
        </a>
        <div class="button">
            <span class="bar1"></span>
            <span class="bar2"></span>
        </div>
    </div> -->
</div>
<script type="text/javascript">
$(function(){
    // ヘッダーメイン
    $(".mainVisualRev").slick({
        autoplay:true,
        autoplaySpeed:4000,
        dots:false,
        arrows:false,
        infinite: true,
        swipe: true,
        slidesToShow: 1,
        slidesToScroll: 1,
        draggable: false,
        variableWidth: false,
        pauseOnHover: false,
        pauseOnFocus: false,
        fade: true
    });
    
    var height=$(".header").height();
    $("#Wrap .pageTop .mainVisualRev").css("padding-top", height);
})

    $("#Wrap .pageTop .floating200124 .button").click(function() {
        $(".floating200124").fadeOut();
    })
</script>
<!--- page end --->

<script runat="server">
public new void Page_Load(Object sender, EventArgs e)
{
base.Page_Load(sender, e);

var recommendEngineUserControls = WebControlUtility.GetRecommendEngineUserControls(this.Form.FindControl("ContentPlaceHolder1"));
var lProductRecommendByRecommendEngineUserControls = recommendEngineUserControls.Item1;
var lCategoryRecommendByRecommendEngineUserControls = recommendEngineUserControls.Item2;

<%-- ▽編集可能領域：プロパティ設定▽ --%>
// 外部レコメンド連携パーツ設定
// 1つ目の商品レコメンド
if (lProductRecommendByRecommendEngineUserControls.Count > 0)
{
    //レコメンドコードを設定します
    lProductRecommendByRecommendEngineUserControls[0].RecommendCode = "p001";
    //アイテムコードを設定します
    //特定の商品に対する行動履歴から、おすすめ商品を取得したい場合に設定します。
    //「"P"+商品ID」の形式で記述してください。【記述例】P001
    lProductRecommendByRecommendEngineUserControls[0].ItemCode = "";
    //商品最大表示件数を設定します
    lProductRecommendByRecommendEngineUserControls[0].MaxDispCount = 5;
    //商品画像サイズを設定します (S/M/L/LL)
    lProductRecommendByRecommendEngineUserControls[0].ImageSize = "M";
}

// 2つ目の商品レコメンド
if (lProductRecommendByRecommendEngineUserControls.Count > 1)
{
    //レコメンドコードを設定します
    lProductRecommendByRecommendEngineUserControls[1].RecommendCode = "p002";
    //アイテムコードを設定します
    //特定の商品に対する行動履歴から、おすすめ商品を取得したい場合に設定します。
    //「"P"+商品ID」の形式で記述してください。【記述例】P001
    lProductRecommendByRecommendEngineUserControls[1].ItemCode = "";
    //商品最大表示件数を設定します
    lProductRecommendByRecommendEngineUserControls[1].MaxDispCount = 5;
    //商品画像サイズを設定します (S/M/L/LL)
    lProductRecommendByRecommendEngineUserControls[1].ImageSize = "M";
}

// 1つ目のカテゴリレコメンド
if (lCategoryRecommendByRecommendEngineUserControls.Count > 0)
{
    //レコメンドコードを設定します
    lCategoryRecommendByRecommendEngineUserControls[0].RecommendCode = "p005";
    //アイテムコードを設定します
    //特定のカテゴリに対する行動履歴から、おすすめカテゴリを取得したい場合に設定します。
    //「"C"+カテゴリID」の形式で記述してください。【記述例】C001
    lCategoryRecommendByRecommendEngineUserControls[0].ItemCode = "";
    //表示区分を設定します (0:該当カテゴリのみ表示/1:パンくずリスト表示)
    lCategoryRecommendByRecommendEngineUserControls[0].DispKbn = "1";
    //商品最大表示件数を設定します
    lCategoryRecommendByRecommendEngineUserControls[0].MaxDispCount = 5;
}
<%-- △編集可能領域△ --%>
}
</script>

<%-- CRITEOタグ --%>
<uc:Criteo ID="criteo" runat="server" Datas="<%# null %>" />
</asp:Content>