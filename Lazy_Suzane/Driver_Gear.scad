use <../gear_lib/gears.scad>
use <../bolt_lib/M2.scad>

$fn=96;


module driver_gear(){

difference(){
    //Gear, base, center bore, and nut inlay:
    difference(){
        //Gear, base, and center bore:
        union(){
            difference(){
                //Gear with uncut base:
                union(){
                    cylinder(r=10, h=10, center=false);

                    translate([0,0,10])
                    herringbone_gear(modul=1.5, tooth_number=10, width=15, bore=0, pressure_angle=20, helix_angle=30, optimized=true);
                }
                //Bore:
                translate([0, 0, -1])
                cylinder(r=3, h=30);
            }
        }

        //Nut inlay:
        union(){
            translate([-4.5,0,5])
            rotate([0,90,0])
            scale(1.05)
            NutM2();

            translate([-4.5-(1.5/2),0,0])
            cube(size=[2.3, 4.8, 10], center=true);
        }
    }

    //Bolt
    translate([-10,0,5])
    rotate([0,-90,0])
    BoltM2(6);
}

}

driver_gear();