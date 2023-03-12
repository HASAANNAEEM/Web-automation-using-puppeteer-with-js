@eObservations @e2e
Feature: To check the eObservations Functionality

  @TST-1225 @haider @e2eSprint @sprint6 @Bug:noReasonAvailable
  Scenario: V3 Observations :  Changing Review Times
    Given user lands on "Systems" page
#    Then check if the current user has the role of "WebV Admin" and if not then change it
#    Then user clicks on "Settings" in menu bar section
#    Then user lands on "Settings" page
#    Then user clicks on "Roles" icon
#    Then user lands on "Role Settings" page
#    Then user clicks on "WebV Admin" in the table
#    Then verify pop-up "Role Details"
#    Then user clicks on the action icon pop-up
#    Then wait for pop header to change to "Menu"
#    Then user clicks on the action "Configure Permissions"
#    Then wait for pop header to change to "Role Permissions"
#    Then set permissions "Systems" to have all permissions
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then user lands on "Patient Vitals" module
    Then user clicks on the plus icon
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "Respiration"
    Then wait for pop header to change to "Select Respiration"
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Enter Value" with value "100"
    Then user clicks on tick-checkbox
    Then user clicks on the action "SPO2 Scale 1 "
    Then wait for pop header to change to "Select SPO2 Scale 1"
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Enter Value" with value "17"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Air or Oxygen"
    Then wait for pop header to change to "Air Or Oxygen"
    Then user clicks on the action "Air"
    Then wait for pop header to change to "Select Air Or Oxygen"
    Then user clicks on the action "No O2 Supplement"
    Then user clicks on the action "Blood Pressure"
    Then wait for pop header to change to "Select Blood Pressure"
    Then user inputs "Systolic" with value "50"
    Then user inputs "Diastolic" with value "120"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Pulse"
    Then wait for pop header to change to "Select Pulse"
    Then user inputs "Enter Value" with value "100"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Consciousness"
    Then wait for pop header to change to "Select Consciousness"
    Then user clicks on the action "Unresponsive"
    Then user clicks on the action "Temperature"
    Then wait for pop header to change to "Select Temperature"
    Then user inputs "Enter Value" with value "50"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Vitals Assessment Summary"
    Then user clicks on the action "Review Due"
    Then wait for pop header to change to "Edit Vitals Review"
    Then user clicks on the action "Action"
    Then verify pop-up "Select Action"
    Then user clicks on the action "Adjusted"
    Then wait for pop header to change to "Edit Vitals Review"
    Then user clicks on the action "Interval"
    Then wait for pop header to change to "Select Interval"
    Then user verify action "15 Minutes" is available
    Then user verify action "30 Minutes" is available
    Then user verify action "1 Hour" is available
    Then user verify action "2 Hour" is available
    Then user verify action "3 Hour" is available
    Then user verify action "4 Hour" is available
    Then user verify action "5 Hour" is available
    Then user verify action "6 Hour" is available
    Then user verify action "12 Hour" is available
    Then user clicks on the action "30 Minutes"
    Then wait for pop header to change to "Edit Vitals Review"
    Then set the yes-no of header "Indefinite" to "Yes"
    Then user clicks on the action "Reason"
    Then user clicks on the action "Post Surgery"
    Then user clicks on tick-checkbox
    Then save the review due time
    Then verify review due time with "30" mins added

  @TST-1214 @haider @e2eSprint @sprint6
  Scenario: Updating Information Screens - Show Obs Details
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify module navigator "List" exits
    Then verify module navigator "Graphs" exits
    Then verify module navigator "Charts" exits
    Then wait for popup loading
    Then wait for loading in "Patient Values" section
    Then verify the color coding for the thresholds "Yellow|Red|Grey|Orange|Silver"

  @TST-1215 @haider @e2eSprint @sprint6
  Scenario: Information Screens - Observations List
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "eObservationsData|ward"
    Then add patient with NHS number "eObservationsData|patientNHSNumber" in bed "Bay 2 / Bed 5"
    Then user clicks on the option "Bay 2 / Bed 5"
    Then verify pop-up "Slot Details"
    Then verify "Area / Slot" with value "Bay 2 / Bed 5" in the pop-up details
    Then verify "Status" with value "Occupied" in the pop-up details
    Then verify pop-up patients demographics exist
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then verify pop-up patients demographics exist
    Then user verify action "clinical indicators" is available
    Then user verify action "residency management" is available
    Then user verify action "assessments" is available
    Then user verify action "clinical personnel" is available
    Then user clicks on the action "assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify events are in descending order in patient vitals module
    Then complete all required vital information: Respiration "100" Air or Oxygen "No O2 Supplement" SPO2 Scale 1 "15" Blood Pressure "50|120" Pulse "180" Consciousness "Unresponsive" Temperature "50"
    Then verify date filter applied has a difference of "90" days
    Then user clicks on "loginData|credentials.name" in the Section of the Table
    Then wait for popup loading
    Then verify pop-up "Observation Details"
    Then verify "Status" with value "Valid" in the observation pop-up
    Then verify "Recorded By" with value "loginData|credentials.name" in the observation pop-up
#    Then verify "Trend & Score" with value "17" with "Red" as font "background-color" in the pop-up
    Then verify "Respiration" with value "100 br/min " with "Red" as font "color" in the pop-up
    Then verify "Air or Oxygen" with value "No O2 Supplement" in the observation pop-up
    Then verify "SPO2 Scale 1" with value "15 % " with "Red" as font "color" in the pop-up
    Then verify "Blood Pressure - Systolic" with value "50 mmHg " with "Red" as font "color" in the pop-up
    Then verify "Blood Pressure - Diastolic" with value "120 mmHg " with "Red" as font "color" in the pop-up
    Then verify "Pulse" with value "180 BPM " with "Red" as font "color" in the pop-up
    Then verify "Consciousness" with value "Unresponsive" with "Red" as font "color" in the pop-up
    Then verify "Temperature" with value "50 Celsius " with "Yellow" as font "color" in the pop-up
    Then verify "Temperature" with value "50 Celsius " with "Yellow" as font "color" in the pop-up
    Then verify "Site" with value "Diana Princess of Wales Hospital" in the observation pop-up
    Then verify "Ward/Unit" with value "eObservationsData|ward" in the observation pop-up
    Then verify "Location" with value "Bed 5" in the observation pop-up

  @TST-1218 @haider @e2eSprint @sprint6 @bug:NoPopUpOccursAfter15Mins
  Scenario: Patient Alerts - Assessments FE - Ward Information Screens
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "eObservationsData|ward"
    Then add patient with NHS number "eObservationsData|patientNHSNumber" in bed "Bay 2 / Bed 5"
    Then user clicks on the option "Bay 2 / Bed 5"
    Then verify pop-up "Slot Details"
    Then verify "Area / Slot" with value "Bay 2 / Bed 5" in the pop-up details
    Then verify "Status" with value "Occupied" in the pop-up details
    Then verify pop-up patients demographics exist
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "assessments"
    Then user lands on "Patient Assessments" page
    Then user lands on "Patient Vitals" module
    Then complete all required vital information: Respiration "100" Air or Oxygen "No O2 Supplement" SPO2 Scale 1 "15" Blood Pressure "50|120" Pulse "180" Consciousness "Unresponsive" Temperature "50"
    Then wait for "20" mins without loggin out and clicking on header "Patient Vitals"
    Then user clicks on back icon
    Then wait for popup loading
    Then verify pop-up "Slot Details"
    Then user clicks on pop-up back icon
    Then user lands on "eObservationsData|ward" page
    Then wait for 10 seconds
    Then reload page
    Then wait for popup loading
    Then user clicks on back icon
    Then user lands on "Information Screens" page
    Then user clicks on the option "eObservationsData|ward"
    Then user lands on "eObservationsData|ward" page
    Then wait for 10 seconds
    Then verify pop-up "Overdue Assessments & Observations"
    Then verify pop-up warning "Displayed below is a list of patients with alerts of significant importance that need to be actioned"
    Then verify pop-up nhs number "eObservationsData|patientNHSNumberVerify"
    Then user clicks on cross icon
    Then discharge patient in bed "Bay 2 / Bed 5" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"

  @TST-1221 @haider @e2eSprint @sprint6
  Scenario: Recording Vitals - Barrel Groups
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify module navigator "List" exits
    Then verify module navigator "Graphs" exits
    Then verify module navigator "Charts" exits
    Then user clicks on the plus icon
    Then wait for popup loading
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for popup loading
    Then verify pop-up "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then wait for popup loading
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then verify pop-up "New Vitals Assessment"
    Then user clicks on the action "Temperature"
    Then wait for popup loading
    Then verify pop-up "Select Temperature"
    Then verify pop-up patients demographics exist
    Then verify "Profile" with value "National Early Warning Score (Scale 1)" in the pop-up
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Enter Value" with value "20"
    Then user clicks on the "Input Method" to change it to "Wheel"
    Then verify the double barrel value is "20.0"
    Then scroll up two time and two time down with "keyboard" for double barrel verification
    Then verify the double barrel value is "30.0"
    Then scroll up two time and two time down with "mouse" for double barrel verification
    Then verify the double barrel value is "29.8"

  @TST-1226 @haider @e2eSprint @sprint6
  Scenario: Details Panel - Patient Location
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify module navigator "List" exits
    Then verify module navigator "Graphs" exits
    Then verify module navigator "Charts" exits
    Then user clicks on the plus icon
    Then wait for popup loading
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for popup loading
    Then verify pop-up "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then wait for popup loading
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then verify pop-up "New Vitals Assessment"
    Then add required vital information: Respiration "100" Air or Oxygen "No O2 Supplement" SPO2 Scale 1 "15" Blood Pressure "50|120" Pulse "180" Consciousness "Unresponsive" Temperature "50"
    Then user clicks on "loginData|credentials.name" in the Section of the Table
    Then wait for popup loading
    Then verify pop-up "Observation Details"
    Then verify "Respiration" with value "100 br/min " with "Red" as font "color" in the pop-up
    Then verify "Air or Oxygen" with value "No O2 Supplement" in the observation pop-up
    Then verify "SPO2 Scale 1" with value "15 % " with "Red" as font "color" in the pop-up
    Then verify "Blood Pressure - Systolic" with value "50 mmHg " with "Red" as font "color" in the pop-up
    Then verify "Blood Pressure - Diastolic" with value "120 mmHg " with "Red" as font "color" in the pop-up
    Then verify "Pulse" with value "180 BPM " with "Red" as font "color" in the pop-up
    Then verify "Consciousness" with value "Unresponsive" with "Red" as font "color" in the pop-up
    Then verify "Temperature" with value "50 Celsius " with "Yellow" as font "color" in the pop-up
    Then verify "Temperature" with value "50 Celsius " with "Yellow" as font "color" in the pop-up
    Then verify "Site" with value "Diana Princess of Wales Hospital" in the observation pop-up
    Then verify "Ward/Unit" with value "eObservationsData|ward" in the observation pop-up
    Then verify "Location" with value "Bed 5" in the observation pop-up

  @TST-1231 @haider @e2eSprint @sprint6
  Scenario: Vitals improvements
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then user lands on "Patient Vitals" module
    Then complete all required vital information: Respiration "100" Air or Oxygen "No O2 Supplement" SPO2 Scale 1 "15" Blood Pressure "50|120" Pulse "180" Consciousness "Unresponsive" Temperature "50"

  @TST-1232 @haider @e2eSprint @sprint6
  Scenario: Make patient assessments list on information screens order from newest to oldest
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "eObservationsData|ward"
    Then add patient with NHS number "eObservationsData|patientNHSNumber" in bed "Bay 2 / Bed 5"
    Then user clicks on the option "Bay 2 / Bed 5"
    Then verify pop-up "Slot Details"
    Then verify "Area / Slot" with value "Bay 2 / Bed 5" in the pop-up details
    Then verify "Status" with value "Occupied" in the pop-up details
    Then verify pop-up patients demographics exist
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then verify pop-up patients demographics exist
    Then user verify action "clinical indicators" is available
    Then user verify action "residency management" is available
    Then user verify action "assessments" is available
    Then user verify action "clinical personnel" is available
    Then user clicks on the action "assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify events are in descending order in patient vitals module
#    Then verify date filter applied has a difference of "90" days
    Then filter and verify dates by "shortening" the date on patient vitals page
    Then filter and verify dates by "widening" the date on patient vitals page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "eObservationsData|ward"
    Then discharge patient in bed "Bay 2 / Bed 5" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"

  @TST-1284 @haider @e2eSprint @sprint6
  Scenario: Clear assessment data for a patient when leaving the module
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then user lands on "Patient Vitals" module
    Then user saves the number of records for this patient
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber2"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then user lands on "Patient Vitals" module
    Then user saves and compares the number of records for this patient

  @TST-1285 @haider @e2eSprint @sprint6
  Scenario: Recording Individual/Selection of Vital Signs
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then user lands on "Patient Vitals" module
    Then user saves the number of records for this patient
    Then user clicks on the plus icon
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "Respiration"
    Then wait for pop header to change to "Select Respiration"
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Enter Value" with value "100"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Air or Oxygen"
    Then wait for pop header to change to "Air Or Oxygen"
    Then user clicks on the action "Air"
    Then wait for pop header to change to "Select Air Or Oxygen"
    Then user clicks on the action "No O2 Supplement"
    Then user clicks on the action "Blood Pressure"
    Then wait for pop header to change to "Select Blood Pressure"
    Then user inputs "Systolic" with value "50"
    Then user inputs "Diastolic" with value "120"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Pulse"
    Then wait for pop header to change to "Select Pulse"
    Then user inputs "Enter Value" with value "100"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Consciousness"
    Then wait for pop header to change to "Select Consciousness"
    Then user clicks on the action "Unresponsive"
    Then user clicks on the action "Temperature"
    Then wait for pop header to change to "Select Temperature"
    Then user inputs "Enter Value" with value "50"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Vitals Assessment Summary"
    Then verify pop-up vitals summary header "Respiration" with Value "100 br/min"
    Then verify pop-up vitals summary header "SPO2 Scale 1" with Value "Not Selected"
    Then verify pop-up vitals summary header "Air or Oxygen" with Value "No O2 Supplement"
    Then verify pop-up vitals summary header "Blood Pressure" with Value "50 mmHg / 120 mmHg"
    Then verify pop-up vitals summary header "Pulse" with Value "100 BPM"
    Then verify pop-up vitals summary header "Consciousness" with Value "Unresponsive"
    Then verify pop-up vitals summary header "Temperature" with Value "50 Celsius"
    Then user clicks on pop-up back icon
    Then user clicks on the action "Temperature"
    Then wait for pop header to change to "Select Temperature"
    Then user inputs "Enter Value" with value "30"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Vitals Assessment Summary"
    Then verify pop-up vitals summary header "Temperature" with Value "30 Celsius"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for "50" seconds
    Then user saves and compares the number of records for this patient
    Then verify no overall score is generated for the new observation

#    Sprint 6
  @TST-1165 @safi @e2eSprint @sprint6 @refactorSp18
  Scenario: V3 Observations -  Recording NEWS - Summary of Vitals
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Assessments" option from dropdown
    Then user lands on "Patient Assessments" page
    Then user clicks on plus icon on top right corner of the page
    Then verify pop-up "New Assessments"
    Then user clicks on "Vitals" in New Assessments popUp
    Then verify pop-up "New Vitals Assessment"
    Then user verify action "Paediatric Early Warning Score (5-12)Paediatric Early Warning Score (5-12)" is available
    Then user clicks on the action "Paediatric Early Warning Score (5-12)"
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then verify pop-up "New Vitals Assessment"
    Then user clicks on the action "How is your child different since I last saw you?"
    Then verify pop-up "Select How is your child different since I last saw you?"
    Then user clicks on the action "Worse"
    Then user clicks on the action "Respiratory Rate"
    Then verify pop-up "Select Respiratory Rate"
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Enter Value" with value "100"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Respiratory Distress"
    Then verify pop-up "Select Respiratory Distress"
    Then user clicks on the action "Moderate"
    Then user clicks on the action "SP02"
    Then verify pop-up "Select SP02"
    Then user inputs "Enter Value" with value "50"
    Then user clicks on tick-checkbox
    Then user clicks on the action "O2 Supplement"
    Then verify pop-up "Select O2 Supplement"
    Then user clicks on the action "Room Air"
  #  Then user clicks on the action "Oxygen Percentage"
  #  Then verify pop-up "Select Oxygen Percentage"
  #  Then user inputs "Enter Value" with value "40"
  #  Then user clicks on tick-checkbox
#    Then user clicks on the action "Oxygen Delivered"
#    Then verify pop-up "Select Oxygen Delivered"
#    Then user inputs "Enter Value" with value "50"
#    Then user clicks on tick-checkbox
    Then user clicks on the action "Pulse"
    Then verify pop-up "Select Pulse"
    Then user inputs "Enter Value" with value "120"
    Then user clicks on tick-checkbox
#    Then user clicks on the action "Blood Pressure - Systolic"
#    Then verify pop-up "Select Blood Pressure - Systolic"
#    Then user inputs "Enter Value" with value "200"
#    Then user clicks on tick-checkbox
    Then user clicks on the action "Blood Pressure - Diastolic"
    Then verify pop-up "Select Blood Pressure - Diastolic"
    Then user inputs "Enter Value" with value "110"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Mean Arterial Pressure  (MAP)"
    Then verify pop-up "Select Mean Arterial Pressure  (MAP)"
    Then user inputs "Enter Value" with value "190"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Blood Pressure Taken?"
    Then verify pop-up "Select Blood Pressure Taken?"
    Then user clicks on the action "Taken"
    Then user clicks on the action "Capillary Refill Time (CRT)"
    Then verify pop-up "Select Capillary Refill Time (CRT)"
    Then user inputs "Enter Value" with value "7"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Temperature Location"
    Then verify pop-up "Select Temperature Location"
    Then user clicks on the action "Axilla"
    Then user clicks on the action "Temperature"
    Then verify pop-up "Select Temperature"
    Then user inputs "Enter Value" with value "34"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Suspect Sepsis"
    Then verify pop-up "Select Suspect Sepsis"
    Then user clicks on the action "Yes"
    Then user clicks on the action "AVPU"
    Then verify pop-up "Select AVPU"
    Then user clicks on the action "Responds to Voice"
    Then user clicks on the action "Pain Score"
    Then verify pop-up "Select Pain Score"
    Then user inputs "Enter Value" with value "5"
    Then user clicks on tick-checkbox
    Then user clicks on the action "SaO2 probe change"
    Then verify pop-up "Select SaO2 probe change"
    Then user clicks on the action "Yes"
    Then user clicks on the action "Blood Glucose"
    Then verify pop-up "Select Blood Glucose"
    Then user inputs "Enter Value" with value "25"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Nurse Concern "
    Then verify pop-up "Select Nurse Concern "
    Then user clicks on the action "Yes"
    Then user clicks on the action "Parent Concern "
    Then verify pop-up "Select Parent Concern "
    Then user clicks on the action "Yes"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Vitals Assessment Summary"
    Then verify pop-up vitals summary header "How is your child different since I last saw you?" with Value "Worse"
    Then verify pop-up vitals summary header "Respiratory Rate" with Value "100 br/min"
    Then verify pop-up vitals summary header "Respiratory Distress" with Value "Moderate"
    Then verify pop-up vitals summary header "SP02" with Value "50 %"
    Then verify pop-up vitals summary header "O2 Supplement" with Value "Room Air"
    Then verify pop-up vitals summary header "Oxygen Percentage" with Value "40 %"
    Then verify pop-up vitals summary header "Oxygen Delivered" with Value "50 L/min"
    Then verify pop-up vitals summary header "Pulse" with Value "120 BPM"
    Then verify pop-up vitals summary header "Blood Pressure - Diastolic" with Value "200 mmHg"
    Then verify pop-up vitals summary header "SP02" with Value "110 mmHg"
    Then verify pop-up vitals summary header "Mean Arterial Pressure  (MAP)" with Value "190 mmHg"
    Then verify pop-up vitals summary header "Blood Pressure Taken?" with Value "Taken"
    Then verify pop-up vitals summary header "Capillary Refill Time (CRT)" with Value "7 secs"
    Then verify pop-up vitals summary header "Temperature Location" with Value "Axilla"
    Then verify pop-up vitals summary header "Temperature" with Value "34 Celsius"
    Then verify pop-up vitals summary header "Suspect Sepsis" with Value "Yes"
    Then verify pop-up vitals summary header "AVPU" with Value "Responds to Voice"
    Then verify pop-up vitals summary header "Pain Score" with Value "5"
    Then verify pop-up vitals summary header "SaO2 probe change" with Value "Yes"
    Then verify pop-up vitals summary header "Blood Glucose" with Value "25 mmol/L"
    Then verify pop-up vitals summary header "Nurse Concern " with Value "Yes"
    Then verify pop-up vitals summary header "Parent Concern " with Value "Yes"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for "50" seconds
    Then verify pop-up "Clinical Information"
    Then user clicks on tick-checkbox

  @TST-1202 @safi @e2eSprint @sprint6 @refactorSp18
  Scenario: Viewing Vital Signs Assessment in Patient Event List
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Records" option from dropdown
    Then user lands on "Patient Records" page
    Then user lands on "Event List" module
  #  Then verify module navigator "Event Report" exits


  @TST-1166 @safi @e2eSprint @sprint6
  Scenario: V3 Observations - Accessing Assessments Module
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Assessments" option from dropdown
    Then user verify the tabs displayed or not

  @TST-1168 @safi @e2eSprint @sprint6 @refactorSp18
  Scenario: V3 Observations -  Viewing Vital Signs Results Table
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Assessments" option from dropdown
    Then user lands on "Patient Assessments" page
    Then user lands on "Patient Vitals" module
    Then user clicks on "loginData|credentials1.name" in the Section of the Table
    Then wait for popup loading
    Then verify pop-up "Observation Details"
    Then verify pop-up vitals summary header "How is your child different since I last saw you?" with Value "Worse"
    Then verify pop-up vitals summary header "Respiratory Rate" with Value "100 br/min"
    Then verify pop-up vitals summary header "Respiratory Distress" with Value "Moderate"
    Then verify pop-up vitals summary header "SP02" with Value "50 %"
    Then verify pop-up vitals summary header "O2 Supplement" with Value "Room Air"
    Then verify pop-up vitals summary header "Oxygen Percentage" with Value "40 %"
    Then verify pop-up vitals summary header "Oxygen Delivered" with Value "50 L/min"
    Then verify pop-up vitals summary header "Pulse" with Value "120 BPM"
    Then verify pop-up vitals summary header "Blood Pressure - Diastolic" with Value "200 mmHg"
    Then verify pop-up vitals summary header "SP02" with Value "110 mmHg"
    Then verify pop-up vitals summary header "Mean Arterial Pressure  (MAP)" with Value "190 mmHg"
    Then verify pop-up vitals summary header "Blood Pressure Taken?" with Value "Taken"
    Then verify pop-up vitals summary header "Capillary Refill Time (CRT)" with Value "7 secs"
    Then verify pop-up vitals summary header "Temperature Location" with Value "Axilla"
    Then verify pop-up vitals summary header "Temperature" with Value "34 Celsius"
    Then verify pop-up vitals summary header "Suspect Sepsis" with Value "Yes"
    Then verify pop-up vitals summary header "AVPU" with Value "Responds to Voice"
    Then verify pop-up vitals summary header "Pain Score" with Value "5"
    Then verify pop-up vitals summary header "SaO2 probe change" with Value "Yes"
    Then verify pop-up vitals summary header "Blood Glucose" with Value "25 mmol/L"
    Then verify pop-up vitals summary header "Nurse Concern " with Value "Yes"
    Then verify pop-up vitals summary header "Parent Concern " with Value "Yes"

  @TST-1199 @safi @e2eSprint @sprint6
  Scenario: Recording a NEWS Vital Signs
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then user lands on "Patient Vitals" module
    Then user saves the number of records for this patient
    Then user clicks on the plus icon
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "Respiration"
    Then wait for pop header to change to "Select Respiration"
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Enter Value" with value "100"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Air or Oxygen"
    Then wait for pop header to change to "Air Or Oxygen"
    Then user clicks on the action "Air"
    Then wait for pop header to change to "Select Air Or Oxygen"
    Then user clicks on the action "No O2 Supplement"
    Then user clicks on the action "Blood Pressure"
    Then wait for pop header to change to "Select Blood Pressure"
    Then user inputs "Systolic" with value "50"
    Then user inputs "Diastolic" with value "120"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Pulse"
    Then wait for pop header to change to "Select Pulse"
    Then user inputs "Enter Value" with value "100"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Consciousness"
    Then wait for pop header to change to "Select Consciousness"
    Then user clicks on the action "Unresponsive"
    Then user clicks on the action "Temperature"
    Then wait for pop header to change to "Select Temperature"
    Then user inputs "Enter Value" with value "50"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Vitals Assessment Summary"
    Then verify pop-up vitals summary header "Respiration" with Value "100 br/min"
    Then verify pop-up vitals summary header "SPO2 Scale 1" with Value "Not Selected"
    Then verify pop-up vitals summary header "Air or Oxygen" with Value "No O2 Supplement"
    Then verify pop-up vitals summary header "Blood Pressure" with Value "50 mmHg / 120 mmHg"
    Then verify pop-up vitals summary header "Pulse" with Value "100 BPM"
    Then verify pop-up vitals summary header "Consciousness" with Value "Unresponsive"
    Then verify pop-up vitals summary header "Temperature" with Value "50 Celsius"
    Then user clicks on pop-up back icon
    Then user clicks on the action "Temperature"
    Then wait for pop header to change to "Select Temperature"
    Then user inputs "Enter Value" with value "30"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Vitals Assessment Summary"
    Then verify pop-up vitals summary header "Temperature" with Value "30 Celsius"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for "50" seconds
    Then user saves and compares the number of records for this patient
    Then verify no overall score is generated for the new observation

  @TST-1203 @safi @e2eSprint @sprint6 @refactorSp18
  Scenario: Show observation information on the ward handover
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user lands on "Location List" module
    Then user clicks on Location "ECC" in Location List
    Then user clicks on the action icon
    Then user clicks on "Handover" in Ward Menu
    Then user lands on "Patient Handover" module
    Then user verify table header with icon "data-set-cell sortable gender-header" exists "true"
    Then user verify table header "Name" exists "true"
    Then user verify table header "Born" exists "true"
    Then user verify table header "NHS Number" exists "true"
    Then user verify table header "Area / Slot" exists "true"
    Then user verify table header "Lead Clinician" exists "true"
    Then user clicks on "Abdelgabar, Abdel N M"
    Then switch to iframe "iframe-container"
  #  Then user verify Responsible Personnel "Abdelgabar, Abdel N M" in Handover Section
    Then switch to main context

  @TST-1204 @safi @e2eSprint @sprint6
  Scenario: Recording a NEWS (Scale 2) Vital Signs
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then user lands on "Patient Vitals" module
    Then user saves the number of records for this patient
    Then user clicks on the plus icon
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "Respiration"
    Then wait for pop header to change to "Select Respiration"
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Enter Value" with value "100"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Air or Oxygen"
    Then wait for pop header to change to "Air Or Oxygen"
    Then user clicks on the action "Air"
    Then wait for pop header to change to "Select Air Or Oxygen"
    Then user clicks on the action "No O2 Supplement"
    Then user clicks on the action "Blood Pressure"
    Then wait for pop header to change to "Select Blood Pressure"
    Then user inputs "Systolic" with value "50"
    Then user inputs "Diastolic" with value "120"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Pulse"
    Then wait for pop header to change to "Select Pulse"
    Then user inputs "Enter Value" with value "100"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Consciousness"
    Then wait for pop header to change to "Select Consciousness"
    Then user clicks on the action "Unresponsive"
    Then user clicks on the action "Temperature"
    Then wait for pop header to change to "Select Temperature"
    Then user inputs "Enter Value" with value "50"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Vitals Assessment Summary"
    Then verify pop-up vitals summary header "Respiration" with Value "100 br/min"
    Then verify pop-up vitals summary header "SPO2 Scale 1" with Value "Not Selected"
    Then verify pop-up vitals summary header "Air or Oxygen" with Value "No O2 Supplement"
    Then verify pop-up vitals summary header "Blood Pressure" with Value "50 mmHg / 120 mmHg"
    Then verify pop-up vitals summary header "Pulse" with Value "100 BPM"
    Then verify pop-up vitals summary header "Consciousness" with Value "Unresponsive"
    Then verify pop-up vitals summary header "Temperature" with Value "50 Celsius"
    Then user clicks on pop-up back icon
    Then user clicks on the action "Temperature"
    Then wait for pop header to change to "Select Temperature"
    Then user inputs "Enter Value" with value "30"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Vitals Assessment Summary"
    Then verify pop-up vitals summary header "Temperature" with Value "30 Celsius"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for "50" seconds
    Then user saves and compares the number of records for this patient
    Then verify no overall score is generated for the new observation

  @TST-1213 @safi @e2eSprint @sprint6 @refactorSp18
  Scenario: Erroneous Vital Signs - Patient Timeline
    Given user lands on "Systems" page
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Assessments" option from dropdown
    Then user clicks on "Vitals" tab
    Then verify pop-up "Observation Details"
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Observation Action Menu"
    Then user clicks on "Suppress" option in Observation Action menu
    Then user clicks on "Reason" in Suppress Vital popUp
    Then user selects "Incorrect Details" option from Suppression reasons popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-1206 @safi @e2eSprint @sprint6 @refactorSp18 @bug
  Scenario: Graphing Vitals
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier NHS in search bar
    Then user clicks on tick-checkbox
    Then user clicks "Continue" to navigate to Patient Summary page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Assessments" option from dropdown
    Then user lands on "Patient Assessments" page
    Then user lands on "Patient Vitals" module
    Then user clicks on "Charts" tab under Vital tab
    Then switch to iframe "obs-chart-iframe"
    Then user verify "NEWS2 Chart" under charts tab
    Then switch to main context

  @TST-1205 @haider @bug:defectAscendingEventList @e2eSprint @sprint7
  Scenario: Viewing Vital Signs Results Table
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify module navigator "List" exits
    Then verify module navigator "Graphs" exits
    Then verify module navigator "Charts" exits
    Then verify the table is populated
    Then verify the color coding for the thresholds "Yellow|Red|Grey|Orange|Silver"
    Then verify events are in descending order in patient vitals module
    Then user clicks on "Events (Descending)"
    Then verify events are in ascending order in patient vitals module
    Then verify footer exists
    Then verify session time remaining exists
    Then verify count of records exist on assessments page

  @TST-1230 @haider @defectChartsNotAvailable @e2eSprint @sprint7
  Scenario: Viewing Vital Signs Results Table
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify module navigator "List" exits
    Then verify module navigator "Graphs" exits
    Then verify module navigator "Charts" exits
    Then complete all required vital information: Respiration "100" Air or Oxygen "No O2 Supplement" SPO2 Scale 1 "15" Blood Pressure "50|120" Pulse "180" Consciousness "Unresponsive" Temperature "50"
    Then complete all required vital information: Respiration "100" Air or Oxygen "No O2 Supplement" SPO2 Scale 1 "15" Blood Pressure "50|120" Pulse "180" Consciousness "Unresponsive" Temperature "50"
    Then user clicks on "loginData|credentials.name" in the Section of the Table
    Then wait for popup loading
    Then verify pop-up "Observation Details"
    Then user clicks on the action icon pop-up
    Then wait for pop header to change to "Observation Action Menu"
    Then user clicks on the action "Suppress"
    Then verify pop-up "Suppress Vital"
    Then user clicks on the action "Reason"
    Then verify pop-up "Suppression Reasons"
    Then user clicks on the action "Incorrect Details"
    Then user clicks on the action "Comments"
    Then verify pop-up "Enter Supression Comments"
    Then user enters "Test Case: TST-1230" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Suppress Vital"
    Then user clicks on tick-checkbox
    Then verify pop-up "Suppress Vital Summary"
    Then verify "Reason" with value "Incorrect Details" in the pop-up
    Then verify "Comments" with value "Test Case: TST-1230" in the pop-up
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Observation Details"
    Then verify "Status" with value "Suppressed" in the pop-up
    Then user clicks on cross icon
    Then user click on module navigator "Charts"
    Then wait for loading in "Patient Vitals" section
    Then switch to iframe "obs-chart-iframe"
    Then verify header "NEWS1 Chart" exists
    Then switch to main context

  @TST-1208 @haider @defectKeyboard @e2eSprint @sprint7
  Scenario: Supplemental Oxygen Litres
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify module navigator "List" exits
    Then verify module navigator "Graphs" exits
    Then verify module navigator "Charts" exits
    Then user clicks on the plus icon
    Then wait for popup loading
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for popup loading
    Then verify pop-up "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then wait for popup loading
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then verify pop-up "New Vitals Assessment"
    Then user clicks on the action "Air or Oxygen"
    Then wait for pop header to change to "Air Or Oxygen"
    Then user clicks on the action "Oxygen"
    Then wait for pop header to change to "Select Air Or Oxygen"
    Then user clicks on the action "Continuous Positive Airway Pressure (CPAP)"
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "Oxygen Values"
    Then wait for pop header to change to "Select Oxygen Values"
    Then verify pop-up patients demographics exist
    Then verify "Profile" with value "National Early Warning Score (Scale 1)" in the pop-up
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Delivered (L/min)" with value "20"
    Then user inputs "Percentage (%)" with value "20"
    Then user clicks on the "Input Method" to change it to "Wheel"
    Then verify the double barrel value is "20"
    Then scroll up two time and two time down with "keyboard" for double barrel verification for header "Delivered (L/min)"
    Then verify the double barrel value is "30"
    Then scroll up two time and two time down with "mouse" for double barrel verification for header "Delivered (L/min)"
    Then verify the double barrel value is "28"
    Then scroll up two time and two time down with "keyboard" for double barrel verification for header "Percentage (%)"
    Then verify the double barrel value is "50"
    Then scroll up two time and two time down with "mouse" for double barrel verification for header "Percentage (%)"
    Then verify the double barrel value is "48"
    Then user clicks on tick-checkbox
    Then verify "Oxygen Values" with value "28 L/min / 48 %" in the pop-up details

  @TST-1222 @haider @e2eSprint @sprint7
  Scenario: Recording Vitals - Decimal Values
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify module navigator "List" exits
    Then verify module navigator "Graphs" exits
    Then verify module navigator "Charts" exits
    Then user clicks on the plus icon
    Then wait for popup loading
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for popup loading
    Then verify pop-up "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then wait for popup loading
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then verify pop-up "New Vitals Assessment"
    Then user clicks on the action "Temperature"
    Then wait for popup loading
    Then verify pop-up "Select Temperature"
    Then verify pop-up patients demographics exist
    Then verify "Profile" with value "National Early Warning Score (Scale 1)" in the pop-up
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Enter Value" with value "20"
    Then user clicks on the "Input Method" to change it to "Wheel"
    Then verify the double barrel value is "20.0"
    Then scroll up two time and two time down with "keyboard" for double barrel verification
    Then verify the double barrel value is "30.0"
    Then scroll up two time and two time down with "mouse" for double barrel verification
    Then verify the double barrel value is "29.8"

  @TST-1219 @haider @e2eSprint @sprint7
  Scenario: Details Panel - Lock Demographics
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify module navigator "List" exits
    Then verify module navigator "Graphs" exits
    Then verify module navigator "Charts" exits
    Then user clicks on the plus icon
    Then wait for popup loading
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for popup loading
    Then verify pop-up "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then wait for popup loading
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then verify pop-up "New Vitals Assessment"
    Then verify pop-up patients demographics exist

  @TST-1200 @haider @e2eSprint @sprint7
  Scenario: Details Panel - Lock Demographics
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify module navigator "List" exits
    Then verify module navigator "Graphs" exits
    Then verify module navigator "Charts" exits
    Then complete all required vital information: Respiration "100" Air or Oxygen "No O2 Supplement" SPO2 Scale 1 "15" Blood Pressure "50|120" Pulse "180" Consciousness "Unresponsive" Temperature "50"

  @TST-1220 @haider @e2eSprint @sprint7
  Scenario: Can I filter the scoring profiles displayed?
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify module navigator "List" exits
    Then verify module navigator "Graphs" exits
    Then verify module navigator "Charts" exits
    Then user clicks on filter Parameter
    Then verify pop-up "Filter Parameters"
    Then user clicks on the action "Clinical Calculations"
    Then verify pop-up "Select Clinical Calculations"
    Then user clicks on the pop-up option "National Early Warning Score (Scale 1)"
    Then user clicks on tick-checkbox
    Then verify pop-up "Filter Parameters"
    Then user clicks on tick-checkbox
    Then verify "National Early Warning Score (Scale 1)" is displayed as the table header
    Then verify "National Early Warning Score (Scale 2)" is not displayed as the table header

  @TST-1224 @haider @e2eSprint @sprint7
  Scenario: Ensure score colour is correct across modules
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then complete all required vital information: Respiration "100" Air or Oxygen "No O2 Supplement" SPO2 Scale 1 "15" Blood Pressure "50|120" Pulse "180" Consciousness "Unresponsive" Temperature "50"
    Then verify the first row scale color coding to be the threshold "Red"
    Then user clicks on "Systems" in menu bar section
    Then user clicks on "Clinical Records" card in Systems
    Then user lands on "Clinical Records" page
    Then verify pop-up "Patient Search"
    Then user clicks on the option "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    #Searched Patient Verifications
    Then user lands on "Patient List" module
    Then verify the first row Patient Gender is "eObservationsData|patientGender"
    Then verify the first row patient name "eObservationsData|patientName"
    Then verify the first row patient age, dob "eObservationsData|patientAge"
    Then verify the first row patient NHS number "eObservationsData|patientNHSNumberVerify"
    Then user clicks patient record "eObservationsData|patientNHSNumberVerify"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify the first row scale color coding to be the threshold "Red"

  @TST-1217 @haider @e2eSprint @sprint7
  Scenario: Review Time Prompts
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then verify "Diana Princess of Wales Hospital" is displayed as the filter parameters
    Then verify "Name" is displayed as the table header
    Then verify "Status" is displayed as the table header
    Then verify "Site" is displayed as the table header
    Then verify "Available" is displayed as the table header
    Then verify "Occupied" is displayed as the table header
    Then verify "Unavailable" is displayed as the table header
    Then verify "Holding" is displayed as the table header
    Then user clicks on "eObservationsData|ward"
    Then wait for popup loading
    Then user lands on "eObservationsData|ward" page
    Then add patient with NHS number "eObservationsData|patientNHSNumber" in bed "Bay 2 / Bed 5"
    Then user clicks on the option "Bay 2 / Bed 5"
    Then verify pop-up "Slot Details"
    Then verify "Area / Slot" with value "Bay 2 / Bed 5" in the pop-up details
    Then verify "Status" with value "Occupied" in the pop-up details
    Then verify pop-up patients demographics exist
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then verify pop-up patients demographics exist
    Then user verify action "clinical indicators" is available
    Then user verify action "residency management" is available
    Then user verify action "assessments" is available
    Then user verify action "clinical personnel" is available
    Then user clicks on the action "assessments"
    Then user lands on "Patient Assessments" page
    Then complete all required vital information: Respiration "80" Air or Oxygen "No O2 Supplement" SPO2 Scale 1 "15" Blood Pressure "50|120" Pulse "180" Consciousness "Unresponsive" Temperature "50"
    Then reload page
    Then wait for the page to load
    Then wait for 20 seconds
    Then user clicks on "loginData|credentials.name" in the Section of the Table
    Then wait for popup loading
    Then verify pop-up "Observation Details"
    Then verify "Status" with value "Valid" in the observation pop-up
    Then verify "Recorded By" with value "loginData|credentials.name" in the observation pop-up
#    Then verify "Trend & Score" with value "17" with "Red" as font "background-color" in the pop-up
    Then verify "Respiration" with value "80 br/min " with "Red" as font "color" in the pop-up
    Then verify "Air or Oxygen" with value "No O2 Supplement" in the observation pop-up
    Then verify "SPO2 Scale 1" with value "15 % " with "Red" as font "color" in the pop-up
    Then verify "Blood Pressure - Systolic" with value "50 mmHg " with "Red" as font "color" in the pop-up
    Then verify "Blood Pressure - Diastolic" with value "120 mmHg " with "Red" as font "color" in the pop-up
    Then verify "Pulse" with value "180 BPM " with "Red" as font "color" in the pop-up
    Then verify "Consciousness" with value "Unresponsive" with "Red" as font "color" in the pop-up
    Then verify "Temperature" with value "50 Celsius " with "Yellow" as font "color" in the pop-up
    Then verify "Temperature" with value "50 Celsius " with "Yellow" as font "color" in the pop-up
    Then verify "Site" with value "Diana Princess of Wales Hospital" in the observation pop-up
    Then verify "Ward/Unit" with value "eObservationsData|ward" in the observation pop-up
    Then verify "Location" with value "Bed 5" in the observation pop-up
    Then user clicks on cross icon
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "eObservationsData|ward"
    Then discharge patient in bed "Bay 2 / Bed 5" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"

  @TST-1167 @haider @e2eSprint @sprint7 @bug:AssesmentsNotShownOnEventList
  Scenario: V3 Observations :  Viewing Vital Signs Assessment in Patient Event List
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "eObservationsData|ward"
    Then add patient with NHS number "eObservationsData|patientNHSNumber" in bed "Bay 2 / Bed 5"
    Then user clicks on the option "Bay 2 / Bed 5"
    Then verify pop-up "Slot Details"
    Then verify "Area / Slot" with value "Bay 2 / Bed 5" in the pop-up details
    Then verify "Status" with value "Occupied" in the pop-up details
    Then verify pop-up patients demographics exist
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "assessments"
    Then user lands on "Patient Assessments" page
    Then complete all required vital information: Respiration "70" Air or Oxygen "No O2 Supplement" SPO2 Scale 1 "15" Blood Pressure "50|120" Pulse "180" Consciousness "Unresponsive" Temperature "50"
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the action "Records"
    Then user lands on "Patient Records" page
    Then user clicks on the first option "Assessments"
    Then wait for 10 seconds
    Then verify document "Assessments" label "Score" value is "17"
    Then verify document "Assessments" label "Respiration" value is "70"
    Then verify document "Assessments" label "Completed By" value is "loginData|credentials.name"
    Then verify document "Assessments" label "Air or Oxygen" value is "No O2 Supplement"
    Then verify document "Assessments" label "SPO2 Scale 1" value is "15"
    Then verify document "Assessments" label "Pulse" value is "180"
    Then verify document "Assessments" label "Consciousness" value is "Unresponsive"
    Then verify document "Assessments" label "Temperature" value is "50"
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "eObservationsData|ward"
    Then discharge patient in bed "Bay 2 / Bed 5" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"

  @TST-1201 @haider @e2eSprint @sprint7
  Scenario: Summary of Vitals
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "eObservationsData|ward"
    Then add patient with NHS number "eObservationsData|patientNHSNumber" in bed "Bay 2 / Bed 5"
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then user lands on "Patient Vitals" module
    Then user clicks on the plus icon
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "Respiration"
    Then wait for pop header to change to "Select Respiration"
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Enter Value" with value "100"
    Then user clicks on tick-checkbox
    Then user clicks on the action "SPO2 Scale 1 "
    Then wait for pop header to change to "Select SPO2 Scale 1"
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Enter Value" with value "17"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Air or Oxygen"
    Then wait for pop header to change to "Air Or Oxygen"
    Then user clicks on the action "Air"
    Then wait for pop header to change to "Select Air Or Oxygen"
    Then user clicks on the action "No O2 Supplement"
    Then user clicks on the action "Blood Pressure"
    Then wait for pop header to change to "Select Blood Pressure"
    Then user inputs "Systolic" with value "50"
    Then user inputs "Diastolic" with value "120"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Pulse"
    Then wait for pop header to change to "Select Pulse"
    Then user inputs "Enter Value" with value "100"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Consciousness"
    Then wait for pop header to change to "Select Consciousness"
    Then user clicks on the action "Unresponsive"
    Then user clicks on the action "Temperature"
    Then wait for pop header to change to "Select Temperature"
    Then user inputs "Enter Value" with value "50"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Vitals Assessment Summary"
    Then user verify Black header shows up with patient name "eObservationsData|patientName" in popup
    Then user verify Black header shows up with patient DOB "eObservationsData|patientAge" in popup
    Then user verify Black header shows up with patient gender "eObservationsData|patientGender" in popup
    Then user verify Black header shows up with patient NHS Number "eObservationsData|patientNHSNumberVerify" in popup
#    Then user verify detail "Recorded On" exists "true"
    Then user verify Popup Adjacent Item "Recorded By" with value "loginData|credentials.name"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Clinical Information"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "eObservationsData|ward"
    Then discharge patient in bed "Bay 2 / Bed 5" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"

  @TST-1210 @haider @e2eSprint @sprint7
  Scenario: Repeating Vital Signs Warning Message
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify module navigator "List" exits
    Then verify module navigator "Graphs" exits
    Then verify module navigator "Charts" exits
    Then complete all required vital information: Respiration "100" Air or Oxygen "No O2 Supplement" SPO2 Scale 1 "15" Blood Pressure "50|120" Pulse "180" Consciousness "Unresponsive" Temperature "50"
    Then user clicks on the plus icon
    Then wait for popup loading
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for popup loading
    Then verify pop-up "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then verify "Patient Identity Check" after completing the form
    Then verify form description "A vitals assessment has previously been recorded against this patient within the last 15 minutes.Once you have reviewed the patients demographics below please select how you would like to proceed."

  @TST-1229 @safi @e2eSprint @sprint7 @refactorSp18 @bug
  Scenario: Graphs - Filtering
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then user lands on "Patient Vitals" module
    Then user clicks on the parameter window "Clinical Calculations"
    Then user selects "National Early Warning Score  (Scale 2)" option from Select Clinical Calculations popUp
    Then user clicks on tick-checkbox
    Then user clicks on "Charts" tab under Vital tab
#    Then user verify "NEWS2 Chart" is available and populated
    Then switch to iframe "obs-chart-iframe"
    Then user verify "NEWS2 Chart" under charts tab
    Then switch to main context


  @TST-1209 @haider @e2eSprint @sprint14
  Scenario: Supplemental O2 Percentage and Delivery Methods
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify module navigator "List" exits
    Then verify module navigator "Graphs" exits
    Then verify module navigator "Charts" exits
    Then user clicks on the plus icon
    Then wait for popup loading
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for popup loading
    Then verify pop-up "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then wait for popup loading
    Then verify pop-up "New Vitals Assessment"
    Then user clicks on the action "Air or Oxygen"
    Then wait for pop header to change to "Air Or Oxygen"
    Then user clicks on the action "Oxygen"
    Then wait for pop header to change to "Select Air Or Oxygen"
    Then user clicks on the action "Continuous Positive Airway Pressure (CPAP)"
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "Oxygen Values"
    Then wait for pop header to change to "Select Oxygen Values"
    Then verify pop-up patients demographics exist
    Then verify "Profile" with value "National Early Warning Score (Scale 1)" in the pop-up
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Delivered (L/min)" with value "20"
    Then user inputs "Percentage (%)" with value "20"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Oxygen Values"
    Then wait for pop header to change to "Select Oxygen Values"
    Then user clicks on the action "Clear"
    Then wait for pop header to change to "New Vitals Assessment"
    Then verify "Oxygen Values" with value "Select a Value" in the pop-up details

  @TST-1228 @haider @e2eSprint @sprint14
  Scenario: Table - Vital Colours
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then user clicks on the plus icon
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "Respiration"
    Then wait for pop header to change to "Select Respiration"
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Enter Value" with value "21"
    Then user clicks on tick-checkbox
    Then user clicks on the action "SPO2 Scale 1 "
    Then wait for pop header to change to "Select SPO2 Scale 1"
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Enter Value" with value "91"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Air or Oxygen"
    Then wait for pop header to change to "Air Or Oxygen"
    Then user clicks on the action "Air"
    Then wait for pop header to change to "Select Air Or Oxygen"
    Then user clicks on the action "No O2 Supplement"
    Then user clicks on the action "Blood Pressure"
    Then wait for pop header to change to "Select Blood Pressure"
    Then user inputs "Systolic" with value "220"
    Then user inputs "Diastolic" with value "80"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Pulse"
    Then wait for pop header to change to "Select Pulse"
    Then user inputs "Enter Value" with value "50"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Consciousness"
    Then wait for pop header to change to "Select Consciousness"
    Then user clicks on the action "Unresponsive"
    Then user clicks on the action "Temperature"
    Then wait for pop header to change to "Select Temperature"
    Then user inputs "Enter Value" with value "39.1"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Vitals Assessment Summary"
    Then verify "Trend & Score" with value "14" with "Red" as font "background-color" in the pop-up
    Then verify "Respiration" with value "21 br/min " with "Amber" as font "color" in the pop-up
    Then verify "Air or Oxygen" with value "No O2 Supplement" in the observation pop-up
    Then verify "SPO2 Scale 1" with value "91 % " with "Red" as font "color" in the pop-up
    Then verify "Blood Pressure" with value "220 mmHg / 80 mmHg" with "Red" as font "color" in the pop-up
    Then verify "Pulse" with value "50 BPM " with "Green" as font "color" in the pop-up
    Then verify "Consciousness" with value "Unresponsive" with "Red" as font "color" in the pop-up
    Then verify "Temperature" with value "39.1 Celsius " with "Amber" as font "color" in the pop-up

  @TST-1169 @haider @e2eSprint @sprint14
  Scenario: V3 Observations :  Information Screens - Observations List
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "eObservationsData|ward"
    Then add patient with NHS number "eObservationsData|patientNHSNumber" in bed "Bay 2 / Bed 5"
    Then user clicks on the option "Bay 2 / Bed 5"
    Then verify pop-up "Slot Details"
    Then verify "Area / Slot" with value "Bay 2 / Bed 5" in the pop-up details
    Then verify "Status" with value "Occupied" in the pop-up details
    Then verify pop-up patients demographics exist
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then verify date filter applied has a difference of "90" days
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "eObservationsData|ward"
    Then discharge patient in bed "Bay 2 / Bed 5" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"

  @TST-1212 @haider @e2eSprint @sprint14
  Scenario: Results Table - Details
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then verify module navigator "List" exits
    Then verify module navigator "Graphs" exits
    Then verify module navigator "Charts" exits
    Then verify the table is populated

  @TST-1223 @haider @e2eSprint @sprint14
  Scenario: Recording Vitals - Expand Additional Vitals
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then user clicks on the plus icon
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then wait for pop header to change to "New Vitals Assessment"
    Then verify sub-header "Additional" has options "Heart Rhythm|Standing Blood Pressure|Blood Pressure Left / Right Measurement|Blood Sugar|Urine Output|Pain Score" available

  @TST-1170 @haider @e2eSprint @sprint14 @verifyAssociatedMessages
  Scenario: V3 Observations :  Observations - Clinical Response Message
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then user lands on "Patient Vitals" module
    Then user clicks on the plus icon
    Then verify pop-up "New Assessments"
    Then user clicks on the action "Vitals"
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on the action "Respiration"
    Then wait for pop header to change to "Select Respiration"
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Enter Value" with value "21"
    Then user clicks on tick-checkbox
    Then user clicks on the action "SPO2 Scale 1 "
    Then wait for pop header to change to "Select SPO2 Scale 1"
    Then user clicks on the "Input Method" to change it to "Inline"
    Then user inputs "Enter Value" with value "91"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Air or Oxygen"
    Then wait for pop header to change to "Air Or Oxygen"
    Then user clicks on the action "Air"
    Then wait for pop header to change to "Select Air Or Oxygen"
    Then user clicks on the action "No O2 Supplement"
    Then user clicks on the action "Blood Pressure"
    Then wait for pop header to change to "Select Blood Pressure"
    Then user inputs "Systolic" with value "220"
    Then user inputs "Diastolic" with value "80"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Pulse"
    Then wait for pop header to change to "Select Pulse"
    Then user inputs "Enter Value" with value "50"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Consciousness"
    Then wait for pop header to change to "Select Consciousness"
    Then user clicks on the action "Unresponsive"
    Then user clicks on the action "Temperature"
    Then wait for pop header to change to "Select Temperature"
    Then user inputs "Enter Value" with value "39.1"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "New Vitals Assessment"
    Then user clicks on tick-checkbox
    Then wait for pop header to change to "Vitals Assessment Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-1256 @haider @e2eSprint @sprint14
  Scenario: Recording Missed Vital Sign
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then verify patients demographics exist
    Then verify module navigator "Overview" exits
    Then verify module navigator "Fluids" exits
    Then verify module navigator "Vitals" exits
    Then verify module navigator "Screening" exits
    Then user lands on "Patient Vitals" module
    Then user clicks on the action icon
    Then verify pop-up "Patient Vitals Menu"
    Then user verify action "Record Missed VitalRecord a missed vital against this patient with a reason" is available
    Then user verify action "Suspend AlertsSuspend alerts on this patient with a reason" is available
    Then user clicks on the action "Record Missed Vital"
    Then verify pop-up "Missed Vitals"
    Then user clicks on the action "Date Time Missed"
    Then verify pop-up "Select Missed Date Time"
    Then user selects date DD as "15" Month as "January" and year as "2021"
    Then user clicks on tick-checkbox
    Then user selects time hours as "14" and minutes as "11"
    Then user clicks on tick-checkbox
    Then verify pop-up "Missed Vitals"
    Then user clicks on the action "Reason"
    Then verify pop-up "Select A Value"
    Then user clicks on the action "Patient Combative"
    Then verify pop-up "Missed Vitals"
    Then user clicks on tick-checkbox
    Then verify pop-up "Missed Vital Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "loginData|credentials.name"
    Then verify pop-up "Observation Details"
    Then verify "Status" with value "Missed" in the pop-up details
    Then verify "Recorded By" with value "loginData|credentials.name" in the pop-up details
    Then verify "Missed On" with value "15-Jan-2021 14:11" in the pop-up details
    Then verify "Reason" with value "Patient Combative" in the pop-up details
    Then verify "Site" with value "Not Known" in the pop-up details
    Then verify "Ward/Unit" with value "Not Known" in the pop-up details
    Then verify "Location" with value "Not Known" in the pop-up details
    Then user clicks on the action icon pop-up
    Then verify pop-up "Observation Action Menu"
    Then user clicks on the action "Suppress"
    Then verify pop-up "Suppress Vital"
    Then user clicks on the action "Reason"
    Then verify pop-up "Suppression Reasons"
    Then user clicks on the action "Incorrect Details"
    Then verify pop-up "Suppress Vital"
    Then user clicks on tick-checkbox
    Then verify pop-up "Suppress Vital Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form

  @TST-1216 @haider @e2eSprint @sprint14
  Scenario: Information Screens - Vitals Details
    Given user lands on "Systems" page
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then user lands on "Patient Summary" page
#    Then user clicks on the action icon
#    Then user clicks on the sub-navigation in profile menu "Assessments"
#    Then user lands on "Patient Assessments" page
#    Then user lands on "Patient Vitals" module
#    Then complete all required vital information: Respiration "100" Air or Oxygen "No O2 Supplement" SPO2 Scale 1 "15" Blood Pressure "50|120" Pulse "180" Consciousness "Unresponsive" Temperature "50"
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then add patient with NHS number "eObservationsData|patientNHSNumber" in bed "Bay 2 / Bed 5"
    Then user clicks on the option "Bay 2 / Bed 5"
    Then verify pop-up "Slot Details"
    Then verify "Area / Slot" with value "Bay 2 / Bed 5" in the pop-up details
    Then verify "Status" with value "Occupied" in the pop-up details
    Then verify pop-up patients demographics exist
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "assessments"
    Then user lands on "Patient Assessments" page
    Then complete all required vital information: Respiration "95" Air or Oxygen "No O2 Supplement" SPO2 Scale 1 "15" Blood Pressure "50|120" Pulse "180" Consciousness "Unresponsive" Temperature "50"
    Then reload page
    Then wait for the page to load
    Then wait for 20 seconds
    Then user clicks on Table first row "loginData|credentials.name"
    Then verify pop-up "Observation Details"
    Then verify "Status" with value "Valid" in the observation pop-up
    Then verify "Recorded By" with value "loginData|credentials.name" in the observation pop-up
#    Then verify "Trend & Score" with value "17" with "Red" as font "background-color" in the pop-up
    Then verify "Respiration" with value "95 br/min " with "Red" as font "color" in the pop-up
    Then verify "Air or Oxygen" with value "No O2 Supplement" in the observation pop-up
    Then verify "SPO2 Scale 1" with value "15 % " with "Red" as font "color" in the pop-up
    Then verify "Blood Pressure - Systolic" with value "50 mmHg " with "Red" as font "color" in the pop-up
    Then verify "Blood Pressure - Diastolic" with value "120 mmHg " with "Red" as font "color" in the pop-up
    Then verify "Pulse" with value "180 BPM " with "Red" as font "color" in the pop-up
    Then verify "Consciousness" with value "Unresponsive" with "Red" as font "color" in the pop-up
    Then verify "Temperature" with value "50 Celsius " with "Yellow" as font "color" in the pop-up
    Then verify "Temperature" with value "50 Celsius " with "Yellow" as font "color" in the pop-up
    Then verify "Site" with value "Diana Princess of Wales Hospital" in the observation pop-up
    Then verify "Ward/Unit" with value "eObservationsData|ward" in the observation pop-up
    Then verify "Location" with value "Bed 5" in the observation pop-up

  @TST-1227 @haider @e2eSprint @sprint14 @bug:NoFilterForScale2Exists
  Scenario: Table Filter - Filter Clinical Calculations List
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then user lands on "Patient Vitals" module
    Then user clicks on filter Parameter
    Then verify pop-up "Filter Parameters"
    Then user clicks on the action "Clinical Calculations"
    Then verify pop-up "Select Clinical Calculations"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then user clicks on tick-checkbox
    Then verify pop-up "Filter Parameters"
    Then user clicks on tick-checkbox
    Then verify "National Early Warning Score (Scale 1)" is displayed as the table header in eObservations page
    Then user clicks on filter Parameter
    Then verify pop-up "Filter Parameters"
    Then user clicks on the action "Clinical Calculations"
    Then verify pop-up "Select Clinical Calculations"
    Then user clicks on the action "National Early Warning Score (Scale 1)"
    Then user clicks on the action "National Early Warning Score (Scale 2)"
    Then user clicks on tick-checkbox
    Then verify pop-up "Filter Parameters"
    Then user clicks on tick-checkbox
    Then verify "National Early Warning Score (Scale 2)" is displayed as the table header in eObservations page

  @TST-1207 @haider @e2eSprint @sprint14
  Scenario: Erroneous Vital Signs - Vitals Table
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Assessments"
    Then user lands on "Patient Assessments" page
    Then user lands on "Patient Vitals" module
    Then complete all required vital information: Respiration "100" Air or Oxygen "No O2 Supplement" SPO2 Scale 1 "15" Blood Pressure "50|120" Pulse "180" Consciousness "Unresponsive" Temperature "50"
    Then user clicks on "loginData|credentials.name" in the Section of the Table
    Then wait for popup loading
    Then verify pop-up "Observation Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Observation Action Menu"
    Then user clicks on the action "Suppress"
    Then verify pop-up "Suppress Vital"
    Then user clicks on the action "Reason"
    Then verify pop-up "Suppression Reasons"
    Then user clicks on the action "Incorrect Details"
    Then user clicks on the action "Comments"
    Then verify pop-up "Enter Supression Comments"
    Then user enters "Test Case: TST-1207" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Suppress Vital"
    Then user clicks on tick-checkbox
    Then verify pop-up "Suppress Vital Summary"
    Then verify "Reason" with value "Incorrect Details" in the pop-up
    Then verify "Comments" with value "Test Case: TST-1207" in the pop-up
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Observation Details"
    Then verify "Status" with value "Suppressed" in the pop-up
    Then verify "Suppressed By" with value "loginData|credentials.name" in the pop-up
    Then verify "Reason" with value "Incorrect Details" in the pop-up
    Then verify "Comments" with value "Test Case: TST-1207" in the pop-up