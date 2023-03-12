@profileChanging @e2e @resetProfile
Feature: To verify and validate profile changing test cases


  @TST-1246 @e2eSprint @sprint15 @rolesPermissionsLogin
  Scenario: Discharge Permissions
    Given user lands on "Systems" page
    Then check if role "TST1246" exists and if not then create it
    Then check if the current user has the role of "TST1246" and if not then change it
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "2222222222"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then user clicks on the plus icon
    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on the action "Radiology"
    Then verify pop-up "Select Location"
    Then user clicks on the action "AMETHYST DAY CASE UNIT"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abourawi, F"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Modality"
    Then verify pop-up "Select Modality"
    Then user verify action "CT" is available
    Then user verify action "Fluoroscopy" is available
    Then user verify action "Interventional/Misc" is available
    Then user verify action "MRI" is available
    Then user verify action "Plain (CR)" is available
    Then user verify action "Ultrasound" is available
    Then user clicks on pop-up back icon
    Then verify pop-up "Create Radiology Request"
    Then user clicks on pop-up back icon
    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on cross icon
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Roles" icon
    Then user lands on "Role Settings" page
    Then user clicks on "WebV Admin" in the table
    Then verify pop-up "Role Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Menu"
    Then user clicks on the action "Configure Permissions"
    Then verify pop-up "Role Permissions"
    Then user clicks on the action "Systems"
    Then user clicks on the action "Requests"
    Then user clicks on the action "Diagnostics"
    Then user verify action "Blood Science" is available
    Then user verify action "Microbiology" is available
    Then user verify action "Radiology" is available
    Then user verify action "Radiology - CT" is available
    Then user verify action "Radiology - Fluoroscopy" is available
    Then user verify action "Radiology - Interventional/Misc" is available
    Then user verify action "Radiology - MRI" is available
    Then user verify action "Radiology - MUGA" is available
    Then user verify action "Radiology - Myocardial Perfusion Scan" is available
    Then user verify action "Radiology - NLG CT Colon" is available
    Then user verify action "Radiology - Plain (CR)" is available
    Then user verify action "Radiology - Ultrasound" is available
    Then check "Radiology - CT" role permissions to "left-click-inactive"
    Then check "Radiology - Fluoroscopy" role permissions to "left-click-inactive"
    Then check "Radiology - Interventional/Misc" role permissions to "left-click-inactive"
    Then check "Radiology - MRI" role permissions to "left-click-inactive"
    Then check "Radiology - MRI" role permissions to "left-click-inactive"
    Then check "Radiology - Myocardial Perfusion Scan" role permissions to "left-click-inactive"
    Then check "Radiology - NLG CT Colon" role permissions to "left-click-inactive"
    Then check "Radiology - Plain (CR)" role permissions to "left-click-inactive"
    Then check "Radiology - Ultrasound" role permissions to "left-click-inactive"
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then user logs out
    Then user logs in using credentials "Profile Changing"
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "2222222222"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then user clicks on the plus icon
    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on the action "Radiology"
    Then verify pop-up "Select Location"
    Then user clicks on the action "AMETHYST DAY CASE UNIT"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abourawi, F"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Modality"
    Then verify pop-up "Select Modality"
    Then verify "Nothing Here" is present in the pop-up table
    Then user clicks on pop-up back icon
    Then verify pop-up "Create Radiology Request"
    Then user clicks on pop-up back icon
    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on cross icon
#    Then user clicks on "Settings" in menu bar section
#    Then user lands on "Settings" page
#    Then user clicks on "Roles" icon
#    Then user lands on "Role Settings" page
#    Then user clicks on "WebV Admin" in the table
#    Then verify pop-up "Role Details"
#    Then user clicks on the action icon pop-up
#    Then verify pop-up "Menu"
#    Then user clicks on the action "Configure Permissions"
#    Then verify pop-up "Role Permissions"
#    Then check "Systems" role permissions to "left-click-active"
#    Then user clicks on tick-checkbox
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox



  @TST-977 @e2eSprint @sprint15 @rolesPermissionsLogin
  Scenario: Ward Management : Populate holding area by entering Patient Identifier - Verify Permissions
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user lands on "informationScreen|wards.wardc1k" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Holding Area"
    Then verify pop-up "Holding Area"
    Then user clicks on the pop-up plus icon
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "0123456789"
    Then user clicks on tick-checkbox
    Then user clicks on "Continue"
    Then user clicks on the action "TCI AM"
    Then user clicks on "Bay 3 / Bed 5" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on cross icon
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Roles" icon
    Then user lands on "Role Settings" page
    Then user clicks on "HAMZA-TST-977" in the table
    Then verify pop-up "Role Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Menu"
    Then user clicks on the action "Configure Permissions"
    Then verify pop-up "Role Permissions"
    Then user clicks on "Systems" on popup
    Then verify pop-up "Role Permissions"
    Then user clicks on "Information Screens" on popup
    Then verify pop-up "Role Permissions"
    Then check "Populate Holding (By Existing Resident)" role permissions to "left-click-inactive"
    Then check "Populate Holding (By Patient Identifier)" role permissions to "left-click-inactive"
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then check if the current user has the role of "HAMZA-TST-977" and if not then change it
    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user lands on "informationScreen|wards.wardc1k" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Holding Area"
    Then verify pop-up "Holding Area"
    Then user clicks on the pop-up plus icon
    Then verify populating holding area option "Existing Resident" is disabled
    Then verify populating holding area option "Patient Identifier" is disabled
    Then user clicks on pop-up back icon
    Then user clicks on "Baker" on popup
    Then verify pop-up "Holding Area Details"
    Then user clicks on the action icon pop-up
    Then user clicks on "Discharge" on popup
    Then verify pop-up "Discharge Options"
    Then user clicks on "Destination" on popup
    Then user clicks on "Usual Place Of Residence" on popup
    Then user clicks on "Method" on popup
    Then user clicks on "Unknown Destination Method" on popup
    Then verify pop-up "Discharge Options"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on "Return to information screen"



  @TST-859 @rolesPermissionsLogin @e2eSprint @sprint11
  Scenario: Results Acknowledgement : Verify module permissions (Reports)
    Given user lands on "Systems" page
    Then check if the role Test 859 exists along with the pre-requisites
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then wait for the page to load
    Then check if pop-up appears and it does then close it
    Then verify module navigator "To Acknowledge" is selected
    Then wait for 10 seconds
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport857" with Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime857" exists which needs to be unacknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner"
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport857" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime857" without tag
    Then wait for 10 seconds
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user verify action "Acknowledge" is available
    Then user verify action "Print" is available
    Then user clicks on pop-up back icon
    Then check if the current user has the role of "TST859" and if not then change it
    Then user logs out
    Then user logs in using credentials "Profile Changing"
    Then user lands on "Systems" page
    Then verify the module "Clinical Handover" is disabled
    Then verify the module "Clinical Records" is disabled
    Then verify the module "Clinics" is disabled
    Then verify the module "Infection Control" is disabled
    Then verify the module "Information Screens" is disabled
    Then verify the module "Reports" is enabled
    Then verify the module "Requests" is disabled
    Then verify the module "Self Check-In" is disabled
    Then verify the module "Theatre Management" is disabled
    Then verify the module "Worklists" is disabled
    Then verify the module "Legacy Systems" is disabled
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then wait for the page to load
    Then verify module navigator "To Acknowledge" is selected
    Then check if pop-up appears and it does then close it
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 10 seconds
    Then verify all event reports names are "preRequisiteCreationData|preRequisites.TST859.rolePermissions"
    Then user click on module navigator "To Action"
    Then wait for the page to load
    Then verify module navigator "To Action" is selected
    Then check if pop-up appears and it does then close it
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 10 seconds
    Then verify all event reports names are "preRequisiteCreationData|preRequisites.TST859.rolePermissions"
    Then user click on module navigator "To Review"
    Then wait for the page to load
    Then verify module navigator "To Review" is selected
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 10 seconds
    Then verify all event reports names are "preRequisiteCreationData|preRequisites.TST859.rolePermissions"
    Then check if the current user has the role of "WebV Admin" and if not then change it
    Then user clicks on "Settings" in menu bar section
    Then user clicks on "Roles" icon
    Then user lands on "Role Settings" page
    Then user clicks on "TST859" in the table
    Then verify pop-up "Role Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Menu"
    Then user clicks on the action "Configure Report Permissions"
    Then verify pop-up "Role Permissions"
    Then user clicks on the action "preRequisiteCreationData|preRequisites.TST859.rolePermissions"
    Then verify pop-up "Role Permissions"
    Then set report permission of with title "Acknowledge" to isactive "inactive"
    Then set report permission of with title "Print" to isactive "inactive"
    Then user clicks on pop-up back icon
    Then verify pop-up "Role Permissions"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Role Details"
    Then user clicks on pop-up back icon
    Then check if the current user has the role of "TST859" and if not then change it
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then wait for the page to load
    Then verify module navigator "To Acknowledge" is selected
    Then check if pop-up appears and it does then close it
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for the page to load
    Then wait for 10 seconds
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient2.patientReport859" and Time "resultsAcknowledgementData|patientIdentifiers.patient2.patientReportTime859" without tag
    Then wait for 10 seconds
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user verify action "Acknowledge" is unavailable
    Then user verify action "Print" is unavailable
#    Then user clicks on pop-up back icon
#    Then check if the current user has the role of "WebV Admin" and if not then change it

  @TST-946 @rolesPermissionsLogin @e2eSprint @sprint8 
  Scenario: Radiology Requesting V3: Restricting Radiology Requests per modality
    Given user lands on "Systems" page
    Then check if role "TST-946" exists and if not then create it
    Then check if the current user has the role of "TST-946" and if not then change it
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "diagnosticRequestData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the exact sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then user clicks on the plus icon
    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on the action "Radiology & Medical Physics"
    Then verify pop-up "Select Location"
    Then user clicks on the action "diagnosticRequestData|radiology.location"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "diagnosticRequestData|radiology.clinician"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Modality"
    Then wait for the page to load
    Then wait for popup loading
    Then verify pop-up "Select Modality"
    Then user verify action "CT" is available
    Then user verify action "Fluoroscopy" is available
    Then user verify action "Interventional/Misc" is available
    Then user verify action "MRI" is available
    Then user verify action "Plain (CR)" is available
    Then user verify action "Ultrasound" is available
    Then user clicks on pop-up back icon
    Then verify pop-up "Create Radiology Request"
    Then user clicks on pop-up back icon
    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on cross icon
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Roles" icon
    Then user lands on "Role Settings" page
    Then user clicks on "TST-946" in the table
    Then verify pop-up "Role Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Menu"
    Then user clicks on the action "Configure Permissions"
    Then verify pop-up "Role Permissions"
    Then user clicks on the action "Systems"
    Then user clicks on the action "Requests"
    Then user clicks on the action "Diagnostics"
    Then user verify action "Blood Science" is available
    Then user verify action "Microbiology" is available
    Then user verify action "Radiology" is available
    Then user clicks on the action "Radiology"
    Then user verify action "CT" is available
    Then user verify action "Clinical Neurophysiology" is available
    Then user verify action "Fluoroscopy" is available
    Then user verify action "Interventional/Misc" is available
    Then user verify action "MRI" is available
    Then user verify action "NLG CT Colon" is available
    Then user verify action "Nuclear Medicine" is available
    Then user verify action "Physiological Measurement" is available
    Then user verify action "Plain (CR)" is available
    Then user verify action "Ultrasound" is available
    Then check "CT" role permissions to "left-click-inactive"
    Then check "Clinical Neurophysiology" role permissions to "left-click-inactive"
    Then check "Fluoroscopy" role permissions to "left-click-inactive"
    Then check "Interventional/Misc" role permissions to "left-click-inactive"
    Then check "MRI" role permissions to "left-click-inactive"
    Then check "NLG CT Colon" role permissions to "left-click-inactive"
    Then check "Nuclear Medicine" role permissions to "left-click-inactive"
    Then check "Physiological Measurement" role permissions to "left-click-inactive"
    Then check "Plain (CR)" role permissions to "left-click-inactive"
    Then check "Ultrasound" role permissions to "left-click-inactive"
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then user logs out
    Then user logs in using credentials "Profile Changing"
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "diagnosticRequestData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the exact sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then user clicks on the plus icon
    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on the action "Radiology & Medical Physics"
    Then verify pop-up "Select Location"
    Then user clicks on the action "diagnosticRequestData|radiology.location"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "diagnosticRequestData|radiology.clinician"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Modality"
    Then verify pop-up "Select Modality"
    Then verify "Nothing Here" is present in the pop-up table
#    Then user clicks on pop-up back icon
#    Then verify pop-up "Create Radiology Request"
#    Then user clicks on pop-up back icon
#    Then verify pop-up "Create Diagnostic Request"
#    Then user clicks on cross icon
#    Then user clicks on "Settings" in menu bar section
#    Then user lands on "Settings" page
#    Then user clicks on "Roles" icon
#    Then user lands on "Role Settings" page
#    Then user clicks on "WebV Admin" in the table
#    Then verify pop-up "Role Details"
#    Then user clicks on the action icon pop-up
#    Then verify pop-up "Menu"
#    Then user clicks on the action "Configure Permissions"
#    Then verify pop-up "Role Permissions"
#    Then check "Systems" role permissions to "left-click-active"
#    Then user clicks on tick-checkbox
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox

  @TST-1261 @rolesPermissionsLogin @e2eSprint @sprint12 
  Scenario: Updating IPC Cases
    Given user lands on "Systems" page
    Then check if role "TST1261" exists and if not then create it
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user lands on "informationScreen|wards.wardc1k" page
    Then add patient with NHS number "informationScreen|patientIdentifiers.patient1" in bed "Bay 3 / Bed 2"
    Then reload page
    Then wait for the page to load
    Then user clicks on the option "Bay 3 / Bed 2"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "Infection Control Case"
    Then verify pop-up "Case Details"
    Then verify pop-up patients demographics exist
    Then verify "Status" with value "Open" in the pop-up details
    Then verify "Updated By" with value "loginData|credentials4.name" in the pop-up details
    Then verify "Created By" with value "loginData|credentials.name" in the pop-up details
    Then verify "Case Site" with value "Diana Princess of Wales Hospital" in the pop-up details
    Then verify "Bed Management" with value "Amber" in the pop-up details
    Then verify "Involved In Outbreak" with value "No" in the pop-up details
    Then verify "Type of Admission" with value "Inpatient" in the pop-up details
    Then user clicks on pop-up back icon
    Then verify pop-up "Slot Details"
    Then user clicks on pop-up back icon
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Roles" icon
    Then user lands on "Role Settings" page
    Then user clicks on "TST1261" in the table
    Then verify pop-up "Role Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Menu"
    Then user clicks on the action "Configure Permissions"
    Then verify pop-up "Role Permissions"
    Then user clicks on the action "Systems"
    Then user clicks on the action "Information Screens"
    Then check "Infection Control Case" role permissions to "left-click-inactive"
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then check if the current user has the role of "TST1261" and if not then change it
    Then user clicks on "Systems" in menu bar section
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user clicks on the option "Bay 3 / Bed 2"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user verify action "Infection Control Case" is unavailable
    Then user clicks on pop-up back icon
    Then verify pop-up "Slot Details"
    Then user clicks on pop-up back icon
    Then check if the current user has the role of "WebV Admin" and if not then change it
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user clicks on the option "Bay 3 / Bed 2"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user verify action "Infection Control Case" is unavailable
    Then user clicks on pop-up back icon
    Then verify pop-up "Slot Details"
    Then user clicks on the option "Bay 3 / Bed 2"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "Infection Control Case"
    Then verify pop-up "Case Details"
    Then user saves the number of records for the label "Symptoms"
    Then user clicks on the action "Symptoms"
    Then verify pop-up "Case Symptoms"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Add Symptom"
    Then user clicks on the action "Sign/Symptom"
    Then verify pop-up "Symptoms List"
    Then user clicks on the action "Cough"
    Then verify pop-up "Add Symptom"
    Then user clicks on the action "Date of Onset"
    Then verify pop-up "Select A Date"
    Then user clicks on the action "Select Current Date"
    Then user clicks on tick-checkbox
    Then verify pop-up "Add Symptom"
    Then user clicks on the action "Care Setting"
    Then verify pop-up "Select Care Setting"
    Then user clicks on the action "Community Acquired"
    Then verify pop-up "Add Symptom"
    Then user clicks on the action "Notes"
    Then verify pop-up "Symptom Notes"
    Then user enters "TST1261 Notes" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Add Symptom"
    Then user clicks on tick-checkbox
    Then verify pop-up "Symptom Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Symptoms"
    Then user clicks on pop-up back icon
    Then user verifies the new number of records for the label "Symptoms"
    Then user clicks on pop-up back icon
    Then verify pop-up "Slot Details"
    Then user clicks on pop-up back icon
    Then check if patient "informationScreen|patientIdentifiers.PasAdmittedPatients.patient1" has an open case and if he does then close it
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then add patient with NHS number "informationScreen|patientIdentifiers.PasAdmittedPatients.patient1" in bed "Bay 3 / Bed 6"
    Then user clicks on the option "Bay 3 / Bed 6"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "Infection Control Case"
    Then verify pop-up "Create Infection Control Case"
    Then verify "Case Creation" after completing the form
    Then verify "The selected patient currently has no active infection control case assigned to them. Please click continue to create case and processed to add symptoms." after completing the form description
    Then user clicks on the action "Continue"
    Then verify pop-up "Add Symptom"
    Then user clicks on the action "Sign/Symptom"
    Then verify pop-up "Symptoms List"
    Then user clicks on the action "Cough"
    Then verify pop-up "Add Symptom"
    Then user clicks on the action "Date of Onset"
    Then verify pop-up "Select A Date"
    Then user clicks on the action "Select Current Date"
    Then user clicks on tick-checkbox
    Then verify pop-up "Add Symptom"
    Then user clicks on the action "Care Setting"
    Then verify pop-up "Select Care Setting"
    Then user clicks on the action "Community Acquired"
    Then verify pop-up "Add Symptom"
    Then user clicks on the action "Notes"
    Then verify pop-up "Symptom Notes"
    Then user enters "TST1261 Notes" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Add Symptom"
    Then user clicks on tick-checkbox
    Then verify pop-up "Symptom Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Symptoms"
    Then user clicks on pop-up back icon
    Then verify pop-up "Case Details"
    Then user verifies the number of records for the label "Symptoms" with value "1"
    Then user clicks on pop-up back icon
    Then verify pop-up "Slot Details"
    Then user clicks on pop-up back icon
    Then user clicks on "Systems" in menu bar section
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems page
    Then user lands on "Infection Control" page
    Then user lands on "Case List" module
    Then user able to click on Parameter filter
    Then verify pop-up "Case Search"
    Then user inputs "Patient Identifier" with value "informationScreen|patientIdentifiers.PasAdmittedPatients.patient1" inline
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then user clicks on "Open" in the table
    Then verify pop-up "Case Details"
    Then verify "Status" with value "Open" in the pop-up details
    Then user verifies the number of records for the label "Symptoms" with value "1"
    Then verify "Updated By" with value "loginData|credentials4.name" in the pop-up details
    Then verify "Created By" with value "loginData|credentials4.name" in the pop-up details
    Then verify "Case Site" with value "Diana Princess of Wales Hospital" in the pop-up details

  @TST-866 @rolesPermissionsLogin @e2eSprint @sprint11  @bugAfterAcknowledgingNoSuccessForm @bugPopUpDoesntDissapearAfterAcknowledged @bugRandomlyGoesToSystemsPage
  Scenario: Results Acknowledgement :  User Roles - Verify Access Permissions
    Given user lands on "Systems" page
    Then check if the role Test 866 exists along with the pre-requisites
    Then check if the current user has the role of "TST866" and if not then change it
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then wait for the page to load
    Then check if pop-up appears and it does then close it
    Then verify module navigator "To Acknowledge" is selected
    Then wait for 10 seconds
    Then check if a report "resultsAcknowledgementData|patientIdentifiers.patient2.patientReport859" with Time "resultsAcknowledgementData|patientIdentifiers.patient2.patientReportTime859" exists which needs to be unacknowledged for patient "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient2.patientReport859" and Time "resultsAcknowledgementData|patientIdentifiers.patient2.patientReportTime859" without tag
    Then wait for 10 seconds
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user verify action "Not My Patient" is available
    Then user clicks on pop-up back icon
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Roles" icon
    Then user lands on "Role Settings" page
    Then verify the table is populated
    Then user clicks on "TST866" in the table
    Then verify pop-up "Role Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Menu"
    Then user clicks on the action "Configure Report Permissions"
    Then verify pop-up "Role Permissions"
    Then user clicks on the action "Ultrasound"
    Then verify pop-up "Role Permissions"
    Then user clicks on the action "preRequisiteCreationData|preRequisites.TST866.rolePermissions"
    Then verify pop-up "Role Permissions"
    Then user verify action "Acknowledge" is available
    Then user verify action "Clinical Notes" is available
    Then user verify action "Not My Patient" is available
    Then user verify action "Print" is available
    Then user verify action "Unacknowledge" is available
    Then user verify action "View" is available
    Then set report permission of with title "preRequisiteCreationData|preRequisites.TST866.rolePermissions" to isactive "inactive"
    Then user clicks on pop-up back icon
    Then verify pop-up "Role Permissions"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Role Details"
    Then user clicks on pop-up back icon
    Then check if the current user has the role of "TST866" and if not then change it
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then user clicks on "Reports" card in Systems page
    Then user lands on "Reports" page
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then wait for the page to load
    Then verify module navigator "To Acknowledge" is selected
    Then check if pop-up appears and it does then close it
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "resultsAcknowledgementData|patientIdentifiers.patient2.nhsNumner"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for the page to load
    Then wait for 10 seconds
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient2.patientReport859" and Time "resultsAcknowledgementData|patientIdentifiers.patient2.patientReportTime859" without tag
    Then wait for 10 seconds
    Then user clicks on the action icon
    Then verify pop-up "Actions"
    Then user verify action "Not My Patient" is unavailable
    Then user clicks on pop-up back icon
    Then check if the current user has the role of "WebV Admin" and if not then change it

  @TST-1274 @rolesPermissionsLogin @e2eSprint @sprint12 @bug:GPDeclaredDeceasedPatientButNotDeceasedThroughTheSystemPatientRequired
  Scenario: Accessing YHCR
    Given user lands on "Systems" page
    Then check if the role Test 1274 exists along with the pre-requisites
    Then check if the current user has the role of "TST1274" and if not then change it
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "thirdPartySystemData|patientIdentifiers.patient4.nhsNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for 10 seconds
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Third Party Systems"
    Then verify pop-up "Third Party Systems"
    Then user clicks on the action "Yorkshire & Humber Care Record (YHCR)"
    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
    Then verify pop-up "Patient Consent"
    Then user clicks on the action "Yes"
    Then wait for the page to load
    Then verify back icon exist on the page
    Then verify patients demographics exist
    Then save the number of resource warnings
    Then user clicks on the option "Resource Warnings"
    Then verify pop-up "Resource Warnings"
    Then compare the popup warnings with the page warning
    Then user clicks on cross icon
    Then verify sub-header "Resource List" has options "Medical Record Summary|Allergies & Reactions|Clinical Administration|Clinical Report|Encounter Report|Immunisations|Medication Record|Observations|Problems|Referral Details" available
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "thirdPartySystemData|patientIdentifiers.patient2.nhsNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for 10 seconds
    Then verify the patient is deceased status is "true" from the demographics bar
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Third Party Systems"
    Then verify pop-up "Third Party Systems"
    Then user verify action "Yorkshire & Humber Care Record (YHCR)" is unavailable
    Then user clicks on pop-up back icon
    Then user lands on "Patient Summary" page
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "thirdPartySystemData|patientIdentifiers.patient3.nhsNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for 10 seconds
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Third Party Systems"
    Then verify pop-up "Third Party Systems"
    Then user clicks on the action "Yorkshire & Humber Care Record (YHCR)"
    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
    Then verify pop-up "Patient Consent"
    Then user clicks on the action "Yes"
    Then verify pop-up "Warnings"
    Then verify "Patient Deceased" after completing the form
    Then verify "This patient is recorded as deceased on a third-party system. Therefore, further data cannot be requested." after completing the form description
    Then user clicks on back icon
    Then user lands on "Patient Summary" page
    Then check if the current user has the role of "WebV Admin" and if not then change it

  @TST-1290 @rolesPermissionsLogin  @e2eSprint @sprint12
  Scenario: Site Changes
    Given user lands on "Systems" page
    Then check if role "TST1290" exists and if not then create it
    Then check if the current user has the role of "TST1290" and if not then change it
    Then user clicks on profile from main menu
    Then user lands on "Profile" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Change Site"
    Then verify pop-up "Select Site"
    Then user verify action "Diana Princess of Wales Hospital" is available
    Then user verify action "Goole and District Hospital" is available
    Then user verify action "North East Lincs Community Services" is available
    Then user verify action "North Lincs Community Services" is available
    Then user verify action "Scunthorpe General Hospital" is available
    Then user clicks on the action "Community Services"
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify profile detail "Site" with value "Community Services"
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "thirdPartySystemData|patientIdentifiers.patient1.nhsNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then verify the patient is deceased status is "false" from the demographics bar
    Then wait for 10 seconds
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Third Party Systems"
    Then verify pop-up "Third Party Systems"
    Then user clicks on the action "Yorkshire & Humber Care Record (YHCR)"
    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
    Then verify pop-up "Patient Consent"
    Then user verify action "YesI have gained the patients consent." is available
    Then user verify action "NoI am accessing the record in response to a clinical emergency." is available
    Then user verify action "CancelI do not wish to access the patients record." is available
    Then user clicks on the action "Yes"
    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
    Then verify the table is empty with text "Error"
    Then verify the table is empty with text description "Cannot retrieve third-party patient FHIR ID."
    Then check if the current user has the site of "Diana Princess of Wales Hospital" and if not then change it

  @TST-1186 @rolesPermissionsLogin @refactored  @e2eSprint @sprint2
  Scenario: User Roles in Settings - Updating Role Settings
    Given user lands on "Systems" page
    Then check if role "WebV Test" exists and if not then create it
    Then check if role "Test 2" exists and if not then create it
    Then check if role "Test 3" exists and if not then create it
    Then check if the current user has the role of "WebV Test" and if not then change it
    Then check if the current user has the role of "WebV Admin" and if not then change it
    Then check if the current user has the role of "Test 2" associated and if they are then remove them
    Then check if the current user has the role of "Test 3" associated and if they are then remove them
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Roles" icon
    Then user lands on "Role Settings" page
    Then verify "Active" Roles Exist
    Then verify "Inactive" Roles Exist
    Then change all roles with name "Test" to "Test 2"
    Then change all roles with name "Test 2" to "Test 3"
    Then user clicks on the plus icon
    Then verify pop-up "Create New Role"
    Then user inputs "Name" with value "Test"
    Then user inputs "Display Name" with value "Test"
    Then user clicks on the toggle button "Active"
    Then user clicks on tick-checkbox
    Then verify pop-up "Create New Role Summary"
    Then verify "Name" with value "Test" in the pop-up
    Then verify "Display Name" with value "Test" in the pop-up
    Then verify "Active" with value "Active" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then verify "Role succesfully created" after completing the form description
    Then user clicks on tick-checkbox
    Then wait for 20 seconds
    Then user clicks on "Test" in the table
    Then verify pop-up "Role Details"
    Then verify "Name" with value "Test" in the pop-up details
    Then verify "Display Name" with value "Test" in the pop-up details
    Then verify "Active" with value "Active" in the pop-up details
    Then user clicks on the action icon
    Then user clicks on the action "Edit"
    Then user inputs "Name" with value "Test 2" in edit
    Then user inputs "Display Name" with value "Test 2" in edit
    Then user clicks on the action "Active"
    Then verify pop-up "Edit Active"
    Then user clicks on the action "Inactive"
#    Then verify "Name" with value "Test 2" in the pop-up details
#    Then verify "Display Name" with value "Test 2" in the pop-up details
#    Then verify "Active" with value "Inactive" in the pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then verify "Role succesfully edited" after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Role Details"
    Then user clicks on the action icon
    Then verify pop-up "Menu"
    Then user clicks on the action "Edit"
    Then user clicks on the action "Active"
    Then verify pop-up "Edit Active"
    Then user clicks on the action "Active"
#    Then verify "Active" with value "Inactive" in the pop-up
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then verify "Role succesfully edited" after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Role Details"
    Then user clicks on pop-up back icon
    Then user clicks on the last "Test 2" in the table
    Then user clicks on the action icon
    Then verify pop-up "Menu"
    Then user clicks on the action "Configure Permissions"
    Then verify pop-up "Role Permissions"
    Then user selects all the permissions
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then verify "Role succesfully edited" after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Role Details"
    Then user clicks on the action icon
    Then verify pop-up "Menu"
    Then user clicks on the action "Configure Report Permissions"
    Then verify pop-up "Role Permissions"
    Then user selects all the permissions
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then verify "Role succesfully edited" after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Role Details"
    Then user clicks on pop-up back icon
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Accounts" icon
    Then user lands on "Account Settings" page
    Then user lands on "Users List" module
    Then user clicks on navigation search icon
    Then verify pop-up "User Search"
    Then user clicks on "Username"
    Then verify pop-up "User Search"
    Then user clicks on the action "Username"
    Then verify pop-up "Username Search"
    Then user inputs "Username" with value "loginData|credentials4.username"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on "loginData|credentials4.name" in the table
    Then verify pop-up "Account Details"
    Then user clicks on the option "Profiles"
    Then verify pop-up "Profiles List"
    Then user clicks on the action "WebV Test"
    Then verify pop-up "Profile Details"
    Then user clicks on the action icon
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Profile"
    Then user clicks on the action "Role"
    Then user inputs "Test 2" in the filter option
    Then wait for "5" seconds
    Then user selects the first option in filter with value "Test 2"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Profile Details"
    Then user clicks on pop-up back icon
    Then verify pop-up "Profiles List"
    Then user clicks on pop-up back icon
    Then verify pop-up "Account Details"
    Then user clicks on cross icon
    Then user clicks on "loginData|credentials4.name" in menu bar section
    Then user lands on "Profile" page
    Then user clicks on the action icon
    Then user clicks on the action "Change Profile"
    Then user clicks on the action "Test 2"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then reload page
    Then wait for 20 seconds
    Then verify "Settings" in menu-bar is accessible
    Then verify "Utilities" in menu-bar is accessible
    Then verify "Systems" in menu-bar is accessible
    Then verify "Patient Quick Search" in menu-bar is accessible
    Then user clicks on "loginData|credentials4.name" in menu bar section
    Then user lands on "Profile" page
    Then user clicks on the action icon
    Then user clicks on the action "Change Profile"
    Then user clicks on the action "WebV Admin"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Roles" icon
    Then user lands on "Role Settings" page
    Then reload page
    Then wait for 20 seconds
    Then user clicks on the last "Test 2" in the table
    Then verify pop-up "Role Details"
    Then user clicks on the action icon
    Then user clicks on the action "Configure Permissions"
    Then verify pop-up "Role Permissions"
    Then user deselects all the permissions
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Role succesfully edited" after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Role Details"
    Then user clicks on pop-up back icon
    Then user clicks on "loginData|credentials4.name" in menu bar section
    Then user lands on "Profile" page
    Then user clicks on the action icon
    Then user clicks on the action "Change Profile"
    Then user clicks on the action "Test 2"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then reload page
    Then wait for 20 seconds
    Then verify "Settings" in menu-bar is in-accessible
    Then verify "Utilities" in menu-bar is in-accessible
    Then verify "Systems" in menu-bar is in-accessible
    Then verify "Patient Quick Search" in menu-bar is in-accessible
    Then user clicks on "loginData|credentials4.name" in menu bar section
    Then user lands on "Profile" page
    Then user clicks on the action icon
    Then user clicks on the action "Change Profile"
    Then user clicks on the action "WebV Admin"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Roles" icon
    Then user lands on "Role Settings" page
    Then user clicks on the last "Test 2" in the table
    Then verify pop-up "Role Details"
    Then user clicks on the action icon
    Then user clicks on the action "Configure Permissions"
    Then verify pop-up "Role Permissions"
    Then user selects all the permissions
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Role succesfully edited" after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Role Details"
    Then user clicks on the action icon
    Then user clicks on the action "Configure Report Permissions"
    Then verify pop-up "Role Permissions"
    Then user deselects all the permissions
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then verify "Role succesfully edited" after completing the form description
    Then user clicks on tick-checkbox
    Then verify pop-up "Role Details"
    Then user clicks on pop-up back icon
    Then user clicks on "loginData|credentials4.name" in menu bar section
    Then user lands on "Profile" page
    Then user clicks on the action icon
    Then user clicks on the action "Change Profile"
    Then user clicks on the action "Test 2"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then reload page
    Then wait for 20 seconds
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then user clicks on "Report" icon
    Then user lands on "Report" page
    Then user clicks on navigation search icon
    Then verify pop-up "Reports Search"
    Then user clicks on "Patient Identifier" in Reports search popup
    Then user enters Patient Identifier Search "0123456789"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then wait for 20 seconds
    Then user verify that all reports are unselectable
    Then user clicks on "loginData|credentials4.name" in menu bar section
    Then user lands on "Profile" page
    Then user clicks on the action icon
    Then user clicks on the action "Change Profile"
    Then user clicks on the action "WebV Admin"
    Then verify "Success" after completing the form
    Then verify "Your changes were saved successfully." after completing the form description
    Then user clicks on tick-checkbox
    Then reload page
    Then wait for 20 seconds
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Accounts" icon
    Then user lands on "Account Settings" page
    Then user lands on "Users List" module
    Then user clicks on navigation search icon
    Then verify pop-up "User Search"
    Then user clicks on "Username"
    Then verify pop-up "User Search"
    Then user clicks on the action "Username"
    Then verify pop-up "Username Search"
    Then user inputs "Username" with value "loginData|credentials4.username"
    Then user clicks on tick-checkbox
    Then user clicks on "loginData|credentials4.name" in the table
    Then verify pop-up "Account Details"
    Then user clicks on the option "Profiles"
    Then verify pop-up "Profiles List"
    Then user clicks on the action "Test 2"
    Then verify pop-up "Profile Details"
    Then user clicks on the action icon
    Then user clicks on the action "Remove"
    Then verify pop-up "Remove Profile"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-1183 @rolesPermissionsLogin  @e2eSprint @sprint2
  Scenario: User Profile
    Given user lands on "Systems" page
    Then check if role "WebV Test" exists and if not then create it
    Then check if the current user has the role of "WebV Test" and if not then change it
    Then check if the current user has the role of "WebV Admin" and if not then change it
    Then user clicks on "Systems" in menu bar section
    Then user clicks on profile from main menu
    #Verify Profile Detail
    Then user lands on "Profile" page

     #Revert Back to Last Site
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Change Site"
    Then verify pop-up "Select Site"
    Then user clicks on the pop-up option "Goole and District Hospital"
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify profile detail "SITE" with value "Goole and District Hospital"

    #Revert Back to Last Role
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Change Profile"
    Then verify pop-up "Select Profile"
    Then user clicks on the pop-up option "WebV Admin"
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify profile detail "ROLE" with value "WebV Admin"

    Then user verify Profile Name "loginData|credentials4.name"
    Then user verify profile detail "ROLE" with value "WebV Admin"
    Then user verify profile detail "SITE" with value "Goole and District Hospital"
    Then user verify profile status "Available"
    #Verify Diff Options
    Then user clicks on the action icon
    Then user verify action "Announcements" is available
    Then user verify action "Change Profile" is available
    Then user verify action "Change Site" is available
    Then user verify action "Security" is available
    #Verify Change Password in Security
    Then user clicks on the sub-navigation in profile menu "Security"
    Then verify pop-up "Security"
    Then user enters password
    Then user clicks on tick-checkbox
    Then verify pop-up "Select Security Options"
    Then user clicks on the option "Change Password"
    Then verify pop-up "Set Password"
    Then user clicks on back icon
    Then user clicks on back icon
    #Chnage Site
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Change Site"
    Then verify pop-up "Select Site"
    Then user clicks on the pop-up option "Diana Princess of Wales Hospital"
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify profile detail "SITE" with value "Diana Princess of Wales Hospital"
    #Chnage Role
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Change Profile"
    Then verify pop-up "Select Profile"
    Then user clicks on the pop-up option "WebV Test"
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user verify profile detail "ROLE" with value "WebV Test"

  @TST-845 @rolesPermissionsLogin @e2eSprint @sprint10
  Scenario: Results Acknowledgement : Reports Search - Predefined Criteria
    Given user lands on "Systems" page
    Then check if role "TST845" exists and if not then create it
    Then check if the current user has the role of "TST845" and if not then change it
    Then user clicks on "Systems" in menu bar section
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
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport845" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime845" without tag
    Then user clicks on the action icon
    Then user verify action "Acknowledge" is available
    Then user clicks on pop-up back icon
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
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport845_2" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime845_2" without tag
    Then user clicks on the action icon
    Then user verify action "Unacknowledge" is available
    Then user clicks on pop-up back icon
    Then user click on module navigator "To Review"
    Then verify module navigator "To Review" is selected
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
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport845_3" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime845_3" without tag
    Then user clicks on the action icon
    Then user verify action "Follow Up Actions" is available
    Then user clicks on pop-up back icon
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Roles" icon
    Then user lands on "Role Settings" page
    Then user clicks on "TST845" in the table
    Then verify pop-up "Role Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Menu"
    Then user clicks on the action "Configure Report Permissions"
    Then verify pop-up "Role Permissions"
    Then user clicks on the action "Blood Science"
    Then set report permission of with title "Acknowledge" to isactive "inactive"
    Then set report permission of with title "Unacknowledge" to isactive "inactive"
    Then set report permission of with title "Follow-Up Actions" to isactive "inactive"
    Then user clicks on pop-up back icon
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then user logs out
    Then user logs in using credentials "Profile Changing"
    Then user clicks on "Systems" in menu bar section
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
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport845" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime845" without tag
    Then user clicks on the action icon
    Then user verify action "Acknowledge" is unavailable
    Then user clicks on pop-up back icon
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
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport845_2" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime845_2" without tag
    Then user clicks on the action icon
    Then user verify action "Unacknowledge" is unavailable
    Then user clicks on pop-up back icon
    Then user click on module navigator "To Review"
    Then verify module navigator "To Review" is selected
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
    Then select an acknowledged report with name "resultsAcknowledgementData|patientIdentifiers.patient1.patientReport845_3" and Time "resultsAcknowledgementData|patientIdentifiers.patient1.patientReportTime845_3" without tag
    Then user clicks on the action icon
    Then user verify action "Follow Up Actions" is unavailable
#    Then user clicks on pop-up back icon
#    Then user clicks on "Settings" in menu bar section
#    Then user lands on "Settings" page
#    Then user clicks on "Roles" icon
#    Then user lands on "Role Settings" page
#    Then user clicks on "WebV Admin" in the table
#    Then verify pop-up "Role Details"
#    Then user clicks on the action icon pop-up
#    Then verify pop-up "Menu"
#    Then user clicks on the action "Configure Report Permissions"
#    Then verify pop-up "Role Permissions"
#    Then check "Blood Science" role permissions to "left-click-active"
#    Then user clicks on tick-checkbox
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox