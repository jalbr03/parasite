if(distance_to_object(obj_parasite) > obj_levelMAN.range){
	if(instance_exists(arm))arm.retract = true;
	instance_destroy();
}