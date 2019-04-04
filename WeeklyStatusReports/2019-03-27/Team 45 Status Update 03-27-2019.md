# Capstone Team 45 Status Update 03-27-2019

The following is a list of status updates and goals for each of the four subteams:

* * *

## Airframe

(*Ryan Anderson, Tyler Critchfield, Kameron Eves*)

**Last Week:**

- Helped facilitate a successful flight test and two successful payload drops
- Made some progress on documentation

**Next Week:**

- Finish soldering on the new plane
- Perform an R/C flight test
- Potentially begin constructing payload door

## Controls

(*Andrew Torgesen, Brady Moon, John Akagi*)

**Last Week:**

- Successfully flew three waypoints in hardware!
- Observed that the lateral gains need better tuning for dealing with wind
- Used the path planner in hardware
- Validated new altitude estimator during a flight test--it works great

**Next Week:**

- Add wind state estimation to the estimator
- Tune the lateral gains in a windy environment
- Continue development of the mission planner and GUI software
- Obtain obstacle avoidance statistics during a hardware flight test

## UGV

(*Jacob Willis, Derek Knowles, Brandon McBride*)

**Last Week:**

- Tested the driving capability of the UGV on a rough runway, and it performs well
    - doesn't do well in tall grass
- Successfully dropped an iphone recording GPS data from the plane two times during a flight test

**Next Week:**

- Use the data from the two drops to validate and improve our drop prediction models
- More drop tests
- Working on getting  gps to work with ugv controller board

## Vision

(*Tyler Miller, Jake Johnson, Connor Olsen*)

**In progress:**

- Geolocation working for rectangular images of varying size (12 or 24MP)
- better timestamp accuracy with when the image was taken
- refining autonomous detection with additional test images taken from dji spark - creating a good test set for our shape and letter datasets
- improved letter dataset generator. Now uses various distorted fonts to help simulate what we’ll actually get from the detection system. - 44k images
- trained letter classifier - 98% accuracy on dataset, have not run on test set yet
- planning on going on a flight test or 2 in the next week
overall we’re in a refinement/bug fix stage for most of our stuff - except autonomous

* * *

Please send us any feedback with regards to the progress we've made, as well as our plans for the coming week.
