/// @description Insert description here
// You can write your code in this editor

suma += veloc;

if (suma == 1) veloc =-veloc;

if (suma < 0) veloc = 0.05;

y = ystart + sin(get_timer()/500000)*10;