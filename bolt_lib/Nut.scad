include <defaults.scad>;
use <Polygon.scad>;

module Nut(height, apothem, tolerance, inset){
    translate([0, 0, -height / 2 + 0.01 +((1 - inset) * height)])
    Hexagon(
        A = apothem + tolerance,
        h = height + (tolerance * 2)
    );
}