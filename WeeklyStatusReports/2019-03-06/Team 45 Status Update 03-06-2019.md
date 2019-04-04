# Capstone Team 45 Status Update 03-06-2019

The following is a list of status updates and goals for each of the four subteams:

* * *

## Airframe

(*Ryan Anderson, Tyler Critchfield, Kameron Eves*)

**Last Week:**

- Finished Documentation edits (including adding a couple artifacts)
- Helped with test flight
- Planned wiring for new airframe
- Almost everything but soldering is complete on the new plane

**Next Week:**

- Finish soldering/wiring layout for new plane
- Assist with test flights
- Work on code for UGV drop if time

## Controls

(*Andrew Torgesen, Brady Moon, John Akagi*)

**Last Week:**

- Sent in updated design review artifacts
- familiarized ourselves with automated takeoff and landing, ready to test in hardware
- figured out some easy-to-miss issues in the flight test process and documented them in the field flight checklist
- debugged an issue with our handling of git that caused the controller to stop working in hardware
   - as a result, we assigned a member of the team to check and approve all changes made on the plane in hardware
- Collected really good sensor data during a test flight that will allow us to create a more robust altitude and course angle estimation scheme; almost finished implementing and testing

**Next Week:**

- Fly waypoints
- Test autonomous takeoff and landing in hardware
- Finish implementing and testing the updated estimator
- *Create finalized system diagram for the revised path planner and mission planner*

## UGV

(*Jacob Willis, Derek Knowles, Brandon McBride*)

**Last Week:**

- Fixed documentation
- Fixed bay door opening on bootup (hopefully). I think eventually the best fix would be to get rid of the arduino altogether and use the rosflight board to control this. What we have works though, so we aren't going to make any changes.
- Planned to develop better drop algorithm.
- Analyzed videos of drops. We have three good videos, but would like to do more drops so we can get a good estimate of how the UGV is falling

**Next Week:**

- Perform more drops to develop a better model to use for predicting drops.
- Start developing ground vehicle (Brandon and Jacob)
- Start new drop algorithm development (Derek)

## Vision

(*Tyler Miller, Jake Johnson, Connor Olsen*)

**Last Week:**

- finished shape dataset generation. Squeezenet classifier attaining super high accuracies again
- geolocation code is mostly integrated with the server

**Next Week:**

- use target images from rosbags as test data for the shape classifier, adjust as needed. Worried about how quickly it attained accuracies > 95%. our imperfect dataset (which we made from the videos), may not be big enough or have enough variety. We have ideas on how to introduce more distortion/imperfection though
- find cause of image streaming bug (we weren’t able to stream images to the groundstation on yesterdays flight test. cause still unknown)
- unit tests for geolocation

* * *

Please send us any feedback with regards to the progress we've made, as well as our plans for the coming week.
