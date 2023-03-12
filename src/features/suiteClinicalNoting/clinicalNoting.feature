@clinicalNoting @e2e
Feature: To check the Clinical Notes Functionality

#  Sprint 7
  @TST-1124 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Creating a Clinical Note
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Clinical Noting" exists "true"
    Then user clicks on "Clinical Noting" on popup
    Then user lands on "Patient Clinical Noting" page
    Then verify "Patient Notes Filter" module exists "true"
    Then verify "Patient Notes" module exists "true"

    Then user clicks on the plus icon of "Patient Clinical Noting"
    Then wait for popup loading
    Then take notes from start

    Then verify pop-up "Select Designation"
    Then user clicks on "Clinical Nurse Specialist" on popup
    Then wait for popup loading

    Then verify pop-up "Select Clinical Area"
    Then user clicks on "Cardiology" on popup
    Then wait for popup loading

    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for popup loading
    Then verify pop-up "Select Theme"
    Then user clicks on "Consultation" on popup
    Then verify pop-up "Create Clinical Note"
    Then user clears the text-area
    Then user enters "feeling fatigue all the time" in the text-area
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "feeling fatigue all the time"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note Summary"
    Then user verify detail "Updated On" exists "true"
    Then user verify Popup Adjacent Item "Updated By" with value "K Kualitatem"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "feeling fatigue all the time"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-1125 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Viewing Clinical Notes
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Clinical Noting" exists "true"
    Then user clicks on "Clinical Noting" on popup
    Then user lands on "Patient Clinical Noting" page
    Then user verify Black header shows up with patient gender color "Male"
    Then user verify Black header shows up with patient name "HENTON, IAN (MR)"
    Then user verify Black header shows up with patient DOB "29-May-1986 (36y)"
    Then user verify Black header shows up with patient gender "mALE"
    Then user verify Black header shows up with patient NHS Number "999 999 9999"
    Then verify "Patient Notes Filter" module exists "true"
    Then verify "Patient Notes" module exists "true"

  @TST-1127 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Filtering Clinical Notes
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Clinical Noting" exists "true"
    Then user clicks on "Clinical Noting" on popup
    Then user lands on "Patient Clinical Noting" page
    Then user clicks on "Episode Type"
    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for loading in "Patient Notes" section
    Then verify patient notes container
    Then verify "Inpatient" filter in Patient Notes

  @TST-1128 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Recording additional Information with the theme as Ward Round
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Clinical Noting" exists "true"
    Then user clicks on "Clinical Noting" on popup
    Then user lands on "Patient Clinical Noting" page
    Then verify "Patient Notes Filter" module exists "true"
    Then verify "Patient Notes" module exists "true"

    Then user clicks on the plus icon of "Patient Clinical Noting"
    Then wait for popup loading
    Then take notes from start

    Then verify pop-up "Select Designation"
    Then user clicks on "Clinical Nurse Specialist" on popup
    Then wait for popup loading

    Then verify pop-up "Select Clinical Area"
    Then user clicks on "Cardiology" on popup
    Then wait for popup loading

    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for popup loading
    Then verify pop-up "Select Theme"
    Then user clicks on "Ward Round" on popup
    Then wait for popup loading
    Then user inputs "Clinical Lead" with value "TST-1128"
    Then user clicks on tick-checkbox

    Then verify pop-up "Create Clinical Note"

    Then user clears the text-area
    Then user enters "Abnormal Vitals" in the text-area
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Ward Round"
    Then user verify Popup Adjacent Item "Clinical Lead" with value "TST-1128"
    Then user verify Popup Adjacent Item "Note" with value "Abnormal Vitals"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note Summary"
    Then user verify detail "Updated On" exists "true"
    Then user verify Popup Adjacent Item "Updated By" with value "K Kualitatem"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Ward Round"
    Then user verify Popup Adjacent Item "Clinical Lead" with value "TST-1128"
    Then user verify Popup Adjacent Item "Note" with value "Abnormal Vitals"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on "Theme"
    Then verify pop-up "Select Theme"
    Then user clicks on "Ward Round" on popup
    Then wait for loading in "Patient Notes" section
    Then verify patient notes container
    Then verify "Ward Round" filter in Patient Notes
    Then verify Patient Notes Comments "Abnormal Vitals"

  @TST-1129 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Verify Designation list
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Clinical Noting" exists "true"
    Then user clicks on "Clinical Noting" on popup
    Then user lands on "Patient Clinical Noting" page
    Then verify "Patient Notes Filter" module exists "true"
    Then verify "Patient Notes" module exists "true"

    Then user clicks on the plus icon of "Patient Clinical Noting"
    Then wait for popup loading
    Then take notes from start

    Then verify pop-up "Select Designation"
    Then verify popup Designation list
    Then user clicks on "Clinical Nurse Specialist" on popup
    Then wait for popup loading

  @TST-1130 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting :  Viewing Clinical Notes Details
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Clinical Noting" exists "true"
    Then user clicks on "Clinical Noting" on popup
    Then user lands on "Patient Clinical Noting" page
    Then verify "Patient Notes Filter" module exists "true"
    Then verify "Patient Notes" module exists "true"

    Then user clicks on the plus icon of "Patient Clinical Noting"
    Then wait for popup loading
    Then take notes from start

    Then verify pop-up "Select Designation"
    Then user clicks on "Clinical Nurse Specialist" on popup
    Then wait for popup loading

    Then verify pop-up "Select Clinical Area"
    Then user clicks on "Cardiology" on popup
    Then wait for popup loading

    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for popup loading
    Then verify pop-up "Select Theme"
    Then user clicks on "Consultation" on popup
    Then verify pop-up "Create Clinical Note"
    Then user clears the text-area
    Then user enters "TST-1130 Viewing Clinical Notes Details" in the text-area
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1130 Viewing Clinical Notes Details"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note Summary"
    Then user verify detail "Updated On" exists "true"
    Then user verify Popup Adjacent Item "Updated By" with value "K Kualitatem"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1130 Viewing Clinical Notes Details"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

    Then user clicks on "Episode Type"
    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for loading in "Patient Notes" section
    Then verify patient notes container
    Then verify "Inpatient" filter in Patient Notes
    Then verify Patient Notes Comments "TST-1130 Viewing Clinical Notes Details"
    Then user clicks on "TST-1130 Viewing Clinical Notes Details" span
    Then wait for popup loading
    Then verify pop-up "Clinical Note Details"
    Then user verify Popup Adjacent Item "Status" with value "Pending"
    Then user verify detail "Recorded On" exists "true"
    Then user verify Popup Adjacent Item "Recorded By" with value "K Kualitatem"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1130 Viewing Clinical Notes Details"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"

  @TST-1135 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Marking Incorrect Entries
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Clinical Noting" exists "true"
    Then user clicks on "Clinical Noting" on popup
    Then user lands on "Patient Clinical Noting" page
    Then verify "Patient Notes Filter" module exists "true"
    Then verify "Patient Notes" module exists "true"

    Then user clicks on the plus icon of "Patient Clinical Noting"
    Then wait for popup loading
    Then take notes from start

    Then verify pop-up "Select Designation"
    Then user clicks on "Clinical Nurse Specialist" on popup
    Then wait for popup loading

    Then verify pop-up "Select Clinical Area"
    Then user clicks on "Cardiology" on popup
    Then wait for popup loading

    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for popup loading
    Then verify pop-up "Select Theme"
    Then user clicks on "Consultation" on popup
    Then verify pop-up "Create Clinical Note"
    Then user clears the text-area
    Then user enters "TST-1135 Marking Incorrect Entries" in the text-area
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1135 Marking Incorrect Entries"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note Summary"
    Then user verify detail "Updated On" exists "true"
    Then user verify Popup Adjacent Item "Updated By" with value "K Kualitatem"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1135 Marking Incorrect Entries"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

    Then user clicks on "Episode Type"
    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for loading in "Patient Notes" section
    Then verify patient notes container
    Then verify "Inpatient" filter in Patient Notes
    Then verify Patient Notes Comments "TST-1135 Marking Incorrect Entries"
    Then user clicks on "TST-1135 Marking Incorrect Entries" span
    Then wait for popup loading
    Then verify pop-up "Clinical Note Details"
    Then user clicks on the action icon of "clinical note Details"
    Then user verify detail "Retract" exists "true"
    Then user clicks on "Retract" on popup
    Then verify pop-up "Retract Clinical Note"
    Then verify "Retract Note" after completing the form
    Then user clicks on "Reason" on popup
    Then verify pop-up "Select Retraction Reason"
    Then user clicks on "Contains Inaccurate Information" on popup
    Then verify pop-up "Retract Clinical Note"
    Then user input "Comments" with value "Retracting"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify Popup Adjacent Item "Status" with value "Retracted"

  @TST-1142 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Creating Event List Clinical Notes
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Clinical Records"
    Then user lands on "Clinical Record Settings" page
    Then filter item "All Names" with value "TST-1142 Category"
    Then create Category "TST-1142 Category" and if not exist
    Then Add Event Type to "Admission" in Default Category "TST-1142 Category" if not added
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Records" exists "true"
    Then user clicks on "Records" on popup
    Then user lands on "Patient Records" page
    Then wait for loading in "Event List" section
    Then user lands on "Event List" module
    Then wait for popup loading
    Then user clicks on "Showing All Events" card
    Then user clicks on "Select None" on popup
    Then user clicks on "TST-1142 Category" on popup
    Then user clicks on "Default" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Admission"
    Then wait for loading in "Event Report" section
    Then user clicks on the action icon of "Event Report"
    Then wait for popup loading
    Then user clicks on "Clinical Notes" on popup
    Then verify pop-up "Event Notes"
    Then user clicks on the plus icon of "Event Notes"
    Then take notes from start

    Then verify pop-up "Select Designation"
    Then user clicks on "Clinical Nurse Specialist" on popup
    Then wait for popup loading

    Then verify pop-up "Select Clinical Area"
    Then user clicks on "Cardiology" on popup
    Then wait for popup loading

    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for popup loading
    Then verify pop-up "Select Theme"
    Then user clicks on "Consultation" on popup
    Then verify pop-up "Create Clinical Note"
    Then user clears the text-area
    Then user enters "TST-1142 Creating Event List Clinical Notes" in the text-area
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1142 Creating Event List Clinical Notes"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note Summary"
    Then user verify detail "Updated On" exists "true"
    Then user verify Popup Adjacent Item "Updated By" with value "K Kualitatem"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1142 Creating Event List Clinical Notes"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "TST-1142 Creating Event List Clinical Notes" exists "true"

  @TST-1143 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Viewing Event List Clinical Notes
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Clinical Records"
    Then user lands on "Clinical Record Settings" page
    Then filter item "All Names" with value "TST-1143 Category"
    Then create Category "TST-1143 Category" and if not exist
    Then Add Event Type to "Admission" in Default Category "TST-1143 Category" if not added
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Records" exists "true"
    Then user clicks on "Records" on popup
    Then user lands on "Patient Records" page
    Then wait for loading in "Event List" section
    Then user lands on "Event List" module
    Then wait for popup loading
    Then user clicks on "Showing All Events" card
    Then user clicks on "Select None" on popup
    Then user clicks on "TST-1143 Category" on popup
    Then user clicks on "Default" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Admission"
    Then wait for loading in "Event Report" section
    Then user clicks on the action icon of "Event Report"
    Then wait for popup loading
    Then user clicks on "Clinical Notes" on popup
    Then verify pop-up "Event Notes"
    Then user clicks on the plus icon of "Event Notes"
    Then take notes from start

    Then verify pop-up "Select Designation"
    Then user clicks on "Clinical Nurse Specialist" on popup
    Then wait for popup loading

    Then verify pop-up "Select Clinical Area"
    Then user clicks on "Cardiology" on popup
    Then wait for popup loading

    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for popup loading
    Then verify pop-up "Select Theme"
    Then user clicks on "Consultation" on popup
    Then verify pop-up "Create Clinical Note"
    Then user clears the text-area
    Then user enters "TST-1143 Viewing Event List Clinical Notes" in the text-area
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1143 Viewing Event List Clinical Notes"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note Summary"
    Then user verify detail "Updated On" exists "true"
    Then user verify Popup Adjacent Item "Updated By" with value "K Kualitatem"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1143 Viewing Event List Clinical Notes"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "TST-1143 Viewing Event List Clinical Notes" exists "true"

  @TST-1149 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Countersigning Functionality
    Given user lands on "Systems" page
    Then user clicks on profile from main menu
    Then user lands on "Profile" page
    Then user verify profile detail "ROLE" with value "WebV Admin"
    Then user clicks on "Settings" in menu bar section
    Then user clicks on "Roles" icon
    Then user lands on "Role Settings" page
    Then user clicks on "WebV Admin" in the table
    Then verify pop-up "Role Details"
    Then user clicks on the action icon pop-up
    Then wait for pop header to change to "Menu"
    Then user clicks on the action "Configure Permissions"
    Then wait for pop header to change to "Role Permissions"
    Then user clicks on "Systems" on popup
    Then user clicks on "Clinical Records" on popup
    Then check "Clinical Noting" role permissions to "active"
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then user clicks on tick-checkbox
    Then verify "Submission Successful" after completing the form

  @TST-1150 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Verify Clinical Noting filters
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Clinical Noting" exists "true"
    Then user clicks on "Clinical Noting" on popup
    Then user lands on "Patient Clinical Noting" page
    Then verify Item "Date Range" with respect to status "All Dates" is Exist "true"
    Then verify Item "Episode Type" with respect to status "All Episode Types" is Exist "true"
    Then verify Item "Theme" with respect to status "All Note Types" is Exist "true"
    Then verify Item "Designation" with respect to status "All Designations" is Exist "true"
    Then verify Item "Clinical Area" with respect to status "All Clinical Areas" is Exist "true"
    Then verify Item "Requires Countersigning" with respect to status "Yes & No" is Exist "true"
#    Then user verify detail "Date Range" exists "true"
#    Then user verify detail "Episode Type" exists "true"
#    Then user verify detail "Theme" exists "true"
#    Then user verify detail "Designation" exists "true"
#    Then user verify detail "Clinical Area" exists "true"
#    Then user verify detail "Requires Countersigning" exists "true"
    Then user clicks on "Episode Type"
    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for loading in "Patient Notes" section

    Then user clicks on "Date Range"
    Then verify pop-up "Select Start Date"
    Then user clicks on "Clear Value" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Select End Date"
    Then user selects date "30" of "November" of "2022"
    Then user clicks on tick-checkbox
    Then wait for loading in "Patient Notes" section

    Then user clicks on "Theme"
    Then verify pop-up "Select Theme"
    Then user clicks on "Consultation" on popup
    Then wait for loading in "Patient Notes" section

    Then user clicks on "Designation"
    Then verify pop-up "Select Designation"
    Then user clicks on "Clinical Nurse Specialist" on popup
    Then wait for loading in "Patient Notes" section

    Then user clicks on "Clinical Area"
    Then verify pop-up "Select Clinical Area"
    Then user clicks on "Cardiology" on popup
    Then wait for loading in "Patient Notes" section

    Then verify patient notes container
    Then verify "Inpatient" filter in Patient Notes

  @TST-1151 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Ability to reset all filters
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Clinical Noting" exists "true"
    Then user clicks on "Clinical Noting" on popup
    Then user lands on "Patient Clinical Noting" page
    Then verify Item "Date Range" with respect to status "All Dates" is Exist "true"
    Then verify Item "Episode Type" with respect to status "All Episode Types" is Exist "true"
    Then verify Item "Theme" with respect to status "All Note Types" is Exist "true"
    Then verify Item "Designation" with respect to status "All Designations" is Exist "true"
    Then verify Item "Clinical Area" with respect to status "All Clinical Areas" is Exist "true"
    Then verify Item "Requires Countersigning" with respect to status "Yes & No" is Exist "true"
    Then user clicks on "Episode Type"
    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for loading in "Patient Notes" section

    Then user clicks on "Date Range"
    Then verify pop-up "Select Start Date"
    Then user clicks on "Clear Value" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Select End Date"
    Then user selects date "30" of "November" of "2022"
    Then user clicks on tick-checkbox
    Then wait for loading in "Patient Notes" section

    Then user clicks on "Theme"
    Then verify pop-up "Select Theme"
    Then user clicks on "Consultation" on popup
    Then wait for loading in "Patient Notes" section

    Then user clicks on "Designation"
    Then verify pop-up "Select Designation"
    Then user clicks on "Clinical Nurse Specialist" on popup
    Then wait for loading in "Patient Notes" section

    Then user clicks on "Clinical Area"
    Then verify pop-up "Select Clinical Area"
    Then user clicks on "Cardiology" on popup
    Then wait for loading in "Patient Notes" section

    Then verify patient notes container
    Then verify "Inpatient" filter in Patient Notes

    Then user clicks on "Clear"
    Then wait for loading in "Patient Notes" section
    Then verify Item "Date Range" with respect to status "All Dates" is Exist "true"
    Then verify Item "Episode Type" with respect to status "All Episode Types" is Exist "true"
    Then verify Item "Theme" with respect to status "All Note Types" is Exist "true"
    Then verify Item "Designation" with respect to status "All Designations" is Exist "true"
    Then verify Item "Clinical Area" with respect to status "All Clinical Areas" is Exist "true"
    Then verify Item "Requires Countersigning" with respect to status "Yes & No" is Exist "true"

  @TST-1159 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Marking Incorrect Entries
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Clinical Noting" exists "true"
    Then user clicks on "Clinical Noting" on popup
    Then user lands on "Patient Clinical Noting" page
    Then verify "Patient Notes Filter" module exists "true"
    Then verify "Patient Notes" module exists "true"

    Then user clicks on the plus icon of "Patient Clinical Noting"
    Then wait for popup loading
    Then take notes from start

    Then verify pop-up "Select Designation"
    Then user clicks on "Clinical Nurse Specialist" on popup
    Then wait for popup loading

    Then verify pop-up "Select Clinical Area"
    Then user clicks on "Cardiology" on popup
    Then wait for popup loading

    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for popup loading
    Then verify pop-up "Select Theme"
    Then user clicks on "Consultation" on popup
    Then verify pop-up "Create Clinical Note"
    Then user clears the text-area
    Then user enters "TST-1159 Creating Jobs" in the text-area
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1159 Creating Jobs"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"

    Then user clicks on "Jobs" on popup
    Then wait for popup loading
    Then verify pop-up "Attached Patient Jobs List"
    Then user clicks on the plus icon of "Attached Patient Jobs List"
    Then wait for popup loading
    Then verify pop-up "Existing Patient Jobs List"
    Then user clicks on the plus icon of "Existing Patient Jobs List"
    Then user clicks on "Job" on popup
    Then user inputs "Job" with value "new job TST-1159"
    Then user clicks on "Priority" on popup
    Then wait for popup loading
    Then verify pop-up "Select A Priority"
    Then user clicks on "High" on popup
    Then wait for popup loading
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Patient Job Summary"
    Then user verify detail "Updated On" exists "true"
    Then user verify Popup Adjacent Item "Updated By" with value "K Kualitatem"
    Then user verify Popup Adjacent Item "Job" with value "new job TST-1159"
    Then user verify Popup Adjacent Item "Priority" with value "High"
    Then user verify detail "Required Date" exists "true"
    Then user verify detail "Role Required" exists "true"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify detail "new job TST-1159" exists "true"
    Then user clicks on pop-up back icon
    Then user verify detail "Jobs" exists "true"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note Summary"
    Then user verify detail "Updated On" exists "true"
    Then user verify Popup Adjacent Item "Updated By" with value "K Kualitatem"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1159 Creating Jobs"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-1160 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Ward Round Clinical Notes - Verify Lead Clinician details on the Note details panel
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Clinical Noting" exists "true"
    Then user clicks on "Clinical Noting" on popup
    Then user lands on "Patient Clinical Noting" page
    Then verify "Patient Notes Filter" module exists "true"
    Then verify "Patient Notes" module exists "true"

    Then user clicks on the plus icon of "Patient Clinical Noting"
    Then wait for popup loading
    Then take notes from start

    Then verify pop-up "Select Designation"
    Then user clicks on "Clinical Nurse Specialist" on popup
    Then wait for popup loading

    Then verify pop-up "Select Clinical Area"
    Then user clicks on "Cardiology" on popup
    Then wait for popup loading

    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for popup loading
    Then verify pop-up "Select Theme"
    Then user clicks on "Ward Round" on popup
    Then wait for popup loading
    Then user inputs "Clinical Lead" with value "TST-1160"
    Then user clicks on tick-checkbox

    Then verify pop-up "Create Clinical Note"

    Then user clears the text-area
    Then user enters "TST-1160 ward Round Clinical Notes" in the text-area
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Ward Round"
    Then user verify Popup Adjacent Item "Clinical Lead" with value "TST-1160"
    Then user verify Popup Adjacent Item "Note" with value "TST-1160 ward Round Clinical Notes"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note Summary"
    Then user verify detail "Updated On" exists "true"
    Then user verify Popup Adjacent Item "Updated By" with value "K Kualitatem"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Ward Round"
    Then user verify Popup Adjacent Item "Clinical Lead" with value "TST-1160"
    Then user verify Popup Adjacent Item "Note" with value "TST-1160 ward Round Clinical Notes"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on "Theme"
    Then verify pop-up "Select Theme"
    Then user clicks on "Ward Round" on popup
    Then wait for loading in "Patient Notes" section
    Then verify patient notes container
    Then verify Patient Notes Comments "TST-1160 ward Round Clinical Notes"
    Then user clicks on "TST-1160 ward Round Clinical Notes" span
    Then wait for popup loading
    Then verify pop-up "Clinical Note Details"
    Then user verify Popup Adjacent Item "Status" with value "Pending"
    Then user verify detail "Recorded On" exists "true"
    Then user verify Popup Adjacent Item "Recorded By" with value "K Kualitatem"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Ward Round"
    Then user verify Popup Adjacent Item "Clinical Lead" with value "TST-1160"
    Then user verify Popup Adjacent Item "Note" with value "TST-1160 ward Round Clinical Notes"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"

  @TST-1163 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Recording Clinical Notes against a Timeline Event
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Clinical Records"
    Then user lands on "Clinical Record Settings" page
    Then filter item "All Names" with value "TST-1163 Category"
    Then create Category "TST-1163 Category" and if not exist
    Then Add Event Type to "Admission" in Default Category "TST-1163 Category" if not added
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Records" exists "true"
    Then user clicks on "Records" on popup
    Then user lands on "Patient Records" page
    Then wait for loading in "Event List" section
    Then user lands on "Event List" module
    Then wait for popup loading
    Then user clicks on "Showing All Events" card
    Then user clicks on "Select None" on popup
    Then user clicks on "TST-1163 Category" on popup
    Then user clicks on "Default" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Admission"
    Then wait for loading in "Event Report" section
    Then user clicks on the action icon of "Event Report"
    Then wait for popup loading
    Then user clicks on "Clinical Notes" on popup
    Then verify pop-up "Event Notes"
    Then user clicks on the plus icon of "Event Notes"
    Then take notes from start

    Then verify pop-up "Select Designation"
    Then user clicks on "Clinical Nurse Specialist" on popup
    Then wait for popup loading

    Then verify pop-up "Select Clinical Area"
    Then user clicks on "Cardiology" on popup
    Then wait for popup loading

    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for popup loading
    Then verify pop-up "Select Theme"
    Then user clicks on "Consultation" on popup
    Then verify pop-up "Create Clinical Note"
    Then user clears the text-area
    Then user enters "TST-1163 Timeline Event Clinical Notes" in the text-area
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1163 Timeline Event Clinical Notes"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note Summary"
    Then user verify detail "Updated On" exists "true"
    Then user verify Popup Adjacent Item "Updated By" with value "K Kualitatem"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1163 Timeline Event Clinical Notes"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify detail "TST-1163 Timeline Event Clinical Notes" exists "true"

  @TST-1308 @haiderejaz @e2eSprint @sprint7
  Scenario: Clinical Noting : Ability to add a clinical note
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then user verify detail "Clinical Noting" exists "true"
    Then user clicks on "Clinical Noting" on popup
    Then user lands on "Patient Clinical Noting" page
    Then verify "Patient Notes Filter" module exists "true"
    Then verify "Patient Notes" module exists "true"

    Then user clicks on the plus icon of "Patient Clinical Noting"
    Then wait for popup loading
    Then take notes from start

    Then verify pop-up "Select Designation"
    Then user clicks on "Clinical Nurse Specialist" on popup
    Then wait for popup loading

    Then verify pop-up "Select Clinical Area"
    Then user clicks on "Cardiology" on popup
    Then wait for popup loading

    Then verify pop-up "Select Episode Type"
    Then user clicks on "Inpatient" on popup
    Then wait for popup loading
    Then verify pop-up "Select Theme"
    Then user clicks on "Consultation" on popup
    Then verify pop-up "Create Clinical Note"
    Then user clears the text-area
    Then user enters "TST-1308 Ability to Add Notes" in the text-area
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1308 Ability to Add Notes"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Create Clinical Note Summary"
    Then user verify detail "Updated On" exists "true"
    Then user verify Popup Adjacent Item "Updated By" with value "K Kualitatem"
    Then user verify Popup Adjacent Item "Episode Type" with value "Inpatient"
    Then user verify Popup Adjacent Item "Theme" with value "Consultation"
    Then user verify Popup Adjacent Item "Note" with value "TST-1308 Ability to Add Notes"
    Then user verify Popup Adjacent Item "Designation" with value "Clinical Nurse Specialist"
    Then user verify Popup Adjacent Item "Clinical Area" with value "Cardiology"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on "Theme"
    Then verify pop-up "Select Theme"
    Then user clicks on "Consultation" on popup
    Then wait for loading in "Patient Notes" section
    Then verify patient notes container
    Then verify "Consultation" filter in Patient Notes
    Then verify Patient Notes Comments "TST-1308 Ability to Add Notes"
