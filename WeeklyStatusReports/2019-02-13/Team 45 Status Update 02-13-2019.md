# Capstone Team 45 Status Update 02-13-2019

The following is a list of status updates and goals for each of the four subteams:

* * *

## Airframe

(*Ryan Anderson, Tyler Critchfield, Kameron Eves*)

**Last Week:**

- Documentation (Bill of Materials, FMEA, and testing artifacts)
- Began process of ordering electrical for a second aircraft.
- Continued tuning gains

**Next Week:**

- Documentation
- Tune gains more
- Test other systems in flight (besides documentation and building a spare aircraft our biggest task is helping other sub-teams test their systems)

## Controls

(*Andrew Torgesen, Brady Moon, John Akagi*)

**Last Week:**

- successfully tuned longitudinal and (most of) lateral autopilot
- collected a lot of verification data for ROSPlane's estimator
   - observed that the Inertial Sense's altitude estimation isn't that great
- investigated further the weaknesses of strengths of the obstacle avoidance path planner

**Next Week:**

- Create a more robust estimation scheme, leveraging both ROSPlane's and the Inertial Sense's estimators
- Do flight tests with the UGV and camera
- make a final decision on the direction to go with the path planner

## UGV

(*Jacob Willis, Derek Knowles, Brandon McBride*)

**Last Week:**

- Went dumpster diving and got several soda bottles.
- Preliminary integration of drop mechanism, parachute, airframe, and UGV completed. We spent yesterday and today testing the drop system and feel ready to perform an in-flight test.
- Fixed problem where odroid actuates drop mechanism repeatedly until ROS starts.
- Ordered components for UGV control system. Components are delayed due to Chinese New Year, so we are still waiting on them. Ryan Anderson found OpenPilot revolutions for sale from a US vendor and ordered some, so hopefully those arrive soon if the other ones don't.

**Next Week:**

- Test picking a waypoint and having ROS calculate the drop location.
- Get better materials for holding UGV in Airframe.
- Flight test.

## Vision

(*Tyler Miller, Jake Johnson, Connor Olsen*)

**Last Week:**

- Manual GUI has been merged into master (246 commits later)! This indicates we believe our server-client model is in a state where we can do manual target submission for the competition.
- Geolocation has been ported to python and is verified to work the same as the MATLAB version.
- Progress on autonomous dataset - splitting shape and letter classification into two separate neural-nets. Using our current autonomous code to make imperfect shapes (ie: noisy non-perfect edges/arcs) for the shape dataset.
- Fixed major memory issue on the camera driver. now works on the plane. **ready for a test flight**

**Next Week:**

- test flight
- more thoroughly conduct full integration testing of the GUI (from ros ingestion to final target submission via interop)
- discuss the best way to integrate geolocation with the server and implement that

* * *

Please send us any feedback with regards to the progress we've made, as well as our plans for the coming week.
