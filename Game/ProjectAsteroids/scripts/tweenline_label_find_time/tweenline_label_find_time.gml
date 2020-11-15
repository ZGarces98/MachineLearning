/// @description  tweenline_label_find_time( tweenline, labelname );
/// @function  tweenline_label_find_time
/// @param {Tweenline} tweenline The tweenline instance
/// @param {string} labelname The label name
/// @returns {real} The time of the label on the tweenline (if found)
function tweenline_label_find_time(argument0, argument1) {
	/**
	 * Returns the time of the label `labelname` in the specified tweenline.
	 * If not found, `undefined` is returned.
	 */


	return ds_map_find_value(argument0[TLTIMELINE.LABELS], argument1);





}
