---
title: Untitled
description: >-
  var _____WB$wombat$assign$function_____=function(name){return (self._wb_wombat
  && self._wb_wombat.local_init &&
  self._wb_wombat.local_init(name))||self[name];};if(!self.__WB_pmw){self.__WB_pmw=functio...
pubDate: '2020-01-01'
draft: false
originalUrl: >-
  https://intohuman.com/wp-content/plugins/akismet/_inc/akismet-frontend.js?ver=1704837122
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
/\*\*
\* Observe how the user enters content into the comment form in order to determine whether it's a bot or not.
\*
\* Note that no actual input is being saved here, only counts and timings between events.
\*/
( function() {
// Passive event listeners are guaranteed to never call e.preventDefault(),
// but they're not supported in all browsers. Use this feature detection
// to determine whether they're available for use.
var supportsPassive = false;
try {
var opts = Object.defineProperty( {}, 'passive', {
get : function() {
supportsPassive = true;
}
} );
window.addEventListener( 'testPassive', null, opts );
window.removeEventListener( 'testPassive', null, opts );
} catch ( e ) {}
function init() {
var input\_begin = '';
var keydowns = {};
var lastKeyup = null;
var lastKeydown = null;
var keypresses = [];
var modifierKeys = [];
var correctionKeys = [];
var lastMouseup = null;
var lastMousedown = null;
var mouseclicks = [];
var mousemoveTimer = null;
var lastMousemoveX = null;
var lastMousemoveY = null;
var mousemoveStart = null;
var mousemoves = [];
var touchmoveCountTimer = null;
var touchmoveCount = 0;
var lastTouchEnd = null;
var lastTouchStart = null;
var touchEvents = [];
var scrollCountTimer = null;
var scrollCount = 0;
var correctionKeyCodes = [ 'Backspace', 'Delete', 'ArrowUp', 'ArrowDown', 'ArrowLeft', 'ArrowRight', 'Home', 'End', 'PageUp', 'PageDown' ];
var modifierKeyCodes = [ 'Shift', 'CapsLock' ];
var forms = document.querySelectorAll( 'form[method=post]' );
for ( var i = 0; i < forms.length; i++ ) {
var form = forms[i];
var formAction = form.getAttribute( 'action' );
// Ignore forms that POST directly to other domains; these could be things like payment forms.
if ( formAction ) {
// Check that the form is posting to an external URL, not a path.
if ( formAction.indexOf( 'http://' ) == 0 || formAction.indexOf( 'https://' ) == 0 ) {
if ( formAction.indexOf( 'http://' + window.location.hostname + '/' ) != 0 && formAction.indexOf( 'https://' + window.location.hostname + '/' ) != 0 ) {
continue;
}
}
}
form.addEventListener( 'submit', function () {
var ak\_bkp = prepare\_timestamp\_array\_for\_request( keypresses );
var ak\_bmc = prepare\_timestamp\_array\_for\_request( mouseclicks );
var ak\_bte = prepare\_timestamp\_array\_for\_request( touchEvents );
var ak\_bmm = prepare\_timestamp\_array\_for\_request( mousemoves );
var input\_fields = {
// When did the user begin entering any input?
'bib': input\_begin,
// When was the form submitted?
'bfs': Date.now(),
// How many keypresses did they make?
'bkpc': keypresses.length,
// How quickly did they press a sample of keys, and how long between them?
'bkp': ak\_bkp,
// How quickly did they click the mouse, and how long between clicks?
'bmc': ak\_bmc,
// How many mouseclicks did they make?
'bmcc': mouseclicks.length,
// When did they press modifier keys (like Shift or Capslock)?
'bmk': modifierKeys.join( ';' ),
// When did they correct themselves? e.g., press Backspace, or use the arrow keys to move the cursor back
'bck': correctionKeys.join( ';' ),
// How many times did they move the mouse?
'bmmc': mousemoves.length,
// How many times did they move around using a touchscreen?
'btmc': touchmoveCount,
// How many times did they scroll?
'bsc': scrollCount,
// How quickly did they perform touch events, and how long between them?
'bte': ak\_bte,
// How many touch events were there?
'btec' : touchEvents.length,
// How quickly did they move the mouse, and how long between moves?
'bmm' : ak\_bmm
};
var akismet\_field\_prefix = 'ak\_';
if ( this.getElementsByClassName ) {
// Check to see if we've used an alternate field name prefix. We store this as an attribute of the container around some of the Akismet fields.
var possible\_akismet\_containers = this.getElementsByClassName( 'akismet-fields-container' );
for ( var containerIndex = 0; containerIndex < possible\_akismet\_containers.length; containerIndex++ ) {
var container = possible\_akismet\_containers.item( containerIndex );
if ( container.getAttribute( 'data-prefix' ) ) {
akismet\_field\_prefix = container.getAttribute( 'data-prefix' );
break;
}
}
}
for ( var field\_name in input\_fields ) {
var field = document.createElement( 'input' );
field.setAttribute( 'type', 'hidden' );
field.setAttribute( 'name', akismet\_field\_prefix + field\_name );
field.setAttribute( 'value', input\_fields[ field\_name ] );
this.appendChild( field );
}
}, supportsPassive ? { passive: true } : false );
form.addEventListener( 'keydown', function ( e ) {
// If you hold a key down, some browsers send multiple keydown events in a row.
// Ignore any keydown events for a key that hasn't come back up yet.
if ( e.key in keydowns ) {
return;
}
var keydownTime = ( new Date() ).getTime();
keydowns[ e.key ] = [ keydownTime ];
if ( ! input\_begin ) {
input\_begin = keydownTime;
}
// In some situations, we don't want to record an interval since the last keypress -- for example,
// on the first keypress, or on a keypress after focus has changed to another element. Normally,
// we want to record the time between the last keyup and this keydown. But if they press a
// key while already pressing a key, we want to record the time between the two keydowns.
var lastKeyEvent = Math.max( lastKeydown, lastKeyup );
if ( lastKeyEvent ) {
keydowns[ e.key ].push( keydownTime - lastKeyEvent );
}
lastKeydown = keydownTime;
}, supportsPassive ? { passive: true } : false );
form.addEventListener( 'keyup', function ( e ) {
if ( ! ( e.key in keydowns ) ) {
// This key was pressed before this script was loaded, or a mouseclick happened during the keypress, or...
return;
}
var keyupTime = ( new Date() ).getTime();
if ( 'TEXTAREA' === e.target.nodeName || 'INPUT' === e.target.nodeName ) {
if ( -1 !== modifierKeyCodes.indexOf( e.key ) ) {
modifierKeys.push( keypresses.length - 1 );
} else if ( -1 !== correctionKeyCodes.indexOf( e.key ) ) {
correctionKeys.push( keypresses.length - 1 );
} else {
// ^ Don't record timings for keys like Shift or backspace, since they
// typically get held down for longer than regular typing.
var keydownTime = keydowns[ e.key ][0];
var keypress = [];
// Keypress duration.
keypress.push( keyupTime - keydownTime );
// Amount of time between this keypress and the previous keypress.
if ( keydowns[ e.key ].length > 1 ) {
keypress.push( keydowns[ e.key ][1] );
}
keypresses.push( keypress );
}
}
delete keydowns[ e.key ];
lastKeyup = keyupTime;
}, supportsPassive ? { passive: true } : false );
form.addEventListener( "focusin", function ( e ) {
lastKeydown = null;
lastKeyup = null;
keydowns = {};
}, supportsPassive ? { passive: true } : false );
form.addEventListener( "focusout", function ( e ) {
lastKeydown = null;
lastKeyup = null;
keydowns = {};
}, supportsPassive ? { passive: true } : false );
}
document.addEventListener( 'mousedown', function ( e ) {
lastMousedown = ( new Date() ).getTime();
}, supportsPassive ? { passive: true } : false );
document.addEventListener( 'mouseup', function ( e ) {
if ( ! lastMousedown ) {
// If the mousedown happened before this script was loaded, but the mouseup happened after...
return;
}
var now = ( new Date() ).getTime();
var mouseclick = [];
mouseclick.push( now - lastMousedown );
if ( lastMouseup ) {
mouseclick.push( lastMousedown - lastMouseup );
}
mouseclicks.push( mouseclick );
lastMouseup = now;
// If the mouse has been clicked, don't record this time as an interval between keypresses.
lastKeydown = null;
lastKeyup = null;
keydowns = {};
}, supportsPassive ? { passive: true } : false );
document.addEventListener( 'mousemove', function ( e ) {
if ( mousemoveTimer ) {
clearTimeout( mousemoveTimer );
mousemoveTimer = null;
}
else {
mousemoveStart = ( new Date() ).getTime();
lastMousemoveX = e.offsetX;
lastMousemoveY = e.offsetY;
}
mousemoveTimer = setTimeout( function ( theEvent, originalMousemoveStart ) {
var now = ( new Date() ).getTime() - 500; // To account for the timer delay.
var mousemove = [];
mousemove.push( now - originalMousemoveStart );
mousemove.push(
Math.round(
Math.sqrt(
Math.pow( theEvent.offsetX - lastMousemoveX, 2 ) +
Math.pow( theEvent.offsetY - lastMousemoveY, 2 )
)
)
);
if ( mousemove[1] > 0 ) {
// If there was no measurable distance, then it wasn't really a move.
mousemoves.push( mousemove );
}
mousemoveStart = null;
mousemoveTimer = null;
}, 500, e, mousemoveStart );
}, supportsPassive ? { passive: true } : false );
document.addEventListener( 'touchmove', function ( e ) {
if ( touchmoveCountTimer ) {
clearTimeout( touchmoveCountTimer );
}
touchmoveCountTimer = setTimeout( function () {
touchmoveCount++;
}, 500 );
}, supportsPassive ? { passive: true } : false );
document.addEventListener( 'touchstart', function ( e ) {
lastTouchStart = ( new Date() ).getTime();
}, supportsPassive ? { passive: true } : false );
document.addEventListener( 'touchend', function ( e ) {
if ( ! lastTouchStart ) {
// If the touchstart happened before this script was loaded, but the touchend happened after...
return;
}
var now = ( new Date() ).getTime();
var touchEvent = [];
touchEvent.push( now - lastTouchStart );
if ( lastTouchEnd ) {
touchEvent.push( lastTouchStart - lastTouchEnd );
}
touchEvents.push( touchEvent );
lastTouchEnd = now;
// Don't record this time as an interval between keypresses.
lastKeydown = null;
lastKeyup = null;
keydowns = {};
}, supportsPassive ? { passive: true } : false );
document.addEventListener( 'scroll', function ( e ) {
if ( scrollCountTimer ) {
clearTimeout( scrollCountTimer );
}
scrollCountTimer = setTimeout( function () {
scrollCount++;
}, 500 );
}, supportsPassive ? { passive: true } : false );
}
/\*\*
\* For the timestamp data that is collected, don't send more than `limit` data points in the request.
\* Choose a random slice and send those.
\*/
function prepare\_timestamp\_array\_for\_request( a, limit ) {
if ( ! limit ) {
limit = 100;
}
var rv = '';
if ( a.length > 0 ) {
var random\_starting\_point = Math.max( 0, Math.floor( Math.random() \* a.length - limit ) );
for ( var i = 0; i < limit && i < a.length; i++ ) {
rv += a[ random\_starting\_point + i ][0];
if ( a[ random\_starting\_point + i ].length >= 2 ) {
rv += "," + a[ random\_starting\_point + i ][1];
}
rv += ";";
}
}
return rv;
}
if ( document.readyState !== 'loading' ) {
init();
} else {
document.addEventListener( 'DOMContentLoaded', init );
}
})();
}
/\*
FILE ARCHIVED ON 08:36:16 May 15, 2024 AND RETRIEVED FROM THE
INTERNET ARCHIVE ON 15:41:14 Dec 03, 2025.
JAVASCRIPT APPENDED BY WAYBACK MACHINE, COPYRIGHT INTERNET ARCHIVE.
ALL OTHER CONTENT MAY ALSO BE PROTECTED BY COPYRIGHT (17 U.S.C.
SECTION 108(a)(3)).
\*/
/\*
playback timings (ms):
captures\_list: 2.711
exclusion.robots: 0.482
exclusion.robots.policy: 0.46
esindex: 0.052
cdx.remote: 7.039
LoadShardBlock: 94.798 (3)
PetaboxLoader3.datanode: 116.463 (5)
PetaboxLoader3.resolve: 294.599 (2)
load\_resource: 383.322
loaddict: 65.517
\*/
