$fn=10;

module hole(x, y, z, h=3) {
	translate([x, y, z]) {
		cylinder(h=h, r2=3.9/2, r1=3.3/2, center=true);
	}
}

module hole2(x, y, z, h=2){
	translate([x, y, z]) {
		cylinder(h=h, r=2.2/2, center=true);
	}
}

module screws() {
	translate([-90.37,150.37,1.5]){
		hole(117.072, -83.686, 0);
		hole(136.172, -59.886, 0);
		hole(154.172, -78.986, 0);
		hole(173.172, -102.686, 0);
		hole(194.072, -52.686, 0);
		hole(207.373, -107.086, 0);
	}
}


union(){
	difference(){
		// main outer
		linear_extrude(3.5+3+3.5){
			offset(6){
				import("/mnt/hdd/repo/split_keyboard/electroholics/split/split-Edge_Cuts.svg");
			}
		}
		// inner -
		translate([0,0,3.0]){
			linear_extrude(3.5+3.5){
				import("/mnt/hdd/repo/split_keyboard/electroholics/split/split-Edge_Cuts.svg");
			}
		}
		// screw holes
		screws();

		hole(130, 106-0.1,3+3.5+1.5,4);
		hole(87, 106-0.1,3+3.5+1.5,4);
		hole(22, 99,3+3.5+1.5,4);
		hole(4-0.5, 70,3+3.5+1.5,4);
		hole(16, 35-0.2,3+3.5+1.5,4);
		hole(61, 35-0.2,3+3.5+1.5,4);
		hole(137-0.3, 70,3+3.5+1.5,4);
		hole(110, 14+0.5,3+3.5+1.5,4);
	};

	// holds pcb
	translate([-10.5,0,3]){
		linear_extrude(3.5-1.6){
			import("/mnt/hdd/repo/split_keyboard/electroholics/split/repo/split-Edge_Cuts.svg");
		}
	}
}

difference(){

	translate([0,0,30]){
		difference(){

			linear_extrude(1.5){
				offset(6){
					import("/mnt/hdd/repo/split_keyboard/electroholics/split/split-Edge_Cuts.svg");
				}
			}
			hole2(130, 106-0.1,3+3.5+1.5-6,4);
			hole2(87, 106-0.1,3+3.5+1.5-6,4);
			hole2(22, 99,3+3.5+1.5-6,4);
			hole2(4-0.5, 70,3+3.5+1.5-6,4);
			hole2(16, 35-0.2,3+3.5+1.5-6,4);
			hole2(61, 35-0.2,3+3.5+1.5-6,4);
			hole2(137-0.3, 70,3+3.5+1.5-6,4);
			hole2(110, 14+0.5,3+3.5+1.5-6,4);
		}
	}

	translate([9.75,40.75,30])
		cube([14, 14, 1.5]);

	translate([9.75,40.75+14+4+1,30])
		cube([14, 14, 1.5]);

	translate([9.75,40.75+14+4+1+14+5,30])
		cube([14, 14, 1.5]);

	//

	translate([9.75+14+5,40.75+(19.05/2),30])
		cube([14, 14, 1.5]);

	translate([9.75+14+5,40.75+(19.05/2)+14+5,30])
		cube([14, 14, 1.5]);

	translate([9.75+14+5,40.75+(19.05/2)+14+5+14+5,30])
		cube([14, 14, 1.5]);

	//

	translate([9.75+14+5+14+5,40.75+(19.05/2)+(19.05/4),30])
		cube([14, 14, 1.5]);

	translate([9.75+14+5+14+5,40.75+(19.05/2)+(19.05/4)+14+5,30])
		cube([14, 14, 1.5]);

	translate([9.75+14+5+14+5,40.75+(19.05/2)+(19.05/4)+14+5+14+5,30])
		cube([14, 14, 1.5]);

	//

	translate([9.75+14+5+14+5+14+5,40.75+(19.05/2),30])
		cube([14, 14, 1.5]);

	translate([9.75+14+5+14+5+14+5,40.75+(19.05/2)+14+5,30])
		cube([14, 14, 1.5]);

	translate([9.75+14+5+14+5+14+5,40.75+(19.05/2)+14+5+14+5,30])
		cube([14, 14, 1.5]);

	//

	translate([9.75+14+5+14+5+14+5+14+5,40.75+(19.05/2)-(19.05/8),30])
		cube([14, 14, 1.5]);

	translate([9.75+14+5+14+5+14+5+14+5,40.75+(19.05/2)-(19.05/8)+14+5,30])
		cube([14, 14, 1.5]);

	translate([9.75+14+5+14+5+14+5+14+5,40.75+(19.05/2)-(19.05/8)+14+5+14+5,30])
		cube([14, 14, 1.5]);

	//

	rotate([0,0,-5])
		translate([9.75+14+5+14+5+14+5-2-0.25,25+0.25+(19.05/2),30])
		cube([14, 14, 1.5]);

	rotate([0,0,-10])
		translate([9.75+14+5+14+5+14+14+6.25,25+0.25+(19.05/2)+7,30])
		cube([14, 14, 1.5]);

	rotate([0,0,-15])
		translate([9.75+14+5+14+5+14+14+6.25+14+3.125,25+0.25+(19.05/2)+7+8.25,30])
		cube([14, 14, 1.5]);

	/* translate([-10.5,0,30]) */
	/* 	linear_extrude(10) */
	/* import("/mnt/hdd/repo/split_keyboard/electroholics/split/repo/split-F_Silkscreen.svg"); */
	/* import("/mnt/hdd/repo/split_keyboard/electroholics/split/repo/split-User_Eco1.svg"); */
	/* import("/mnt/hdd/repo/split_keyboard/electroholics/split/repo/split-F_Cu.svg"); */


};


