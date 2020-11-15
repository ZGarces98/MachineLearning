/// __tl_private_timeline_labels_restore(tweenline)
function __tl_private_timeline_labels_save(argument0) {

	var tweenline = argument0; 
	var list = tweenline[TLTIMELINE.LABELS_LIST];
	var map = tweenline[TLTIMELINE.LABELS];
	var labels = [];

	if (is_undefined(list)) {
		return;	
	}

	var map = ds_map_create();
	var list = ds_list_create();
	var size = ds_list_size(list);
	for(var i = 0; i < size; i++) {
		var name = ds_list_find_value(list, i);
		var value = ds_map_find_value(map, name);
		labels[i] = [name, value];
	}

	ds_map_destroy(map);
	ds_list_destroy(list);

	tweenline[@ TLTIMELINE.LABELS] = labels;
	tweenline[@ TLTIMELINE.LABELS_LIST] = undefined;


}
