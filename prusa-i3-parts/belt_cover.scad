difference() {
    union() {
        translate([-20.5/2,0,0])
        cylinder(d=13,h=1.5,center=true,$fn=100);
        translate([20.5/2,0,0])
        cylinder(d=13,h=1.5,center=true,$fn=100);
        cube([20.5,13,1.5],center=true);
    }
    
    translate([-20.5/2,0,0])
    cylinder(d=2,h=2,center=true,$fn=100);
    translate([20.5/2,0,0])
    cylinder(d=2,h=2,center=true,$fn=100);
}