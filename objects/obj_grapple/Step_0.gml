if(distance_to_object(obj_parasite) > 200){
	if(instance_exists(arm))arm.retract = true;
	instance_destroy();
}