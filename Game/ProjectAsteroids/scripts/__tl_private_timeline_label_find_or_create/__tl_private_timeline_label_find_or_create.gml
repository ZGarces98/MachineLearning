/// __tl_private_timeline_label_find_or_create(timeline, label, position); 
/// @param {Tweenline} timeline
/// @param {string} label
/// @param {real|undefined} position
/// @returns {real} The time of the label 
function __tl_private_timeline_label_find_or_create(argument0, argument1, argument2) {
	/**
	 * @private
	 * Finds or creates a label and returns the time of the created/found label
	 */

	var tweenline = argument0; 
	var label = argument1; 
	var position = argument2 != undefined ? argument2 : tweenline[TLANIM.DURATION];
	var map = tweenline[TLTIMELINE.LABELS];
	if (ds_map_exists(map, label)) { 
		return ds_map_find_value(map, label);
	} else { // If the label doesn't exists, add it
		var list = tweenline[TLTIMELINE.LABELS_LIST];
		ds_map_add(map, label, position);
		ds_list_add(list, label);
		return tweenline[TLANIM.DURATION]; 
	}


}
