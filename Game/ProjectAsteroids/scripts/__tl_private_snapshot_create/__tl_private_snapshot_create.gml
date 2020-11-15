/// @function __tl_private_snapshot_create(parent)
/// @param parent
function __tl_private_snapshot_create(argument0) {


	enum TLSNAPSHOT {
		PARENT,
		TIME,
		ANIMS,
	}

	var parent = argument0;
	var anim = parent[TLTIMELINE.FIRST];
	var anims_arr = [],  i = 0;
	while (anim != undefined) {
		anims_arr[i++] = anim;
		__tl_private_timeline_remove(parent, anim);
		anim = anim[TLANIM.NEXT];
	
	}

	var _s;
	_s[TLSNAPSHOT.PARENT] = parent;
	_s[TLSNAPSHOT.TIME] = parent[TLANIM.TIME];
	_s[TLSNAPSHOT.ANIMS] = anims_arr;
	return _s;





}
