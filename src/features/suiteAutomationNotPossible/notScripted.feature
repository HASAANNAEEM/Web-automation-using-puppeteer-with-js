@notScripted @e2e
Feature: Automation Not Possible Test Cases

  #webVCore
  @TST-1250 @haider @subsetOfTST-1251
  Scenario: Announcement Creation
    Given user lands on "Systems" page

  #v3Documents
  @TST-1064 @v3Documents
  Scenario: V3 Documents : Printing Packages
    Given user lands on "Systems" page

  #eObservations
  @TST-1171  @e2eSprint @sprint6  @sameAsTST-1225
  Scenario: V3 Observations :  Changing Review Times
    Given user lands on "Systems" page

  @TST-1164 @e2eSprint @sprint6 @supersededByTST-1165
  Scenario: V3 Observations - Recording NEWS - Vital signs
    Given user lands on "Systems" page

  #comorbidities
  @TST-1334 @v2Functionality
  Scenario: Accessing Comorbidities List (V2 to v3 Link)
    Given user lands on "Systems" page

  # @diagnosticRequest
  @TST-939
  Scenario: Radiology Requesting V3 : Printing Radiology Requests
    Given user lands on "Systems" page

  @TST-953
  Scenario: Pathology Requesting V3 : Patient Request - Request Form Printing
    Given user lands on "Systems" page

  @TST-968
  Scenario: Pathology Requesting V3 : Showing Media on Request Submission
    Given user lands on "Systems" page

  @TST-992 #print func not available
  Scenario: Pathology Requesting V3 - Reception Mode -  Microbiology requests  label Printing  & Blood Science G printing
    Given user lands on "Systems" page

  @TST-930
  Scenario: Pathology Requesting V3 :  Patient Requests - Verify sample collection options
    Given user lands on "Systems" page

  #   @v3DocumentsResultAcknowledgement
  @TST-841 @similarTo_TST-840
  Scenario: Pathology Requesting V3 : Showing Media on Request Submission
    Given user lands on "Systems" page

  @TST-869 @testStepsExplainsThatThisFunctionalityIsNotTestable
  Scenario: Results Acknowledgement : Acknowledging further editions of the report (Interface)
    Given user lands on "Systems" page

  @TST-846  @sprint10 @interface
  Scenario: Results Acknowledgement :  Re reported Reports (Interface)
    Given user lands on "Systems" page

  @TST-839  @sprint10 @interface
  Scenario: Results Acknowledgement : Auto-Acknowledging Reports (Interface)
    Given user lands on "Systems" page

  #@outpatientsClinics
  @TST-1077
  Scenario: Outpatients V3 :  Printing a Single Appointment
    Given user lands on "Systems" page

  #informationScreens
  @TST-751 @noActionIcon
  Scenario: Ward Information screen settings :  Verify Action Menu Options from Information Screen List Page
    Given user lands on "Systems" page

  @TST-875 @noActionIcon
  Scenario: WWard Management : Print Handover - Selecting Handover Patients
    Given user lands on "Systems" page

  @TST-881
  Scenario: Ward Management : Print Handover - Select/ deselect Handover Patients
    Given user lands on "Systems" page

  @TST-903  @similarTo_TST-883
  Scenario: Ward Information screen Settings :  Configure Clinician Colours
    Given user lands on "Systems" page

  @TST-904  @similarTo_TST-883
  Scenario: Ward Information screen Settings : Configure Specialty Colours
    Given user lands on "Systems" page

  @TST-909
  Scenario: Ward Information screen Settings : Select a Ward / Location - Enable / Disable Automated Slot clean
    Given user lands on "Systems" page

  @TST-911  @similarTo_TST-989
  Scenario: Ward Information screen Settings : Create New Indicator - Search for an existing Property
    Given user lands on "Systems" page

  @TST-962
  Scenario: Radiology Requesting V3 : Radiology Print Layout
    Given user lands on "Systems" page

  @TST-888  @e2eSprint @sprint13 @audit
  Scenario: Ward Management : Audit Functionality
    Given user lands on "Systems" page
    Given user lands on "Systems" page

  @TST-784  @print
  Scenario: Ward Management : Viewing ward Handover
    Given user lands on "Systems" page

  @TST-788  @print
  Scenario: Verify Handover Print Functionality
    Given user lands on "Systems" page

  #@outpatientsClinics
  @TST-1082
  Scenario: Outpatients V3 : Transmitting Letter to GP
    Given user lands on "Systems" page

  #@outpatientsModule
  @TST-1058
  Scenario: Outpatients V3 : Table of Appointments Requiring Review
    Given user lands on "Systems" page

  @TST-1054
  Scenario: Outpatients V3 :  Adding Additional Packages to a Consultation
    Given user lands on "Systems" page

  @TST-1092 @externalImplementationIsNeeded(TabletIsUsedToEnterPatients)
  Scenario: Outpatients V3 :  Patient arrivals by  Kiosk Check in - Verify status updates
    Given user lands on "Systems" page

  #bedManagamement
  @TST-1323 @bedManagamement
  Scenario: Test for filters not loading on switch from V2 to V3
    Given user lands on "Systems" page

  #  @ClinicalRecord
  @TST-1115
  Scenario: Clinical Record : Patient Merging
    Given user lands on "Systems" page