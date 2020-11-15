/// @description tweenline_create([vars])
/// @function tweenline_create
/// @param {array} [vars] Optional Vars array. You can use any Var used for a tweenline
/// @return {Tweenline} The new created tweenline instance
function tweenline_create() {
	/**
	 * Creates a new tweenline and returns his index
	 */

	var vars = (argument_count > 0 && is_array(argument[0])) ? argument[0] : [];
	var tweenline = __tl_private_timeline_create(vars);

	tweenline[@ TLTIMELINE.AUTOREMOVECHILDREN] = false;
	tweenline[@ TLTIMELINE.SMOOTHCHILDTIMING] = false;
	tweenline[@ TLANIM.DEBUGARGS] = ["tweenline_create", vars];

	var parent = tweenline[TLANIM.PARENT];
	__tl_private_timeline_add(parent, tweenline, parent[TLANIM.TIME]);

	return tweenline;



}
