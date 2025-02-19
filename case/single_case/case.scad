SCREW_R = 1.8;
PADDING = 1.5;
$fn=50;

module screw_mount(x, y, z){
    translate([x,y,z-1.5])
    difference(){
        cylinder(h=3,r=SCREW_R+PADDING);
        translate([0,0,-1])
            cylinder(h=4,r=SCREW_R);
    };
}

module sub_sc(x,y,z){
    translate([x,y,z-1.5])
        translate([0,0,-1])
            cylinder(h=4,r=SCREW_R);
}

difference(){
    
    union(){
        difference(){
            minkowski(){
                import("../pcb_without_holes.stl");
                sphere(5);
            }
            linear_extrude(5+1.5)
                projection()
                import("../pcb_without_holes.stl");
            sub_sc(37.1,-63.7,1.5);
            sub_sc(56.2,-39.9,1.5);
            sub_sc(74.2,-59,1.5);
            sub_sc(93.2,-82.7,1.5);
            sub_sc(114.1,-32.7,1.5);
            sub_sc(127.4,-87.1,1.5);
        };
        screw_mount(37.1,-63.7,1.5);
        screw_mount(56.2,-39.9,1.5);
        screw_mount(74.2,-59,1.5);
        screw_mount(93.2,-82.7,1.5);
        screw_mount(114.1,-32.7,1.5);
        screw_mount(127.4,-87.1,1.5);

//  6.5 - 3 - 1.6 = 1.9
    }

    translate([140,-94.5,3+1.6])
        cube([10, 10, 5+1.5]);

};

/* translate([-80,20,1.5+1.5]) */
/* import("../mesh.stl"); */

/* import("../pcb_with_mounting_holes.stl"); */

/* #translate([37.1,-63.7,1.5]) */
/*     cylinder(h=2,r=1.1); */
/* #translate([56.2,-39.9,1.5]) */
/*     cylinder(h=2,r=1.1); */
/* #translate([74.2,-59,1.5]) */
/*     cylinder(h=2,r=1.1); */
/* #translate([93.2,-82.7,1.5]) */
/*     cylinder(h=2,r=1.1); */
/* #translate([114.1,-32.7,1.5]) */
/*     cylinder(h=2,r=1.1); */
/* #translate([127.4,-87.1,1.5]) */
/*     cylinder(h=2,r=1.1); */
