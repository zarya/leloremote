$fn=25;
translate([4,4,4])
difference() {
    minkowski(){
        //translate([32,-22,1.7]) import("bottom.stl",convexity=3);
        cube([70,62,12]);
        cylinder(r=2,h=1);
        difference() {
            rotate([0,90,0])cylinder(r=2,h=1);
            translate([-2,-2,0]) cube([4,4,2]);
        }
        difference() {
            rotate([90,0,0])cylinder(r=2,h=1);
            translate([-2,-2,0]) cube([4,4,2]);
        }
    }
    
    //Radio and antenna cutout
    translate([-4,0,0])
    union() {
        translate([-.1,46.4,8.7]) rotate([0,90,0]) cylinder(h = 23, r=5);
        translate([16,40,8]) cube([45,20,5]);
        //translate([16,45,1]) cube([20,5,15]);
    }
    
    //Hardware cutout
    translate([16,21,4]) cube([45,20,15]);

    //Battery
    translate([1.5,10,10]) rotate([0,90,0]) cylinder(h=67,r=9.3);
    translate([16,10,1]) cube([45,15,15]);
    
    //duino
    //35x19x4
    translate([70-32,23,0.5]) cube([35,19,4]);
    translate([73,23,2]) cube([3,19,5]);
    
    //Gyro cutout
    translate([0,20,12]) cube([18,22,1]);
    translate([15,20,10]) cube([2,22,2]);
    
    //Charger
    translate([-2,23,0.5]) cube([29,18,5]);
    translate([-4,29,0.5]) cube([8,8,4]);
    
    //Mounting holes
    translate([2,60,-4])cylinder(r=1.5,h=17);
    translate([70,50,-4])cylinder(r=1.5,h=17);
    
    //Nut traps
    translate([2,60,-4]) cylinder(r = 5.5 / 2 / cos(180 / 6) + 0.05, h=1.5, $fn=6);
    translate([70,50,-4]) cylinder(r = 5.5 / 2 / cos(180 / 6) + 0.05, h=1.5, $fn=6);
}

/*
mirror([1,0,0]) translate([10,4,4])  
difference() {
    //Box with rounded corners
    minkowski(){
        cube([70,62,12]);
        cylinder(r=2,h=1);
        difference() {
            rotate([0,90,0])cylinder(r=2,h=1);
            translate([-2,-2,0]) cube([4,4,2]);
        }
        difference() {
            rotate([90,0,0])cylinder(r=2,h=1);
            translate([-2,-2,0]) cube([4,4,2]);
        }
    }
    
    //Hardware cutout
    translate([16,21,1]) cube([45,20,15]);
    translate([1.5,10,10]) rotate([0,90,0]) cylinder(h=67,r=9.3);
    translate([16,10,1]) cube([45,15,15]);
    
    //Gyro cutout
    translate([15,20,10]) cube([12,22,5]);
    
    //Mounting holes
    translate([2,60,-4])cylinder(r=1.5,h=17);
    translate([70,50,-4])cylinder(r=1.5,h=17);
    
    //Screw holes
    translate([2,60,-4])cylinder(r=3,h=2);
    translate([70,50,-4])cylinder(r=3,h=2);
}
