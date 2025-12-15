/// @description Insert description here

var _spinx = 30*cos(t);
var _spiny = 30*sin(t);

id_test.x = 360 + _spinx;
id_test.y = 360 + _spiny;

t += 0.1;
if(t > 2*pi) t = 0;