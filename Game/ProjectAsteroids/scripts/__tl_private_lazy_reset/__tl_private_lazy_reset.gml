/// @description  __tl_private_lazy_reset();
/// @function  __tl_private_lazy_reset
function __tl_private_lazy_reset() {

	var reset = global._tw_lazy_todo_reset;
	var size = ds_list_size(reset);
	if (size > 0) {
		for (var i = 0; i < size; i++) {
		    var event = ds_list_find_value(reset, i);
			event[@ TLEVENT.LISTENER] = false;
		}
		ds_list_clear(reset);
	}


}
