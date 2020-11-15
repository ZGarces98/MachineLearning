/// @function anim_get_yoyo(anim);
/// @param {Animation} anim The animation
/// @returns {bool} The Animation's yoyo state (true or false)
/// @description 
function anim_get_yoyo(argument0) {
	/**
	 * Gets the animation's `yoyo` state, where `true` causes the tween to go back and forth, 
	 * alternating backward and forward on eachrepeat. 
	 * `yoyo` works in conjunction with `repeat`, where `repeat` controls how many times 
	 * the tween repeats, and `yoyo` controls whether or not each repeat alternates 
	 * direction. So in order to make a tween yoyo, you must set its `repeat` to a 
	 * non-zero value. Yoyo-ing, has no affect on the tween's `"reversed"` property.
	 * For example, if repeat is 2 and yoyo is false, it will look like: 
	 * 
	 * ```
	 * start - 1 - 2 - 3 - 1 - 2 - 3 - 1 - 2 - 3 - end.
	 * ``` 
	 *
	 * But if yoyo is true, it will look like: 
	 * 
	 * ```
	 * start - 1 - 2 - 3 - 3 - 2 - 1 - 1 - 2 - 3 - end.
	 * ```
	 * 
	 * You can set the yoyo property initially by passing `["yoyo", true]"` in the vars 
	 * parameter, like:
	 *
	 * ```
	 * tween_to(obj_box, 1, ["x", 100, "repeat", 1, "yoyo", true]);
	 * ```
	 *
	 * To enable the yoyo mode, and repeat indefinitely, you can pass `["patrol", true]"`
	 * in the vars parameter like this:
	 *
	 * ```
	 * // These two lines does exactly the same: 
	 * tween_to(obj_box, 1, ["x", 100, "patrol", true]);
	 * tween_to(obj_box, 1, ["x", 100, "repeat", -1, "yoyo", true]);
	 * ```
	 *
	 */
	return argument0[TLANIM.YOYO];


}
