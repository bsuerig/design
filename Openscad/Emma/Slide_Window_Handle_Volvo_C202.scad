// Code by Benedikt Sürig, May 11th 2019

include <polyround.scad>;

fn = 20; //Number of Faces (Resolution)
w=40;    // width of handle in z driection
dd=25;  // Distance between Drilling hole centers in z direction
d= 5 ;   //Drilling hole diameter of Fixations
c=26;    // distance between clipping edge (x=42) and drilling hole center. To be adjusted to optimize clip & close  
r=5; //Radius of Handles in z-y-Plane (not yet implemented)

// Define Polygon Points with radius
br=[[0,0,1],[25,0,3],[26,13.8,3],[42,13.8,0],[42,9.8,0],  
[45,12.8,0],[45,13.8,0],[45,16.3,3],[28,16.3,1],[28,30,1],[25,30,1]  
,[22,3.3,3],[10,3.3,3],[10,30,1],[6,30,1],[5.5,3.3,3],[0,3.3,0] ]; //List of Radii Points [x,y,radius]


// This is where the active code begin
$fn=fn; //Set resolution

// extrude the the sideshape of the handle 
difference(){
linear_extrude(height = w, center = true, convexity = 10, twist = 0)
// Polygon represents the sideshape of the handle
 polygon(polyRound(br,fn));

//Position the drilling holes
translate([(42-c),-1,dd/2]) {
 rotate(a = 90, v = [-1, 0, 0]){
 cylinder(h=6, r1=d/2, r2=d/2, center=false);
     translate([0,dd,0]) {
 cylinder(h=6, r1=d/2, r2=d/2, center=false);
 }}}}