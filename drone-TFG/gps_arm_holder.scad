base_thickness = 2.5;

module gps_arm_holder() {
    difference() {
        cube([10.5+5,10.5+25,10],center=true);
        cube([10.7,10.7,20],center=true);
        translate([0,-17,5])
            rotate([0,90,0]) {
                translate([-10,0,0])
                    cube([20,20,10.5+5.1],center=true);
                cylinder(h=10.5+5.1,d=20,center=true,$fn=100);
            }
        translate([0,17,5])
            rotate([0,90,0]) {
                translate([-10,0,0])
                    cube([20,20,10.5+5.1],center=true);
                cylinder(h=10.5+5.1,d=20,center=true,$fn=100);
            }
    }
}

gps_arm_holder();
