use <threads-library-by-cuiso-v1.scad>

module rengas() {
translate([0,10,-2])
  rotate([90,0,0])
  difference() {
   cylinder(20,d=8);
   cylinder(28,d=3);
   translate([-5,0,10])rotate([90,0,90])  cylinder(10,d=3);

 }
}

module kansi() {
difference() {
  thread_for_screw_fullparm(diameter=23, length=8,pitch=1.5); 
  cylinder(d=20, h=11, $fn=50);
}
cylinder(d=30, h=2, $fn=10);
rengas();
}

module runko() {
translate([0,0,1])
difference(){
  cylinder(d=27, h=40, $fn = 50);
  translate([0,0,32]) 
    thread_for_nut_fullparm(diameter=23, length=8,pitch=1.5,usrclearance=0.2);
  cylinder(d=24, h=32, $fn = 50);
 }
cylinder(d=28, h=1.6, $fn=50);
rengas();
}

kansi();
translate([30,0,0]) runko();


/*
difference(){
  translate([30,0,0]) runko();
translate([21,0,0])
cube([40,20,100]);
}
*/
