sling = mouse_check_button(mb_left);
mind_control = mouse_check_button(mb_right);

//move
if(sling){
	if(!instance_exists(obj_range_finder)) instance_create_layer(x,y,layer,obj_range_finder);
	if(instance_exists(obj_grapple)){
		phy_linear_velocity_x += sign(mouse_x - x)*5;
		phy_linear_velocity_y += sign(mouse_y - y)*5;
	}
}else{
	instance_destroy(obj_range_finder);
}
//sling check
if(instance_number(obj_grapple)>6){
	instance_find(obj_grapple,0);
}

//mind control
if(mind_control && !sling){
	target = instance_nearest(mouse_x,mouse_y,obj_baddie);
	instance_destroy(obj_grapple);
	if(distance_to_object(target) < mind_controlrange){
		target.isMindControl = true;
	}else{
		target.isMindControl = false;
	}
}