(function($){
	$(document).ready(function(){
		$("a[rel^=ilightbox]").each(function(){
			$(this).iLightBox(); 
		});
		
		var group = {};
		$("a[rel^=g_ilightbox]").each(function(){
			var rel = $(this).attr('rel');
			var r_id =  rel.replace('g_ilightbox[','').replace(']','');
			//if(r_id == '0') return;
			if(typeof(group[r_id]) =='undefined'){
				group[r_id] = [];
			}
			group[r_id].push(this);
		});
		
		for(r_id in group){
			$(group[r_id]).iLightBox({skin: "dark",path: "horizontal",maxScale: 1.3,
				controls: {thumbnail: f},overlay: {opacity: 0.9},
				styles: {nextOffsetX: 75,nextOpacity: 0.55,prevOffsetX: 75,prevOpacity: 0.55},
				thumbnails: {normalOpacity: 0.6,activeOpacity: 1}}); 
			//console.log('a[rel=g_ilightbox\\['+r_id+'\\]]');
			//$('a[rel=g_ilightbox\\['+r_id+'\\]]').iLightBox(); 
		}
		
	});
})(jQuery);
