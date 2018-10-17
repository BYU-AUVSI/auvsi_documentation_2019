# System Check Logs

A journal of our attempts as a team to get the entire plane system up and running for a test flight.

## 10/5/2018: Pre-flight checklist test run 1

We attempted to go through the entire pre-flight checklist as found on <rosflight.org>. Specific assignments were given out the previous day, and each individual was self-driven in getting ready for the check.

When it came time for the actual check, there were two main issues:

- We had trouble getting the ground station to launch. It might have been a problem specific to the specific machine being used (changes had been made to the repos on that computer), but that's something to look into
- **RC was giving us a lot of grief**. When we connected pure RC, the motors responded (when armed), but the servos never responded. When the autopilot was turned on, it claimed to have lost RC signal, and turned on the motors itself, even when it was "disarmed" from RC.
    - This was enlightening; in the future, we need to ensure that RC is working perfectly before proceeding with anything else.

## 10/11/2018: Pre-flight checklist test run 2

Once again, we tried to go through the entire pre-flight checklist, this time provided by Brandon McBride with his work with Tray in the MAGICC Lab. Everyone seemed to remember their individual assignments, and got right to work when the time came.

- We ran tests with the props on, and we ***burned out the left motor***.
- RC appears to be working great, but we didn’t test it with ROSPlane also attached
- We need to replace the left motor, and set a limit on the throttle command. Kameron, Ryan, and Tyler are looking into that.
- We will try to do the full pre-flight check tomorrow. This will probably set back our test flight to Tuesday.

## 10/15/2018: Pre-flight checklist test run 3

Steps followed:

1. Power on
2. Verify network connection
3. Check RC
4. Launch ROSPlane
5. Launch Interop Server
6. Launch Groundstation
7. Calibrate sensors, verify on groundstation

Issues encountered:
- the groundstation kept running into the issue "waiting for send_waypoints service to become available"
    - we were able to view the states on the old groundstation on Brandon's computer
    - it's apparent that ***we are not sufficiently familiar with last year's path planning/ground station setup***

## 10/16/2018: FLIGHT TEST I

**Issue:** 

We were unable to connect to the plane via ssh; the bullet couldn't seem to get full bars, and we're not sure why. The computers were able to connect to the rocket.

**Debugging:**

- We repeatedly reset our systems, turning on things in a different order, etc.
- The computers were able to connect to the rocket, so that wasn't the issue.
- After the flight test, we connected everything to my car's power, so powering things through the car wasn't the issue.
- With the rocket connected to my car and the bullet connected to the Airplane's battery, a connection was easily established...maybe we just ran into some really bad luck.

**Issue:** 

We launched the plane incorrectly, and damaged the airframe. We were not able to fly and had to go back to campus.

**Debugging:**

Kameron and Brandon believe that the following may have been the causes:

- the plane was launched at a slight angle, which diminished its lift capabilities from the beginning
- the elevator was not pinned sufficiently during launch
- not enough throttle was given at launch

The two of them will attempt to get some practice in a separate setting, and perhaps take on one more team member to be familiar with the launching process.