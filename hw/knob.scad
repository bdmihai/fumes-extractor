// PRUSA iteration3
// LCD Knob
// GNU GPL v3
// Josef Průša <iam@josefprusa.cz> and contributors
// http://www.reprap.org/wiki/Prusa_Mendel
// http://prusamendel.org

difference () {

// main body

translate([0,0,0]) rotate(a=[0,0,0]) cylinder(h = 7.5, r1=10, r=7.25, $fn=16);

translate([0,0,20]) rotate(a=[0,0,0]) sphere(14);

// knob cutout
translate([0,0,-0.1]) rotate(a=[0,0,0]) cylinder(h = 5.5, d1=3.45, d2=3.25, $fn=60);
    
translate([0,0,-0.1]) rotate(a=[0,0,0]) cylinder(h = 0.6, d1=5.1, d2=3.25 , $fn=30); 
    
translate([0,0.48,-0.1]) rotate(a=[0,0,-90]) cube([0.96,3.9,4.6]);

// first layer correction
union () {

difference (){    
translate([0,0,-0.1]) rotate(a=[0,0,0]) cylinder(h = 2,d1= 8.5, d2=7.5, $fn=60);
translate([0,0,-0.15]) rotate(a=[0,0,0]) cylinder(h = 2,d1= 7.5, d2=7.5, $fn=60);
translate([0,0,1]) rotate(a=[0,0,0]) cylinder(h = 2,d= 13, $fn=30);
    translate([-12.5,-6,-0.2]) rotate(a=[0,0,0]) cube([10,12,4.6]);
}
}      
    

difference () {

translate([0,0,-0.1]) rotate(a=[0,0,0]) cylinder(h = 4.6, d=8, $fn=60);
translate([0,0,-0.2]) rotate(a=[0,0,0]) cylinder(h = 4.8, d= 7, $fn=60);
translate([-12.5,-6,-0.2]) rotate(a=[0,0,0]) cube([10,12,4.8]);
    
    }    
    
    
    
    }


