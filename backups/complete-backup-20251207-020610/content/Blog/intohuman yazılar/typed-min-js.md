---
title: Untitled
description: >-
  var _____WB$wombat$assign$function_____=function(name){return (self._wb_wombat
  && self._wb_wombat.local_init &&
  self._wb_wombat.local_init(name))||self[name];};if(!self.__WB_pmw){self.__WB_pmw=functio...
pubDate: '2020-01-01'
draft: false
originalUrl: >-
  https://intohuman.com/wp-content/plugins/sina-extension-for-elementor/assets/js/typed.min.js?ver=3.4.4
tags: []
---
var \_\_\_\_\_WB$wombat$assign$function\_\_\_\_\_=function(name){return (self.\_wb\_wombat && self.\_wb\_wombat.local\_init && self.\_wb\_wombat.local\_init(name))||self[name];};if(!self.\_\_WB\_pmw){self.\_\_WB\_pmw=function(obj){this.\_\_WB\_source=obj;return this;}}{
let window = \_\_\_\_\_WB$wombat$assign$function\_\_\_\_\_("window");
let self = \_\_\_\_\_WB$wombat$assign$function\_\_\_\_\_("self");
let document = \_\_\_\_\_WB$wombat$assign$function\_\_\_\_\_("document");
let location = \_\_\_\_\_WB$wombat$assign$function\_\_\_\_\_("location");
let top = \_\_\_\_\_WB$wombat$assign$function\_\_\_\_\_("top");
let parent = \_\_\_\_\_WB$wombat$assign$function\_\_\_\_\_("parent");
let frames = \_\_\_\_\_WB$wombat$assign$function\_\_\_\_\_("frames");
let opens = \_\_\_\_\_WB$wombat$assign$function\_\_\_\_\_("opens");
/\* https://github.com/mattboldt/typed.js/ \*/
!function(t,s,e){"use strict";var i=function(t,s){var i=this;this.el=t,this.options={},Object.keys(r).forEach(function(t){i.options[t]=r[t]}),Object.keys(s).forEach(function(t){i.options[t]=s[t]}),this.isInput="input"===this.el.tagName.toLowerCase(),this.attr=this.options.attr,this.showCursor=!this.isInput&&this.options.showCursor,this.elContent=this.attr?this.el.getAttribute(this.attr):this.el.textContent,this.contentType=this.options.contentType,this.typeSpeed=this.options.typeSpeed,this.startDelay=this.options.startDelay,this.backSpeed=this.options.backSpeed,this.backDelay=this.options.backDelay,e&&this.options.stringsElement instanceof e?this.stringsElement=this.options.stringsElement[0]:this.stringsElement=this.options.stringsElement,this.strings=this.options.strings,this.strPos=0,this.arrayPos=0,this.stopNum=0,this.loop=this.options.loop,this.loopCount=this.options.loopCount,this.curLoop=0,this.stop=!1,this.cursorChar=this.options.cursorChar,this.shuffle=this.options.shuffle,this.sequence=[],this.build()};i.prototype={constructor:i,init:function(){var t=this;t.timeout=setTimeout(function(){for(var s=0;s":";";t.substr(s+1).charAt(0)!==h&&(a+=t.substr(s).charAt(0),s++,!(s+1>t.length)););s++,a+=h}}i.timeout=setTimeout(function(){if(s===t.length){if(i.options.onStringTyped(i.arrayPos),i.arrayPos===i.strings.length-1&&(i.options.callback(),i.curLoop++,i.loop===!1||i.curLoop===i.loopCount))return;i.timeout=setTimeout(function(){i.backspace(t,s)},i.backDelay)}else{0===s&&i.options.preStringTyped(i.arrayPos);var e=t.substr(0,s+1);i.attr?i.el.setAttribute(i.attr,e):i.isInput?i.el.value=e:"html"===i.contentType?i.el.innerHTML=e:i.el.textContent=e,s++,i.typewrite(t,s)}},e)},e)}},backspace:function(t,s){if(this.stop!==!0){var e=Math.round(70\*Math.random())+this.backSpeed,i=this;i.timeout=setTimeout(function(){if("html"===i.contentType&&">"===t.substr(s).charAt(0)){for(var e="";"<"!==t.substr(s-1).charAt(0)&&(e-=t.substr(s).charAt(0),s--,!(s<0)););s--,e+="<"}var r=t.substr(0,s);i.attr?i.el.setAttribute(i.attr,r):i.isInput?i.el.value=r:"html"===i.contentType?i.el.innerHTML=r:i.el.textContent=r,s>i.stopNum?(s--,i.backspace(t,s)):s<=i.stopNum&&(i.arrayPos++,i.arrayPos===i.strings.length?(i.arrayPos=0,i.shuffle&&(i.sequence=i.shuffleArray(i.sequence)),i.init()):i.typewrite(i.strings[i.sequence[i.arrayPos]],s))},e)}},shuffleArray:function(t){var s,e,i=t.length;if(i)for(;--i;)e=Math.floor(Math.random()\*(i+1)),s=t[e],t[e]=t[i],t[i]=s;return t},reset:function(){var t=this;clearInterval(t.timeout);this.el.getAttribute("id");this.el.textContent="","undefined"!=typeof this.cursor&&"undefined"!=typeof this.cursor.parentNode&&this.cursor.parentNode.removeChild(this.cursor),this.strPos=0,this.arrayPos=0,this.curLoop=0,this.options.resetCallback()}},i["new"]=function(t,e){var r=Array.prototype.slice.apply(s.querySelectorAll(t));r.forEach(function(t){var s=t.\_typed,r="object"==typeof e&&es&&s.reset(),t.\_typed=s=new i(t,r),"string"==typeof e&&s[e]()})},e&&(e.fn.typed=function(t){return this.each(function(){var s=e(this),r=s.data("typed"),o="object"==typeof t&&tr&&r.reset(),s.data("typed",r=new i(this,o)),"string"==typeof t&&r[t]()})}),t.Typed=i;var r={strings:["These are the default values...","You know what you should do?","Use your own!","Have a great day!"],stringsElement:null,typeSpeed:0,startDelay:0,backSpeed:0,shuffle:!1,backDelay:500,loop:!1,loopCount:!1,showCursor:!0,cursorChar:"|",attr:null,contentType:"html",callback:function(){},preStringTyped:function(){},onStringTyped:function(){},resetCallback:function(){}}}(window,document,window.jQuery);
/\*! Morphext - v2.4.4 https://github.com/MrSaints/Morphext - 2015-05-21 \*/
!function(a){"use strict";function b(b,c){this.element=a(b),this.settings=a.extend({},d,c),this.\_defaults=d,this.\_init()}var c="Morphext",d={animation:"fadeIn",separator:",",speed:2e3,complete:a.noop};b.prototype={\_init:function(){var b=this;this.phrases=[],this.element.addClass("morphext"),a.each(this.element.text().split(this.settings.separator),function(c,d){b.phrases.push(a.trim(d))}),this.index=-1,this.animate(),this.start()},animate:function(){this.index=++this.index%this.phrases.length,this.element[0].innerHTML=''+this.phrases[this.index]+"",a.isFunction(this.settings.complete)&&this.settings.complete.call(this)},start:function(){var a=this;this.\_interval=setInterval(function(){a.animate()},this.settings.speed)},stop:function(){this.\_interval=clearInterval(this.\_interval)}},a.fn[c]=function(d){return this.each(function(){a.data(this,"plugin\_"+c)||a.data(this,"plugin\_"+c,new b(this,d))})}}(jQuery);
}
/\*
FILE ARCHIVED ON 14:22:04 Jun 20, 2023 AND RETRIEVED FROM THE
INTERNET ARCHIVE ON 15:28:38 Dec 03, 2025.
JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.
ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
SECTION 108(a)(3)).
\*/
/\*
playback timings (ms):
captures\_list: 0.713
exclusion.robots: 0.064
exclusion.robots.policy: 0.056
esindex: 0.009
cdx.remote: 33.705
LoadShardBlock: 127.911 (3)
PetaboxLoader3.datanode: 135.532 (5)
PetaboxLoader3.resolve: 582.68 (2)
load\_resource: 644.994
loaddict: 80.417
\*/
