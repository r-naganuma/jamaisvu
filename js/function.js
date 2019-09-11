function initializeFunctionJs() {

	// もっと見る
	$('.readMore').click(function(){
		$(this).toggleClass('on');
		$('.newarrivalsContent__itemName').toggleClass('on');
	});


	// ▼断��を省略して「…」を付�	
	if(navigator.userAgent.match(/(iPhone|iPad|iPod|Android)/)){
		$('.js-text-overflow').each(function() {
			var $target = $(this);
			// オリジナルの斫を取得す�			
			var html = $target.html();
			// 対象の要�を〫�さにautoを指定し非表示で褣�する
			var $clone = $target.clone();
			$clone
			  .css({
			    display: 'none',
			    position : 'absolute',
			    overflow : 'visible'
			  })
			  .width($target.width())
			  .height('auto');
			// DOMを一旦追�
			$target.after($clone);
			// 挮�した高さになるまで�断�ずつ消去してぁ�
			while((html.length > 0) && ($clone.height() > $target.height())) {
			  html = html.substr(0, html.length - 1);
			  $clone.html(html + '...');
			}
			// 斫を�れ替えて、褣�した要�を削除する
			$target.html($clone.html());
			$clone.remove();
		});
	}



	// 新着ニュース
	$('#dvTopNews ul').jScrollPane({ mouseWheelSpeed: 50 });

	// サイドメニュー
	// UpdatePanel利用時にイベント�多重登録を防�	
	var isAsyncPostback = Sys.WebForms.PageRequestManager.getInstance().get_isInAsyncPostBack();
	if (isAsyncPostback === false) {
		$(".categoryList .toggle").click(function() {
			$(this).next().slideToggle();
			$(this).toggleClass("active");
		});
	}

	// 啓�一覧�ウィンドウショッ�ング	
	var $variation;
	$('.glbPlist').heightLine().biggerlink().hover(function() {
		$variation = $(this).find('.variationview_wrap');
		if ( $variation ) $variation.show();
	}, function() {
		if ( $variation ) $variation.hide();
	});;
	$('.variationview_bg').heightLine().biggerlink();

	// 啓�一覧�一覧	
	$('.plPhoto').hover(function() {
		$variation = $(this).find('.variationview_wrap');
		if ( $variation ) $variation.show();
	}, function() {
		if ( $variation ) $variation.hide();
	});;

	// お気に入りリス�	
	$('.favoriteProductImage').hover(function() {
		$variation = $(this).find('.variationview_wrap');
		if ( $variation ) $variation.show();
	}, function() {
		if ( $variation ) $variation.hide();
	});;

	// 購入履歴一覧
	$('.orderBtr').biggerlink();

	// ペ�ジトッ�
		$('.page-top a').click(function() {
		$('html, body').animate({scrollTop:0}, 'fast');
		return false;
	});
}