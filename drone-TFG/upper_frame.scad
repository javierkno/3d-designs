base_thickness = 2.5;
battery_width = 37;
battery_lenght = 60;

module triangle() {

    hull() {
        translate([20/2,0,0])
            cylinder(d=3,h=20,$fn=100,center=true);
        translate([-20/2,0,0])
            cylinder(d=3,h=20,$fn=100,center=true);
        translate([1.5,19,0])
            cylinder(d=3,h=20,$fn=100,center=true);
        translate([-1.5,19,0])
            cylinder(d=3,h=20,$fn=100,center=true);
    }
}


module arm_end() {
    hull(){
        translate([0,6.5/2-6/2,0])
            cylinder(h=base_thickness,d=6,$fn=100,center=true);
        translate([0,-6.5/2+5/2,0])
            cylinder(h=base_thickness,d=6,$fn=100,center=true);
    }
}

module base() {

    translate([(130+4.5)/2,0,0])
        arm_end();
    translate([-(130+4.5)/2,0,0])
        arm_end();

    rotate(90){
        translate([(130+4.5)/2,0,0])
            arm_end();
        translate([-(130+4.5)/2,0,0])
            arm_end();
    }

    difference() {
        union() {
            intersection() {
                union() {
                    rotate([0,0,45])
                        cube([120,120,base_thickness],center=true);

                    cube([40,130,base_thickness],center=true);
                    cube([130,40,base_thickness],center=true);
                }
                cube([130+4,130+4,base_thickness],center=true);
            }

        }
        translate([125/2,0,0]) {
            translate([0,31/2,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([0,-31/2,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([-30,0,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([-5,0,0])
                rotate(90)
                    triangle();
        }
        translate([-125/2,0,0]) {
            translate([0,31/2,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([0,-31/2,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([30,0,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([5,0,0])
                rotate(-90)
                    triangle();
        }
        translate([0,125/2,0]) {
            translate([31/2,0,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([-31/2,0,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([0,-30,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([0,-5,0])
                rotate(180)
                    triangle();
        }
        translate([0,-125/2,0]) {
            translate([31/2,0,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([-31/2,0,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([0,30,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([0,5,0])
                triangle();
        }

        rotate(45)
            translate([100,0,0])
                cylinder(d=100,h=10,center=true,$fn=100);
        rotate(-45)
            translate([100,0,0])
                cylinder(d=100,h=10,center=true,$fn=100);
        rotate(135)
            translate([100,0,0])
                cylinder(d=100,h=10,center=true,$fn=100);
        rotate(-135)
            translate([100,0,0])
                cylinder(d=100,h=10,center=true,$fn=100);

        cylinder(d=25,h=10,center=true,$fn=100);

        rotate(-45)
            translate([40,0,0])
                cube([11,15,10],center=true);
        rotate(135)
            translate([40,0,0])
                cube([11,15,10],center=true);
        rotate(-135)
            translate([40,0,0])
                cube([11,15,10],center=true);
        rotate(45)
            translate([40,0,18/2+base_thickness/2])
                cube([10.5,10.5,30],center=true);
    }

    rotate(45)
        translate([40,0,0])
            difference() {
                translate([0,0,10/2+base_thickness/2])
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

                translate([0,0,5+base_thickness/2])
                    rotate([0,90,0])
                        cylinder(d=3.4,h=20,center=true,$fn=100);
            }
}

base();
