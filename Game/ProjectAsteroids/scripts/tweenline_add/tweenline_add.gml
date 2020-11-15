/// @description  tweenline_add( value [, position="+=0"]);
/// @function  tweenline_add
/// @param  value
/// @param  [position="+=0"]
/// @returns {boolen/undefined} True if all is ok, or undefined if there is any error.
function tweenline_add() {
	/**
	 * @description
	 * Adds a tween or label to the last tweenline created or the tweenline 
	 * that is currently in edit mode. See tweenline_edit for more info about edit mode.
	 *      
	 * @param {Anim|string} value 
	 * The tween, tweenline or label (string) to add to the tweenline
	 * 
	 * @param {real|string} [position="+=0"]
	 * The position parameter gives you complete control over the insertion point. By default, it's at the end 
	 * of the timeline. 
	 *
	 * Use a number to indicate an absolute time in terms of seconds (or frames for frames-based 
	 * timelines), or you can use a string with a `"+="` or `"-="` prefix to offset the insertion point relative 
	 * to the END of the timeline. For example, `"+=2"` would place the object 2 seconds after the end, leaving 
	 * a 2-second gap. `"-=2"` would create a 2-second overlap. 
	 *
	 * You may also use a label like `"mylabel"` to have the object inserted exactly at the label or combine a 
	 * label and a relative offset like `"mylabel+=2"` to insert the object 2 seconds after `"myLabel"` or `"myLabel-=3"` 
	 * to insert it 3 seconds before `"myLabel"`. 
	 * If you define a label that doesn't exist yet, it will automatically be added to the end of the timeline 
	 * before inserting the tween which can be quite convenient.
	 *
	 * You can also use the special strings `"_end"` and `"_start"` (or `"_end+=3"` or `"_start-=1.4"`) to 
	 * reference to the end time and start time of the last tween added to the tweenline (which not allways is 
	 * the same as the total duration of the tweenline).
	 *            
	 *     
	 *             
	 *             
	 * @example
	 * // Adds the tween at 3 seconds in absolute position of the tweenline
	 * tweenline_add(tween, 3);
	 *             
	 * // Adds the tween 2 seconds after the end of the tweenline
	 * tweenline_add(tween, "+=2");
	 *             
	 * // Adds the tween 0.3 seconds before the end of the tweenline
	 * tweenline_add(tween, "-=.3");
	 *             
	 * // Adds the tween at the position of "myLabel" (if it doesn't exists, it will be automatically created at the end of the timeline, in the same position of the tween)
	 * tweenline_add(tween, "myLabel");
	 *             
	 * // Adds the tween half second after "myLabel"
	 * tweenline_add(tween, "myLabel+=.5");
	 *             
	 * // Adds the label named "otherlabel" 1.5 seconds before "myLabel"
	 * tweenline_add("otherlabel", "myLabel-=1.5");
	 *             
	 * // Adds the tween a half second before the end of the last tween added on the current tweenline ("_end-=0.5" is also valid)
	 * tweenline_add(tween, "_end-=.5");
	 *         
	 * // Adds the tween four seconds after the start of the last tween added on the current tweenline
	 * tweenline_add(tween, "_start-=4");    
	 *             
	 */      

	var tweenline = global._tw_current_creation_tl;

	if (!is_tweenline(tweenline)) {
	    return __tl_private_error(undefined, "tweenline_add. You are not editing a tweenline. You need to create first a tweenline with tweenline_create() or edit an existing tweenline with tweenline_edit(tl)");
	}


	var pos = (argument_count > 1) ? argument[1] : undefined;
	var value = argument[0];

	if (tweenline == value) {
		return __tl_private_error(tweenline, "tweenline_add. Cannot add the tweenline to itself. Are you sure you are editing the correct tweenline? Use tweenline_edit(tl) to change the current editing tweenline.");
	}
	var position = __tl_private_timeline_parse_position(tweenline, pos) 
	


	if (is_string(value)) {
		return __tl_private_timeline_label_find_or_create(tweenline, value, position);
	} else {
		return __tl_private_timeline_add(tweenline, value, position);
	}


}
