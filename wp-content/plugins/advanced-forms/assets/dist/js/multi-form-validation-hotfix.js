!function(n){function t(i){i.find(".acf-field input").each(function(){this.checkValidity()||function(i){i=i.parents(".acf-postbox");!i.length||(i=acf.getPostbox(i))&&i.isHiddenByScreenOptions()&&(i.$el.removeClass("hide-if-js"),i.$el.css("display",""))}(n(this))})}acf.validation.onClickSubmit=function(i,n){n=n.closest("form");n.length&&(t(n),this.set("originalEvent",i))}}(jQuery);