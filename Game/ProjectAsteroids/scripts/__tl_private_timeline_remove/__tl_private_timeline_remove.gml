/// @description  __tl_private_timeline_remove(tweenline, anim, skipDisable);
/// @param {Tweenline} tweenline - The Timeline object 
/// @param {Animation} anim      - Child Animation to insert
function __tl_private_timeline_remove(argument0, argument1) {
	/**
	 * @private
	 * Removes the animation from the timeline
	 */
	var _tl = argument0;
	var _a = argument1;


	if (_a[TLANIM.PARENT] != _tl) {
		return false;
	}

	var prev = _a[TLANIM.PREV];
	var next = _a[TLANIM.NEXT];
	
	if (prev != undefined) {
		prev[@ TLANIM.NEXT] = next;
	} else if (_tl[TLTIMELINE.FIRST] == _a) {
		_tl[@ TLTIMELINE.FIRST] = next;
	}

	if (next != undefined) {
		next[@ TLANIM.PREV] = prev;
	} else if (_tl[TLTIMELINE.LAST] == _a) {
		_tl[@ TLTIMELINE.LAST] = prev;
	}

	_a[TLANIM.PREV] = undefined;
	_a[TLANIM.NEXT] = undefined;
	//_a[TLANIM.PARENT] = undefined;

	__tl_private_anim_uncache(_tl, true);

	return true;


}
