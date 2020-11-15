/// @description Move shot

var deltatime = global.dt_steady;

// Next position 
hsp = lengthdir_x(shootspeed * deltatime, image_angle);
vsp = lengthdir_y(shootspeed * deltatime, image_angle);

x += hsp;
y += vsp;

