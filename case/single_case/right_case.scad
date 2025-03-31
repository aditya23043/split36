SCREW_R = 1.8;
PADDING = 1.5;
$fn=50;

module screw_mount(x, y, z){
    translate([x,y,z-1.5-3])
    difference(){
        cylinder(h=3,r=SCREW_R+PADDING);
        translate([0,0,-1])
            cylinder(h=4,r=SCREW_R);
    };
}

module sub_sc(x,y,z){
    translate([x,y,z-1.5-3])
        translate([0,0,-1])
            cylinder(h=4,r=SCREW_R);
}

/* color("#cd0245") */
mirror([1,0,0]){
difference(){
    
    union(){
        difference(){
            minkowski(){
                import("../pcb_without_holes.stl");
                sphere(5);
            }

            minkowski(){
                translate([0,0,-3])
                linear_extrude(5+1.5+3)
                    projection()
                    import("../pcb_without_holes.stl");

                cube([2,2,2], center=true);
            }
            /* translate([0,0,-3]) */
            /* #linear_extrude(5+1.5+3) */
            /*     projection() */
            /*     import("../pcb_without_holes.stl"); */
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

    translate([140,-94.5,3+1.6-4.0])
        cube([10, 10, 5+1.5+5]);

    translate([124.5,-29,3+1.6-3])
        cube([10, 10, 5+1.5+5]);

};
}

/* color("#aaaaaa") */
/* translate([-80,20,1.5+1.5-3]) */
/* import("../mesh.stl"); */

/* #translate([94,-47,3+1.6-3]) */
/*     cube([19.05, 19.05, 3]); */

/* color("#e06c75aa"){ */

/* translate([103,-37.5,13-(3.5*$t)]) */
/* rotate([90,0,0]) */
/* import("../dsa.stl"); */

/* translate([103,-37.5-19.05,13-(3.5*$t)]) */
/* rotate([90,0,0]) */
/* import("../dsa.stl"); */

/* } */


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


/* #translate([0,-130,5+1.5]) */
/* import("/mnt/hdd/repo/split_keyboard/electroholics/split/repo/split-Edge_Cuts.svg"); */

