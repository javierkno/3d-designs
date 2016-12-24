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

difference() {
    union() {
        translate([-20.5/2,0,0])
        cylinder(d=13,h=1.5,center=true,$fn=100);
        translate([20.5/2,0,0])
        cylinder(d=13,h=1.5,center=true,$fn=100);
        cube([20.5,13,1.5],center=true);
    }
    
    translate([-20.5/2,0,0])
    cylinder(d=2,h=2,center=true,$fn=100);
    translate([20.5/2,0,0])
    cylinder(d=2,h=2,center=true,$fn=100);
}