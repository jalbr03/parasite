draw_self();

//mind control
if(is_mind_control && !sling){
	if(distance_to_object(target) < mind_controlrange) draw_line(x,y,target.x,target.y);
}
