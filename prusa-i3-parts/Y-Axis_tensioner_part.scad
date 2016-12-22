difference() {
    cube([14.5,38,2.5],center=true);
    translate([14.5/2-3.4/2,12-3.4/2,0])
        cube([3.4,6.4,2.5],center=true);
    translate([-14.5/2+3.4/2,12-3.4/2,0])
        cube([3.4,6.4,2.5],center=true);
    translate([14.5/2-3.4/2,-12+3.4/2,0])
        cube([3.4,6.4,2.5],center=true);
    translate([-14.5/2+3.4/2,-12+3.4/2,0])
        cube([3.4,6.4,2.5],center=true);
}