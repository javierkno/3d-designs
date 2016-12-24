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

gps_base_thickness = 2;

module gps() {
    union() {
        difference() {
            cube([55,55,gps_base_thickness],center=true);
            translate([45/2,45/2,0])
                cylinder(d=3.3,h=30,center=true,$fn=100);
            translate([-45/2,45/2,0])
                cylinder(d=3.3,h=30,center=true,$fn=100);
            translate([45/2,-45/2,0])
                cylinder(d=3.3,h=30,center=true,$fn=100);
            translate([-45/2,-45/2,0])
                cylinder(d=3.3,h=30,center=true,$fn=100);
        }
        difference() {
            translate([0,0,30/2+gps_base_thickness/2])
                difference() {
                    cube([10.5+4,10.5+4,30],center=true);
                    cube([10.5,10.5,31],center=true);
                }
            translate([0,0,25+gps_base_thickness/2])
                rotate([0,90,0])
                    cylinder(d=3.4,h=20,center=true,$fn=100);
        }
    }
}



gps();
