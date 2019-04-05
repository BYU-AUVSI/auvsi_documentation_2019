# Capstone Team 45 Status Update 04-03-2019

The following is a list of status updates and goals for each of the four subteams:

* * *

## Airframe

(*Ryan Anderson, Tyler Critchfield, Kameron Eves*)

**Last Week:**

- Finished soldering on the new plane
- Facilitated further flight testing
- Flight testing in Lehi, though the most recent attempt in Lehi left us unable to connect the Ubiquiti
- The airframe crashed into a tree this morning due to a RC communication loss in Rock Canyon Park
    - Damage was minor (thanks to the tree) 
    - We chose to fly in Rock Canyon today to give us more time to get hardware data
    - We think the cause may have been a loose wire in the ROSFlight board and/or the fact that the module in the back of the RC transmitter sometimes comes slightly loose, resulting in a lost connection
    - Extensive range testing after the crash proved it difficult to replicate the issue
    - We will avoid flying in Rock Canyon in the future 

**Next Week:**

- Finish design review documentation
- *MOCK COMPETITION*

## Controls

(*Andrew Torgesen, Brady Moon, John Akagi*)

**Last Week:**

- Added wind state estimation to the estimator
- Made several efforts to tune the lateral gains in a windy environment
- Flew the autopilot in a calm environment, and it performed well
- Observed path planner behavior during a hardware flight test
- Validated the RC communication loss failsafe during a hardware flight

**Next Week:**

- Finish design review documentation
- *MOCK COMPETITION*

## UGV

(*Jacob Willis, Derek Knowles, Brandon McBride*)

**Last Week:**

- Continued development of drop algorithm with wind estimation
- Continued working to get GPS working with the UGV controller board
- Began design review documentation

**Next Week:**

- Finish design review documentation
- *MOCK COMPETITION*

## Vision

(*Tyler Miller, Jake Johnson, Connor Olsen*)

**Last Week:**

- Obtained more images (with state information) from a field test with the plane
    - Working on classifying and geolocating these images in post-processing
- Used the imaging GUI during a field test

**Next Week:**

- Finish design review documentation
- *MOCK COMPETITION*

* * *

*Note from Andrew*: The fact that we were unable to connect to WiFi one day in Lehi and had the RC dropout issue in Rock Canyon Park is troubling. With regards to the WiFi issue, I'm downloading and learning some software tools designed by Ubiquiti for performing site surveys to pinpoint levels of signal interference and obtain other debugging tools. Looking online, there are plenty of examples of connectivity issues, and what I think we're lacking is the proper suite of debugging tools, which luckily are free and available online. With regards to the RC issues, we've only experienced this in Rock Canyon Park and it's a hard issue to replicate--we spent about an hour trying to do so this morning. Though an RC scan showed almost no interference in the vicinity (-100 dB more or less), we definitely want to avoid Rock Canyon. We basically tried to fly there today out of desperation to obtain more hardware data for the Key Success Measures. All the focus of the team (after the design review) is on holding a complete Mock Competition.

Please send us any feedback with regards to the progress we've made, as well as our plans for the coming week.
