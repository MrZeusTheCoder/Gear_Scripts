include <defaults.scad>;
use <Nut.scad>;
use <Bolt.scad>;

m2_nut_height = 1.5;
m2_nut_diameter = 4;
m2_nut_radius = m2_nut_diameter / 2;

m2_head_diameter = 3.6;
m2_head_height = 2;
m2_shaft_diameter = 1.86;

module NutM2(inset=1, height=m2_nut_height, tolerance=default_metric_tolerance) {
    Nut(
        height=height, 
        apothem=m2_nut_radius, 
        tolerance=tolerance, 
        inset=inset
    );
}

module BoltM2(bolt_length=10, tolerance=default_metric_tolerance, inset=1) {
    Bolt(
        shaft_length = bolt_length,
        shaft_diameter= m2_shaft_diameter, 
        head_height = m2_head_height, 
        head_diameter = m2_head_diameter, 
        tolerance=tolerance,
        inset=inset
    );
}

NutM2();