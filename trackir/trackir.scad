//--------------------------------------------------------------------//
// Mount Stabilizers for TrackIR TrackClip PRO                        //
//--------------------------------------------------------------------//
// Author        : Patrick Henry                                      //
// Contact       : https://github.com/microcontroller                 //
// License       : MIT - http://opensource.org/licenses/MIT           //
//--------------------------------------------------------------------//
// TrackIR is a head-tracking solution using IR LEDs and a sensor.    //
// The TrackClip PRO attaches to headphones, and includes two swivel  //
// joints, which are likely to break if not treated carefully. Rather //
// than replacing the clip, we can repair it by adding these mount    //
// stabilizers.                                                       //
//--------------------------------------------------------------------//

$fn = 80;

//--------------------------------------------------------------------//
// The upper mount is where the LED assembly attaches to the clip.    //
// The assembly slides into a circular slot in the clip, and is       //
// supposed to snap into place. If it snaps apart, there is nothing   //
// holding it in place. This stabilizer fits in behind the assembly,  //
// to wedge it in place while still allowing it to rotate. Note that  //
// the arms here are deliberately asymmetrical, to give a wide range  //
// of motion. Once you have the correct orientation, superglue the    //
// back of the stabilizer (as printed, the bottom) to the clip.       //
//--------------------------------------------------------------------//
module trackir_mount_upper() {
  difference() {
    union() {
      translate([5.5, 5.5, 0])
        cylinder(r = 5.5, h = 5.25);
      cube([5.5, 5.5, 4.5]);
      translate([5.5, 5.5, 0])
        cube([5.5, 5.5, 5.25]);
      translate([0,-1,0])
        cube([5.5, 4, 14]);
      translate([11-4, 11-4, 0])
      cube([4, 5, 14]);
    }
    translate([5.5, 5.5, 5.25])
      cylinder(r = 5.5, h = 10);
  }
}

//--------------------------------------------------------------------//
// At the lower mount is there is an arm coming from the upper mount  //
// and a branching structure containing 3 IR LEDs. These rotate using //
// the same kind of snap-in clip as the upper mount. There is nothing //
// at the back to force these two pieces together, so instead we have //
// a stabilizer that loosely holds them together, which must be made  //
// tight with the use of a zip-tie. There is a channel near the top   //
// of the stabilizer to allow the zip-tie to stay in place.           //
//--------------------------------------------------------------------//
module trackir_mount_lower() {
  difference() {
    union() {
      cylinder(r=7.5, h=5);
      //translate([-7, -7, 0])
      //  cube([14, 14, 5]);
      translate([-5, -7, 0])
        cube([10, 3, 25.5]);
      translate([-5, -7, 23])
        cube([10, 9, 2.5]);
    }
  translate([-5.1, -7.01, 21])
    cube([10.2, 0.5, 2]);
  translate([0, 0, 3])
    cylinder(r = 5.5, h = 11);
  translate([0, 0, 13.99])
    cylinder(r1 = 5.5, r2 = 3.25, h = 11.52);
  }
}

trackir_mount_upper();
//trackir_mount_lower();

