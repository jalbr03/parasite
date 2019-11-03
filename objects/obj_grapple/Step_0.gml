if(distance_to_object(obj_parasite) > obj_levelMAN.range){
	if(instance_exists(arm))arm.retract = true;
	instance_destroy();
}

if(obj_parasite.sling == 0 && obj_parasite.is_mind_control == 0){
	if(alarm[0] == -1) alarm[0] = time;
}else{
	alarm[0] = time;
}