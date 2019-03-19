# Capstone Team 45 Status Update 2-27-19

The following is a list of status updates and goals for each of the four subteams:

* * *

## Airframe

(*Ryan Anderson, Tyler Critchfield, Kameron Eves*)

**Last Week:**

- Wrote documentation for design review
- Assisted with vision/UGV test flights

**Next Week:**

- Install newly-acquired servos & motors into the new plane
- Continue helping with test flights
- Finish documentation edits for design review final submission

## Controls

(*Andrew Torgesen, Brady Moon, John Akagi*)

**Last Week:**

- Wrote documentation for the design review
- Wrote methods for path following obstacle avoidance
- Modified path planner for immediate usage in flight testing

**Next Week:**

- Fly waypoints in hardware
- Implement sensor fusion to get more accurate altitude and course data
    - Use ROSbag data for testing
- Strip down bells and whistles of RRT algorithm

## UGV

(*Jacob Willis, Derek Knowles, Brandon McBride*)

**Last Week:**

- Mostly did documentation in preparation for the design review.
- Had two more successful drop tests, one unsuccessful test. The unsuccessful test was due to some tape I added to the bay door that kept the bay door from opening when commanded. Easy fix: check that the bay door opens well before we fly.
- Got our controller board, so we will start working with that this week.

**Next Week:**

- Be able to have the UGV drive itself around (not guided, just to see it go)

## Vision

(*Tyler Miller, Jake Johnson, Connor Olsen*)

**Last Week:**

- finished documentation for design review
- autonomous shape dataset generation in progress
- three flights with the camera. bagged data to use for testing/bug fixing - will be especially useful for debugging geolocation and orientation stuff

**Next Week:**

- finish shape dataset generation, start training
- debugging with the ros bags
- geolocation server integration.
- build easy demo image - this is part of our initial Imaging codebase ‘release’. the idea is to build a docker image that allows future teams to run a single command that sets up the server, populates it with good data and runs the client so they can get a quick feel for how things work.

* * *

Please send us any feedback with regards to the progress we've made, as well as our plans for the coming week.
