/// __tl_private_timeline_labels_save(tweenline)
function __tl_private_timeline_labels_restore(argument0) {

	var tweenline = argument0; 
	var labels = tweenline[TLTIMELINE.LABELS];

	if (!is_array(labels)) {
		return;	
	}

	var map = ds_map_create();
	var list = ds_list_create();
	var size = array_length_1d(labels);
	for(var i = 0; i < size; i++) {
		var label = labels[i];
		ds_map_add(map, label[0], label[1]);
		ds_list_add(list, label);
	}

	tweenline[@ TLTIMELINE.LABELS] = map;
	tweenline[@ TLTIMELINE.LABELS_LIST] = list;


}
