$fn = 100;  //define resolution
d0 = 5; // Drilling Diameter for fixation
d1 = 10; // Diameter of Screw Head (90°)

h0 =5 ; // Length of Drilling Hole
h1 = 25; // Total Height of Under part of Bracket
d2 = 25; // outer Diameter of Bracket

d3 = 8; // Diameter of Cord Cable
a3 = 0; // Angle between In and Out of Cord Cable (counterclockwise) allowed values betwen 0 and 90
d4 = 2; //Cover fixaton hole diameter
r1 = 3; // Radius of roundings of Cap

//Main Bracket
difference () {
    cylinder(h1, d2, d2, false);
// Cord Holes
translate([0,0,h1-d3+1]) {
    rotate(90, v = [0, 1, 0]) { 
        union(){
    cylinder(d2, d3, d3, false);
    translate([-d3,-d3,0]) {
            cube([d3,2*d3,d2],false);}
    }}}

translate([0,0,h1-d3+1]) {
    rotate(180+a3, v = [0, 0, 1]) { 
    rotate(90, v = [0, 1, 0]) { 
      union(){
    cylinder(d2, d3, d3, false);
    translate([-d3,-d3,0]) {
            cube([d3,2*d3,d2],false);}
    }}}}

// Drilling Hole and Screw Head placement    
cylinder(h0, d0, d0);
translate([0,0,h0]) {
    cylinder((d1-d0), d0, d1);}
translate([0,0,h0+d1-d0]) {
    cylinder((h1-h0+d1-d0), d1, d1);}
}

//Cover fixation hole

cylinder(3, d4, d4);
translate([0,0,h1 +h1/2]) {
// Cap
difference() {
minkowski()
{  sphere([r1,r1,r1], true);
  cylinder(2*r1, d2-r1,d2-r1,  true);
}
translate([0,0,-r1]) {
cylinder(2*r1, d2,d2,  true);
}}
}