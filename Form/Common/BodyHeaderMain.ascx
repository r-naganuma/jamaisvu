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
<%@ FileInfo LastChanged="最終更新者" %>

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
$(function () {
	$("#search_btnSp").click(function(){
		$("#ctl00_BodyHeaderMain_tbSearchWord").attr("value",$("#ctl00_BodyHeaderMain_tbSearchWord2").val())
		__doPostBack('ctl00$BodyHeaderMain$lbSearch','')
	});
});
</script>
<asp:UpdatePanel ID="upUpdatePanel2" runat="server">
<ContentTemplate>
<% this.Reload(); %>
		
		<!--- header --->
		<header class="header">
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
							<li class="menuOpen">
								<a href="javascript:void(0);">ITEMS</a>
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
													トップス
												</a>
											</li>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=002&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													アウター
												</a>
											</li>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=003&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													ワンピース
												</a>
											</li>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=004&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													パンツ
												</a>
											</li>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=005&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													スカート
												</a>
											</li>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=006&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													グッズ
												</a>
											</li>
										</ul>

										<ul>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&cicon=1&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													新着商品
												</a>
											</li>
											<li>
												<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&cicon=2&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
													セール
												</a>
											</li>
										</ul>
										<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/top/pic_item.jpg" alt="">
									</div>
								</div>
							</li>
							<li>
								<a href="">TOPICS</a>
							</li>
							<li>
								<a href="">LOOKBOOK</a>
							</li>
							<li>
								<a href="">CONCEPT</a>
							</li>
							<li>
								<a href="">COLUMN</a>
							</li>
						</ul>
					</nav>

				</div>
				<div class="header__right">
					<p>
						<%if (this.IsLoggedIn) { %>
							<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_MYPAGE) %>" class="nav_loginTxt--member">新規登録/ログイン</a>
						<% }else{ %>
							<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_LOGIN + "?" + Constants.REQUEST_KEY_NEXT_URL + "=" + HttpUtility.UrlEncode(this.NextUrl)) %>">新規登録/ログイン</a>
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
							<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_star_sp.png" alt="お気に入りアイコン">
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
							<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/logo.png" alt="LOGO" class="nav_logo">
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
									<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_MYPAGE) %>" class="nav_loginTxt--member">ようこそ、<%= WebSanitizer.HtmlEncode(this.LoginUserName) %>さん
									<span><%= WebSanitizer.HtmlEncode(GetNumeric(this.LoginUserPointUsable)) %>ポイント</span></a>
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
									<a href="<%= WebSanitizer.HtmlEncode(this.SecurePageProtocolAndHost + Constants.PATH_ROOT + Constants.PAGE_FRONT_LOGIN + "?" + Constants.REQUEST_KEY_NEXT_URL + "=" + HttpUtility.UrlEncode(this.NextUrl)) %>" class="nav_loginTxt--guest">新規登録/ログイン</a>
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
											<p>09/13 UP</p>
										</div>
									</li>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=&cicon=2&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											セール
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
											トップス
										</a>
									</li>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=002&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											アウター
										</a>
									</li>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=003&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											ワンピース
										</a>
									</li>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=004&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											パンツ
										</a>
									</li>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=005&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											スカート
										</a>
									</li>
									<li>
										<a href="<%= Constants.PATH_ROOT %>Form/Product/ProductList.aspx?shop=0&cat=006&dpcnt=15&img=2&sort=07&udns=2&fpfl=0&pno=1">
											グッズ
										</a>
									</li>
								</ul>
							</div>

							<div class="nav_box">
								<h3>特集</h3>
								<ul>
									<li>
										<a href="">
											コンセプト
										</a>
									</li>
									<li>
										<a href="">
											ルックブック
										</a>
									</li>
									<li>
										<a href="">
											トピックス
										</a>
									</li>
								</ul>
							</div>

							<div class="btnBox btn--more navNewsLetter">
								<a href="<%= Constants.PATH_ROOT %>Form/User/MailMagazineRegistInput.aspx">ニュースレターを受け取る</a>
							</div>

							<ul class="nav_sns">
								<li>
									<a href="" target="_blank">
										<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_insta.png" alt="Instagram">
									</a>
								</li>
								<li>
									<a href="" target="_blank">
										<img src="<%= Constants.PATH_ROOT %>Contents/ImagesPkg/user/common/icon_line.png" alt="LINE">
									</a>
								</li>
								<li>
									<a href="" target="_blank">
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