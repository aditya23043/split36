SCREW_R = 1.8;
PADDING = 1.5;
$fn=50;

module screw_mount(){
    difference(){
        translate([40,-40,0])
            cylinder(h=3,r=SCREW_R+PADDING);
        translate([40,-40,0])
            cylinder(h=3,r=SCREW_R);
    };
}

union(){
    difference(){
        minkowski(){
            import("../pcb_without_holes.stl");
            sphere(5);
        }
        linear_extrude(5+1.5)
            projection()
            import("../pcb_without_holes.stl");
    };
}

import("../pcb_with_mounting_holes.stl");

#translate([37.1,-63.7,1.5])
    cylinder(h=2,r=1.1);
#translate([56.2,-39.9,1.5])
    cylinder(h=2,r=1.1);
#translate([74.2,-59,1.5])
    cylinder(h=2,r=1.1);
#translate([93.2,-82.7,1.5])
    cylinder(h=2,r=1.1);
