x = 30.5;
y = 32.5;
z = 16;

module adjuster() {
    difference() {
        
        cube([x,y,z],center=true);
        
        translate([5,-6,16/2-9.5/2])
            cylinder(d=18.8,h=9.53,$fn=100,center=true);
        
        translate([-x/2+15/2,y/2-13/2,0])
            cube([15,13,z-7],center=true);
        
        translate([-x/2+9.5/2,-2,z/2-1])
            cube([9.5,y,2],center=true);
        
        translate([-x/2+6,y/2-5.1,-5])
            cylinder(d=3,h=10,$fn=100,center=true);
        
        translate([14.3,-6,16/2-9.5/2])
            cube([9.5,4.5,9.53],center=true);
    }

    translate([-x/2+6,y/2-5.5,z/2-2.3/2])
        cylinder(d=2.2,h=2.3,$fn=100,center=true);

}

 adjuster(); 

translate([50,0,0])
mirror(){adjuster();}