/// @description tweenline_edit( tweenline );
/// @function tweenline_edit
/// @param {Tweenline} tweenline The tweenline to be edited 
function tweenline_edit(argument0) {
	/**
	 * 
	 * Sets the tweenline specified marked to be edited. All posterior calls 
	 * to {@linkcode tweenline_add}, {@linkcode tweenline_to}, {@linkcode tweenline_from}, {@linkcode tweenline_fromto} and
	 * {@linkcode tweenline_remove} will be applied to the specified tweenline.
	 * 
	 * > Note: Unexpected results can ocurr if you modify an already defined tweenline.
	 * 
	 * > Note: You do not need to use this function if you are creating a tweenline for the first time.
	 * > Please refer to {@linkcode tweenline_create} for more info about creating tweenlines.
	 * 
	 * 
	 * @example
	 * /// Create event
	 * twenline = tweenline_create();
	 * tweenline_to( ... ); //first define your tweenline as you usually do
	 * tweenline_to( ... );
	 * tweenline_to( ... );
	 * 
	 * // mouse left click event
	 * tweenline_edit(tweenline); //when you have to edit your tweenline, call tweenline_edit
	 * tweenline_to( ... ); // then, you can alter the existing tweenline
	 * tweenline_add( ... );
	 * tweenline_from( ... );
	 * tweenline_remove( ... );
	 * 
	 */

	// (Yes, a lot of documentation for this only line of code) 
	if (is_tweenline(argument0)) { global._tw_current_creation_tl = argument0;}



}
