/// @description Move Asteroid

var deltatime = global.dt_steady;
x += lengthdir_x(moveSpeed * deltatime, moveDir);
y += lengthdir_y(moveSpeed * deltatime, moveDir);