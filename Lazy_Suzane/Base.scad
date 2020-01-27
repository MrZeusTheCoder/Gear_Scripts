use <../bolt_lib/M4.scad>
use <../bolt_lib/Nut.scad>
use <Driven_Gear.scad>
use <Driver_Gear.scad>

$fn=48;

screw_hole_radius = 110;

//translate([0,0,35])
//driven_gear();

module bassy(){

difference(){
    //Main structural part:
    difference(){
        //Slight Incline Stabilizer Thing-a-ma-what-ser Base™:
        difference(){
            //Base main-body:
            union(){
                //Inclined cylinder:
                cylinder(15, 115, 105);
                //Rest:
                translate([0,0,15])
                cylinder(r=105, h=20);
            }
            //Screw-down holes:
            for (i=[0:90:360]) {
                translate([screw_hole_radius*cos(i),screw_hole_radius*sin(i),5])
                cylinder(r=4, h=50, center=false);
            }
        }
        //Valley cut:
        difference(){
            //Main valley:
            translate([0,0,4])
            cylinder(r=90, h=50);
            //Bolt support structure:
            union(){
                //Main up that allows for the bolt to not be cut through the main valley floor:
                translate([0,0,4])
                cylinder(r=11, h=8);
                //Up that provides support to the bolt to prevent pitching and rolling:
                translate([0,0,12])
                cylinder(r=8, h=16);
            }
            
        }
    }
    //Bolt inlay:
    union(){
        //Bolt body:
        translate([0,0,-0.01])
        cylinder(r=5.1, h=60); //Diameter set to 10.2 for print tolerance and filet transition.
        //Hex head: (according to the specs of A2-70. Whatever that means.)
        Nut(8, 8.5, 0.01, false);
    }
}

}

//Bearing-holders: (W.I.P.)
/*
holder_radius = 20;
union(){
    for(i=[0:90:360]){
        translate([holder_radius*sin(i), holder_radius*cos(i), 100])
        rotate([holder_radius*sin(i), 90, 0])
        NutM4();
        translate([0,0,100])
        rotate([0,90, 0])
        BoltM4(12);
    }
}
*/

bassy();
