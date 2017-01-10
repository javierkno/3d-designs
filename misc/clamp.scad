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

height=21;
radius=82;

module grip() {
    translate([(81+12/2-2),15/2,0])
        cube([13,15,height],center=true);
    translate([81+12/2-6.7,15/2+10.6,0])
        rotate([0,0,-(41)])
            cube([21,10,height],center=true);
}

module hole() {
    translate([(81+12/2-2),15-5.5,0]) {
        rotate([-90,90,0]) {
            cylinder(d=11,h=15.51,$fn=6);
            cylinder(d=5.5,h=20,$fn=100,center=true);
        }    
    }
}
        
difference() {
    union() {
        cylinder(r=radius,h=height,$fn=400,center=true);

        grip(); 
        mirror()
            grip();
    }

    hull() {
        cylinder(r=81-9+7,h=14-2,$fn=400,center=true);
        cylinder(r=81-9,h=14,$fn=400,center=true);
    }
    cylinder(r=radius-9,h=height+0.1,$fn=400,center=true);

    translate([0,-100/2,0])
        cube([300,100,100],center=true);
    
    hole();
    mirror()
        hole();
}
