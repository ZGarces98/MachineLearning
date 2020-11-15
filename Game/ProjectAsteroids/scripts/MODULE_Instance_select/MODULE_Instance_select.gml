function MODULE_Instance_select() {
	/**
	 * The instance select functions can be used without the Tweenline Engine, but 
	 * they are useful when you combine them with `tween_stagger_*` functions.
	 *
	 * They are used to create an array of instances
	 *
	 * For example: 
	 *
	 * ```
	 * // First create an array with obj_box_small1 and obj_box_small3 objects's ids.
	 * var inst = [obj_box_small1, obj_box_small3];
	 * 
	 * // Then, pass the array, and filter each instance by the x position
	 * // It has to be less than ("<")
	 * // the value of the x position of the yellow box (obj_box_small2.x)
	 * // Then, sort the result by the y position value of each box in ascending
	 * var arr = instance_select_filter_sort(inst, "x", "<", obj_box_small2.x, "y");
	 * 
	 * // Finally, you can stagger all instances: (grouped by waves of 10 instances)
	 * tween_arr = tween_stagger_to(arr, 2, ["angle",360, "blend",c_red], .5, 10); 
	 * ```
	 * 
	 *
	 *
	 */


}
