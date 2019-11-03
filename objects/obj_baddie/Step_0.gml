left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
var move = right-left;


if(isMindControl == false){
	//phy_linear_velocity_x += 0;
}if(isMindControl == true){
	phy_position_x += move*2;
	if(move != 0 && phy_linear_velocity_x <= 0.01){
		phy_position_x += move*2;
	}
}