//
//  Copytight (C) 2015 Javier Cano - All Rights Reserved   
//   
//  This program is free software: you can redistribute it and/or modify
//  it under the terms of the GNU General Public License as published by
//  the Free Software Foundation, either version 3 of the License, or
//  (at your option) any later version.
//
//  This program is distributed in the hope that it will be useful,
//  but WITHOUT ANY WARRANTY; without even the implied warranty of
//  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
//  GNU General Public License for more details.
//
//  You should have received a copy of the GNU General Public License
//  along with this program.  If not, see <http://www.gnu.org/licenses/>.
//

base_thickness = 2.5;
battery_width = 37;
battery_lenght = 60;
lower_base_thickness = 2;

module lower_base() {

    difference() {
        union() {
            intersection() {
                rotate([0,0,45])
                    cube([120,120,lower_base_thickness],center=true);
                cube([130+4,130+4,lower_base_thickness],center=true);
            }
            rotate(-45)
                translate([0,0,18/2+base_thickness/2])
                    cube([34+4,90,18],center=true);
        }

        translate([125/2,0,0]) {
            translate([0,20.5/2,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([0,-20.5/2,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([-6,0,0])
                cylinder(d=3.4,h=20,center=true,$fn=100);
            translate([-24,0,0])
                cylinder(d=3.4,h=20,center=true,$fn=100);
        }
        translate([-125/2,0,0]) {
            translate([0,20.5/2,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([0,-20.5/2,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([6,0,0])
                cylinder(d=3.4,h=20,center=true,$fn=100);
            translate([24,0,0])
                cylinder(d=3.4,h=20,center=true,$fn=100);
        }
        translate([0,125/2,0]) {
            translate([20.5/2,0,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([-20.5/2,0,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([0,-6,0])
                cylinder(d=3.4,h=20,center=true,$fn=100);
            translate([0,-24,0])
                cylinder(d=3.4,h=20,center=true,$fn=100);
        }
        translate([0,-125/2,0]) {
            translate([20.5/2,0,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([-20.5/2,0,0])
                cylinder(d=2.9,h=20,center=true,$fn=100);
            translate([0,6,0])
                cylinder(d=3.4,h=20,center=true,$fn=100);
            translate([0,24,0])
                cylinder(d=3.4,h=20,center=true,$fn=100);
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


        //battery hole
        rotate(135) {
            translate([battery_width/2,0,base_thickness/2+10/2])
                cube([3.5,21,21],center=true);
            translate([-battery_width/2,0,base_thickness/2+10/2])
                cube([3.5,21,21],center=true);
            translate([0,battery_lenght/2,base_thickness/2+10/2])
                cube([21,3.5,21],center=true);
            translate([0,-battery_lenght/2,base_thickness/2+10/2])
                cube([21,3.5,21],center=true);
        }

        rotate(-45)
            translate([0,0,20.1/2+base_thickness/2])
                cube([34,110,20.1],center=true);
        rotate(45)
            translate([0,0,20.1/2+base_thickness/2])
                cube([34,110,20.1],center=true);
        rotate(-45)
            translate([40,0,0])
                cube([11,15,10],center=true);
        rotate(135)
            translate([40,0,0])
                cube([11,15,10],center=true);
    }
}

lower_base();

