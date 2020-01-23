//TODO: Get dimensions for the bolt and add them here...
include <defaults.scad>
use <Nut.scad>

m4_nut_height = 3.2;
m4_nut_diameter = 7;
m4_nut_radius = m4_nut_diameter / 2;

module NutM4(inset=1, height=m4_nut_height, tolerance=default_metric_tolerance) {
    Nut(
        height=height, 
        apothem=m4_nut_radius, 
        tolerance=tolerance, 
        inset=inset
    );
}

NutM4();