$fn=128; //Increased resolution for the shaft, which needs high res to acheive a good print
         //that will mate with the bearing.

union(){
    cylinder(3, 30, 30);
    translate([0,0,3]) cylinder(10, 12, 12);
    translate([0,0,13]) cylinder(4 + 8.25, 4.75, 4.75);
}