use<../gear_lib/gears.scad>

union(){
    herringbone_gear(modul=1.5, tooth_number=10, width=15, bore=6, pressure_angle=20, helix_angle=30, optimized=true);
    translate([-4,2.5,0]) cube([7,1,15]);
}