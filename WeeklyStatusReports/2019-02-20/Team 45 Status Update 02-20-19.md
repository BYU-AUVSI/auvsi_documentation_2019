# Capstone Team 45 Status Update 02-20-19

The following is a list of status updates and goals for each of the four subteams:

* * *

## Airframe

(*Ryan Anderson, Tyler Critchfield, Kameron Eves*)

**Last Week:**

- Planned all required design review artifacts
- Completed 75% of required design review artifacts
- Compiled an R/C bill of materials and ordered the parts needed for an R/C only plane
- Compiled a comprehensive bill of materials for a fully functional plane
- Finished as much of the second airframe as possible before cannibalizing the first airframe

**Next Week:**

- Build second R/C plane
- Finish preparing for design review

## Controls

(*Andrew Torgesen, Brady Moon, John Akagi*)

**Last Week:**

- Close to finished with Design Review artifacts
- flight test with UGV
- Decided on path planning architecture:
   - Many suggested reactive path planner, but it's also important to ensure that we can do a priori path planning
   - Probably going to use a priori RRT as the base, then use the path follower to do reactive fine-tuning of obstacle avoidance and waypoint capture

**Next Week:**

- Finish documentation
- Decide best way to ensure waypoint capture with obstacle avoidance--perhaps by creating waypoint sinks in a potential field
- More flight tests!
- Develop joint estimation scheme between Inertial Sense and ROSPlane

## UGV

(*Jacob Willis, Derek Knowles, Brandon McBride*)

**Last Week:**

- Worked on capstone documentation
- Worked on bug where bay door opens when odroid turns on, rewriting arduino code.
- Successful drop test from RC controlled airplane.

**Next Week:**

- Documentation for design review
- Finish arduino fix
- Improve UGV bay enclosure using better plastic.
- More drop tests - get timing estimate for release and drop

## Vision

(*Tyler Miller, Jake Johnson, Connor Olsen*)

**Last Week:**

- lots of documentation work for design review and just general helpful documentation on the imaging repository itself
- found a good way to generate our autonomous dataset, pulling frames out of a video (similar to how we find objects in the current autonomous codebase). **see super cool video attached**. This is a fast and easy way to make imperfect/warped shapes to challenge the neural net.
- minor fixes/improvements to gui/server

**Next Week:**

- fly, get a good bag of data with target locations recorded.
- generate the entire shape dataset using the above method

* * *

Please send us any feedback with regards to the progress we've made, as well as our plans for the coming week.
