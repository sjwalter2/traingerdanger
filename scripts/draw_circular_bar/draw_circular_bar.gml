/// draw_circular_bar(x ,y ,value, max, colourStart, colourFinish, radius, transparency, width)

if (argument2 > 0) { // no point even running if there is nothing to display (also stops /0
    var i, len, tx, ty, val;
    
    var numberofsections = 60 // there is no draw_get_circle_precision() else I would use that here
    var sizeofsection = 360/numberofsections
    
    val = (argument2/argument3) * numberofsections 
    
    if (val > 1) { // HTML5 version doesnt like triangle with only 2 sides 
    
        piesurface = surface_create(argument6*2,argument6*2)
            
        draw_set_colour(merge_color(argument5,argument4,(argument2/argument3)));
        draw_set_alpha(argument7);
        
        surface_set_target(piesurface)
        
        draw_clear_alpha(c_blue,0.7)
        draw_clear_alpha(c_black,0)
        
        draw_primitive_begin(pr_trianglefan);
        draw_vertex(argument6, argument6);
        
        for(i=0; i<=val; i++) {
            len = (i*sizeofsection)+90; // the 90 here is the starting angle
            tx = lengthdir_x(argument6, len);
            ty = lengthdir_y(argument6, len);
            draw_vertex(argument6+tx, argument6+ty);
        }
        
        draw_primitive_end();
        
        draw_set_alpha(1);
        

		gpu_set_blendmode(bm_subtract)
        draw_set_colour(c_black)
        draw_circle(argument6-1, argument6-1,argument6-argument8,false)
        gpu_set_blendmode(bm_normal)

        surface_reset_target()
     
        draw_surface(piesurface,argument0-argument6, argument1-argument6)
        
        surface_free(piesurface)
        
    }
    
}