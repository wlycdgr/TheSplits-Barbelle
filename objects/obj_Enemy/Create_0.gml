/// @description
x = 140 + random(1000);
y = 60 + random(60);

var total_speed = 4;
hspeed = 1 + random(2);
vspeed = total_speed - hspeed;
hspeed *= choose(-1, 1);
vspeed *= choose(-1, 1);

color = make_color_rgb(255, 57, 103);