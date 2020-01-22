include <defaults.scad>;

//----------------------------------------------//
//Usage - Bolt();
//
// shaft_length - Length of the bolt's shaft.
// shaft_diameter - Diameter of the bolt's shaft.
// head_height - Height of the bolt's head.
// tolerance - Size tolerance for the bolt.
// extra_tolerance - An extra tolerance.
// inset - To inset or to not inset, that is a question you have to friggin' have to answer yourself.
//
//----------------------------------------------//

module Bolt(shaft_length=10, shaft_diameter=5, head_height=5, head_diameter=10, tolerance=default_metric_tolerance, extra_tolerance=default_bolt_extra_tolerance, inset=1){
  head_radius = head_diameter / 2;
  shaft_radius = shaft_diameter / 2;

  translate([0, 0, -inset * head_height]){
    translate([0, 0, 0.01])
    cylinder(r=head_radius + (tolerance*2), h=head_height);

    translate([0, 0, -shaft_length + 0.01])
    cylinder(r=shaft_radius + (tolerance*2) + extra_tolerance, h=shaft_length + 0.01);
  }
}

Bolt();