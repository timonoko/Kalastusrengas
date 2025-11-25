use <threads-library-by-cuiso-v1.scad>
use <dotSCAD-master/src/rounded_cylinder.scad>
$fn=80;

module kansi() {
  difference() {
    union() {
      difference() {
	thread_for_screw(diameter=30, length=10); 
	cylinder(d=20, h=11);
      }
      cylinder(d=40, h=3, $fn=6);
    }
   translate([-1,0,0]) cube([2,20,30]);
    cylinder(d=10, h=10);
  }
}
module runko() {
  difference(){
    rounded_cylinder(radius=34/2, h=90, round_r=4); 
    translate([0,0,79])thread_for_nut(diameter=30, length=90, usrclearance=0.2); 
    translate([0,0,2])rounded_cylinder(radius=30/2, h=77, round_r=2);
    cylinder(d=10, h=10);
    // cube(100);
  }
}
kansi();
translate([40,0,0])
runko();
