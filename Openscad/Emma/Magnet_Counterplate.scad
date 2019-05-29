// Counter plate for Part to mount a Pot Magnet with center screw on a Pipe 
// with holes for fixation bolts 
// Created by Benedikt Sürig, 2019 May 29th 

pD = 21.5; // Pipe Diameter
mD = 16;  // Outer Diameter of Magnet
md = 3.5; // Inner Diameter of Magnet
//mH = 4.5; // Height of Magnet
bD = 5;   // Diameter of fixation bolts
ba = 15; // Distance between Magnet drilling and bolt centers

wD= 20 ;  // outer Diameter of washer as counterplate for magnet
wd = 5.3; // inner Diameter of washer as counterplate for magnet
wH = 1;   // height of of washer as counterplate for magnet

bH=5; // Height of counter plate

$fn = 180;

L=2*ba +2*bD; // Overall length, calculated


difference(){
// Cube
 cube([L,pD,bH],true);

// Washer
translate([0,0,(bH)/2+1]) {
    cylinder(  wH+2,d1=wD ,d2=wD, center=true);
    //hole in Washer
    cylinder(  3*bH,d1=wd ,d2=wd, center=true);
}
//Fixation Bolt A
translate([ba,0,0]){
    cylinder(  2*bH,d1=bD ,d2=bD, center=true);
    }    
//Fixation Bolt B
translate([-ba,0,0]){
    cylinder(  2*bH,d1=bD ,d2=bD, center=true);
    }    


}
