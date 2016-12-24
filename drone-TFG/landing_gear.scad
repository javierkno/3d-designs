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