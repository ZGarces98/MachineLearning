/// @description  tween_system_roomstart()
/// @function  tween_system_roomstart
function tween_system_roomstart() {
	/**
	 * > **Do not call this script manually**. It will be called automatically by the extension. 
	 */

	// restore all the persistent tweens and tweenlines for the snapshots of the current room
	var g = global._tw_pers_rooms_map;
	if (ds_map_exists(g, room)) {
	    if (room_persistent) {
	        var snapshots = ds_map_find_value(g, room);
			var size = array_length_1d(snapshots);
	        for(var i = 0; i < size; i++) {
	            __tl_private_snapshot_restore(snapshots[i]);
	        }
	    }
	    ds_map_delete(g, room);
	}




}
