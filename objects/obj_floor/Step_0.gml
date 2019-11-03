if(obj_parasite.sling == 1){
	if(distance_to_object(obj_parasite) < range && !place_meeting(x,y,obj_grapple)
		|| distance_to_object(obj_cursor) < range && !place_meeting(x,y,obj_grapple))
		instance_create_layer(x,y,layer,obj_grapple);
}