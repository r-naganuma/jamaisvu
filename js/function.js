function initializeFunctionJs() {

	// もっと見る
	$('.readMore').click(function(){
		$(this).toggleClass('on');
		$('.newarrivalsContent__itemName').toggleClass('on');
	});


	// ▼文字列を省略して「…」を付与
	if(navigator.userAgent.match(/(iPhone|iPad|iPod|Android)/)){
		$('.js-text-overflow').each(function() {
			var $target = $(this);
			// オリジナルの文章を取得する
			var html = $target.html();
			// 対象の要素を、高さにautoを指定し非表示で複製する
			var $clone = $target.clone();
			$clone
			  .css({
			    display: 'none',
			    position : 'absolute',
			    overflow : 'visible'
			  })
			  .width($target.width())
			  .height('auto');
			// DOMを一旦追加
			$target.after($clone);
			// 指定した高さになるまで、1文字ずつ消去していく
			while((html.length > 0) && ($clone.height() > $target.height())) {
			  html = html.substr(0, html.length - 1);
			  $clone.html(html + '...');
			}
			// 文章を入れ替えて、複製した要素を削除する
			$target.html($clone.html());
			$clone.remove();
		});
	}

	if(navigator.userAgent.match(/(iPhone|iPad|iPod|Android)/)){
		$(document).ready(function(){
		    var heightSize = $(window).height();
		    $('.mainVisual').height(heightSize); 
		});
	}



	// 新着ニュース
	$('#dvTopNews ul').jScrollPane({ mouseWheelSpeed: 50 });

	// サイドメニュー
	$(".categoryList .toggle").click(function(){
		$(this).next().slideToggle();
		$(this).toggleClass("active");
	});

	// 商品一覧（ウィンドウショッピング）
	var $variation;
	$('.glbPlist').heightLine().biggerlink().hover(function() {
		$variation = $(this).find('.variationview_wrap');
		if ( $variation ) $variation.show();
	}, function() {
		if ( $variation ) $variation.hide();
	});;
	$('.variationview_bg').heightLine().biggerlink();

	// 商品一覧（一覧）
	$('.plPhoto').hover(function() {
		$variation = $(this).find('.variationview_wrap');
		if ( $variation ) $variation.show();
	}, function() {
		if ( $variation ) $variation.hide();
	});;

	// お気に入りリスト
	$('.favoriteProductImage').hover(function() {
		$variation = $(this).find('.variationview_wrap');
		if ( $variation ) $variation.show();
	}, function() {
		if ( $variation ) $variation.hide();
	});;

	// 購入履歴一覧
	$('.orderBtr').biggerlink();

	// ページトップ
	$('.page-top a').click(function() {
		$('html, body').animate({scrollTop:0}, 'fast');
		return false;
	});
}