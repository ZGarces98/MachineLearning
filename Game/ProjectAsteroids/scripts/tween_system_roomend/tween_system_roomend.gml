/// @description  tween_system_roomend()
/// @function  tween_system_roomend
function tween_system_roomend() {
	/**
	 * > **Do not call this script manually**. It will be called automatically by the extension. 
	 */

	if (room_persistent) {
	    // Store ALL the anims in a array of snapshots and save it on a ds_map.
		var snapshots;
		snapshots[0] = __tl_private_snapshot_create(global._tw_tl_FRAMES);
		snapshots[1] = __tl_private_snapshot_create(global._tw_tl_SECONDS);
		ds_map_add(global._tw_pers_rooms_map, room, snapshots);
	} else {
		__tl_private_timeline_gc(global._tw_tl_FRAMES);
		__tl_private_timeline_gc(global._tw_tl_SECONDS);	
	}




}
