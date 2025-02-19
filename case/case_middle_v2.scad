SCREW_R = 1.1;


module something(){

    difference(){
        minkowski(){
            linear_extrude(1.4)
                projection()
                import("pcb_without_holes.stl");
            cylinder(r=5, h=0.1);
        }
        import("pcb_without_holes.stl");

        translate([15,-38,0])
            cylinder(h=1.5,r=SCREW_R);
        translate([15,-89,0])
            cylinder(h=1.5,r=SCREW_R);
    }
}

render()
something();
