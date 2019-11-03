if(retract == false){
	if(image_xscale < (sqrt(sqr(startx-x)+sqr(starty-y)))/64) image_xscale += 0.1;
	if(image_xscale > (sqrt(sqr(startx-x)+sqr(starty-y)))/64) image_xscale -= 0.1;
	if(x > startx+200 || x < startx-200) retract = true;
}else{
	image_xscale -= 0.2;
}
if(image_xscale <= -0.1) instance_destroy();
phy_rotation = -point_direction(phy_position_x,phy_position_y,startx,starty);

phy_position_x = obj_parasite.x;
phy_position_y = obj_parasite.y;
/*
if(image_xscale < (sqrt(sqr(obj_parasite.x-x)+sqr(obj_parasite.y-y)))/64) image_xscale += 0.1;
if(image_xscale > (sqrt(sqr(obj_parasite.x-x)+sqr(obj_parasite.y-y)))/64) image_xscale -= 0.1;
phy_rotation = -point_direction(phy_position_x,phy_position_y,obj_parasite.x,obj_parasite.y);
if(distance_to_object(obj_parasite) > 200) instance_destroy();
