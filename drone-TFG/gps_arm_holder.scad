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
