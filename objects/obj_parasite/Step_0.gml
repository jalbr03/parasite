sling = mouse_check_button(mb_left);
mind_control = mouse_check_button_pressed(mb_right);
is_mind_control = mouse_check_button(mb_right);
//move
if(sling){
	//if(!instance_exists(obj_range_finder)) instance_create_layer(x,y,layer,obj_range_finder);
	if(instance_exists(obj_grapple)){
		if(sign(phy_linear_velocity_x) != sign(mouse_x - x))phy_linear_velocity_x += (sign(mouse_x - x)*spd*3);
		else phy_linear_velocity_x += (sign(mouse_x - x)*spd);
		if(sign(phy_linear_velocity_y) != sign(mouse_y - y))phy_linear_velocity_y += (sign(mouse_y - y)*spd*3);
		else phy_linear_velocity_y += (sign(mouse_y - y)*spd);
		targetx = phy_position_x;
		targety = phy_position_y;
	}
}else{
	//instance_destroy(obj_range_finder);
	if(instance_exists(obj_grapple)){
		phy_linear_velocity_x += sign(targetx-x)*2;
		phy_linear_velocity_y += sign(targety-y)*2;
	}
}
//sling check
if(instance_number(obj_grapple)>6){
	instance_find(obj_grapple,0);
}

//mind control
if(mind_control && !sling){
	target = instance_nearest(mouse_x,mouse_y,obj_baddie);
	//instance_destroy(obj_grapple);
	if(distance_to_object(target) < mind_controlrange){
		target.isMindControl = true;
	}else{
		target.isMindControl = false;
	}
}if(distance_to_object(target) > mind_controlrange){
	target.isMindControl = false;
}if(!is_mind_control || sling){
	target.isMindControl = false;
}