/// @function __tl_private_snapshot_restore(snapshot)
/// @param snapshot
function __tl_private_snapshot_restore(argument0) {

	var _s = argument0;

	var parent = _s[TLSNAPSHOT.PARENT];
	var time = parent[TLANIM.TIME] - _s[TLSNAPSHOT.TIME];
	var anims = _s[TLSNAPSHOT.ANIMS];

	var size = array_length_1d(anims);
	for (var i = 0; i < size; i++) {
		var anim = anims[i];	
		__tl_private_timeline_add(parent, anim, anim[TLANIM.STARTTIME] + time);
	}




}
