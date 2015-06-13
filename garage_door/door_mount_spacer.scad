//--------------------------------------------------------------------//
// Spacer for garage doors                                            //
//--------------------------------------------------------------------//
// Author        : Patrick Henry                                      //
// Contact       : https://github.com/microcontroller                 //
// License       : MIT - http://opensource.org/licenses/MIT           //
//--------------------------------------------------------------------//
// This spacer is designed to fit in between the garage door rails    //
// and the wooden frame. Sometimes the mounting hardware that comes   //
// with the doors is just too short, causing the door to bind. This   //
// simply adds a spacer, with a hole for the lag bolt.                //
//--------------------------------------------------------------------//

module garage_door_spacer(h = 2) {
  difference() {
    cube([64,50,h]);
    translate([32-5,25-12,-0.01])
      cube([10, 24, h+0.02]);
    translate([32,25-12,-0.01])
      cylinder(r=5,h=h+0.02);
    translate([32,25+12,-0.01])
      cylinder(r=5,h=h+0.02);
  }
}

garage_door_spacer();

