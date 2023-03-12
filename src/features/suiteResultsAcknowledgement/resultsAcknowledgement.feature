@v3DocumentsResultAcknowledgement @e2e
Feature: To check the results Acknowledgement
#sp9
  @TST-831 @safi @e2eSprint @sprint9
  Scenario: Results Acknowledgement - Recording an Action
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Patient Identifier" in Reports search popup
    Then user enters Patient Identifier Search "0123456789"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - MRI" in Event report section
    Then switch to main context
    Then user clicks on the action icon
    Then user selects "acknowledge" from Actions popUp
    Then user go to "Follow-Up Actions" in Confirm Actions popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-822 @safi @e2eSprint @sprint9 @bug #no green tick present on acknowledged report in report list
  Scenario: Results Acknowledgement - Acknowledging reports by Patient
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Patient Identifier" in Reports search popup
    Then user enters Patient Identifier Search "0123456789"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - MRI" in Event report section
    Then switch to main context
    Then user clicks on the action icon
    Then user selects "acknowledge" from Actions popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user verify "Acknowledged" report in the results list

  @TST-825 @safi @e2eSprint @sprint9 #no my requests available @bugNoReqAvailable
  Scenario: Results Acknowledgement - Acknowledging requests (Logged in User)
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Predefined Criteria" in Reports search popup
    Then user clicks on "My Requests" in Predefined Criteria popup

  @TST-830 @safi @e2eSprint @sprint9
  Scenario: Results Acknowledgement - Acknowledging reports by requesting Clinician
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Predefined Criteria" in Reports search popup
    Then user clicks on "Reports by Clinician" in Predefined Criteria popup
    Then user clicks on "Abdelgabar, Abdel N M" in Select Clinician popup
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - MRI" in Event report section
    Then switch to main context
    Then user clicks on the action icon
    Then user selects "acknowledge" from Actions popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-833 @safi @e2eSprint @sprint9 @bugFlagsnotShown #no Abnormal/critical flags visible in reports list
  Scenario: Results Acknowledgement - Distinguishing normal/abnormal/critical results
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
#    Then user clicks on "Patient Identifier" in Reports search popup
#    Then user enters Patient Identifier Search "0123456789"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
    Then user lands on "Event List" module
 #   Then user lands on "Event Report" module
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - Plain (CR)" in Event report section
    Then switch to main context

  @TST-832 @safi @e2eSprint @sprint9
  Scenario: Results Acknowledgement - Acknowledging reports by current responsible clinician
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Predefined Criteria" in Reports search popup
    Then user clicks on "Reports by Responsible Clinician" in Predefined Criteria popup
    Then verify pop-up "Select Responsible Clinician"
    Then user clicks on the action " B WOBI"
    Then user clicks on "Plain (CR)" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - Plain (CR)" in Event report section
    Then switch to main context
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user verify action "acknowledge" is available
    Then user verify action "audit" is available
    Then user verify action "extra tests" is available
    Then user verify action "hide" is available
    Then user verify action "legacy timeline" is available
    Then user verify action "not my patient" is available
    Then user verify action "pmep queue" is available
    Then user verify action "print" is available
    Then user clicks on the action "acknowledge"
    Then verify pop-up "Confirm Actions"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on the action "unacknowledge"
    Then verify pop-up "Confirm Actions"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-820 @safi @e2eSprint @sprint9
  Scenario: Results Acknowledgement - Acknowledging reports
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Patient Identifier" in Reports search popup
    Then user enters Patient Identifier Search "0123456789"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user clicks on "Parameters" in the Event List section
    Then user clicks on "Location" in Filters popUp
    Then verify pop-up "Select Location"
    Then user clicks on the action "Amethyst Ward"
    Then user clicks on tick-checkbox
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - MRI" in Event report section
    Then switch to main context
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user selects "acknowledge" from Actions popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on the action "unacknowledge"
    Then verify pop-up "Confirm Actions"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-829 @safi @e2eSprint @sprint9 @bugClinicdatanotshown
  Scenario: Results Acknowledgement - Acknowledging reports by clinic list
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Predefined Criteria" in Reports search popup
    Then user clicks on "Reports by Clinic" in Predefined Criteria popup
    Then user clicks on "301HRRCDPW" in Select Clinic popUp
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - MRI" in Event report section
    Then switch to main context
    Then user clicks on the action icon
    Then user selects "acknowledge" from Actions popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-824 @safi @e2eSprint @sprint9
  Scenario: Results Acknowledgement - Filtering my results / Advanced search options
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on "Parameters" in the Event List section
    Then user clicks on "Clinician" in Filters popUp
    Then user clicks on "Abdelgabar, Abdel N M" in Select Clinician popup
    Then user clicks on tick-checkbox
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - MRI" in Event report section
    Then switch to main context

  @TST-1008 @safi @bugSelectedDateReportNotShown #no reports were shown for location given date
  Scenario: Results Acknowledgement - Reviewing Acknowledged Results
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user click on module navigator "To Review"
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Predefined Criteria" in Reports search popup
    Then user clicks on "Reports By Location" in Predefined Criteria popup
    Then user clicks on "AMETHYST WARD" in Select Location popUp
    Then verify pop-up "Select Date"
    Then user clicks on tick-checkbox

  @TST-997 @safi @bugAcknowledgingReportAnotherTimelineNotAvailable #Acknowledging report in other timeline not available
  Scenario: Results Acknowledgement - Validation Checks when Acknowledging a Report
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Patient Identifier" in Reports search popup
    Then user enters Patient Identifier Search "0123456789"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - MRI" in Event report section
    Then switch to main context
    Then user clicks on the action icon
    Then user selects "acknowledge" from Actions popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user verify "Acknowledged" report in the results list

  @TST-1002 @safi
  Scenario: Ward Management  - Clinical Indicators - Verify Persistent Properties
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on "XR Orthopantomogram full"
    Then user lands on "Patient Records" page
    Then user inputs "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport843" in the filter option
    Then wait for the page to load
    Then user clicks on the action icon of "Event Report"
    Then verify pop-up "Actions"
    Then user clicks on the action "Clinical Notes"
    Then verify pop-up "Event Notes"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Select Episode Type"
    Then user clicks on the action "Event Outside of Clinic"
    Then verify pop-up "Select Theme"
    Then user clicks on the action "Communication"
    Then verify pop-up "Select Clinical Note"
    Then user enters "Testing" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Clinical Note"
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Clinical Note Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-873 @safi @bugNoResultsForRadiology #no results for radiology
  Scenario: Results Acknowledgement - Highlighting Abnormal Results (Radiology)
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Predefined Criteria" in Reports search popup
    Then user clicks on "Reports by Specialties" in Predefined Criteria popup
    Then user clicks on "Radiology" in Select Specialities popUp
    Then user clicks on tick-checkbox

  @TST-998 @safi
  Scenario: Results Acknowledgement - Review Mode - Filter Acknowledged Reports
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Predefined Criteria" in Reports search popup
    Then user clicks on "Reports By Location" in Predefined Criteria popup
    Then user clicks on "AMETHYST WARD" in Select Location popUp
    Then user clicks on "CT Scan" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - CT Scan" in Event report section
    Then switch to main context

  @TST-994 @safi
  Scenario: Results Acknowledgement - Reports - Acknowledgement History (Comments)
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Patient Identifier" in Reports search popup
    Then user enters Patient Identifier Search "0123456789"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - MRI" in Event report section
    Then switch to main context
    Then user clicks on the action icon
    Then user selects "acknowledge" from Actions popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user verify "Acknowledged" report in the results list

  @TST-995 @safi
  Scenario: Results Acknowledgement - Unacknowledge a Report - Verify Report Status
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Patient Identifier" in Reports search popup
    Then user enters Patient Identifier Search "0123456789"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user clicks on "Parameters" in the Event List section
    Then user clicks on "Location" in Filters popUp
    Then verify pop-up "Select Location"
    Then user clicks on the action "Amethyst Ward"
    Then user clicks on tick-checkbox
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - MRI" in Event report section
    Then switch to main context
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user selects "acknowledge" from Actions popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on the action "unacknowledge"
    Then verify pop-up "Confirm Actions"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-1000 @safi
  Scenario: Results Acknowledgement - Searching Reports - Ability to  view reports from multiple specialties
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Predefined Criteria" in Reports search popup
    Then user clicks on "Reports by Specialties" in Predefined Criteria popup
    Then user clicks on "Radiology" in Select Specialities popUp
    Then user clicks on tick-checkbox
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Predefined Criteria" in Reports search popup
    Then user clicks on "Reports By Location" in Predefined Criteria popup
    Then user clicks on "AMETHYST WARD" in Select Location popUp
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Predefined Criteria" in Reports search popup
    Then user clicks on "Reports by Clinician" in Predefined Criteria popup
    Then user clicks on "Abdelgabar, Abdel N M" in Select Clinician popup
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - MRI" in Event report section
    Then switch to main context

  @TST-996 @safi
  Scenario: Results Acknowledgement - Acknowledgement Prompt on Exit - Verify Patient Details  and Report Actions
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Predefined Criteria" in Reports search popup
    Then user clicks on "Reports by Clinician" in Predefined Criteria popup
    Then user clicks on "Abdelgabar, Abdel N M" in Select Clinician popup
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - MRI" in Event report section
    Then switch to main context
    Then user clicks on "Plain (CR)" first report in result section
    Then verify pop-up "Report Acknowledgement"
    Then user selects "Do Not Acknowledge" from Report Acknowledgement popUp
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - Plain (CR)" in Event report section
    Then switch to main context

  @TST-999 @hamzaAhmad @e2eSprint @sprint10
  Scenario: Results Acknowledgement : Patient Summary card - Report Display Information
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "0123456789"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on "CT Head with contrast"
    Then user lands on "Patient Records" page
    Then switch to iframe "event-list-iframe"
    Then verify status should not be "Acknowledged"
    Then switch to main context
    Then verify report name is "CT Head with contrast"

  @TST-836 @haider @e2eSprint @sprint10 @bug:ViewGraphsNotClickableForFirstTimeWhenLogggedInForTheFirstTime
  Scenario: Cumulative Table and graphs : Graph Selections (Line/bar/Scatter)
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Results" on popup
    Then user lands on "Patient Results" page
    Then user clicks on the action icon
    Then verify pop-up "Results List Menu"
    Then user clicks on the action "View Graphs"
    Then verify pop-up "Filter Results"
    Then user clicks on the action "Tests"
    Then user selects all the permissions
    Then user clicks on tick-checkbox
    Then verify pop-up "Filter Results"
    Then user clicks on tick-checkbox
    Then user lands on "Line Graphs" module
    Then user clicks on the action icon
    Then verify pop-up "Select Graph Type"
    Then user verify action "Line" is available
    Then user verify action "Bar" is available
    Then user verify action "Scatter" is available

  @TST-837 @haider @e2eSprint @sprint10
  Scenario: Results Acknowledgement : Unacknowledging Reports
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for the page to load
    Then user lands on "Reports" page
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime" exists which needs to be authorised for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime" exists which needs to be unacknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then verify patient name "resultsAcknowledgementData|patientIdentifiers.patient1.patientName" with patient number "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner" under the heading "Results"
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime" exists which needs to be acknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user click on module navigator "To Action"
    Then verify module navigator "To Action" is selected
    Then wait for the page to load
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 10 seconds
    Then verify patient name "resultsAcknowledgementData|patientIdentifiers.patient1.patientName" with patient number "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner" under the heading "Results"
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime"
    Then wait for 10 seconds
    Then switch to iframe "event-list-iframe"
    Then wait for the page to load
    Then user saves the acknowledgement information
    Then switch to main context
    Then user clicks on the action icon
    Then wait for popup loading
    Then verify pop-up "Actions"
#    Then user verify action "Event Notes" is available
    Then user verify action "Follow Up Actions" is available
#    Then user verify action "Not My Patient" is available
    Then user verify action "Unacknowledge" is available
    Then user clicks on the action "Unacknowledge"
    Then verify pop-up "Confirm Actions"
    Then verify pop-up patients demographics exist
    Then verify sub-header with name "Report Details" exists
    Then user verify action "Report" is available
    Then user verify action "Type" is available
    Then verify sub-header with name "Unacknowledge Reason" exists
    Then user verify action "Comments" is available
    Then verify "Reason" with value "Acknowledged In Error" in the pop-up already exists
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user click on module navigator "To Acknowledge"
    Then verify module navigator "To Acknowledge" is selected
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime" without tag
    Then verify event report "Acknowledged By" with value "Not Acknowledged"
    Then verify event report "Acknowledged On" with value ""

  @TST-838 @haider @e2eSprint @sprint10
  Scenario: Results Acknowledgement : Re-Acknowledging Reports (Interface)
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 10 seconds
    Then verify patient name "resultsAcknowledgementData|patientIdentifiers.patient1.patientName" with patient number "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner" under the heading "Results"
    Then user clicks on filter Parameter
    Then verify pop-up "Filters"
    Then user clicks on the action "Location"
    Then verify pop-up "Select Location"
    Then user clicks on the action "ECC"
    Then verify pop-up "Filters"
    Then user clicks on tick-checkbox
    Then verify all reports have property "Status" with value "Authorised"



  @TST-840 @haider @e2eSprint @sprint10 @bugVerifyingFollowUpActions/DeclinedStatusTime/CompletedStatusList @bugWhenUnacknowledgingReportAndGoingToAcknowledgeModuleRedirectedToSystemsPage
  Scenario: Results Acknowledgement : Monitoring Acknowledged Report Actions
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 10 seconds
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportMRI" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTimeMRI" exists which needs to be unacknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then verify patient name "resultsAcknowledgementData|patientIdentifiers.patient1.patientName" with patient number "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner" under the heading "Results"
    Then user clicks on filter Parameter
    Then verify pop-up "Filters"
    Then user clicks on the action "Location"
    Then verify pop-up "Select Location"
    Then user clicks on the action "Outpatients"
    Then verify pop-up "Filters"
    Then user clicks on tick-checkbox
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportMRI" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTimeMRI" exists which needs to be acknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user click on module navigator "To Action"
    Then verify module navigator "To Action" is selected
    Then wait for the page to load
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 10 seconds
    Then verify patient name "resultsAcknowledgementData|patientIdentifiers.patient1.patientName" with patient number "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner" under the heading "Results"
    Then user clicks on filter Parameter
    Then verify pop-up "Filters"
    Then user clicks on the action "Location"
    Then verify pop-up "Select Location"
    Then user clicks on the action "Outpatients"
    Then verify pop-up "Filters"
    Then user clicks on tick-checkbox
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportMRI" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTimeMRI" without tag
    Then wait for 10 seconds
    Then verify event report "Status" with value "Acknowledged"
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on the action "Follow Up Actions"
    Then verify pop-up "Follow Up Actions"
    Then user clicks on the action "Action Taken - See Notes"
    Then user clicks on tick-checkbox
    Then verify pop-up "Set Follow Up Action's Status"
    Then user clicks on the action "Complete"
    Then verify pop-up "Add Comments To Follow Up Actions"
    Then user enters "Completed Comment" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Follow Up Actions Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Follow Up Actions"
    Then verify "Nothing Here" after completing the form
    Then user clicks on pop-up back icon
    Then verify pop-up "Actions"
    Then user clicks on pop-up back icon
    Then wait for 10 seconds
    Then wait for the page to load
    Then verify event report "Status" with value "Acknowledged" last
    Then verify event report "Action Status" with value "Complete" last
    Then verify event report "Action Comments" with value "Completed Comment" last
    Then user clicks on the action icon
    Then wait for popup loading
    Then verify pop-up "Actions"
    Then user clicks on the action "Unacknowledge"
    Then verify pop-up "Confirm Actions"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user click on module navigator "To Acknowledge"
    Then verify module navigator "To Acknowledge" is selected
    Then wait for 10 seconds
    Then verify patient name "resultsAcknowledgementData|patientIdentifiers.patient1.patientName" with patient number "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner" under the heading "Results"
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportMRI" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTimeMRI" exists which needs to be acknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user click on module navigator "To Action"
    Then verify module navigator "To Action" is selected
    Then wait for the page to load
    Then verify patient name "resultsAcknowledgementData|patientIdentifiers.patient1.patientName" with patient number "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner" under the heading "Results"
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportMRI" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTimeMRI" without tag
    Then wait for 10 seconds
    Then verify event report "Status" with value "Acknowledged"
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on the action "Follow Up Actions"
    Then verify pop-up "Follow Up Actions"
    Then user clicks on the action "Action Taken - See Notes"
    Then user clicks on tick-checkbox
    Then verify pop-up "Set Follow Up Action's Status"
    Then user clicks on the action "Decline"
    Then verify pop-up "Add Comments To Follow Up Actions"
    Then user enters "Declined Comment" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Follow Up Actions Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Follow Up Actions"
    Then verify "Nothing Here" after completing the form
    Then user clicks on pop-up back icon
    Then verify pop-up "Actions"
    Then user clicks on pop-up back icon
    Then verify event report "Status" with value "Acknowledged" last
    Then verify event report "Action Status" with value "Declined" last
    Then verify event report "Action Comments" with value "Declined Comment" last
    Then user clicks on the action icon
    Then wait for popup loading
    Then verify pop-up "Actions"
    Then user clicks on the action "Unacknowledge"
    Then verify pop-up "Confirm Actions"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-842  @haider @e2eSprint @sprint10 @bug:ClinicianNotRemoving
  Scenario: Results Acknowledgement : Filter by Requesting Clinician
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Predefined Criteria"
    Then verify pop-up "Predefined Criteria"
    Then user clicks on the action "Reports by Clinician"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abourawi, F"
    Then wait for 10 seconds
    Then verify all reports have property "Clinician" with value "Abourawi, F"
    Then check if a report "resultsAcknowledgementData|clinicianDataFilter.patientReport" with Time "resultsAcknowledgementData|clinicianDataFilter.patientReportTime" exists which needs to be unacknowledged for patient "resultsAcknowledgementData|clinicianDataFilter.nhsNumber"
    Then check if a report "resultsAcknowledgementData|clinicianDataFilter.patientReport" with Time "resultsAcknowledgementData|clinicianDataFilter.patientReportTime" exists which needs to be acknowledged for patient "resultsAcknowledgementData|clinicianDataFilter.nhsNumber"
    Then user click on module navigator "To Action"
    Then verify module navigator "To Action" is selected
    Then wait for the page to load
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Predefined Criteria"
    Then verify pop-up "Predefined Criteria"
    Then user clicks on the action "Reports by Clinician"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abourawi, F"
    Then wait for the page to load
    Then wait for 10 seconds
    Then verify all reports have property "Clinician" with value "Abourawi, F"
    Then select an acknowledged report with name "resultsAcknowledgementData|clinicianDataFilter.patientReport" and Time "resultsAcknowledgementData|clinicianDataFilter.patientReportTime"
    Then reload page
    Then user click on module navigator "To Action"
    Then verify module navigator "To Action" is selected
    Then wait for the page to load
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Predefined Criteria"
    Then verify pop-up "Predefined Criteria"
    Then user clicks on the action "Reports by Clinician"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abourawi, F"
    Then wait for the page to load
    Then wait for 10 seconds
    Then select an acknowledged report with name "resultsAcknowledgementData|clinicianDataFilter.patientReport" and Time "resultsAcknowledgementData|clinicianDataFilter.patientReportTime" without tag
    Then verify no acknowledged report tick mark exists
#    Then user click on module navigator "To Action"
#    Then verify module navigator "To Action" is selected
#    Then wait for the page to load
#    Then user clicks on navigation search icon
#    Then verify pop-up "Reports Search"
#    Then user clicks on the action "Patient Identifier"
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "resultsAcknowledgementData|clinicianDataFilter.nhsNumber"
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then wait for 10 seconds
#    Then verify patient name "resultsAcknowledgementData|clinicianDataFilter.patientName" with patient number "resultsAcknowledgementData|clinicianDataFilter.nhsNumber" under the heading "Results"
#    Then select an acknowledged report with name "resultsAcknowledgementData|clinicianDataFilter.patientReport" and Time "resultsAcknowledgementData|clinicianDataFilter.patientReportTime"
#    Then user clicks on the action icon
#    Then wait for popup loading
#    Then verify pop-up "Actions"
#    Then user clicks on the action "Unacknowledge"
#    Then verify pop-up "Confirm Actions"
#    Then verify pop-up patients demographics exist
#    Then verify sub-header with name "Report Details" exists
#    Then user verify action "Report" is available
#    Then user verify action "Type" is available
#    Then verify sub-header with name "Unacknowledge Reason" exists
#    Then user verify action "Comments" is available
#    Then verify "Reason" with value "Acknowledged In Error" in the pop-up already exists
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission"
#    Then verify "Success" after completing the form

  @TST-843 @haider @e2eSprint @sprint10
  Scenario: Results Acknowledgement : Verify Timeline Icon for Event Notes (against  a record)
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport843"
    Then user lands on "Patient Records" page
    Then user inputs "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport843" in the filter option
    Then wait for the page to load
    Then user clicks on the action icon of "Event Report"
    Then verify pop-up "Actions"
    Then user clicks on the action "Clinical Notes"
    Then verify pop-up "Event Notes"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Select Episode Type"
    Then user clicks on the action "Event Outside of Clinic"
    Then verify pop-up "Select Theme"
    Then user clicks on the action "Communication"
    Then verify pop-up "Create Clinical Note"
    Then user enters "Testing" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Clinical Note"
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Clinical Note Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then verify pop-up "Actions"
    Then user clicks on pop-up back icon
    Then verify a report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport843" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime843" with event note icon

  @TST-844 @haider @e2eSprint @sprint10
  Scenario: Results Acknowledgement : Reports Search - Predefined Criteria
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 10 seconds
    Then verify patient name "resultsAcknowledgementData|patientIdentifiers.patient1.patientName" with patient number "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner" under the heading "Results"
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user verify action "Patient IdentifierFind a patient directly using an NHS or Hospital Identifier" is available
    Then user verify action "Predefined CriteriaGenerate a list of results using predefined criteria" is available
#    Then user verify action "Advanced Search" is available
    Then user clicks on the action "Predefined Criteria"
    Then verify pop-up "Predefined Criteria"
    Then user clicks on the action "Reports by Clinician"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abourawi, F"
    Then wait for 10 seconds
    Then verify all reports have property "Clinician" with value "Abourawi, F"

  @TST-819 @safi
  Scenario: Results Acknowledgement - Viewing Reports
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Predefined Criteria" in Reports search popup
    Then user clicks on "Reports By Location" in Predefined Criteria popup
    Then user clicks on "AMETHYST WARD" in Select Location popUp
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - MRI" in Event report section
    Then switch to main context

  @TST-1010 @safi @bugNoDisputedReports
  Scenario: Results Acknowledgement - Disputed Reports
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Predefined Criteria" in Reports search popup
    Then user clicks on "Disputed Reports" in Predefined Criteria popup
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - MRI" in Event report section
    Then switch to main context

  @TST-1009 @safi
  Scenario: Results Acknowledgement - Review Mode - Verify Audit Data
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user click on module navigator "To Review"
#    Then user clicks on the action "Patient Identifier"
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
    Then user clicks on "CT Scan" first report in result section
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on "Audit" in Action menu popUp
    Then verify pop-up "Audit Data"


  @TST-818 @safi @bugNoReportforLoc #location have no reports in result section
  Scenario: Results Acknowledgement - Acknowledging reports by location
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on "Parameters" in the Event List section
    Then verify pop-up "Filters"
    Then user clicks on the action "Location"
    Then verify pop-up "Select Location"
    Then user clicks on "AMETHYST WARD" in Select Location popUp
    Then user clicks on tick-checkbox
    Then user clicks on "CT Scan" first report in result section

  @TST-856  @haider @e2eSprint @sprint11
  Scenario: Results Acknowledgement : Filter reports by selecting A Start Date and End Date
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 10 seconds
    Then user clicks on filter parameter "All Dates"
    Then verify pop-up "Select Start Date"
    Then user selects date "3" of "March" of "2020"
    Then user clicks on tick-checkbox
    Then verify pop-up "Select End Date"
    Then user selects date "5" of "March" of "2020"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport856" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime856" without tag

  @TST-857  @haider @e2eSprint @sprint11
  Scenario: Results Acknowledgement : View Patient details when trying to exit without acknowledging a report
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 10 seconds
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport857" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime857" without tag
    Then wait for 10 seconds
    Then verify event report "Performed On" with value "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportPerformedTime857"
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport857_2" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime857_2" without tag
    Then verify pop-up "Report Acknowledgement"
    Then user clicks on the action "Do Not Acknowledge"
    Then wait for 10 seconds
    Then verify event report "Performed On" with value "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportPerformedTime857_2"

  @TST-858  @haider @e2eSprint @sprint11 @bugWhenUnacknowledgingReportAndGoingToAcknowledgeModuleRedirectedToSystemsPage @bugEventNotesNotAvailable @bugPopNotDissapearing
  Scenario: Results Acknowledgement : Marking a Report as Acknowledged
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport858" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime858" exists which needs to be unacknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport858" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime858" without tag
    Then wait for 10 seconds
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user verify action "Acknowledge" is available
#    Then user verify action "Event Notes" is available
    Then user verify action "Not My Patient" is available
    Then user clicks on the action "Acknowledge"
    Then verify pop-up "Confirm Actions"
    Then user clicks on the action "Follow-Up Actions"
    Then verify pop-up "Select Follow Up Actions"
    Then user clicks on the action "Action Taken - See Notes"
    Then user clicks on the action "Results Noted But No Further Action Required"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirm Actions"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user click on module navigator "To Action"
    Then verify module navigator "To Action" is selected
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 10 seconds
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport858" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime858"
    Then verify event report "Status" with value "Acknowledged"
    Then verify event report "Acknowledged By" with value "loginData|credentials.name" last
#    Then user clicks on the action icon
#    Then verify pop-up "Actions"
#    Then user clicks on the action "Unacknowledge"
#    Then verify pop-up "Confirm Actions"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission"
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox

#  @TST-859 @haider @e2eSprint @sprint11 @resetProfile
#  Scenario: Results Acknowledgement : Verify module permissions (Reports)
#    Given user lands on "Systems" page
#    Then check if the role Test 859 exists along with the pre-requisites
#    Then user clicks on "Systems" in menu bar section
#    Then user lands on "Systems" page
#    Then user clicks on "Reports" card in Systems page
#    Then user lands on "Reports" page
#    Then wait for the page to load
#    Then check if pop-up appears and it does then close it
#    Then verify module navigator "To Acknowledge" is selected
#    Then wait for 10 seconds
#    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport857" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime857" exists which needs to be unacknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
#    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport857" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime857" without tag
#    Then wait for 10 seconds
#    Then user clicks on the action icon
#    Then verify pop-up "Actions"
#    Then user verify action "Acknowledge" is available
#    Then user verify action "Print" is available
#    Then user clicks on pop-up back icon
#    Then check if the current user has the role of "TST859" and if not then change it
#    Then user logs out
#    Then user logs in using credentials "Haider"
#    Then user lands on "Systems" page
#    Then verify the module "Clinical Handover" is disabled
#    Then verify the module "Clinical Records" is disabled
#    Then verify the module "Clinics" is disabled
#    Then verify the module "Infection Control" is disabled
#    Then verify the module "Information Screens" is disabled
#    Then verify the module "Reports" is enabled
#    Then verify the module "Requests" is disabled
#    Then verify the module "Self Check-In" is disabled
#    Then verify the module "Theatre Management" is disabled
#    Then verify the module "Worklists" is disabled
#    Then verify the module "Legacy Systems" is disabled
#    Then user clicks on "Reports" card in Systems page
#    Then user lands on "Reports" page
#    Then wait for the page to load
#    Then verify module navigator "To Acknowledge" is selected
#    Then check if pop-up appears and it does then close it
#    Then user clicks on navigation search icon
#    Then verify pop-up "Reports Search"
#    Then user clicks on the action "Patient Identifier"
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then wait for 10 seconds
#    Then verify all event reports names are "preRequisiteCreationData|preRequisites.TST859.rolePermissions"
#    Then user click on module navigator "To Action"
#    Then wait for the page to load
#    Then verify module navigator "To Action" is selected
#    Then check if pop-up appears and it does then close it
#    Then user clicks on navigation search icon
#    Then verify pop-up "Reports Search"
#    Then user clicks on the action "Patient Identifier"
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then wait for 10 seconds
#    Then verify all event reports names are "preRequisiteData.preRequisites.TST859.rolePermissions"
#    Then user click on module navigator "To Review"
#    Then wait for the page to load
#    Then verify module navigator "To Review" is selected
#    Then user clicks on navigation search icon
#    Then verify pop-up "Reports Search"
#    Then user clicks on the action "Patient Identifier"
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then wait for 10 seconds
#    Then verify all event reports names are "preRequisiteData.preRequisites.TST859.rolePermissions"
#    Then check if the current user has the role of "WebV Admin" and if not then change it
#    Then user clicks on "Settings" in menu bar section
#    Then user clicks on "Roles" icon
#    Then user lands on "Role Settings" page
#    Then user clicks on "TST859" in the table
#    Then verify pop-up "Role Details"
#    Then user clicks on the action icon pop-up
#    Then verify pop-up "Menu"
#    Then user clicks on the action "Configure Report Permissions"
#    Then verify pop-up "Role Permissions"
#    Then user clicks on the action "preRequisiteCreationData|preRequisites.TST859.rolePermissions"
#    Then verify pop-up "Role Permissions"
#    Then set report permission of with title "Acknowledge" to isactive "inactive"
#    Then set report permission of with title "Print" to isactive "inactive"
#    Then user clicks on pop-up back icon
#    Then verify pop-up "Role Permissions"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission Status"
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Role Details"
#    Then user clicks on pop-up back icon
#    Then check if the current user has the role of "TST859" and if not then change it
#    Then user clicks on "Systems" in menu bar section
#    Then user lands on "Systems" page
#    Then user clicks on "Reports" card in Systems page
#    Then user lands on "Reports" page
#    Then user clicks on navigation search icon
#    Then verify pop-up "Reports Search"
#    Then wait for the page to load
#    Then verify module navigator "To Acknowledge" is selected
#    Then check if pop-up appears and it does then close it
#    Then user clicks on navigation search icon
#    Then verify pop-up "Reports Search"
#    Then user clicks on the action "Patient Identifier"
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then wait for the page to load
#    Then wait for 10 seconds
#    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient2.patientReport859" and Time "resultsAcknowledgementData|patientIdentifiers.patient2.patientReportTime859" without tag
#    Then wait for 10 seconds
#    Then user clicks on the action icon
#    Then verify pop-up "Actions"
#    Then user verify action "Acknowledge" is unavailable
#    Then user verify action "Print" is unavailable
#    Then user clicks on pop-up back icon
#    Then check if the current user has the role of "WebV Admin" and if not then change it


  @TST-860 @haider @e2eSprint @sprint11 @bugAfterAcknowledgingNoSuccessForm @bugPopUpDoesntDissapearAfterAcknowledged @bugRandomlyGoesToSystemsPage
  Scenario: Results Acknowledgement : To Action Panel - Follow up Actions
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport860" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime860" exists which needs to be unacknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport860" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime860" exists which needs to be acknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user click on module navigator "To Action"
    Then verify module navigator "To Action" is selected
    Then wait for the page to load
    Then verify patient name "resultsAcknowledgementData|patientIdentifiers.patient1.patientName" with patient number "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner" under the heading "Results"
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport860" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime860" without tag
    Then wait for 10 seconds
    Then verify event report "Status" with value "Acknowledged"
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on the action "Follow Up Actions"
    Then verify pop-up "Follow Up Actions"
    Then user clicks on the action "Action Taken - See Notes"
    Then user clicks on tick-checkbox
    Then verify pop-up "Set Follow Up Action's Status"
    Then user clicks on the action "Decline"
    Then verify pop-up "Add Comments To Follow Up Actions"
    Then user enters "Declined Comment" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Follow Up Actions Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Follow Up Actions"
    Then verify "Nothing Here" after completing the form
    Then user clicks on pop-up back icon
    Then verify pop-up "Actions"
    Then user clicks on pop-up back icon
    Then verify event report "Status" with value "Acknowledged" last
    Then verify event report "Action Status" with value "Declined" last
    Then verify event report "Action Comments" with value "Declined Comment" last

  @TST-861 @haider @e2eSprint @sprint11 @bugClinicalNotes/Results/PatientTimeline/ResultsNotAvailable @bugNoteLimit10000InsteadOf1000 @bugPatientTimelineNotWorking
  Scenario: Results Acknowledgement : Actions from Reports
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then wait for the page to load
    Then check if pop-up appears and it does then close it
    Then verify module navigator "To Acknowledge" is selected
    Then wait for 10 seconds
    Then verify the table is populated in reports page
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport861" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime861" exists which needs to be unacknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport861" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime861" without tag
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user verify action "Acknowledge" is available
    Then user verify action "Audit" is available
    Then user verify action "Clinical Notes" is available
    Then user verify action "Legacy Timeline" is available
    Then user verify action "Not My Patient" is available
    Then user verify action "Patient Timeline" is available
    Then user verify action "Print" is available
    Then user verify action "Results" is available
    Then user clicks on the action "Clinical Notes"
    Then verify pop-up "Event Notes"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Select Episode Type"
    Then user clicks on the action "Inpatient"
    Then verify pop-up "Select Theme"
    Then user clicks on the action "Review"
    Then verify pop-up "Create Clinical Note"
    Then verify text-area has a character limit of "10000" character
    Then user enters "Clinical Note" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Clinical Note"
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Clinical Note Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Event Notes"
    Then user clicks on pop-up back icon
    Then verify pop-up "Actions"
    Then user clicks on pop-up back icon
    Then verify a report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport861" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime861" with event note icon
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on the action "Patient Timeline"
    Then user lands on "Patient Records" page
    Then user clicks on back icon
    Then verify pop-up "Report Acknowledgement"
    Then user clicks on the action "Do Not Acknowledge"
    Then user clicks on back icon
    Then user lands on "Reports" page

  @TST-862 @haider @e2eSprint @sprint11 @bugCliniciansNotAvailable @bugReportsNotAvailableWhenSelectingClinicError500 @bugRespectiveLocationNotAvailableOfReportWhenChoosingAReport
  Scenario: Results Acknowledgement : Reports View - Verify Search filters (Location / Specialties/ Clinics)
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then wait for the page to load
    Then check if pop-up appears and it does then close it
    Then verify module navigator "To Acknowledge" is selected
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Predefined Criteria"
    Then verify pop-up "Predefined Criteria"
    Then user clicks on the action "Reports by Clinic"
    Then verify pop-up "Select Clinic"
    Then user clicks on the action "CNS340HOME"
    Then wait for 10 seconds
    Then verify the table is populated in reports page
    Then user clicks on filter Parameter
    Then verify pop-up "Filters"
    Then user clicks on the action "Clinican"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abourawi, F"
    Then verify pop-up "Filters"
    Then user clicks on the action "Location"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "AMU SHORT STAY"
    Then verify pop-up "Filters"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then verify the table is populated in reports page
    Then select the first report in the event list of report page
    Then wait for 10 seconds
    Then verify event report "Location" with value "AMU SHORT STAY" last
    Then verify event report "Clinician" with value "Abourawi, F" last
    Then verify event report "Clinic" with value "CNS340HOME" last

  @TST-863 @haider @e2eSprint @sprint11 @bugFilterDischargineClinicianNotAvailable @bugCliniciansNotAvailable
  Scenario: Results Acknowledgement : Event List - Filters
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then wait for the page to load
    Then check if pop-up appears and it does then close it
    Then verify module navigator "To Acknowledge" is selected
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 20 seconds
    Then wait for the page to load
    Then verify the table is populated in reports page
    Then save the number of rows available
    Then user clicks on filter Parameter
    Then verify pop-up "Filters"
    Then user verify action "Date Range" is available
    Then user verify action "Clinic" is available
    Then user verify action "Responsible Clinician" is available
#    Then user verify action "Discharging Clinician" is available
    Then user verify action "Discipline" is available
    Then user verify action "Location" is available
    Then user verify action "Requester" is available
    Then user verify action "Specialty" is available
    Then user clicks on the action "Clinician"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Gimba, S"
    Then verify pop-up "Filters"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then wait for the page to load
    Then select the first report in the event list of report page
    Then verify event report "Clinician" with value "Gimba, S" last
    Then user clicks on filter Parameter
    Then verify pop-up "Filters"
    Then user clicks on the action "Date Range"
    Then verify pop-up "Select Start Date"
    Then user selects date DD as "1" Month as "July" and year as "2020"
    Then user clicks on tick-checkbox
    Then verify pop-up "Select End Date"
    Then user selects date DD as "31" Month as "July" and year as "2020"
    Then user clicks on tick-checkbox
    Then verify pop-up "Filters"
#    Then user clicks on the action "Location"
#    Then verify pop-up "Select Location"
#    Then user clicks on the action "Outpatients"
    Then verify pop-up "Filters"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then wait for the page to load
    Then verify the table is populated in reports page
    Then verify the table has limited number of "1" rows
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient2.patientReport863" and Time "resultsAcknowledgementData|patientIdentifiers.patient2.patientReportTime863" without tag
    Then user clicks on filter Parameter
    Then verify pop-up "Filters"
    Then user clicks on the action "Clear Filters"
    Then wait for 10 seconds
    Then wait for the page to load
    Then compare the rows and they should be same as before filtering

  @TST-865 @haider @e2eSprint @sprint11 @bugWhenFilteringToByReportsByAction @bugAfterAcknowledgingNoSuccessForm @bugPopUpDoesntDissapearAfterAcknowledged @bugRandomlyGoesToSystemsPage
  Scenario: Results Acknowledgement : Event List - Filters
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then wait for the page to load
    Then check if pop-up appears and it does then close it
    Then verify module navigator "To Acknowledge" is selected
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 10 seconds
    Then wait for the page to load
    Then verify the table is populated in reports page
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport865" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime865" exists which needs to be unacknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport865" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime865" exists which needs to be acknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user click on module navigator "To Action"
    Then verify module navigator "To Action" is selected
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Predefined Criteria"
    Then verify pop-up "Predefined Criteria"
    Then user verify action "My RequestsReports filtered by requests you have made" is available
    Then user verify action "Reports by ClinicianReports filtered by a selected Clinician" is available
    Then user verify action "Reports by Responsible ClinicianReports filtered by a selected Responsible Clinician" is available
    Then user verify action "Reports by ClinicReports filtered by a selected Clinic" is available
    Then user verify action "Reports by LocationReports filtered by a selected Location" is available
    Then user verify action "Reports By Action" is available
    Then user clicks on the action "Reports By Action"
    Then verify pop-up "Select Action"
    Then user clicks on the action "Action Taken - See Notes"
    Then user clicks on tick-checkbox
    Then verify pop-up "Predefined Criteria"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then verify the table is populated
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport865" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime865" without tag
    Then verify event report header "Follow Up Actions" with value "Follow Up - Action Taken - See Notes" last

#  @TST-866 @haider @e2eSprint @sprint11 @resetProfile @bugAfterAcknowledgingNoSuccessForm @bugPopUpDoesntDissapearAfterAcknowledged @bugRandomlyGoesToSystemsPage
#  Scenario: Results Acknowledgement :  User Roles - Verify Access Permissions
#    Given user lands on "Systems" page
#    Then check if the role Test 866 exists along with the pre-requisites
#    Then check if the current user has the role of "TST866" and if not then change it
#    Then user clicks on "Systems" in menu bar section
#    Then user lands on "Systems" page
#    Then user clicks on "Reports" card in Systems page
#    Then user lands on "Reports" page
#    Then wait for the page to load
#    Then check if pop-up appears and it does then close it
#    Then verify module navigator "To Acknowledge" is selected
#    Then wait for 10 seconds
#    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient2.patientReport859" with Time "resultsAcknowledgementData|patientIdentifiers.patient2.patientReportTime859" exists which needs to be unacknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
#    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient2.patientReport859" and Time "resultsAcknowledgementData|patientIdentifiers.patient2.patientReportTime859" without tag
#    Then wait for 10 seconds
#    Then user clicks on the action icon
#    Then verify pop-up "Actions"
#    Then user verify action "Not My Patient" is available
#    Then user clicks on pop-up back icon
#    Then user clicks on "Settings" in menu bar section
#    Then user lands on "Settings" page
#    Then user clicks on "Roles" icon
#    Then user lands on "Role Settings" page
#    Then verify the table is populated
#    Then user clicks on "TST866" in the table
#    Then verify pop-up "Role Details"
#    Then user clicks on the action icon pop-up
#    Then verify pop-up "Menu"
#    Then user clicks on the action "Configure Report Permissions"
#    Then verify pop-up "Role Permissions"
#    Then user clicks on the action "Ultrasound"
#    Then verify pop-up "Role Permissions"
#    Then user clicks on the action "preRequisiteCreationData|preRequisites.TST866.rolePermissions"
#    Then verify pop-up "Role Permissions"
#    Then user verify action "Acknowledge" is available
#    Then user verify action "Clinical Notes" is available
#    Then user verify action "Not My Patient" is available
#    Then user verify action "Print" is available
#    Then user verify action "Unacknowledge" is available
#    Then user verify action "View" is available
#    Then set report permission of with title "preRequisiteCreationData|preRequisites.TST866.rolePermissions" to isactive "inactive"
#    Then user clicks on pop-up back icon
#    Then verify pop-up "Role Permissions"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission Status"
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Role Details"
#    Then user clicks on pop-up back icon
#    Then check if the current user has the role of "TST866" and if not then change it
#    Then user clicks on "Systems" in menu bar section
#    Then user lands on "Systems" page
#    Then user clicks on "Reports" card in Systems page
#    Then user lands on "Reports" page
#    Then user clicks on navigation search icon
#    Then verify pop-up "Reports Search"
#    Then wait for the page to load
#    Then verify module navigator "To Acknowledge" is selected
#    Then check if pop-up appears and it does then close it
#    Then user clicks on navigation search icon
#    Then verify pop-up "Reports Search"
#    Then user clicks on the action "Patient Identifier"
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
#    Then user clicks on tick-checkbox
#    Then wait for popup loading
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then wait for the page to load
#    Then wait for 10 seconds
#    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient2.patientReport859" and Time "resultsAcknowledgementData|patientIdentifiers.patient2.patientReportTime859" without tag
#    Then wait for 10 seconds
#    Then user clicks on the action icon
#    Then verify pop-up "Actions"
#    Then user verify action "Not My Patient" is unavailable
#    Then user clicks on pop-up back icon
#    Then check if the current user has the role of "WebV Admin" and if not then change it

  @TST-868 @haider @e2eSprint @sprint11 @bug:ServerTimeDiff
  Scenario: Results Acknowledgement : Verify Report View when accessed via Patient Summary - Outstanding results card
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for the page to load
    Then save the first report acknowledgement in patient summary page
    Then user clicks on the first row of "Reports Acknowledgement"
    Then user lands on "Patient Records" page
    Then wait for 10 seconds
    Then switch to iframe "event-list-iframe"
    Then verify the report name and time from the event report

  @TST-870 @haider @e2eSprint @sprint11
  Scenario: Results Acknowledgement : Marking a Report as Not my Patient
    Given user lands on "Systems" page
    Then user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then wait for the page to load
    Then check if pop-up appears and it does then close it
    Then verify module navigator "To Acknowledge" is selected
    Then wait for 10 seconds
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport870" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime870" exists which needs to be authorised for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport870" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime870" without tag
#    Then verify event report "Status" with value "Authorised" last
    Then wait for the page to load
    Then verify event report "Status" with value "Authorised" last
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user verify action "Acknowledge" is available
    Then user verify action "Audit" is available
    Then user verify action "Legacy Timeline" is available
#    Then user verify action "Patient Timeline" is available
    Then user verify action "Print" is available
    Then user verify action "Not My Patient" is available
    Then user clicks on the action "Not My Patient"
    Then verify pop-up "Confirm Actions"
    Then verify "Not Your Patient?" after completing the form
    Then verify "Please confirm that you wish to mark that the patient referenced in the Event Report is not under your care." after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify event report "Status" with value "Disputed" last

  @TST-871 @haider @e2eSprint @sprint11 @bugAlreadySelectedFollowUpActionDoesntShowWhenAcknowledged @bugAfterAcknowledgingNoSuccessForm @bugPopUpDoesntDissapearAfterAcknowledged
  Scenario: Results Acknowledgement : To Action Panel - Verify Follow up Actions associated with a selected Report
    Given user lands on "Systems" page
    Then user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then wait for the page to load
    Then check if pop-up appears and it does then close it
    Then verify module navigator "To Acknowledge" is selected
    Then wait for 10 seconds
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport871" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime871" exists which needs to be unacknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport871" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime871" without tag
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on the action "Acknowledge"
    Then verify pop-up "Confirm Actions"
    Then user clicks on the action "Follow-Up Actions"
    Then verify pop-up "Select Follow Up Actions"
    Then user clicks on the action "Action Taken - See Notes"
    Then user clicks on the action "Letter To Be Sent To GP"
    Then user clicks on the action "Results Noted But No Further Action Required"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirm Actions"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user click on module navigator "To Action"
    Then verify module navigator "To Action" is selected
    Then check if pop-up appears and it does then close it
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 10 seconds
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport871" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime871"
    Then wait for 10 seconds
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user clicks on the action "Follow Up Actions"
    Then verify pop-up "Follow Up Actions"
    Then user verify action "Action Taken - See Notes" is available
    Then user verify action "Letter To Be Sent To GP" is available
#    Then user verify action "Results Noted But No Further Action Required" is available
#    Then user clicks on pop-up back icon
#    Then verify pop-up "Actions"
#    Then user clicks on the action "Unacknowledge"
#    Then verify pop-up "Confirm Actions"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission"
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox

  @TST-872 @haider @e2eSprint @sprint11
  Scenario: Results Acknowledgement :  Patient Summary Acknowledgement Card - Outstanding Reports View
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for the page to load
    Then user verify "Reports Acknowledgement" List Size should not greater then "5" and in "asc" order
    Then save the first report acknowledgement in patient summary page
    Then user clicks on the first row of "Reports Acknowledgement"
    Then user lands on "Patient Records" page
    Then wait for 10 seconds
    Then verify the report name and time from the event report in selected event list table

  @TST-1013 @safi
  Scenario: Results Acknowledgement - Navigation from Report to Patient Event List
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Patient Identifier" in Reports search popup
    Then user enters Patient Identifier Search "0123456789"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user clicks on "MRI" first report in result section
    Then switch to iframe "iframe-container"
    Then user verify the patient report "Radiology System - MRI" in Event report section
    Then switch to main context
    Then user clicks on the action icon
    Then user selects "acknowledge" from Actions popUp
    Then user go to "Follow-Up Actions" in Confirm Actions popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-1314 @safi
  Scenario: Test for Error when filtering by Discharging Clinician
    Given user lands on "Systems" page
    Then user clicks on "Reports" card in Systems
    Then user lands on "Reports" page
    Then user clicks on magnifying glass on the patient list
    Then user clicks on "Predefined Criteria" in Reports search popup
    Then user clicks on "Reports by Discharging Clinician" in Predefined Criteria popup
    Then verify pop-up "Select Clinician"
    Then user selects "Taflampas, P" from Select Clinician popUp
    Then verify pop-up "select start  date"
    Then user selects date DD as "1" Month as "December" and year as "2021"
    Then user clicks on tick-checkbox
    Then verify pop-up "Select End Date"
    Then user selects date DD as "4" Month as "January" and year as "2022"
    Then user clicks on tick-checkbox
    Then user verify that the Reports for clinician will appear down the left hand side under the results banner
