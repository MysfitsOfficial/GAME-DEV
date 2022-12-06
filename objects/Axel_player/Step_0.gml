/// Movement
// This is what makes your player move

right_move = keyboard_check(ord("D"));
left_move = keyboard_check(ord("A"));
up_move = keyboard_check(ord("W"));
down_move = keyboard_check(ord("S"));

xspeed = (right_move - left_move) * move_speed;
yspeed = (down_move - up_move) * move_speed;




//collisions

if place_meeting(x + xspeed, y, Object_walls) == true

{ 
	xspeed = 0;
	
}

if place_meeting(x, y + yspeed, Object_walls) == true

{ 
	yspeed = 0;
	
}

//Move Speed

x += xspeed;
y += yspeed;

//set sprite

sprite_index = sprite[face]


if yspeed == 0
{
if xspeed > 0 {face = RIGHT};
if xspeed < 0 {face = LEFT};
}
if xspeed > 0 && face == LEFT {face = RIGHT};
if xspeed < 0 && face == RIGHT {face = LEFT};
if xspeed == 0
{
if yspeed > 0 {face = DOWN};
if yspeed < 0 {face = UP};
}
if yspeed > 0 && face == UP{face = DOWN};
if yspeed < 0 && face == DOWN{face = UP};

//facing when animation stops


if keyboard_check_released(ord("A")) {face = FACE_L};
if keyboard_check_released(ord("D")) {face = FACE_R};
if keyboard_check_released(ord("W")) {face = FACE_R};
if keyboard_check_released(ord("S")) {face = FACE_R};




	




