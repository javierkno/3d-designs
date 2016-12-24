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