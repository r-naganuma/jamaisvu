<%--
=========================================================================================================
  Module      : カスタムページテンプレート画面(CustomPageTemplate.aspx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%-- ▽ユーザーコントロール宣言領域▽ --%>
<%-- △ユーザーコントロール宣言領域△ --%>
<%@ Page Title="サイズガイド | JAMAIS VU (ジャメヴ) 公式ブランドサイト" Language="C#" Inherits="ContentsPage" MasterPageFile="~/Form/Common/DefaultPage.master" %>
<%--

下記のタグはファイル情報保持用です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
<%-- ▽編集可能領域：HEAD追加部分▽ --%>
<script type="text/javascript">
$(function(){
	$('.guideWrap_menu a').click(function(){
	  var speed = 500;
	  var href= $(this).attr("href");
	  var target = $(href == "#" || href == "" ? 'html' : href);
	  var position = target.offset().top;
	  $("html, body").animate({scrollTop:position}, speed, "swing");
	  return false;
	});
	$(".guideWrap_menu p").on("click", function () {
		$(this).toggleClass('on');
		$(".guideWrap_menu ul").slideToggle('slow');
	});

	$(window).scroll(function () {

        if ($(this).scrollTop() > 115) {
            $('.guideWrap_menu.pc_contents').addClass('is-fixed');
        } else {
            $('.guideWrap_menu.pc_contents').removeClass('is-fixed');
        }
    });
});
</script>
<%-- △編集可能領域△ --%>
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="LPpageWrap topSpace">

<%-- ▽編集可能領域：コンテンツ▽ --%>
	<div class="guideWrap">
		<div class="guideWrap_menu sizeMenu pc_contents">
			<ul>
				<li>
					<a href="#a01">トップス</a>
				</li>
				<li>
					<a href="#a02">ワンピース</a>
				</li>
				<li>
					<a href="#a03">スカート</a>
				</li>
				<li>
					<a href="#a04">パンツ</a>
				</li>
				<li>
					<a href="#a05">サロペット・オールインワン</a>
				</li>
				<li>
					<a href="#a06">ファッション雑貨</a>
				</li>
			</ul>
		</div>

		<div class="guideWrap_cts">
			<h2>サイズガイド</h2>
			<div class="guideWrap_menu sp_contents">
				<p>カテゴリー</p>
				<ul>
					<li>
						<a href="#a01">トップス</a>
					</li>
					<li>
						<a href="#a02">ワンピース</a>
					</li>
					<li>
						<a href="#a03">スカート</a>
					</li>
					<li>
						<a href="#a04">パンツ</a>
					</li>
					<li>
						<a href="#a05">サロペット・オールインワン</a>
					</li>
					<li>
						<a href="#a06">ファッション雑貨</a>
					</li>
				</ul>
			</div>
			<div class="sizeGuideNote">
				<p class="sizeGuideNote_ttl">注意事項</p>
				<p class="sizeGuideNote_txt">
					(1) 商品を平台に平置きし、外寸を測定しております。<br>
					(2) 商品によって若干の誤差が発生します。1～2cmの誤差は予めご了承ください。<br>
					(3) 商品の形状によりサイズガイドに記載のない箇所の採寸を行う場合がございます。予めご了承ください。<br>
					(4) 襟のあるアイテムの場合、襟は含みません。<br>
					(5) タックやプリーツは伸ばさない状態で測ります。<br>
					(6) アシンメトリーなデザインや裾の長さの異なるものは、最長の長さを「総丈」とします。<br>
					(7) 前身頃と後ろ身頃で総丈の長さが異なるものはそれぞれ測ります。<br>
					(8) 表記にある身幅とは「脇下2cm下の幅」で測ります （身幅も同様、1～2cmの誤差は予めご了承ください）
				</p>
			</div>
			<div id="a01" class="guideWrap_cts--list sizeList">
				<h3>トップス</h3>
				<div class="sizeBox">
					<div class="sizeBox_list">
						<h4>Tシャツ</h4>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size01.png">
					</div>
					<div class="sizeBox_list">
						<h4>ラグランスリーブ</h4>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size02.png">
					</div>
					<div class="sizeBox_list">
						<h4>ドルマンスリーブ</h4>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size03.png">
					</div>
					<div class="sizeBox_list">
						<h4>タートルネック</h4>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size04.png">
					</div>
					<div class="sizeBox_list">
						<h4>キャミソール</h4>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size05.png">
					</div>
					<div class="sizeBox_list">
						<h4>タンクトップ</h4>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size06.png">
					</div>
					<div class="sizeBox_list">
						<h4>シャツ・ブラウス</h4>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size07.png">
					</div>
					<div class="sizeBox_list">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size08.png">
					</div>
					<div class="sizeBox_list">
						<h4>ベスト</h4>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size09.png">
					</div>
					<div class="sizeBox_list">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size10.png">
					</div>
					<div class="sizeBox_list">
						<h4>ジャケット</h4>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size11.png">
					</div>
					<div class="sizeBox_list">
						<h4>コート</h4>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size12.png">
					</div>
				</div>
			</div>

			<div id="a02" class="guideWrap_cts--list sizeList">
				<h3>ワンピース</h3>
				<div class="sizeBox">
					<div class="sizeBox_list">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size13.png">
					</div>
					<div class="sizeBox_list">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size14.png">
					</div>
				</div>
			</div>

			<div id="a03" class="guideWrap_cts--list sizeList">
				<h3>スカート</h3>
				<div class="sizeBox sizeBox_center">
					<div class="sizeBox_list">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size15.png">
					</div>
					<div class="sizeBox_list">
						<p>
							※ヒップはファスナー止まりの位置を、ファスナーのない商品はウエストより約15cm下を測っております。<br><br class="pc_contents">※ヒップにゆとりのある商品に関しては測っておりません。
						</p>
					</div>
				</div>
			</div>

			<div id="a04" class="guideWrap_cts--list sizeList">
				<h3>パンツ</h3>
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size16.png" class="pic100 pc_contents">
				<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size16_sp.png" class="pic100 sp_contents">
				<div class="sizeBox">
					<div class="sizeBox_list">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size17.png">
					</div>
					<div class="sizeBox_list">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size18.png">
					</div>
				</div>
				<div class="sizeNote">
					<p>
						※ボタンのあるものは、ボタンを閉めた状態で測っております。<br>
						※ウエストに伸縮があるものは、平置きにした状態～最大の長さを測っております。<br>
						※公式サイズが決まっている商品に関しても、実寸を測っております。
					</p>
				</div>
			</div>

			<div id="a05" class="guideWrap_cts--list sizeList">
				<h3>サロペット・オールインワン</h3>
				<div class="sizeBox">
					<div class="sizeBox_list">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size19.png">
					</div>
					<div class="sizeBox_list">
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size20.png">
					</div>
				</div>
			</div>

			<div id="a06" class="guideWrap_cts--list sizeList">
				<h3>ファッション雑貨</h3>
				<div class="sizeBox">
					<div class="sizeBox_list">
						<h4>ニットキャップ</h4>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size21.png">
					</div>
					<div class="sizeBox_list">
						<h4>マフラー</h4>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size22.png">
					</div>
					<div class="sizeBox_list">
						<h4>靴下</h4>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size23.png">
					</div>
					<div class="sizeBox_list">
						<h4>トートバッグ</h4>
						<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/guide/size24.png">
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="userBread">
		<ul>
			<li>
				<a href="<%= WebSanitizer.HtmlEncode(this.UnsecurePageProtocolAndHost + Constants.PATH_ROOT) %>">
					トップ
				</a>
			</li>
			<li> >
				<a href="#">
					サイズガイド
				</a>
			</li>
		</ul>
	</div>
<%-- △編集可能領域△ --%>


</div>
</asp:Content>

