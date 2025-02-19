/* difference(){ */
/*     translate([10, -120, 0]) */
/*     cube([140, 105, 1.5]); */
    
/*     translate([-80, 20, 0]) */
/*     import("mesh_bottom.stl"); */
/* } */

// required for perfect size but its laggy
/* linear_extrude(1.5){ */
/*     projection(){ */
        union(){
            keyswitch_holes();
            pico_holes();
            /* mounting_holes(); */
            trrs_holes();
            translate([-80, 20, 0])
            import("mesh_bottom.stl");
        }
    /* } */
/* } */

module keyswitch_holes() {
    translate([20,-52,0])
        cube([14,14,1.6]);
    translate([20,-71,0])
        cube([14,14,1.6]);
    translate([20,-90,0])
        cube([14,14,1.6]);

    translate([39,-42,0])
        cube([14,14,1.6]);
    translate([39,-61,0])
        cube([14,14,1.6]);
    translate([39,-80,0])
        cube([14,14,1.6]);

    translate([58,-38,0])
        cube([14,14,1.6]);
    translate([58,-57,0])
        cube([14,14,1.6]);
    translate([58,-76,0])
        cube([14,14,1.6]);

    translate([77,-42,0])
        cube([14,14,1.6]);
    translate([77,-61,0])
        cube([14,14,1.6]);
    translate([77,-80,0])
        cube([14,14,1.6]);
    translate([78,-102,0])
        cube([14,14,1.6]);

    translate([96,-44,0])
        cube([14,14,1.6]);
    translate([96,-63,0])
        cube([14,14,1.6]);
    translate([96,-82,0])
        cube([14,14,1.6]);
    translate([99,-105,0])
        cube([14,14,1.6]);

    translate([121,-110,0])
        cube([14,14,1.6]);
}
module pico_holes() {
    translate([119,-81,0]){
        cube([3, 51, 1.6]);
    }
    translate([137,-81,0]){
        cube([3, 51, 1.6]);
    }
    translate([126,-81,0]){
        cube([8, 3, 1.6]);
    }
}
module mounting_holes(){
    linear_extrude(1.6){
        translate([114,-33,0])
            circle(r=3);
        translate([127,-87,0])
            circle(r=3);
        translate([93,-83,0])
            circle(r=3);
        translate([74,-59,0])
            circle(r=3);
        translate([56,-40,0])
            circle(r=3);
        translate([37,-64,0])
            circle(r=3);
    }
}
module trrs_holes(){
    linear_extrude(1.6){
        translate([135,-89,0])
            circle(r=1);
        translate([142,-89,0])
            circle(r=1);
    }
}
