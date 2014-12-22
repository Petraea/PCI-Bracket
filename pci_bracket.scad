thickness=1.5;

module pci_bracket() {
union() {
difference() {
union () {
translate([0,-0.25,0]) cube([115,18.5,thickness],center=true);
translate([58.5,2.5,0]) cube([8,18.5,thickness],center=true);
}
translate([57,-13.7,0]) rotate([0,0,40]) cube([10,10,10],center=true);
translate([55,16,0]) rotate([0,0,40]) cube([10,10,10],center=true);
translate([-50,-12.5,0]) rotate([0,0,45]) cube([10,10,10],center=true);
translate([-50,12.5,0]) rotate([0,0,45]) cube([10,10,10],center=true);
translate([-55,-10.5,0]) cube([10,10,10],center=true);
translate([-55,10.5,0]) cube([10,10,10],center=true);
}
difference() {
translate([62,2.5,6]) cube([thickness,18.5,11],center=true);
translate([62,10.75,5.5]) cube([2,6,4],center=true);
translate([62,8,5.5]) rotate([0,90,0]) cylinder(r=2,h=2,center=true);
}
}
}

module vga_hole() { //28 long
translate([12.5,0,0]) cylinder(r=1.5,h=10,center=true);
translate([-12.5,0,0]) cylinder(r=1.5,h=10,center=true);
cube([19,11,10],center=true);
}

module dvi_hole() { //36 long
union() {
translate([16.5,0,0]) cylinder(r=1.5,h=10,center=true);
translate([-16.5,0,0]) cylinder(r=1.5,h=10,center=true);
cube([24.5,9,10],center=true);
}
}

difference() {
pci_bracket();
translate([-30,0,0]) {
//translate([35,1,0]) {
 vga_hole();
 translate([60,0,0]) {
// translate([-41,-2,0]) {
  dvi_hole();
  }
 }
}

$fn=50;

