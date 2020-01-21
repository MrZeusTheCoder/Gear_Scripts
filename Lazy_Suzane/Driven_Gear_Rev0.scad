use<../gear_lib/gears.scad>

difference(){
	union(){
		difference(){
			herringbone_gear (modul=1.5, tooth_number=140, width=15, bore=10, pressure_angle=20, helix_angle=30, optimized=true);
			translate([0,0,7]) cylinder(20, 185/2, 185/2);
		}
		difference(){
			translate([0,0,4]) cylinder(8, 34/2, 34/2);
			translate([0,0,4]) cylinder(9, 26/2, 26/2);
		}
	}
	translate([0,0,4]) cylinder(5, 26/2, 26/2);
}