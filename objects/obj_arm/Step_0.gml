image_xscale = (sqrt(sqr(obj_parasite.x-x)+sqr(obj_parasite.y-y)))/64;
phy_rotation = -point_direction(phy_position_x,phy_position_y,obj_parasite.x,obj_parasite.y);
if(distance_to_object(obj_parasite) > 200) instance_destroy();
