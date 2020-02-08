use <../bolt_lib/M4.scad>
use <../bolt_lib/Nut.scad>
use <Driven_Gear.scad>
use <Driver_Gear.scad>

$fn=96;

function normalize_colour(r, g, b) = [r / 255, g / 255, b / 255];

screw_hole_radius = 110;

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
            cylinder(r=87, h=50);
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
    //Hardware cuts/inlays:
    union(){
        //Bearing Holder Mechinizm™.
        union(){
            holder_radius = 93;
            holder_height = 23.5;
            bolt_length = 12;
            bolt_radius = holder_radius + bolt_length;
            
            for(i=[45:90:360]){
                translate([holder_radius * sin(i), holder_radius * cos(i), holder_height])
                rotate([90+i, 90, 0])
                NutM4();
                translate([bolt_radius * sin(i), bolt_radius * cos(i), holder_height])
                rotate([i-90,90, 0])
                color([0.5, 0.5, 0.5])
                BoltM4(25, inset=0);
                translate([bolt_radius * sin(i), bolt_radius * cos(i), holder_height])
                rotate([i+90,90, 0])
                cylinder(r=14, h=9);
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

}

//Bearing-holders: (W.I.P.)


color(normalize_colour(35, 90, 200))
difference(){
    bassy();
    

}

/*
for(i=[45:90:360]){
    translate([100 * sin(i), 100 * cos(i), holder_height])
    rotate([i-90, 90, 0])
    cylinder(r=13, h=8);
}*/