$fn=200;
scale([1,1,0.6])
difference(){
  union(){
    difference(){
      sphere(d=100);
      sphere(d=96);
      translate([-90,-52,0])cube(300);
    }
    translate([0,0,-42])
      difference(){
      cylinder(d=114,h=8);
      translate([0,0,4])cylinder(d=110,h=8);
    }
    translate([0,0,-42])cylinder(d=76,h=30);
  }
  translate([0,0,-55])cylinder(d=72,h=60);
  translate([0,0,-41])
    union(){
    z=52;
    for(x=[0:20:360]) 
      for(l=[0:1:7])
	translate([z*sin(x+l),z*cos(x+l),-3]) cylinder(d=3,h=10.);
    s=42;
    for(x=[013.5:20:360]) translate([s*sin(x),s*cos(x),-3]) cylinder(d=5,h=30);
  }
  //translate([0,0,-64]) cube(100);
}

