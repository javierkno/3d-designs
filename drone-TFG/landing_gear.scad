module landing_gear() {

    difference() {
        intersection() {
            scale([1,2,1])
                cylinder(d=100,h=12,$fn=100,center=true);
            translate([0,0,-25])
                cube(100);
        }

        translate([-5,-5,0])
            scale([1,2,1])
                cylinder(d=100,h=12.1,$fn=100,center=true);

    }

    translate([50,0,0])
        cube([10,5,12],center=true);

    translate([-12,96.99,0]) {
        difference() {
            union() {
                cube([25,6,12],center=true);
                translate([10,-1,0])
                    cube([10,4,12],center=true);
            }
            translate([10,0,0]){
                rotate([90,0,0])
                    cylinder(d=3.4,h=30,center=true,$fn=100);
                translate([-18,0,0])
                    rotate([90,0,0])
                        cylinder(d=3.4,h=30,center=true,$fn=100);
            }
        }
    }
}

landing_gear();