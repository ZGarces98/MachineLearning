/// @description  __tl_private_timeline_add(tweenline, anim, position);
/// @param tweenline - The Timeline object 
/// @param anim - Child Animation to insert
/// @param position - The relative position in which insert the Animation
function __tl_private_timeline_add(argument0, argument1, argument2) {
	/**
	 * @private
	 * Adds an animation inside the timeline at the specified position
	 */

	var _tl = argument0;
	var _a = argument1;
	var position = argument2;

	_a[@ TLANIM.STARTTIME] = position + _a[TLANIM.DELAY];
	if (_a[TLANIM.PARENT] != undefined) {
		__tl_private_timeline_remove(_a[TLANIM.PARENT], _a);	
	}

	_a[@ TLANIM.PARENT] = _tl;
	if (_a[TLANIM.GC]) {
		_a[@ TLANIM.GC] = false;
	}

	var prev = _tl[TLTIMELINE.LAST];
	if (_tl[TLTIMELINE.SORTCHILDREN]) {
		var st = _a[TLANIM.STARTTIME];
		while (prev != undefined && prev[TLANIM.STARTTIME] > st) {
			prev = prev[TLANIM.PREV];
		}
	}

	if (prev != undefined) {
		// Insertion at the middle or end
		_a[@ TLANIM.NEXT] = prev[TLANIM.NEXT];
		prev[@ TLANIM.NEXT] = _a;

	} else {
		// Insertion at the begining
		_a[@ TLANIM.NEXT] = _tl[TLTIMELINE.FIRST];
		_tl[@ TLTIMELINE.FIRST] = _a;
	}

	if (_a[TLANIM.NEXT] != undefined) {
		var next = _a[TLANIM.NEXT];
		next[@ TLANIM.PREV] = _a;
	} else {
		_tl[@ TLTIMELINE.LAST] = _a;
	}
	_a[@ TLANIM.PREV] = prev;


	if (_tl[TLANIM.PARENT] != undefined) {
		__tl_private_anim_uncache(_tl, true);
	}
	return true; 


}
