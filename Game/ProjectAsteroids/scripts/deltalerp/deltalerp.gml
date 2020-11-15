/// @description time factor lerp
/// @param a
/// @param b
/// @param amount
/// @param delta
function deltalerp(argument0, argument1, argument2, argument3) {

	return lerp( argument0, argument1, 1 - power( 1 -argument2, argument3));


}
