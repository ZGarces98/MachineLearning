/// @description  tweenline_clear(tweenline);
/// @param {Tweenline} tweenline - The Tweenline to clear
function tweenline_clear() {
	/**
	 * Deletes all childs of the specified tweenline without deleting the tweenline.
	 */

	var _t = argument[0];
	var _a = _t[TLTIMELINE.FIRST];
	while (_a != undefined) {
		var next = _a[TLANIM.NEXT]
		anim_destroy(_a);
		_a = next;
	}




}
