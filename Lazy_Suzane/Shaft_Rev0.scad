translate([0,0,25.25])
rotate([180,0,0])
union(){
    cylinder(4 + 8.25, 4.75, 4.75);
    translate([0,0,12.25]) cylinder(10, 12, 12);
    translate([0,0,22.25]) cylinder(3, 30, 30);
}