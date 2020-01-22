include <defaults.scad>;
use <Nut.scad>;
use <Bolt.scad>;

m3_nut_height = 2.25;
m3_nut_diameter = 5.4;
m3_nut_radius = m3_nut_diameter / 2;

m3_head_height = 3.2;
m3_head_diameter = 5.4;
m3_shaft_diameter = 3;

module NutM3(inset=1, height=m3_nut_height, tolerance=default_metric_tolerance) {
    Nut(
        height=height, 
        apothem=m3_nut_radius, 
        tolerance=tolerance, 
        inset=inset
    );
}

module BoltM3(bolt_length=10, tolerance=default_metric_tolerance, inset=1) {
    Bolt(
        shaft_length = bolt_length,
        shaft_diameter= m3_shaft_diameter, 
        head_height = m3_head_height, 
        head_diameter = m3_head_diameter, 
        tolerance=tolerance,
        inset=inset
    );
}