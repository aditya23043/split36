projection()
difference(){
    minkowski(){
        linear_extrude(1.4)
            projection()
            import("pcb_without_holes.stl");
        cylinder(r=5, h=0.1);
    }
    difference(){
        import("pcb_without_holes.stl");
        import("pcb_with_mounting_holes.stl");
    };
};

/* difference(){ */
/*     translate([10, -120, 0]) */
/*     cube([140, 105, 1.5]); */
    
/*     translate([-80, 20, 0]) */
/*     import("mesh_bottom.stl"); */
/* } */
