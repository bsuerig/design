 
 di=40;  //inner diameter
 da=57; // Outer diameter
 h=12;   // Height
 w= 25; // Width of mount point
 
 $fn= 120;
 difference(){
 union(){
    translate( [0,0,(da-di)/8] ) {
        difference(){
 cube( [w, ,h,(da-di)/4] ,center=true);
     
        }}
 
 translate( [0,0,da/2] ) {
rotate(a = 90, v = [1,0, 0]) { 
 difference() {
 cylinder(h=h, d1=da, d2=da, center=true);
cylinder(h=h+1, d1=di, d2=di ,center=true);
     } 
    }  
}
}
cylinder(h=50, d=5, center=true);	       
}