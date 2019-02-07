# Capstone Team 45 Status Update 02-06-2019

The following is a list of status updates and goals for each of the four subteams:

* * *

## Airframe

(*Ryan Anderson, Tyler Critchfield, Kameron Eves*)

**Last Week:**

- Almost finished second airframe
- Several successful RC flight tests

**Next Week:**

- Finish second airframe

## Controls

(*Andrew Torgesen, Brady Moon, John Akagi*)

**Last Week:**

- tracked down and changed faulty parameters in the actuator controls
- **successfully tuned the longitudinal autopilot**
- changed parameters in the path planner to improve its performance

**Next Week:**

- tune lateral autopilot
- fly waypoints in hardware

## UGV

(*Jacob Willis, Derek Knowles, Brandon McBride*)

**Last Week:**

- Cut hole in plane for UGV drop mechanism
- Put servo controllers on servo and drive motor in UGV chassis

**Next Week:**

We have decided to use an openpilot revolution, but to use the rosflight driver layer to abstract the hardware. We will then write the control code on top of that. We feel that this will give us the best flexibility, while also allowing us to take advantage of the sensors onboard the openpilot revolution. We will be placing an order for this board today.

## Vision

(*Tyler Miller, Jake Johnson, Connor Olsen*)

**Last Week:**

- server now completely routes from rostopic data ingestion to final interop submission
- gui target submission working (meaning the gui is fully functional for manual classification)
- autonomous: CNN achieved 99% accuracy on our 250k image dataset but did not perform well on ‘real’ images.
- cut hole in plane for camera

**Next Week:**

- need to make dataset harder $\rightarrow$ adding more noise and visual artifacts to it
- hoping to get an imaging bag this week with an rc flight. this will give us actual real images to test classifier net against. as well as test data for geolocation

* * *

Please send us any feedback with regards to the progress we've made, as well as our plans for the coming week.
