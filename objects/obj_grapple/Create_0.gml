time = 120;

arm = instance_create_layer(x,y,layer,obj_arm);

createORnot = irandom_range(0,1);
if(createORnot == 0) instance_destroy(arm);
