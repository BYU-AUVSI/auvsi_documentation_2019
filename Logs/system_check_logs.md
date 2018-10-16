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
