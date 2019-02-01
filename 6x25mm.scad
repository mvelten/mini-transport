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
    cube([base_length, base_depth, 2*thickness]);

    // front row
    translate([2.8, -1, thickness+0.1])
        cube([base_length -5.7, base_depth/4+2, thickness]);    
    // minis
    for(x=[0:2])
        translate([2.5+base_bottom+5*x+x*2*base_bottom, base_bottom+2, thickness+0.1])
            cylinder(r1=base_bottom, r2=base_top, h=thickness);    

    // magnets
    for(x=[1:2])
        translate([5*x+x*2*base_bottom,3,thickness - magnet_thickness+0.2])
            cylinder(r=magnet_radius, h=magnet_thickness);
    

    // back row
    translate([2.8, base_depth*3/4-1, thickness +0.1])
        cube([base_length -5.7, base_depth/4+2, thickness]);
    // minis
    for(x=[0:2])
        translate([2.5+base_bottom+5*x+x*2*base_bottom, base_depth - base_bottom-2, thickness+0.1])
            cylinder(r1=base_bottom, r2=base_top, h=thickness);
    // magnets
    for(x=[1:2])
        translate([+5*x+x*2*base_bottom,base_depth - 3,thickness - magnet_thickness+0.2])
            cylinder(r=magnet_radius, h=magnet_thickness);
}