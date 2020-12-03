
$fn=240;
union(){
translate([0,-1.5,0]){
linear_extrude(height = 58, center = true, convexity = 0, twist = 0)
polygon(points=[[0,0],[10,0],[14.6,6.5],[11.5,6.5],[9,3],[0,3]]);
};
cylinder (d=3.3, h=63, center=true);
translate([13,5,0]){
cylinder (d=3.3, h=68, center=true);
};
};