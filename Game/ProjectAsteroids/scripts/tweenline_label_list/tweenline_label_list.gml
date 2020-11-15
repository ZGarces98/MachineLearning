/// @description tweenline_label_list( tweenline );
/// @function tweenline_label_list
/// @param {Tweenline} tweenline A tweenline instance
/// @returns {ds_list} A new ds list with all the labels present.
function tweenline_label_list(argument0) {
	/**
	 * Returns a {@link https://docs2.yoyogames.com/source/_build/3_scripting/4_gml_reference/data_structures/ds%20lists/index.html ds_list}
	 * with all the labels inside the tweenline. You should delete it when no longer in use.
	 */

	var d = ds_list_create();
	ds_list_copy(d, argument0[TLTIMELINE.LABELS_LIST]);
	return d;




}
