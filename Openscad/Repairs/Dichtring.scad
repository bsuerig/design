 
 di=80;  //inner diameter
 da=120; // Outer diameter
 h=2;   // Height
 
 $fn= 80;
 difference() {
 cylinder(h=h, d1=da, d2=da, center=true);
 cylinder(h=h+1, d1=di, d2=di ,center=true);
     }