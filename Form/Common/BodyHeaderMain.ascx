<%--
=========================================================================================================
  Module      : 共通ヘッダ出力コントローラ(BodyHeaderMain.ascx)
 ･･･････････････････････････････････････････････････････････････････････････････････････････････････････
  Copyright   : Copyright w2solution Co.,Ltd. 2009 All Rights Reserved.
=========================================================================================================
--%>
<%@ Register TagPrefix="uc" TagName="BodyMiniCart" Src="~/Form/Common/BodyMiniCart.ascx" %>
<%@ Register TagPrefix="uc" TagName="GlobalChangeMenu" Src="~/Form/Common/Global/GlobalChangeMenu.ascx" %>
<%@ control language="c#" autoeventwireup="true" inherits="Form_Common_BodyHeaderMain, App_Web_bodyheadermain.ascx.2af06a88" %>
<%--

下記は保持用のダミー情報です。削除しないでください。
<%@ FileInfo LastChanged="ロゾパンサン" %>

--%>
<asp:UpdatePanel ID="UpdatePanel1" runat="server">
<ContentTemplate>
<%
	// 検索テキストボックスEnterで検索させる（UpdatePanelで括っておかないと非同期処理時に検索が効かなくなる）
	this.WtbSearchWord.Attributes["onkeypress"] = "if (event.keyCode==13){__doPostBack('" + WlbSearch.UniqueID + "',''); return false;}";
%>
</ContentTemplate>
</asp:UpdatePanel>

<%-- ▽編集可能領域：共通ヘッダ領域▽ --%>
<script type="text/javascript">
function initializeFunctionJs() {
    "use strict";

	var txt = '0';
	var elem = null;
	$('.icnBag:contains(' + txt + ')').each(function () {
	  if ($(this).text() == txt) elem = $(this);
	  elem.css('display', 'none');
	});
	$(".header__nav--list li").hover(function () {
	  $(this).toggleClass("on");
	});

	if (document.URL.match("Journal")) {
	  $(".header__nav--list li.navJournal").addClass("on");
	}

	if (document.URL.match("styling")) {
	  $(".header__nav--list li.navStyle").addClass("on");
	}

	if (document.URL.match("lookbook")) {
	  $(".header__nav--list li.navLookbook").addClass("on");
	}

	if (document.URL.match("Concept")) {
	  $(".header__nav--list li.navConcept").addClass("on");
	} //ヘッダーメニューマウスオーバー


	if (!navigator.userAgent.match(/(iPhone|iPad|iPod|Android)/)) {
	  $('.icnSerachBtn').hover(function () {
	    $('.header__icon--search').addClass('on');
	    $('.header__icon--search').removeClass('off');
	    $('.icnSerachBtn').hide();
	  });
	  $('.search_textBox').hover(function () {}, function () {
	    $('.header__icon--search').removeClass('on');
	    $('.header__icon--search').addClass('off');
	    $('.icnSerachBtn').show();
	  });
	}

	var timeBomb;
	$('.header__nav--list li.menuOpen').hover(
	  function() {
	    timeBomb = setTimeout(function() {
	      $(".header__nav--hov").slideDown(500);
	      $(this).addClass('active');
	    }, 200)
	  }, function() {
	    $(".header__nav--hov").slideUp(500);
	    $(this).removeClass('active');
	    clearTimeout(timeBomb)
	  }
	)

	$('.nav_box.loginAfter h3').click(function () {
	  $(this).toggleClass("on");
	  $(this).next("ul").slideToggle(500);
	});
	$("#search_btnSp").click(function () {
	  $("#ctl00_BodyHeaderMain_tbSearchWord").attr("value", $("#ctl00_BodyHeaderMain_tbSearchWord2").val());

	  __doPostBack('ctl00$BodyHeaderMain$lbSearch', '');
	});
	$("#ctl00_BodyHeaderMain_tbSearchWord2").keypress(function(e){
	  if(e.which == 13){
	    $("#search_btnSp").click();
	  }
	});

	if(navigator.userAgent.match(/(iPhone|iPad|iPod|Android)/)){
		$(document).ready(function(){
		    var heightSize = $(window).height();
		    $('.mainVisual').height(heightSize); 
		});
	    
	    var height=$(".header_fixedArea").innerHeight();
	    $(".header button.btn_menu, .header__icon--wishlist, .header__icon--cart").css("padding-top", height);
	    $(".header__icon--cart .icnBag").css("margin-top", height);
	}
	    
    var height=$(".header_fixedArea").innerHeight();
    $(".topSpace, .tblLayout_ProductDetail .detail_top_wrap, .cart1_h2").css("margin-top", height);

	if(navigator.userAgent.match(/(iPhone|iPad|iPod|Android)/)){
	    var height=$(".header_fixedArea").innerHeight();
		var state = false;
		$('.btn_menu').click(function () {
			if($(".header__menu").hasClass("open")){ // クリックされた要素がopenクラスだったら
				$(".header button.btn_menu").css("padding-top", height);
			}else{
				$(".header button.btn_menu").css("padding-top", 0);
			}
		});
	}

	var state = false;
	$('.btn_menu').click(function () {
	  $(this).toggleClass('active');
	  $("#Wrap").toggleClass('open');
		if($(".header__menu").hasClass("open")){ // クリックされた要素がopenクラスだったら
			$(".header__menu").removeClass("open");
			$(".header__menu").addClass("close");
		}else{
			$(".header__menu").addClass("open");
			$(".header__menu").removeClass("close");
		}
	});

	
    $("meta[name='viewport']").attr("content","width=device-width,initial-scale=1.0,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no")
}
</script>
<asp:UpdatePanel ID="upUpdatePanel2" runat="server">
<ContentTemplate>
<% this.Reload(); %>
		
		<!--- header --->
		<header class="header">
			<div class="header_fixedArea">
				<a href="https://jamaisvu.co.jp/Page/Journal/News/News_20200430/">ゴールデンウィーク期間の休業に関するお知らせ</a>
			</div>
			<!--- header PC --->
			<div class="header__inner pc_flexOnly">
				<div class="header__left">
					<h1 class="header__logo">
						<a href="<%= WebSanitizer.HtmlEncode(this.UnsecurePageProtocolAndHost + Constants.PATH_ROOT) %>">
							<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/logo.png" alt="LOGO">
						</a>
					</h1>
					<nav class="header__nav">
						<ul class="header__nav--list">
							<li class="menuOpen navItems">
								<div class="listColumn">
									<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1" class="period">ITEMS</a>
								</div>
								<div class="header__nav--hov">
									<div class="hov_inner">
										<ul>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													すべて
												</a>
											</li>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=001&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													アウター
												</a>
											</li>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=002&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													シャツ・ブラウス
												</a>
											</li>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=003&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													ニット
												</a>
											</li>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=004&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													カットソー
												</a>
											</li>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=005&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													ワンピース
												</a>
											</li>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=006&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													スカート
												</a>
											</li>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=007&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													パンツ
												</a>
											</li>
											<!-- <li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=008&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													帽子
												</a>
											</li> -->
											<!-- <li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=009&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													靴下
												</a>
											</li> -->
										</ul>

										<ul>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&cicon=1&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													新着商品
												</a>
											</li>
											<!-- <li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&_sale=セール&pno=1">
													セール
												</a>
											</li> -->
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=magazine&udns=2&fpfl=0&pno=1">
													雑誌掲載アイテム
												</a>
											</li>
										</ul>
										<div class="hov_inner--pic">
											<!-- <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/pic_item.jpg" alt=""> -->
										</div>
									</div>
								</div>
							</li>
							<li class="navJournal">
								<div class="listColumn">
									<a href="<%= Constants.PATH_ROOT %>Page/Journal/" class="period">JOURNAL</a>
								</div>
							</li>
							<li class="navStyle">
								<div class="listColumn">
									<a href="<%= Constants.PATH_ROOT %>Page/styling/" class="period">STYLE IDEA</a>
								</div>
							</li>
							<!-- <li class="navLookbook">
								<div class="listColumn">
									<a href="<%= Constants.PATH_ROOT %>Page/lookbook/" class="period">LOOKBOOK</a>
								</div>
							</li> -->
							<li class="navConcept">
								<div class="listColumn">
									<a href="<%= Constants.PATH_ROOT %>Page/Concept/" class="period">CONCEPT</a>
								</div>
							</li>
						</ul>
					</nav>

				</div>
				<div class="header__right">
					<p>
						<%if (this.IsLoggedIn) { %>
							<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_MYPAGE) %>" class="nav_loginTxt--member">マイページ</a>
						<% }else{ %>
							<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_LOGIN + "?" + Constants.REQUEST_KEY_NEXT_URL + "=" + HttpUtility.UrlEncode(this.NextUrl)) %>">新規会員登録/ログイン</a>
						<% } %>
					</p>
					<div class="header__icon header__icon--search">
						<div class="search_textBox">
							<%
								tbSearchWord.Attributes["placeholder"] = "キーワードを入力";
							 %>
							<asp:TextBox ID="tbSearchWord" runat="server" MaxLength="168"></asp:TextBox>
							<asp:LinkButton ID="lbSearch" runat="server" OnClick="lbSearch_Click">
								<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_search.png" alt="検索アイコン">
							</asp:LinkButton>
						</div>
						<img class="icnSerachBtn" src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_search.png" alt="検索アイコン">
					</div>
					<div class="header__icon header__icon--wishlist">
						<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_FAVORITE_LIST) %>">
							<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_star.png" alt="お気に入りアイコン">
						</a>
					</div>
					<div class="header__icon header__icon--cart active">
						<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_CART_LIST) %>">
							<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_cart.png" alt="カートアイコン">
							<span class="icnBag"><%= WebSanitizer.HtmlEncode(GetNumeric(this.ProductCount))%></span>
						</a>
					</div>
				</div>
			</div>

			<!--- header PC end --->

			<!--- header SP --->

			<div class="header__inner md_contents">
				<div class="header__left">
		            <button type="button" class="btn_menu">
		              <span class="bar bar1"></span>
		              <span class="bar bar2"></span>
		              <span class="bar bar3"></span>
		            </button>
					<h1 class="header__logo">
						<a href="<%= WebSanitizer.HtmlEncode(this.UnsecurePageProtocolAndHost + Constants.PATH_ROOT) %>">
							<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/logo.png" alt="LOGO">
						</a>
					</h1>
					<div class="header__icon header__icon--wishlist">
						<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_FAVORITE_LIST) %>">
							<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_star.png" alt="お気に入りアイコン">
						</a>
					</div>
					<div class="header__icon header__icon--cart active">
						<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_CART_LIST) %>">
							<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_cart.png" alt="カートアイコン">
							<span class="icnBag"><%= WebSanitizer.HtmlEncode(GetNumeric(this.ProductCount))%></span>
						</a>
					</div>
					<nav class="header__menu">
						<div class="header__menu--inner">
							<a href="<%= WebSanitizer.HtmlEncode(this.UnsecurePageProtocolAndHost + Constants.PATH_ROOT) %>">
								<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/logo.png" alt="LOGO" class="nav_logo">
							</a>
							<div class="header__icon header__icon--search--sp">
								<div class="search_textBox">
									<input name="ctl00$BodyHeaderMain$tbSearchWord2" type="text" maxlength="168" id="ctl00_BodyHeaderMain_tbSearchWord2" placeholder="キーワードを入力">
								</div>
								<a id="search_btnSp">
									<img src="/Contents/ImagesPkg/user/common/icon_search.png" alt="検索アイコン">
								</a>
							</div>
							
							<%if (this.IsLoggedIn) { %>
							<div class="loginAfterBox">
								<div class="nav_loginTxt loginAfter">
									<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_MYPAGE) %>" class="nav_loginTxt--member">ようこそ、<%= WebSanitizer.HtmlEncode(this.LoginUserName) %>さん</a>
								</div>

								<div class="nav_box loginAfter">
									<h3>会員情報</h3>
									<ul>
										<li>
											<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_MYPAGE) %>">
												マイページトップ
											</a>
										</li>
										<li>
											<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_MODIFY_INPUT) %>">
												会員情報確認・変更
											</a>
										</li>
										<li>
											<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_CREDITCARD_LIST) %>">
												クレジットカード情報
											</a>
										</li>
										<li>
											<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_SHIPPING_LIST) %>">
												お届け先情報
											</a>
										</li>
										<li>
											<a href="<%: Constants.PATH_ROOT + Constants.PAGE_FRONT_COUPON_BOX %>">
												クーポン
											</a>
										</li>
									</ul>
								</div>

								<div class="nav_box loginAfter">
									<h3>お買い物情報</h3>
									<ul>
										<li>
											<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_FAVORITE_LIST) %>">
												お気に入りリスト
											</a>
										</li>
										<li>
											<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_ORDER_HISTORY_LIST) %>">
												購入履歴
											</a>
										</li>
									</ul>
								</div>

								<div class="nav_box loginAfter">
									<h3>お問い合わせ</h3>
									<ul>
										<li>
											<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_INQUIRY_INPUT) %>">
												お問い合わせ
											</a>
										</li>
										<li>
											<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_LOGOFF) %>" onclick="return confirm('ログアウトします。\nよろしいですか？');return false;">
												ログアウト
											</a>
										</li>
										<li>
											<a href="<%= WebSanitizer.HtmlEncode(Constants.PATH_ROOT + Constants.PAGE_FRONT_USER_WITHDRAWAL_INPUT) %>">
												退会手続き
											</a>
										</li>
									</ul>
								</div>
							</div>
							<% }else{ %>
								<p class="nav_loginTxt">
									<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_LOGIN + "?" + Constants.REQUEST_KEY_NEXT_URL + "=" + HttpUtility.UrlEncode(this.NextUrl)) %>" class="nav_loginTxt--guest">新規会員登録/ログイン</a>
								</p>
							<% } %>
							
							<!-- <div class="nav_recommend">
								<p class="nav_recommend--ttl">あなたへのおすすめ商品</p>
								<ul>
									<li>
				                        <a href="">
				                            <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/history_1.png" alt="">
				                        </a>
				                    </li>
									<li>
				                        <a href="">
				                            <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/history_1.png" alt="">
				                        </a>
				                    </li>
									<li>
				                        <a href="">
				                            <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/history_1.png" alt="">
				                        </a>
				                    </li>
									<li>
				                        <a href="">
				                            <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/history_1.png" alt="">
				                        </a>
				                    </li>
									<li>
				                        <a href="">
				                            <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/history_1.png" alt="">
				                        </a>
				                    </li>
									<li>
				                        <a href="">
				                            <img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/history_1.png" alt="">
				                        </a>
				                    </li>
								</ul>
							</div> -->

							<div class="nav_box">
								<h3>商品タイプ</h3>
								<ul>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&cicon=1&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											新着商品
										</a>
										<div class="navUpdate">
											<p>4/16 UP</p>
										</div>
									</li>
									<!-- <li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&_sale=セール&pno=1">
											セール
										</a>
									</li> -->
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=24&img=2&sort=07&swrd=magazine&udns=2&fpfl=0&pno=1">
											雑誌掲載アイテム
										</a>
									</li>
								</ul>
							</div>

							<div class="nav_box">
								<h3>カテゴリー</h3>
								<ul>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											すべて
										</a>
									</li>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=001&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											アウター
										</a>
									</li>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=002&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											シャツ・ブラウス
										</a>
									</li>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=003&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											ニット
										</a>
									</li>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=004&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											カットソー
										</a>
									</li>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=005&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											ワンピース
										</a>
									</li>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=006&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											スカート
										</a>
									</li>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=007&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											パンツ
										</a>
									</li>
									<!-- <li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=008&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											帽子
										</a>
									</li> -->
									<!-- <li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=009&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											靴下
										</a>
									</li> -->
								</ul>
							</div>

							<div class="nav_box nav_boxJournal">
								<h3>特集</h3>
								<ul>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Page/Journal/">
											JOURNAL
										</a>
									</li>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Page/styling/">
											STYLE IDEA
										</a>
									</li>
									<!-- <li>
										<a href="<%= Constants.PATH_ROOT %>Page/lookbook/">
											LOOKBOOK
										</a>
									</li> -->
									<li>
										<a href="<%= Constants.PATH_ROOT %>Page/Concept/">
											CONCEPT
										</a>
									</li>
								</ul>
							</div>

							<div class="btnBox btn--more navNewsLetter">
								<a href="<%= Constants.PATH_ROOT %>Form/User/MailMagazineRegistInput.aspx">ニュースレターを受け取る</a>
							</div>

							<ul class="nav_sns">
								<li>
									<a href="https://www.instagram.com/jamaisvu_jp/?hl=ja" target="_blank">
										<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_insta.png" alt="Instagram">
									</a>
								</li>
								<li>
									<a href="https://line.me/R/ti/p/%40461wwkgx" target="_blank">
										<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_line.png" alt="LINE">
									</a>
								</li>
								<li>
									<a href="https://www.facebook.com/JAMAIS-VU-2244865452308305/?modal=admin_todo_tour" target="_blank">
										<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_fb.png" alt="Facebook">
									</a>
								</li>
							</ul>
						</div>
					</nav>
				</div>
			</div>
			<!--- header SP end --->
		</header>	
		<!--- header end --->
</ContentTemplate>
</asp:UpdatePanel>
<%-- △編集可能領域△ --%>

<%--
下記はファイル情報保持用のダミーです。削除しないでください。
<%@ FileInfo LastChanged="ｗ２ユーザー" %>
--%>