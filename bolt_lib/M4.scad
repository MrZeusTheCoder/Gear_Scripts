include <defaults.scad>
use <Nut.scad>
use <Bolt.scad>

m4_nut_height = 3.2;
m4_nut_diameter = 7;
m4_nut_radius = m4_nut_diameter / 2;

m4_head_height = 4;
m4_head_diameter = 7;
m4_shaft_diameter = 4;


module NutM4(inset=1, height=m4_nut_height, tolerance=default_metric_tolerance) {
    Nut(
        height=height, 
        apothem=m4_nut_radius, 
        tolerance=tolerance, 
        inset=inset
    );
}

module BoltM4(bolt_length=6, tolerance=default_metric_tolerance, inset=1) {
    Bolt(
        shaft_length = bolt_length,
        shaft_diameter= m4_shaft_diameter, 
        head_height = m4_head_height, 
        head_diameter = m4_head_diameter, 
        tolerance=tolerance,
        inset=inset
    );
}