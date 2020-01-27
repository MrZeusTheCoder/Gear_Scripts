include <defaults.scad>;
use <Polygon.scad>;

module Nut(height, apothem, tolerance, inset){
    y_transform = -height / 2 + 0.01 +((1 - inset) * height);
    translate([0, 0, y_transform]){
        Hexagon(
            A = apothem + tolerance,
            h = height + (tolerance * 2)
        );
    }
}