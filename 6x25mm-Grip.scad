$fs = 0.5; // This takes a long long time to compute, but much nicer
base_length=90;
base_depth=56;

thickness=3;

base_bottom=25/2;
base_top=24/2;

magnet_radius=5/2;
magnet_thickness=2;

difference(){
    // base plate
    cube([base_length, base_depth/4-1.1, thickness]);
    
    intersection(){
    // front row
    translate([-1, -1, -1])
        cube([base_length + 2, base_depth/4, thickness+2]);
    // minis
    for(x=[0:2])
        translate([2.5+base_bottom+5*x+x*2*base_bottom, base_bottom+2,-1])
            cylinder(r1=base_bottom, r2=base_top, h=thickness+2);    
    }
    // magnets
    for(x=[1:2])
        translate([5*x+x*2*base_bottom,3,-0.2])
            cylinder(r=magnet_radius, h=magnet_thickness);
}