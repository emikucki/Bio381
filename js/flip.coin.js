(function($) {
    $(document).ready(function() {
	
	$('#flip_coin').scianimator({
	    'images': ['images/flip.coin1.png', 'images/flip.coin2.png'],
	    'width': 600,
	    'delay': 300,
	    'loopMode': 'loop'
	});
	$('#flip_coin').scianimator('play');
    });
})(jQuery);
