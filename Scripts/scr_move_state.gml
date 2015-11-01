///scr_move_state
scr_get_input();

///Get the axis
xaxis = (right_key - left_key);
yaxis = (down_key - up_key);

///Get direction
var dir = point_direction(0, 0, xaxis, yaxis)

//Get Length
if (xaxis == 0 && yaxis == 0) {
    len = 0;    
} else {
    len = spd;
}

///Move
hspd = lengthdir_x(len, dir);
vspd = lengthdir_y(len, dir);

phy_position_x += hspd;
phy_position_y += vspd;
