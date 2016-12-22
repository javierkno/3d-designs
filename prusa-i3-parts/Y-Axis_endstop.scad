
difference() {
    union() {
        difference() {
            translate([0,0,-10])
            cube([42,4,15],center=true);


        }

        difference() {
            translate([0,-8.5,2])
                cube([42,21,14],center=true);

            translate([-7,-15,0]){
                translate([19/2,0,0])
                    rotate([0,0,0])
                        cylinder(d=3,h=20,center=true,$fn=100);
                        
                translate([-19/2,0,0])
                    rotate([0,0,0])
                        cylinder(d=3,h=20,center=true,$fn=100);
            }
        }
    }
    
    translate([17,-12,0])
        cylinder(d=20,h=20,center=true,$fn=100);
    translate([17,-30,0])
        cube([20,35,30],center=true);
    translate([22,-7,0])
        cube([10,10,30],center=true);
    translate([0,-12,-5])
        rotate([0,90,0])
            cylinder(d=20,h=43,center=true,$fn=100);
    translate([0,-30,0])
       cube([43,35,10],center=true);
    
    
    translate([0,0,-8]){
            translate([35/2-2,0,0])
                rotate([90,0,0])
                    cylinder(d=4,h=20,center=true,$fn=100);
                    
            translate([-35/2+2,0,0])
                rotate([90,0,0])
                    cylinder(d=4,h=20,center=true,$fn=100);
                
            
            
            translate([35/2-2,-4,0])
                rotate([90,0,0])
                    cylinder(d=8,h=7,center=true,$fn=100);
                    
            translate([-35/2+2,-4,0])
                rotate([90,0,0])
                    cylinder(d=8,h=7,center=true,$fn=100);
    }
}


//19