/// @description tweenline_remove(value [,destroyTween=false])
/// @function tweenline_remove
/// @param value
function tweenline_remove() {
	/**
	 * Removes a tween or label from the last created tweenline or the tweenline 
	 * that is currently in edit mode. See {@linkcode tweenline_edit} for more info about edit mode.
	 * 
	 * If you pass a tween as an argument, the script will find 
	 * the parent of the tween for you, so you don't need to worry to 
	 * call {@linkcode tweenline_edit}. 
	 * 
	 * If you pass a label (a string), you need to first call 
	 * {@linkcode tweenline_edit} to tell Tweenline engine which tweenline do you want to edit
	 * 
	 * @param {Tween|Tweenline|string} value
	 * A tween, tweenline or label (string) to remove from the timeline
	 * 
	 * @example
	 * // Remove the tween my_tween from his parent tweenline
	 * tweenline_remove( my_tween);
	 * 
	 * // Removes the label "mylabel" from the tweenline my_tweenline
	 * tweenline_edit(my_tweenline);
	 * tweenline_remove("mylabel");
	 * 
	 */


	var value = argument[0]; 

	if (is_tween(value)) {
		__tl_private_timeline_remove(value[TLANIM.PARENT], value);
	} else {
		// var tweenline = global._tw_current_creation_tl;
	
		// Todo: add remove label
	}


}
