@informationScreens @informationScreens1 @e2e
Feature: To check the Ward Information screens


#  @TST-750 @safi
#  Scenario: Ward Information screen Settings - View Ward Information Screens List for a selected Site
#    Given user lands on "Systems" page
#    Then user clicks on "Information Screens" card in Systems
#    Then user lands on "Information Screens" page
#    Then user verify the Location list visible or not
#
#  @TST-906 @safi
#  Scenario: Ward Information screen Settings - Select a Ward / Location - Verify Location Details Page
#    Given user lands on "Systems" page
#    Then user clicks on "Settings" in menu bar section
#    Then user clicks on the "Systems" card in Settings section
#    Then user clicks on "Information Screens" card
#    Then user lands on "Information Screen Settings" page
#    Then user clicks on Location "ECC" in Location List
#    Then user clicks on action menu on Location details popup
#    Then user clicks on "Edit" in Location Menu popUp
#    Then user clicks on "Primary Specialty" in Edit Location Details popUp
#    Then user clicks on "Accident & Emergency" in Speciality popUp
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
#    Then user verify Location details
#
#  @TST-882 @safi
#  Scenario: Ward Management Settings - Multiple Specialities (Ability to set more than  one secondary Speciality)
#    Given user lands on "Systems" page
#    Then user clicks on "Settings" in menu bar section
#    Then user clicks on the "Systems" card in Settings section
#    Then user clicks on "Information Screens" card
#    Then user lands on "Information Screen Settings" page
#    Then user clicks on the action icon
#    Then user clicks on "Create Information Screen" in Menu popUp
#    Then user clicks on "Organisation" in Create popUp
#    Then user selects "Diana Princess of Wales Hospital" option from Select Orgainzation popUp
#    Then user clicks on "Location" in Create popUp
#    Then user selects "AMETHYST WARD" option from Select Location popUp
#    Then user clicks on "Primary Specialty" in Create popUp
#    Then user clicks on "Accident & Emergency" in Speciality popUp
#    Then user clicks on "Secondary Specialties" in Create popUp
#    Then user clicks on "Accident & Emergency" in Speciality popUp
#    Then user clicks on "Acute Internal Medicine" in Speciality popUp
#    Then user clicks on "Anaesthetics" in Speciality popUp
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
#    Then user clicks on Location "ECC" in Location List
#    Then user clicks on action menu on Location details popup
#    Then user clicks on "Edit" in Location Menu popUp
#    Then user clicks on "Primary Specialty" in Edit Location Details popUp
#    Then user clicks on "Accident & Emergency" in Speciality popUp
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
#    Then user verify Location details

  @TST-1011 @haider @e2eSprint @sprint12 @holdingAreaDischargeBug
  Scenario: Ward Management :  Transferring Patients
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user lands on "informationScreen|wards.wardc1k" page
    Then add patient with NHS number "informationScreen|patientIdentifiers.patient1" in bed "Bay 1 / Bed 5"
    Then user clicks on the option "Bay 1 / Bed 5"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user verify action "Clinical Indicators" is available
    Then user verify action "Residency Management" is available
    Then user verify action "Clinical Personnel" is available
    Then user clicks on the action "Residency Management"
    Then verify pop-up "Residency Management"
    Then verify pop-up patients demographics exist
    Then user verify action "Movement History" is available
    Then user verify action "Absent" is available
    Then user verify action "Move" is available
    Then user verify action "Swap Beds" is available
    Then user verify action "Transfer" is available
    Then user verify action "Discharge" is available
    Then user clicks on the action "Transfer"
    Then verify pop-up "Select Destination Site"
    Then user clicks on the action "Diana Princess of Wales Hospital"
    Then verify pop-up "Select Destination Location"
    Then user clicks on the action "ECC"
    Then verify pop-up "Select Transfer Reason"
    Then user clicks on the action "Patient Transfer"
    Then verify pop-up "Transfer Summary"
    Then user clicks on tick-checkbox
    Then verify "Patient Transfer Successful" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Slot Details"
    Then user clicks on pop-up back icon
    Then user clicks on back icon
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "ECC"
    Then user lands on "ECC" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Holding Area"
    Then user verify Black header shows up with patient NHS Number "informationScreen|patientIdentifiers.patient1verify" in popup
    Then user clicks on the action "informationScreen|patientIdentifiers.patient1verify"
    Then verify pop-up "Holding Area Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Holding Area Patient Menu"
    Then user clicks on the action "Discharge"
    Then verify pop-up "Discharge Options"
    Then user clicks on the action "Destination"
    Then verify pop-up "Discharge Destination"
    Then user clicks on the action "Usual Place Of Residence"
    Then verify pop-up "Discharge Options"
    Then user clicks on the action "Method"
    Then verify pop-up "Discharge Method"
    Then user clicks on the action "On Clinical Advice Or With Consent"
    Then verify pop-up "Discharge Options"
    Then user clicks on tick-checkbox
    Then verify pop-up "Discharge Summary"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form

  @TST-1237 @haider @e2eSprint @sprint12
  Scenario: Indicators using Yes/No and Yes/No/N/A properties
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user lands on "Package List" module
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-1237_Name_1"
    Then create a property with Code "Prop_TST-1237_Code_1" Name "Prop_TST-1237_Name_1" Desc "Prop_TST-1237_Description_1" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-1237_Name_1" if it is not published
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the card "Systems"
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card in Systems page
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then user click on module navigator "Indicators"
    Then user lands on "Indicator List" module
    Then user clicks on the plus icon
    Then verify pop-up "New Clinical Indicator"
    Then user inputs "Name" with random value in information page
#    Then user inputs "Name" with value "TST-1237_Clinical-Indicator" inline
    Then user clicks on the action "Property"
    Then verify pop-up "Property Search"
    Then user clicks on the action "Use Existing Property"
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then verify pop-up "Existing Property Search Results"
    Then user inputs "Prop_TST-1237_Name_1" in the filter option
    Then user clicks on the action "Prop_TST-1237_Name_1"
    Then verify pop-up "Selected Existing Property Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "New Clinical Indicator"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then verify pop-up "New Clinical Indicator"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Clinical Indicator Details"
    Then verify "Active" with value "Active" in the pop-up details
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up details
    Then user verify "Name" with random value in information page
    Then verify "Property" with value "Prop_TST-1237_Name_1" in the pop-up details

  @TST-1259 @haider @e2eSprint @sprint12
  Scenario: Information Screens / Manage Personnel
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user lands on "informationScreen|wards.wardc1k" page
    Then add patient with NHS number "informationScreen|patientIdentifiers.patient6.nhsNumber" in bed "Bay 1 / Bed 2"
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Manage Personnel"
    Then verify pop-up "Manage Personnel"
    Then check if "Abbas Haider" exists in "Chaplain" list and if not then add one in manage personell
    Then user clicks on the action "Abbas Haider"
    Then verify pop-up "Assigned Patients"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Action Menu"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Assigned Patients"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Patient Results"
    Then user clicks on the action "informationScreen|patientIdentifiers.patient6.nhsNumberVerify"
    Then user clicks on tick-checkbox
    Then verify pop-up "Patient Results"
    Then user clicks on pop-up back icon
    Then verify pop-up "Edit Assigned Patients"
    Then user clicks on pop-up back icon
    Then verify pop-up "Assigned Patients"
    Then verify sub-header "Ward C1K" has options "informationScreen|patientIdentifiers.patient6.data" available
    Then user clicks on pop-up back icon
    Then verify pop-up "Manage Personnel"
    Then user clicks on cross icon
    Then user clicks on the option "Bay 1 / Bed 2"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "Clinical Personnel"
    Then verify pop-up "Clinical Personnel"
    Then user clicks on the action "Manage Clinical Personnel"
    Then verify pop-up "Manage Clinical Personnel"
    Then verify sub-header "Chaplain" has options "Abbas HaiderGeneral Pratitioner" available
    Then user clicks on pop-up back icon
    Then user clicks on the action "Clinical Personnel"
    Then user clicks on pop-up back icon
    Then verify pop-up "Slot Details"
    Then user clicks on pop-up back icon
    Then discharge patient in bed "Bay 1 / Bed 2" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"
    Then add patient with NHS number "informationScreen|patientIdentifiers.patient6.nhsNumber" in bed "Bay 1 / Bed 2"
    Then user clicks on the option "Bay 1 / Bed 2"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "Clinical Personnel"
    Then verify pop-up "Clinical Personnel"
    Then user clicks on the action "Manage Clinical Personnel"
    Then verify pop-up "Manage Clinical Personnel"
    Then verify "No Additional Personnel" after completing the form
    Then user clicks on pop-up back icon
    Then verify pop-up "Clinical Personnel"
    Then user clicks on pop-up back icon
    Then verify pop-up "Slot Details"
    Then user clicks on pop-up back icon
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Manage Personnel"
    Then verify pop-up "Manage Personnel"
    Then check if "Abbas Haider" exists in "Chaplain" list and if not then add one in manage personell
    Then user clicks on the action "Abbas Haider"
    Then verify pop-up "Assigned Patients"
    Then verify "Nothing Here" after completing the form

#  @TST-1261 @haider @e2eSprint @sprint12 @resetProfile
#  Scenario: Updating IPC Cases
#    Given user lands on "Systems" page
#    Then check if role "TST1261" exists and if not then create it
#    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
#    Then user lands on "informationScreen|wards.wardc1k" page
#    Then add patient with NHS number "informationScreen|patientIdentifiers.patient1" in bed "Bay 1 / Bed 5"
#    Then user clicks on the option "Bay 1 / Bed 5"
#    Then verify pop-up "Slot Details"
#    Then user clicks on the action icon pop-up
#    Then verify pop-up "Slot Menu"
#    Then user clicks on the action "Infection Control Case"
#    Then verify pop-up "Case Details"
#    Then verify pop-up patients demographics exist
#    Then verify "Status" with value "Open" in the pop-up details
#    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up details
#    Then verify "Created By" with value "loginData|credentials.name" in the pop-up details
#    Then verify "Case Site" with value "Diana Princess of Wales Hospital" in the pop-up details
#    Then verify "Bed Management" with value "Amber" in the pop-up details
#    Then verify "Involved In Outbreak" with value "No" in the pop-up details
#    Then verify "Type of Admission" with value "Inpatient" in the pop-up details
#    Then user clicks on pop-up back icon
#    Then verify pop-up "Slot Details"
#    Then user clicks on pop-up back icon
#    Then user clicks on "Settings" in menu bar section
#    Then user lands on "Settings" page
#    Then user clicks on "Roles" icon
#    Then user lands on "Role Settings" page
#    Then user clicks on "TST1261" in the table
#    Then verify pop-up "Role Details"
#    Then user clicks on the action icon pop-up
#    Then verify pop-up "Menu"
#    Then user clicks on the action "Configure Permissions"
#    Then verify pop-up "Role Permissions"
#    Then user clicks on the action "Systems"
#    Then user clicks on the action "Information Screens"
#    Then check "Infection Control Case" role permissions to "left-click-inactive"
#    Then user clicks on pop-up back icon
#    Then user clicks on pop-up back icon
#    Then user clicks on tick-checkbox
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox
#    Then user clicks on pop-up back icon
#    Then check if the current user has the role of "TST1261" and if not then change it
#    Then user clicks on "Systems" in menu bar section
#    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
#    Then user clicks on the option "Bay 1 / Bed 5"
#    Then verify pop-up "Slot Details"
#    Then user clicks on the action icon pop-up
#    Then verify pop-up "Slot Menu"
#    Then user verify action "Infection Control Case" is unavailable
#    Then user clicks on pop-up back icon
#    Then verify pop-up "Slot Details"
#    Then user clicks on pop-up back icon
#    Then check if the current user has the role of "WebV Admin" and if not then change it
#    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
#    Then user clicks on the option "Bay 1 / Bed 5"
#    Then verify pop-up "Slot Details"
#    Then user clicks on the action icon pop-up
#    Then verify pop-up "Slot Menu"
#    Then user verify action "Infection Control Case" is unavailable
#    Then user clicks on pop-up back icon
#    Then verify pop-up "Slot Details"
#    Then user clicks on the option "Bay 1 / Bed 5"
#    Then verify pop-up "Slot Details"
#    Then user clicks on the action icon pop-up
#    Then verify pop-up "Slot Menu"
#    Then user clicks on the action "Infection Control Case"
#    Then verify pop-up "Case Details"
#    Then user saves the number of records for the label "Symptoms"
#    Then user clicks on the action "Symptoms"
#    Then verify pop-up "Case Symptoms"
#    Then user clicks on the pop-up plus icon
#    Then verify pop-up "Add Symptom"
#    Then user clicks on the action "Sign/Symptom"
#    Then verify pop-up "Symptoms List"
#    Then user clicks on the action "Cough"
#    Then verify pop-up "Add Symptom"
#    Then user clicks on the action "Date of Onset"
#    Then verify pop-up "Select A Date"
#    Then user clicks on the action "Select Current Date"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Add Symptom"
#    Then user clicks on the action "Care Setting"
#    Then verify pop-up "Select Care Setting"
#    Then user clicks on the action "Community Acquired"
#    Then verify pop-up "Add Symptom"
#    Then user clicks on the action "Notes"
#    Then verify pop-up "Symptom Notes"
#    Then user enters "TST1261 Notes" in the text-area
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Add Symptom"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Symptom Summary"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission Status"
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Case Symptoms"
#    Then user clicks on pop-up back icon
#    Then user verifies the new number of records for the label "Symptoms"
#    Then user clicks on pop-up back icon
#    Then verify pop-up "Slot Details"
#    Then user clicks on pop-up back icon
#    Then check if patient "informationScreen|patientIdentifiers.PasAdmittedPatients.patient1" has an open case and if he does then close it
#    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
#    Then add patient with NHS number "informationScreen|patientIdentifiers.PasAdmittedPatients.patient1" in bed "Bay 3 / Bed 6"
#    Then user clicks on the option "Bay 3 / Bed 6"
#    Then verify pop-up "Slot Details"
#    Then user clicks on the action icon pop-up
#    Then verify pop-up "Slot Menu"
#    Then user clicks on the action "Infection Control Case"
#    Then verify pop-up "Create Infection Control Case"
#    Then verify "Case Creation" after completing the form
#    Then verify "The selected patient currently has no active infection control case assigned to them. Please click continue to create case and processed to add symptoms." after completing the form description
#    Then user clicks on the action "Continue"
#    Then verify pop-up "Add Symptom"
#    Then user clicks on the action "Sign/Symptom"
#    Then verify pop-up "Symptoms List"
#    Then user clicks on the action "Cough"
#    Then verify pop-up "Add Symptom"
#    Then user clicks on the action "Date of Onset"
#    Then verify pop-up "Select A Date"
#    Then user clicks on the action "Select Current Date"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Add Symptom"
#    Then user clicks on the action "Care Setting"
#    Then verify pop-up "Select Care Setting"
#    Then user clicks on the action "Community Acquired"
#    Then verify pop-up "Add Symptom"
#    Then user clicks on the action "Notes"
#    Then verify pop-up "Symptom Notes"
#    Then user enters "TST1261 Notes" in the text-area
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Add Symptom"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Symptom Summary"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Submission Status"
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Case Symptoms"
#    Then user clicks on pop-up back icon
#    Then verify pop-up "Case Details"
#    Then user verifies the number of records for the label "Symptoms" with value "1"
#    Then user clicks on pop-up back icon
#    Then verify pop-up "Slot Details"
#    Then user clicks on pop-up back icon
#    Then user clicks on "Systems" in menu bar section
#    Then user clicks on "Infection Control" card in Systems
#    Then user lands on "Infection Control" page
#    Then user clicks on "Systems" in menu bar section
#    Then user lands on "Systems" page
#    Then user clicks on "Infection Control" card in Systems page
#    Then user lands on "Infection Control" page
#    Then user lands on "Case List" module
#    Then user able to click on Parameter filter
#    Then verify pop-up "Case Search"
#    Then user inputs "Patient Identifier" with value "informationScreen|patientIdentifiers.PasAdmittedPatients.patient1" inline
#    Then user clicks on tick-checkbox
#    Then wait for 10 seconds
#    Then user clicks on "Open" in the table
#    Then verify pop-up "Case Details"
#    Then verify "Status" with value "Open" in the pop-up details
#    Then user verifies the number of records for the label "Symptoms" with value "1"
#    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up details
#    Then verify "Created By" with value "loginData|credentials.name" in the pop-up details
#    Then verify "Case Site" with value "Diana Princess of Wales Hospital" in the pop-up details


  @TST-1262 @haider @e2eSprint @sprint12 @bug:IntendedSlotNotUpdated
  Scenario: Information Screens - Holding area patients assigned beds
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user lands on "informationScreen|wards.wardc1k" page
    Then add patient "informationScreen|patientIdentifiers.patient1" in the holding area with reason "TCI AM" in Bed "Bay 1 / Bed 5"
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Holding Area"
    Then verify pop-up "Holding Area"
    Then user clicks on the action "informationScreen|patientIdentifiers.patient1verify"
    Then verify pop-up "Holding Area Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Holding Area Patient Menu"
    Then user clicks on the action "Assign Bed"
    Then verify pop-up "Select An Intended Slot"
    Then user clicks on the action "Bay 1 / Bed 5"
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Holding Area Details"
    Then verify "Intended Area/Slot" with value "Bay 1 / Bed 5" in the pop-up details


  @TST-1263 @haider @e2eSprint @sprint12 @cantCreateProperty
  Scenario: Time indicators
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the card "Systems"
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card in Systems page
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then user click on module navigator "Indicators"
    Then user lands on "Indicator List" module
    Then verify plus button exists
    Then verify back button exists
    Then verify "Active" is displayed as the table header
    Then verify "Indicator Name" is displayed as the table header
    Then verify "Indicator Last Updated" is displayed as the table header
    Then verify "Property Name" is displayed as the table header
    Then verify "Property Type" is displayed as the table header
    Then verify "Primary Icon" is displayed as the table header
    Then verify each row has a right arrow icon and and ellipse present
    Then user clicks on the plus icon
    Then verify pop-up "New Clinical Indicator"
    Then user verify action "Name" is available
    Then user verify action "Property" is available
    Then user inputs "Name" with random value in information page
    Then user clicks on the action "Property"
    Then verify pop-up "Property Search"
    Then user clicks on the action "Create Property"
    Then verify pop-up "Create Property"
    Then user input "Code" with value "Prop_TST-1263_Code"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Prop_TST-1263_Name" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Description"
    Then verify pop-up "Enter Description"
    Then user enters "Prop_TST-1263_Description" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Type"
    Then verify pop-up "Select Property Type"
    Then user clicks on the action "Text-Input-Inline"
    Then user clicks on the action "Persistence"
    Then verify pop-up "Select Persistence"
    Then user clicks on the action "Always"
    Then user clicks on the toggle button "Searchable" to "true"
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Details Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form

  @TST-1309 @haider @e2eSprint @sprint12 @dragAndDrop
  Scenario: Information Screens - Adjusting viewpoint
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user lands on "informationScreen|wards.wardc1k" page
    Then user clicks on magnifying glass on the ward page
    Then user clicks on the option "Bay 2 / Bed 3"
    Then verify the mouse select has shifted to a for way icon
    Then save the translate option of the viewpoint
    Then we drag and drop from "Bay 2 / Bed 3" to "Bay 1 / Bed 5"
    Then compare the translate option of the viewpoint


  @TST-753 @haider @e2eSprint @sprint12
  Scenario: Ward Information screen Settings :  Configure Clinical Indicators (Local)  for a Location
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then subnavigate to information screen in Site "Scunthorpe General Hospital" with Location "informationScreen|wards.ward28"
    Then verify pop-up "Location Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Location Menu"
    Then user clicks on the action "Configure Local Indicator Categories"
    Then verify pop-up "Local Indicator Categories List"
    Then remove all previous categories with name "TST753"
    Then verify pop-up "Local Indicator Categories List"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Create Indicator Category"
    Then user inputs "Name" with value "TST753" inline
    Then user clicks on tick-checkbox
    Then verify pop-up "Indicator Category Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user verify action "Create Another Indicator Category" is available
    Then user clicks on the action "Configure Indicators For This Category"
    Then verify pop-up "Clinical Indicator List"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Clinical Indicator Menu"
    Then user clicks on the action "Add Clinical Indicator"
    Then verify pop-up "Select Clinical Indicator"
    Then user clicks on the action "Asleep"
    Then verify pop-up "Submission Success"
    Then verify "Submission Successful" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Clinical Indicator List"
    Then user clicks on pop-up back icon
    Then verify pop-up "Indicator Category Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Indicator Category Menu"
    Then user clicks on the action "Enable"
    Then verify pop-up "Enable Indicator Category"
    Then verify "Successfully Enabled" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Indicator Category Details"
    Then user clicks on pop-up back icon
    Then verify pop-up "Local Indicator Categories List"
    Then user clicks on pop-up back icon
    Then verify pop-up "Location Details"
    Then user clicks on pop-up back icon
    Then navigate to information screen in Site "Scunthorpe General Hospital" with Location "informationScreen|wards.ward28"
    Then user lands on "Ward 28" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Settings"
    Then verify pop-up "Ward Settings"
    Then user clicks on the action "Clinical Indicator Category"
    Then verify pop-up "Default Indicator Category"
    Then verify sub-header "Local Indicator Categories" has options "TST753" available in list


  @TST-774 @hamzaAhmad @e2eSprint @sprint12 @HamzaRefactorSP12
  Scenario: Ward Management : Assigning a Clinician to a Patient on Ward Slot
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "ECC"
    Then user lands on "ECC" page
    Then user clicks on the option "Majors / Bay 1"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "clinical personnel"
    Then verify pop-up "Clinical Personnel"
    Then user clicks on the action "Manage Clinical Personnel"
    Then verify pop-up "Manage Clinical Personnel"
    Then user clicks on the action "Responsible Clinician"
    Then verify pop-up "Select Accountable Personnel"
    Then user clicks on the action "informationScreen|accountablePersonnelData.accountablePersonnel1.accountablePersonnelName1"
    Then user clicks on tick-checkbox
    Then verify pop-up "Manage Clinical Personnel"
    Then verify "Responsible Clinician" is set to "informationScreen|accountablePersonnelData.accountablePersonnel1.accountablePersonnelName2" as clinical personnel




  @TST-776 @hamzaAhmad @e2eSprint @sprint13 @HamzaRefactorSP13
  Scenario: Ward Management : View Patient Movement History
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user lands on "informationScreen|wards.wardc1k" page
    Then user clicks on the option "Bay 2 / Bed 1"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "residency management"
    Then verify pop-up "Residency Management"
    Then verify patients demographics bar is visible in information screen
    Then verify gender in demographics bar is "Male"
    Then verify popup option "movement history" is visible
    Then verify popup option "Absent" is visible
    Then verify popup option "move" is visible
    Then verify popup option "swap beds" is visible
    Then verify popup option "transfer" is visible
    Then verify popup option "discharge" is visible
    Then user clicks on the action "movement history"
    Then verify pop-up "Patient Movement History"
    Then verify popup option "Admission Date / Time" is visible
    Then verify popup option "Admission Location" is visible
    Then verify popup option "Area / Slot" is visible
    Then verify history contains ward "Ward 28" location "Bay 1 / Bed 1" status "Discharged" and date "17-Aug-2022 19:47"
    Then verify history contains ward "Ward 28" location "Bay 1 / Bed 1" status "Occupied" and date "17-Aug-2022 19:44"
    Then verify history contains ward "informationScreen|wards.wardc1k" location "Bay 1 / Bed1" status "Vacated" and date "17-Aug-2022 19:44"



  @TST-777 @hamzaAhmad @e2eSprint @sprint13 @HamzaRefactorSP13
  Scenario: Ward Management : Verify history of Responsible Personnel
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "ECC"
    Then user lands on "ECC" page
    Then user clicks on the option "Majors / Bay 1"
    Then verify pop-up "Slot Details"
    Then verify popup option "Area / Slot" is visible
    Then verify popup option "Majors / Bay 1" is visible
    Then verify popup option "Status" is visible
    Then verify popup option "Occupied" is visible
    Then verify popup option "Updated On" is visible
    Then verify popup option "25-Sep-2022 18:08" is visible
    Then verify popup option "Updated By" is visible
    Then verify popup option "Ashar Javed" is visible
    Then user clicks on the action icon pop-up
    Then user clicks on the action "clinical personnel"
    Then verify pop-up "Clinical Personnel"
    Then verify popup option "Manage Clinical Personnel" is visible
    Then verify popup option "Clinical Personnel History" is visible
    Then user clicks on the action "Clinical Personnel History"
    Then verify pop-up "Clinical Personnel History"
    Then verify history contains ward "informationScreen|accountablePersonnelData.accountablePersonnel1.accountablePersonnelName1" location "Responsible Clinician" status "Added" and date "11-Oct-2022 16:30"




  @TST-913 @hamzaAhmad @e2eSprint @sprint14
  Scenario: Ward Information screen Settings : Select an Organisation/ Site and verify Information list
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then verify column "2" of name "informationScreen|wardLocationList.wardLocation1.wardName" contains value "informationScreen|wardLocationList.wardLocation1.site" in information screens
    Then user clicks on "Table Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Site" on popup
    Then verify pop-up "Select Organisation"
    Then user clicks on "informationScreen|wardLocationList.wardLocation2.site" on popup
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify column "2" of name "informationScreen|wardLocationList.wardLocation2.wardName" contains value "informationScreen|wardLocationList.wardLocation2.site" in information screens





  @TST-971 @hamzaAhmad @e2eSprint @sprint14
  Scenario: Ward Information Screen Settings : Indicator Table - View /Verify 'Last Updated' field
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user click on module navigator "Indicators"
    Then user verify table header "Indicator Last Updated" exists "true"
    Then user clicks on the plus icon
    Then verify pop-up "New Clinical Indicator"
    Then enter clinical personnel name "informationScreen|newIndicatorList.clinicalPersonnelName"
    Then user clicks on "Select a Value"
    Then verify pop-up "Property Search"
    Then user clicks on "Create Property"
    Then verify pop-up "Create Property"
    Then user enters "informationScreen|newIndicatorList.createProperty" in text-area
    Then user clicks on "Name" on popup
    Then user enters "informationScreen|newIndicatorList.name" in text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then user enters "informationScreen|newIndicatorList.description" in text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then user clicks on "Date" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on "Publish Property"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then user clicks on "informationScreen|newIndicatorList.indicatorsName"
    Then user clicks on action menu on popup
    Then user clicks on "Edit"
    Then enter clinical personnel name "informationScreen|newIndicatorList.edit"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon


  @TST-989 @hamzaAhmad @e2eSprint @sprint14
  Scenario: Ward Management : Handover - Sorting Patient Handover List
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "ECC"
    Then user lands on "ECC" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Handover"
    Then user lands on "Patient Handover" module
    Then user clicks on "Name"
    Then verify header "Name" sorting "sort-up"
    Then user clicks on "Name"
    Then verify header "Name" sorting "sort-down"
    Then user clicks on "Born"
    Then verify header "Born" sorting "sort-up"
    Then user clicks on "Born"
    Then verify header "Born" sorting "sort-down"
    Then user clicks on "NHS Number"
    Then verify header "NHS Number" sorting "sort-up"
    Then user clicks on "NHS Number"
    Then verify header "NHS Number" sorting "sort-down"
    Then user clicks on "Area / Slot"
    Then verify header "Area / Slot" sorting "sort-up"
    Then user clicks on "Area / Slot"
    Then verify header "Area / Slot" sorting "sort-down"
    Then user clicks on "Lead Clinician"
    Then verify header "Lead Clinician" sorting "sort-up"
    Then user clicks on "Lead Clinician"
    Then verify header "Lead Clinician" sorting "sort-down"
    Then user clicks on "Estimated Discharge"
    Then verify header "Estimated Discharge" sorting "sort-up"
    Then user clicks on "Estimated Discharge"
    Then verify header "Estimated Discharge" sorting "sort-down"



  @TST-986 @hamzaAhmad @e2eSprint @sprint14 @Bug:dischargeDateNotAdding
  Scenario: Ward Management : Handover - Verify Estimated Discharge date
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then user lands on "Ward C1K" page
    Then user clicks on the option "Bay 1 / Bed 3"
    Then verify pop-up "Slot Details"
    Then user clicks on the action "populate"
    Then user clicks on the action "patient identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "0000000000"
    Then user clicks on tick-checkbox
    Then user clicks on "Continue"
    Then user clicks on tick-checkbox
    Then user clicks on "Return to information screen"
    Then reload page
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
    Then user clicks on the option "Bay 1 / Bed 3"
    Then verify pop-up "Slot Details"
    Then user clicks on the action "Estimated Discharge"
    Then verify pop-up "Estimated Discharge Date"
    Then user selects date DD as "informationScreen|futureDate.Date1" Month as "informationScreen|futureDate.Month1" and year as "informationScreen|futureDate.Year1"
    Then user clicks on tick-checkbox


  @TST-915 @hamzaAhmad @e2eSprint @sprint14
  Scenario: Ward Information screen Settings :  Indicators -  Edit Indicator Property Icons
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the card "Systems"
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card in Systems page
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then user click on module navigator "Indicators"
    Then user lands on "Indicator List" module
    Then verify "Active" is displayed as the table header
    Then verify "Indicator Name" is displayed as the table header
    Then verify "Indicator Last Updated" is displayed as the table header
    Then verify "Property Name" is displayed as the table header
    Then verify "Property Type" is displayed as the table header
    Then verify "Primary Icon" is displayed as the table header
    Then user clicks on "informationScreen|indicatorList.indicatorsName"
    Then verify pop-up "Clinical Indicator Details"
    Then user clicks on the action icon
    Then verify pop-up "Indicator Actions"
    Then verify popup option "Deactivate" is visible
    Then verify popup option "Edit" is visible
    Then user clicks on "Edit" on popup
    Then verify pop-up "Edit Clinical Indicator"
    Then user clicks on "Property Icons" on popup
    Then user clicks on "Edit Property Icons" on popup
    Then user clicks on "Icon Set" on popup
    Then verify pop-up "Edit Value"
    Then user clicks on "informationScreen|indicatorList.iconSetName" on popup
    Then verify pop-up "Edit Value"
    Then verify "Changing this indicator's icon set will remove all currently configured icons. Once removed they cannot be recovered. Press the 'Tick' to confirm, or go back if you wish to keep the current configuration." is present in the pop-up menu
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Property Icons"
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Clinical Indicator"
    Then user clicks on "Property Icons" on popup
    Then verify pop-up "Edit Property Icons"
    Then user clicks on "No Value" on popup
    Then user clicks on "informationScreen|indicatorList.noValue" on popup
    Then verify pop-up "Edit Property Icons"
    Then user clicks on "Positive" on popup
    Then user clicks on "informationScreen|indicatorList.positive" on popup
    Then verify pop-up "Edit Property Icons"
    Then user clicks on "Negitive" on popup
    Then user clicks on "informationScreen|indicatorList.negative" on popup
    Then verify pop-up "Edit Property Icons"
    Then user clicks on "Untested" on popup
    Then user clicks on "informationScreen|indicatorList.untested" on popup
    Then verify pop-up "Edit Property Icons"
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Clinical Indicator"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Clinical Indicator Details"
    Then user clicks on pop-up back icon
    Then user lands on "Information Screen Settings" page




  @TST-975 @hamzaAhmad @e2eSprint @sprint14
  Scenario: Ward Information Screen Settings :  Configuring Specialty colours - Ability to Scroll through the available colour list
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the card "Systems"
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card in Systems page
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then user clicks on the action icon
    Then verify pop-up "Menu"
    Then user clicks on "Configure Specialty colours" on popup
    Then verify pop-up "Specialty"
    Then verify speciality "informationScreen|selectSpecialtyColour.speciality" has a grey dot
    Then user clicks on "informationScreen|selectSpecialtyColour.speciality" on popup
    Then verify pop-up "Select Specialty Colour"
    Then verify popup option "informationScreen|selectSpecialtyColour.color1" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color2" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color3" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color4" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color5" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color6" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color7" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color8" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color9" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color10" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color11" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color12" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color13" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color14" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color15" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color16" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color17" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color18" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color19" is visible
    Then verify popup option "informationScreen|selectSpecialtyColour.color20" is visible
    Then user clicks on "informationScreen|selectSpecialtyColour.color6" on popup
    Then verify pop-up "Specialty"
    Then verify with style "background-color" of label "informationScreen|selectSpecialtyColour.speciality" is color "informationScreen|selectSpecialtyColour.color6"


  @TST-914 @hamzaAhmad @e2eSprint @sprint15
  Scenario: Ward Management : Remove Patients from Ward Holding Area
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then user lands on "Ward C1K" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Holding Area"
    Then verify pop-up "Holding Area"
    Then user clicks on "123 456 7890" span
    Then user clicks on action menu on popup
    Then user clicks on "move"
    Then user clicks on "Bay 3 / Bed 3" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on cross icon
    Then reload page
    Then user clicks on the option "Bay 3 / Bed 3"
    Then verify pop-up "Slot Details"
    Then user clicks on action menu on popup
    Then user clicks on the option "residency management"
    Then user clicks on "move" on popup
    Then user clicks on "Holding Area" on popup
    Then user clicks on "TCI AM" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then reload page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Holding Area"
    Then verify pop-up "Holding Area"
    Then user clicks on "123 456 7890" span
    Then user clicks on action menu on popup
    Then user clicks on "transfer"
    Then verify pop-up "Select Destination Site"
    Then user clicks on "Diana Princess of Wales Hospital" on popup
    Then verify pop-up "Select Destination Location"
    Then user clicks on "ECC" on popup
    Then user clicks on "Patient Transfer" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on cross icon
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "ECC"
    Then user lands on "ECC" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Holding Area"
    Then verify pop-up "Holding Area"
    Then user clicks on "123 456 7890" span
    Then user clicks on action menu on popup
    Then user clicks on "Discharge"
    Then user clicks on "Destination" on popup
    Then user clicks on "Unknown Discharge Destination" on popup
    Then user clicks on "Method" on popup
    Then user clicks on "Unknown Destination Method" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on cross icon
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "1234567890"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then user lands on "Ward C1K" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Holding Area"
    Then verify pop-up "Holding Area"
    Then user clicks on the pop-up plus icon
    Then user clicks on the action "Patient Identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "0000000000"
    Then user clicks on tick-checkbox
    Then user clicks on "Continue"
    Then user clicks on the action "Waiting for Bed"
    Then user clicks on "Bay 3 / Bed 3" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on "000 000 0000" span
    Then user clicks on action menu on popup
    Then verify pop-up "Holding Area Patient Menu"
    Then user clicks on "Remove" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox






  @TST-976 @hamzaAhmad @e2eSprint @sprint15
  Scenario: Ward Management : Adding Patient to a Slot - Adding check to ensure the slot is not occupied before populating a patient in to the bed.
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then discharge patient in bed "Bay 1 / Bed 2" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"
    Then open new tab with credentials "Haider"
    Then user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then switch to tab "1" tab
    Then add patient with NHS number "informationScreen|patientIdentifiers.patient6.nhsNumber" in bed "Bay 1 / Bed 2"
    Then switch to tab "2" tab
#    Then user clicks on the option "Bay 1 / Bed 5"
    Then user clicks on the option "Bay 1 / Bed 2"
    Then verify pop-up "Slot Details"
    Then user clicks on the action "populate"
    Then user clicks on the action "patient identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "informationScreen|patientIdentifiers.patient6.nhsNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on "Continue"
    Then verify pop-up "Populate Information"
    Then user clicks on tick-checkbox
#    Then verify pop-up "Populate Information"
#    Then user clicks on tick-checkbox
    Then verify pop-up "Populate Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Population Status"
    Then verify "Population Failed" after completing the form
    Then verify "Please be aware that the chosen slot is currently occupied" after completing the form description


#  @TST-977 @hamzaAhmad @e2eSprint @sprint15 @Bug:ableToPopulateWithoutPermissionsAswell @resetProfile
#  Scenario: Ward Management : Populate holding area by entering Patient Identifier - Verify Permissions
#    Given user lands on "Systems" page
#    Then check if role "HAMZA-TST-977" exists and if not then create it
#    Then check if the current user has the role of "HAMZA-TST-977" and if not then change it
#    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
#    Then user lands on "Ward C1K" page
#    Then user clicks on the action icon
#    Then user clicks on the sub-navigation in action menu "Holding Area"
#    Then verify pop-up "Holding Area"
#    Then user clicks on the pop-up plus icon
#    Then user clicks on the action "Patient Identifier"
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "0123456789"
#    Then user clicks on tick-checkbox
#    Then user clicks on "Continue"
#    Then user clicks on the action "TCI AM"
#    Then user clicks on "Bay 3 / Bed 3" on popup
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
#    Then user clicks on cross icon
#    Then user clicks on "Settings" in menu bar section
#    Then user lands on "Settings" page
#    Then user clicks on "Roles" icon
#    Then user lands on "Role Settings" page
#    Then user clicks on "HAMZA-TST-977" in the table
#    Then verify pop-up "Role Details"
#    Then user clicks on the action icon pop-up
#    Then verify pop-up "Menu"
#    Then user clicks on the action "Configure Permissions"
#    Then verify pop-up "Role Permissions"
#    Then check "Systems" role permissions to "left-click-inactive"
#    Then user clicks on tick-checkbox
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox
#    Then user clicks on pop-up back icon
#    Then user clicks on "Systems" in menu bar section
#    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
#    Then user lands on "Ward C1K" page
#    Then user clicks on the action icon
#    Then user clicks on the sub-navigation in action menu "Holding Area"
#    Then verify pop-up "Holding Area"
#    Then user clicks on the pop-up plus icon
#    Then user clicks on the action "Patient Identifier"
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "1234567890"
#    Then user clicks on tick-checkbox
#    Then user clicks on "Continue"
#    Then user clicks on the action "TCI AM"
#    Then user clicks on "Bay 3 / Bed 3" on popup
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
#    Then user clicks on cross icon
#    Then check if the current user has the role of "WebV Admin" and if not then change it


  @TST-987 @hamzaAhmad @e2eSprint @sprint15 @Bug:clinicianNotSaving
  Scenario: Ward Management : Handover - Assigned Clinicians
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "ECC"
    Then user lands on "ECC" page
    Then user clicks on the option "Majors 2 / Bay 2"
    Then verify pop-up "Slot Details"
    Then user clicks on the action "populate"
    Then user clicks on the action "patient identifier"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "0123456789"
    Then user clicks on tick-checkbox
    Then user clicks on "Continue"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
    Then user clicks on "Return to information screen"
    Then reload page
    Then user clicks on the option "Majors 2 / Bay 2"
    Then verify pop-up "Slot Details"
    Then user clicks on action menu on popup
    Then user clicks on "clinical personnel"
    Then verify popup option "Manage Clinical Personnel" is visible
    Then verify popup option "Clinical Personnel History" is visible
    Then user clicks on the action "Manage Clinical Personnel"
    Then verify pop-up "Manage Clinical Personnel"
    Then user clicks on the action "Responsible Clinician"
    Then verify pop-up "Select Accountable Personnel"
    Then user clicks on the action "Abdelgabar, Abdel N M"
    Then user clicks on tick-checkbox
    Then verify pop-up "Manage Clinical Personnel"
    Then verify option "Responsible Clinician" contains value "Dr Abdelgabar, Abdel N M"
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then reload page
    Then verify ward slot "Majors 2 / Bay 2" has Responsible Clinician "Dr Abdelgabar, Abdel N M" with color "Pumpkin"
    Then user clicks on the option "Majors 2 / Bay 2"
    Then verify pop-up "Slot Details"
    Then user clicks on action menu on popup
    Then user clicks on "clinical personnel"
    Then verify popup option "Manage Clinical Personnel" is visible
    Then verify popup option "Clinical Personnel History" is visible
    Then user clicks on the action "Manage Clinical Personnel"
    Then verify pop-up "Manage Clinical Personnel"
    Then user clicks on the action "Responsible Clinician"
    Then verify pop-up "Select Accountable Personnel"
    Then user clicks on the action "Abourawi, F"
    Then user clicks on tick-checkbox
    Then verify pop-up "Manage Clinical Personnel"
    Then verify option "Responsible Clinician" contains value "Abourawi, F"
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then user clicks on pop-up back icon
    Then reload page
    Then verify ward slot "Majors 2 / Bay 2" has Responsible Clinician "Abourawi, F" with color "Pumpkin"



  @TST-778 @hamzaAhmad @e2eSprint @sprint13 @HamzaRefactorSP13
  Scenario: Ward Management : Verify history of Responsible Personnel
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then user lands on "Ward C1K" page
    Then user clicks on the option "Bay 3 / Bed 4"
    Then verify pop-up "Slot Details"
    Then verify popup option "Area / Slot" is visible
    Then verify popup option "Status" is visible
    Then verify popup option "Updated On" is visible
    Then verify popup option "Updated By" is visible
    Then verify popup option "populate" is visible
    Then verify popup option "reserve" is visible
    Then verify popup option "decommission" is visible
    Then user clicks on the action "reserve"
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "informationScreen|patientIdentifiers.patient3.patientID"
    Then user clicks on tick-checkbox
    Then user clicks on "Continue"
    Then verify pop-up "Reservation Reason"
    Then user clicks on the action "Patient Coming In"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify "Status" with value "Reserved" in the pop-up details
    Then verify demographic bar in in reservation summary pop-up
    Then verify NHS number "informationScreen|patientIdentifiers.patient3.demographicsBar.headerNHS"
    Then verify gender "informationScreen|patientIdentifiers.patient3.demographicsBar.headerGender"


  @TST-779 @hamzaAhmad @e2eSprint @sprint13 @HamzaRefactorSP13
  Scenario: Ward Management : Verify history of Responsible Personnel
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then user lands on "Ward C1K" page
    Then user clicks on the option "Bay 3 / Bed 3"
    Then verify pop-up "Slot Details"
    Then verify popup option "Area / Slot" is visible
    Then verify popup option "Status" is visible
    Then verify popup option "Updated On" is visible
    Then verify popup option "Updated By" is visible
    Then verify popup option "populate" is visible
    Then verify popup option "reserve" is visible
    Then verify popup option "decommission" is visible
    Then user clicks on the action "decommission"
    Then verify pop-up "Decommission Reason"
    Then verify popup option "Awaiting Mattress" is visible
    Then verify popup option "Bed Absent" is visible
    Then verify popup option "Bed Absent Out - TCI" is visible
    Then verify popup option "Bed Absent Out - Ward Transfer" is visible
    Then verify popup option "Bed Broken" is visible
    Then verify popup option "Bed Closed" is visible
    Then verify popup option "Bed Radioactive" is visible
    Then verify popup option "Escalation Bed" is visible
    Then verify popup option "Infection Control" is visible
    Then verify popup option "Requires Cleaning" is visible
    Then verify popup option "Requires Cleaning - Floor" is visible
    Then verify popup option "Requires Cleaning - Hot Wash" is visible
    Then verify popup option "Requires Cleaning - Scrub" is visible
    Then verify popup option "Requires Terminal/Post Infection Clean" is visible
    Then verify popup option "Temporary Bed" is visible
    Then verify popup option "Ward Reduction Due to Staffing" is visible
    Then user clicks on the action "Awaiting Mattress"
    Then verify pop-up "Decommission Summary"
    Then verify "Status" with value "Unavailable" in the pop-up details
    Then verify "Reason" with value "Awaiting Mattress" in the pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Decommission Status"
    Then verify Decommission status is "Decommission Successful"
    Then user clicks on the action "Return to information screen"
    Then verify slots "Bay 1 / Bed1" status is "UNAVAILABLE"
    Then verify slots "Bay 1 / Bed1" unavailability reason is "Awaiting Mattress"



  @TST-775 @hamzaAhmad @e2eSprint @sprint13 @HamzaRefactorSP13
  Scenario: Ward Management : Verify history of Responsible Personnel
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "ECC"
    Then user lands on "ECC" page
    Then user clicks on the option "Majors / Bay 1"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then user clicks on the action "clinical personnel"
    Then verify pop-up "Clinical Personnel"
    Then verify patients demographics bar is visible in information screen
    Then verify DOB in demographics bar is "informationScreen|patientIdentifiers.patient2.demographicsBar.headerDOB"
    Then verify NHS in demographics bar is "informationScreen|patientIdentifiers.patient2.demographicsBar.headerNHS"
    Then verify gender in demographics bar is "informationScreen|patientIdentifiers.patient2.demographicsBar.headerGender"
    Then verify popup option "Manage Clinical Personnel" is visible
    Then verify popup option "Clinical Personnel History" is visible
    Then user clicks on the action "Manage Clinical Personnel"
    Then verify pop-up "Manage Clinical Personnel"
    Then user clicks on the action "Responsible Clinician"
    Then verify pop-up "Select Accountable Personnel"
    Then user clicks on the action "informationScreen|accountablePersonnelData.accountablePersonnel1.accountablePersonnelName1"
    Then user clicks on tick-checkbox
    Then verify pop-up "Manage Clinical Personnel"
    Then verify option "Responsible Clinician" contains value "informationScreen|accountablePersonnelData.accountablePersonnel1.accountablePersonnelName2"
    Then user clicks on the plus icon
    Then verify pop-up "Add Category"
    Then verify popup option "Chaplain" is visible
    Then verify popup option "Diabetic Nurse" is visible
    Then verify popup option "Physio Nurse" is visible
    Then verify popup option "Pressure Ulcer Nurse" is visible
    Then verify popup option "Responsible Nurse" is visible
    Then verify popup option "Safeguarding Specialist" is visible
    Then user clicks on the action "Chaplain"
    Then verify pop-up "User Search"
    Then verify popup option "Username" is visible
    Then verify popup option "Display Name" is visible
    Then user clicks on the action "Username"
    Then enter clinical personnel name "informationScreen|accountablePersonnelData.accountablePersonnel2.accountablePersonnelName1"
    Then user clicks on tick-checkbox
    Then verify pop-up "Search Results"
    Then user clicks on the action "informationScreen|accountablePersonnelData.accountablePersonnel2.accountablePersonnelName2"
    Then verify pop-up "Confirm Details"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify popup option "Add another person" is visible
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then user clicks on the action "Clinical Personnel History"
    Then verify pop-up "Clinical Personnel History"
    Then verify history contains ward "informationScreen|accountablePersonnelData.accountablePersonnel2.accountablePersonnelName2" location "Chaplain" status "Added" and date "12-Oct-2022 12:28"

  @TST-880 @haider @e2eSprint @sprint13 @bug:dischargeDateNotAdding
  Scenario: Ward Management : Recording planned Discharge Information in WEBV (Estimated Discharge Date)
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user lands on "informationScreen|wards.wardc1k" page
    Then add patient with NHS number "informationScreen|patientIdentifiers.patient1" in bed "Bay 1 / Bed 5"
    Then user clicks on the option "Bay 1 / Bed 5"
    Then verify pop-up "Slot Details"
    Then verify "Area / Slot" with value "Bay 1 / Bed 5" in the pop-up details
    Then verify "Status" with value "Occupied" in the pop-up details
    Then verify pop-up patients demographics exist
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up details
    Then user clicks on the action "Estimated Discharge"
    Then verify pop-up "Estimated Discharge Date"
    Then user selects date DD as "informationScreen|futureDate.Date" Month as "informationScreen|futureDate.Month" and year as "informationScreen|futureDate.Year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Slot Details"
    Then verify "Estimated Discharge" with value "informationScreen|futureDate.totalDate" in the pop-up details

  @TST-883 @haider @e2eSprint @sprint13
  Scenario: Ward Management Settings  : Assign Colours to Specialty & Clinician
    Given user lands on "Systems" page
    Then user sets up the pre-requisites for TST-882 with colour "Alizarin" for label "Accident & Emergency" and color "Alizarin" for label "Abourawi, F"
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the "Systems" card in Settings section
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then user clicks on the action icon
    Then verify pop-up "Menu"
    Then user verify action "Create Information Screen" is available
    Then user verify action "Configure Clinician Colours" is available
    Then user verify action "Configure Specialty Colours" is available
    Then user verify action "Configure Global Indicator Categories" is available
    Then user clicks on the action "Configure Specialty Colours"
    Then verify pop-up "Specialty"
    Then verify with style "background-color" of label "Accident & Emergency" is color "Alizarin"
    Then user clicks on the action "Accident & Emergency"
    Then verify pop-up "Select Specialty Colour"
    Then user clicks on the action "Pumpkin"
    Then verify pop-up "Specialty"
    Then verify with style "background-color" of label "Accident & Emergency" is color "Pumpkin"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Specialty"
    Then user clicks on pop-up back icon
    Then verify pop-up "Menu"
    Then user clicks on the action "Configure Clinician Colours"
    Then verify pop-up "Clinician"
    Then verify with style "background-color" of label "Abourawi, F" is color "Alizarin"
    Then user clicks on the action "Abourawi, F"
    Then verify pop-up "Select Clinician Colour"
    Then user clicks on the action "Pumpkin"
    Then verify pop-up "Clinician"
    Then verify with style "background-color" of label "Abourawi, F" is color "Pumpkin"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Clinician"
    Then user clicks on pop-up back icon
    Then verify pop-up "Menu"
    Then user clicks on pop-up back icon
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "ECC"
    Then user lands on "ECC" page
    Then user clicks on the option "Majors / Bay 1"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "clinical personnel"
    Then verify pop-up "Clinical Personnel"
    Then user clicks on the action "Manage Clinical Personnel"
    Then verify pop-up "Manage Clinical Personnel"
    Then user clicks on the action "Responsible Clinician"
    Then verify pop-up "Select Accountable Personnel"
    Then user clicks on the action "Abourawi, F"
    Then user clicks on tick-checkbox
    Then verify pop-up "Manage Clinical Personnel"
    Then verify "Responsible Clinician" is set to "Dr Abourawi, F" as clinical personnel
    Then user clicks on pop-up back icon
    Then verify pop-up "Clinical Personnel"
    Then user clicks on pop-up back icon
    Then verify pop-up "Slot Details"
    Then user clicks on pop-up back icon
    Then verify ward slot "Majors / Bay 1" has Responsible Clinician "Abourawi, F" with color "Pumpkin"

  @TST-884 @haider @e2eSprint @sprint13
  Scenario: Ward Management : Discharging Patient - Additional Details
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user lands on "informationScreen|wards.wardc1k" page
    Then add patient with NHS number "informationScreen|patientIdentifiers.patient6.nhsNumber" in bed "Bay 1 / Bed 2"
    Then user clicks on the option "Bay 1 / Bed 2"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "Clinical Indicators"
    Then verify pop-up "Clinical Indicators"
    Then user clicks on the action "Covid-19"
    Then verify pop-up "Clinical Indicators"
    Then user clicks on the action "Positive"
    Then verify pop-up "Clinical Indicators"
    Then user clicks on tick-checkbox
    Then verify "Submitted" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "Clinical Indicators"
    Then verify pop-up "Clinical Indicators"
    Then verify "Covid-19" with value "Positive" in the pop-up details
    Then user clicks on pop-up back icon
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "Clinical Personnel"
    Then verify pop-up "Clinical Personnel"
    Then user clicks on the action "Manage Clinical Personnel"
    Then verify pop-up "Manage Clinical Personnel"
    Then user clicks on the action "Responsible Clinician"
    Then verify pop-up "Select Accountable Personnel"
    Then user clicks on the action "Abourawi, F"
    Then verify pop-up "Accountable Personnel Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Manage Clinical Personnel"
    Then verify "Responsible Clinician" with value "Dr Abourawi, F" in the pop-up details
    Then user clicks on pop-up back icon
    Then verify pop-up "Clinical Personnel"
    Then user clicks on pop-up back icon
    Then verify pop-up "Slot Details"
    Then user clicks on pop-up back icon
    Then discharge patient in bed "Bay 1 / Bed 2" on the basis of method "On Clinical Advice Or With Consent" and discharge location to be "Usual Place Of Residence"
    Then add patient with NHS number "informationScreen|patientIdentifiers.patient6.nhsNumber" in bed "Bay 1 / Bed 2"
    Then user clicks on the option "Bay 1 / Bed 2"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "Clinical Indicators"
    Then verify pop-up "Clinical Indicators"
    Then verify "Covid-19" with value "Select a Value" in the pop-up details
    Then user clicks on pop-up back icon
    Then user clicks on the option "Bay 1 / Bed 2"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "Clinical Personnel"
    Then verify pop-up "Clinical Personnel"
    Then user clicks on the action "Manage Clinical Personnel"
    Then verify pop-up "Manage Clinical Personnel"
    Then verify "Responsible Clinician" with value "Not Known" in the pop-up details

  @TST-885 @haider @e2eSprint @sprint13 @bug:dateAndLocation
  Scenario: Ward Management : Showing Date and Time of Arrival
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user lands on "informationScreen|wards.wardc1k" page
    Then add patient with NHS number "informationScreen|patientIdentifiers.patient1" in bed "Bay 1 / Bed 5"
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Holding Area"
    Then verify pop-up "Holding Area"
    Then user clicks on the pop-up plus icon
    Then user clicks on the action "Existing Resident"
    Then verify pop-up "Select Existing Resident"
    Then user clicks on the action "informationScreen|patientIdentifiers.patient1verify"
    Then verify pop-up "Holding Area Reason"
    Then user verify action "TCI AM" is available
    Then user verify action "TCI PM" is available
    Then user verify action "TCI Tomorrow AM" is available
    Then user verify action "TCI Tomorrow PM" is available
    Then user verify action "Waiting For Bed" is available
    Then user clicks on the action "Waiting For Bed"
    Then verify pop-up "Move Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Patient Move Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify sub-header with name "Waiting for Bed" exists
    Then user clicks on the action "informationScreen|patientIdentifiers.patient1verify"
    Then verify pop-up "Holding Area Details"
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up details
    Then verify "Reason" with value "Waiting for Bed" in the pop-up details
    Then verify "Admission Location" with value "Ward C1K" in the pop-up details
#    Then verify "Admission Date/Time" with value "02-Nov-2022" in the pop-up details
    Then user clicks on the action icon pop-up
    Then verify pop-up "Holding Area Patient Menu"
    Then user clicks on the action "Discharge"
    Then verify pop-up "Discharge Options"
    Then user clicks on the action "Destination"
    Then verify pop-up "Discharge Destination"
    Then user clicks on the action "Usual Place Of Residence"
    Then verify pop-up "Discharge Options"
    Then user clicks on the action "Method"
    Then verify pop-up "Discharge Method"
    Then user clicks on the action "On Clinical Advice Or With Consent"
    Then verify pop-up "Discharge Options"
    Then user clicks on tick-checkbox
    Then verify pop-up "Discharge Summary"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form

  @TST-886 @haider @e2eSprint @sprint13
  Scenario: Ward Management :  Ability to view handovers in flashback
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user lands on "informationScreen|wards.wardc1k" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Flashback"
    Then verify pop-up "Ward Flashback"
    Then user clicks on tick-checkbox
    Then verify pop-up "Flashback Date & Time"
    Then user selects date DD as "informationScreen|flashbackDate.Date" Month as "informationScreen|flashbackDate.Month" and year as "informationScreen|flashbackDate.Year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Flashback Date & Time"
    Then user selects time hours as "informationScreen|flashbackDate.hours" and minutes as "informationScreen|flashbackDate.minutes"
    Then user clicks on tick-checkbox
    Then verify page "Ward C1K (Flashback - 31-Aug-2022 01:10)"
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Handover"
    Then verify page "Handover (Flashback - 31-Aug-2022 01:10)"
    Then user lands on "Patient Handover" module

#  @TST-887 @haider @e2eSprint @sprint13
#  Scenario: Ward Management : Zoom Functionality
#    Given user lands on "Systems" page
#    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
#    Then user lands on "informationScreen|wards.wardc1k" page
#    Then user clicks on magnifying glass on the ward page
#    Then user verifies zoom is maximum "1.5" times
#    Then user verifies zoom is minimum "0.5" times


  @TST-897 @haider @e2eSprint @sprint13 @bug:propertyNotCreated
  Scenario: Ward Information screen Settings :  Indicator Properties -  Create New Clinical Indicator
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the "Systems" card in Settings section
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then user click on module navigator "Indicators"
    Then user lands on "Indicator List" module
    Then user clicks on the plus icon
    Then verify pop-up "New Clinical Indicator"
    Then user inputs "Name" with random value
    Then user clicks on the action "Property"
#    Then verify pop-up "Property Search"
    Then user clicks on the action "Create Property"
    Then user input "Code" with value "Prop_TST-897_Code"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Prop_TST-897_Name" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Description"
    Then verify pop-up "Enter Description"
    Then user enters "Prop_TST-897_Description" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Type"
    Then verify pop-up "Select Property Type"
    Then user verify action "Date" is available
    Then user verify action "Datetime" is available
#    Then user verify action "Text-Input" is available
    Then user verify action "Text-Input-Inline" is available
    Then user verify action "Time" is available
    Then user clicks on the action "Text-Input-Inline"
    Then user clicks on the action "Persistence"
    Then verify pop-up "Select Persistence"
    Then user clicks on the action "Always"
    Then user clicks on the toggle button "Searchable" to "true"
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Details Summary"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on the action "Publish Property"
    Then verify pop-up "Publish Property"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "New Clinical Indicator"
    Then user clicks on tick-checkbox
    Then verify pop-up "Clinical Indicator Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the random value in the table
    Then verify pop-up "Clinical Indicator List"
    Then verify "Active" with value "Active" in the pop-up details
    Then verify "Property" with value "Prop_TST-897_Code" in the pop-up details
    Then verify "Name" with random value in the pop-up

  @TST-898 @haider @e2eSprint @sprint13
  Scenario: Ward Information screen Settings :  Indicator Properties -  Create New Clinical Indicator
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on "Documents" icon
    Then user lands on "Document Settings" page
    Then user clicks on "Properties"
    Then user lands on "Properties List" module
    Then filter item "All Names" with value "Prop_TST-898_Name"
    Then create a property with Code "Prop_TST-898_Code" Name "Prop_TST-898_Name" Desc "Prop_TST-898_Description" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-898_Name" if it is not published
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the "Systems" card in Settings section
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then user click on module navigator "Indicators"
    Then user lands on "Indicator List" module
    Then user clicks on the plus icon
    Then verify pop-up "New Clinical Indicator"
    Then user inputs "Name" with random value
    Then user clicks on the action "Property"
    Then verify pop-up "Property Search"
    Then user clicks on the action "Use Existing Property"
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then verify pop-up "Existing Property Search Results"
    Then user inputs "Prop_TST-898_Name" in the filter option
    Then user clicks on the action "Prop_TST-898_Name"
    Then verify pop-up "Selected Existing Property Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "New Clinical Indicator"
    Then user clicks on tick-checkbox
    Then verify pop-up "New Clinical Indicator"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for 20 seconds
    Then verify pop-up "Clinical Indicator Details"
    Then verify "Active" with value "Active" in the pop-up details
    Then verify "Property" with value "Prop_TST-898_Name" in the pop-up details
    Then verify "Name" with random value in the pop-up

  @TST-899 @haider @e2eSprint @sprint13 @bug:clinicalIndicatorValueNotAccepted
  Scenario: Ward Information screen Settings :  Indicators -  Verify Indicator Actions (meat balls menu)
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the "Systems" card in Settings section
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then user click on module navigator "Indicators"
    Then user lands on "Indicator List" module
    Then verify the table is populated
    Then check if indicator "TST899" with property "TST899" exists and if doesnt create it
    Then user clicks on "TST899" in the table
    Then verify pop-up "Clinical Indicator Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Indicator Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Clinical Indicator"
    Then user clicks on the action "Property Icons"
    Then verify pop-up "Edit Property Icons"
    Then user clicks on the action "Clear"
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Clinical Indicator"
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Clinical Indicator"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Clinical Indicator Details"
    Then user clicks on pop-up back icon
    Then user clicks on "TST899" in the table
    Then verify pop-up "Clinical Indicator Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Indicator Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Clinical Indicator"
#    Then user inputs "Name" with random value
    Then user clicks on the action "Property Icons"
    Then verify pop-up "Edit Property Icons"
    Then user clicks on the action "ICON SET"
    Then verify pop-up "Edit Value"
    Then user clicks on the action "accommodation-chair-default"
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Property Icons"
    Then user clicks on the action "No Value"
    Then verify pop-up "Edit Value"
    Then user clicks on the action "accommodation-chair-blue"
    Then verify pop-up "Edit Property Icons"
    Then user clicks on the action "Value Entered"
    Then verify pop-up "Edit Value"
    Then user clicks on the action "accommodation-chair-amber"
    Then verify pop-up "Edit Property Icons"
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Clinical Indicator"
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Clinical Indicator"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Clinical Indicator Details"
#    Then verify "Name" with random value in the pop-up
    Then verify "Name" with value "TST899" in the pop-up details
    Then verify "Property" with value "Prop_TST-899_Name" in the pop-up details
    Then user clicks on pop-up back icon
    Then user click on module navigator "Locations"
    Then user lands on "Location List" module
    Then user clicks on "informationScreen|wards.wardc1k" in the table
    Then verify pop-up "Location Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Location Menu"
    Then user clicks on the action "Configure Local Indicator Categories"
    Then verify pop-up "Local Indicator Categories List"
    Then user clicks on the action "Test"
    Then verify pop-up "Indicator Category Details"
    Then user clicks on the action "Clinical Indicators"
    Then verify pop-up "Clinical Indicator List"
    Then check if "TST899" exists and if does then remove it and add it again
    Then verify pop-up "Clinical Indicator List"
    Then user clicks on pop-up back icon
    Then verify pop-up "Indicator Category Details"
    Then user clicks on pop-up back icon
    Then verify pop-up "Local Indicator Categories List"
    Then user clicks on pop-up back icon
    Then verify pop-up "Location Details"
    Then user clicks on pop-up back icon
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "informationScreen|wards.wardc1k"
    Then user lands on "informationScreen|wards.wardc1k" page
    Then add patient with NHS number "informationScreen|patientIdentifiers.patient1" in bed "Bay 1 / Bed 5"
    Then verify patient "informationScreen|patientIdentifiers.patient1verify" has img "accommodation-chair-blue.svg" with indicator "TST899"
    Then user clicks on the option "Bay 1 / Bed 5"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "Clinical Indicators"
    Then verify pop-up "Clinical Indicators"
    Then navigate scroll till user reaches with local clinical indicator "Test"
    Then user inputs "TST899" with value "Yes" inline
    Then user clicks on tick-checkbox
    Then verify pop-up "Clinical Indicators"
    Then verify "Submitted" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Slot Details"
    Then user clicks on pop-up back icon
    Then verify patient "informationScreen|patientIdentifiers.patient1verify" has img "accommodation-chair-amber.svg" with indicator "TST899"

  @TST-900 @haider @e2eSprint @sprint13
  Scenario: Ward Information screen Settings :  Indicators -  Verify filter tabs
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the "Systems" card in Settings section
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then user click on module navigator "Indicators"
    Then user lands on "Indicator List" module
    Then verify the table is populated
    Then user clicks on filter Parameter
    Then verify pop-up "Filter Parameters"
    Then user verify action "Active" is available
    Then user verify action "Types" is available
    Then user clicks on the action "Active"
    Then verify pop-up "Select Active"
    Then user clicks on the action "Active"
    Then user clicks on tick-checkbox
    Then verify pop-up "Filter Parameters"
    Then user clicks on the action "Types"
    Then verify pop-up "Select Types"
    Then user clicks on the action "Text-Input-Inline"
    Then user clicks on tick-checkbox
    Then verify pop-up "Filter Parameters"
    Then user clicks on tick-checkbox
    Then verify all the "ACTIVE" are "Active" as filtered result
    Then verify all the "Property Type" are "Text-Input-Inline" as filtered result

  @TST-901 @haider @e2eSprint @sprint13 @filterParameterNotExist
  Scenario: Ward Information screen Settings :  Creating a New Ward/ Information Screen
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the "Systems" card in Settings section
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then user clicks on filter Parameter
    Then verify pop-up "Table Parameters"
#    Then user verify action "Screen Name" is available
    Then user verify action "Site" is available
#    Then user verify action "ACtive" is available
    Then user clicks on the action "Site"
    Then verify pop-up "Select Organisation"
    Then user clicks on the action "Diana Princess of Wales Hospital"
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify the table is populated
    Then verify all the "SITE" are "Diana Princess of Wales Hospital" as filtered result
    Then user clicks on the action icon
    Then verify pop-up "Menu"
    Then user clicks on the action "Create Information Screen"
    Then verify pop-up "Create"
    Then user clicks on the action "Organisation"
    Then verify pop-up "Select Organisation"
    Then user clicks on the action "Diana Princess of Wales Hospital"
    Then verify pop-up "Create"
    Then user clicks on the action "Location"
    Then verify pop-up "Select Location"
    Then randomly select a location
#    Then user clicks on the action "Amethyst Day Case Unit"
    Then verify pop-up "Create"
    Then user clicks on the action "Primary Specialty"
    Then verify pop-up "Specialty"
    Then user clicks on the action "Accident & Emergency"
    Then verify pop-up "Create"
    Then user clicks on the action "Secondary Specialties"
    Then verify pop-up "Specialties"
    Then user clicks on the action "Accident & Emergency"
    Then user clicks on tick-checkbox
    Then verify pop-up "Create"
    Then user clicks on tick-checkbox
    Then verify pop-up "Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Created"
    Then verify "Information Screen Created" after completing the form
#    Then user clicks on tick-checkbox

  @TST-902 @haider @e2eSprint @sprint13
  Scenario: Ward Information screen Settings :  Editing an Existing Ward / Information Screen
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the "Systems" card in Settings section
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then check if ward "AMU SHORT STAY" exists and if not then create-reset the ward
    Then user clicks on "AMU SHORT STAY" in the table
    Then verify pop-up "Location Details"
    Then verify "Status" with value "Inactive" in the pop-up details
    Then verify "Name" with value "AMU SHORT STAY" in the pop-up details
    Then verify "Site" with value "Diana Princess of Wales Hospital" in the pop-up details
    Then verify "Primary Specialty" with value "Accident & Emergency" in the pop-up details
    Then verify "Secondary Specialties" with value "Accident & Emergency" in the pop-up details
    Then verify "Automated Slot Clean" with value "No" in the pop-up details
    Then user clicks on the action icon pop-up
    Then verify pop-up "Location Menu"
    Then user verify action "Configure Local Indicator Categories" is available
    Then user verify action "Configure Layout" is available
    Then user verify action "Activate" is available
    Then user verify action "Enable Maintenance Mode" is available
    Then user verify action "Edit" is available
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Location Details"
    Then user clicks on the action "Primary Specialty"
    Then verify pop-up "Specialty"
#    Then user clicks on the action "Accident & Emergency"
    Then user clicks on the action "Acute Internal Medicine"
#    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Location Details"
    Then user clicks on the action "Secondary Specialties"
    Then verify pop-up "Specialties"
    Then user clicks on the action "Accident & Emergency"
    Then user clicks on the action "Acute Internal Medicine"
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Location Details"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Successfull"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Location Details"
    Then verify "Primary Specialty" with value "Acute Internal Medicine" in the pop-up details
    Then verify "Secondary Specialties" with value "Acute Internal Medicine" in the pop-up details
    Then verify "Automated Slot Clean" with value "No" in the pop-up details


  @TST-916 @hamzaAhmad @e2eSprint @sprint14 @Bug:dischargeDateNotAdding
  Scenario: Ward Management : Patient Slot - Add/Update estimated discharge date
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then user lands on "Ward C1K" page
    Then user clicks on the option "Bay 2 / Bed 1"
    Then verify pop-up "Slot Details"
    Then verify patients demographics bar is visible in information screen
    Then verify popup option "Area / Slot" is visible
    Then verify popup option "Status" is visible
    Then verify popup option "Updated On" is visible
    Then verify popup option "Updated By" is visible
    Then verify popup option "Admission Date & Time" is visible
    Then verify popup option "Estimated Discharge" is visible
    Then user clicks on the action "Estimated Discharge"
    Then verify pop-up "Estimated Discharge Date"
    Then user selects date DD as "informationScreen|futureDate.Date" Month as "informationScreen|futureDate.Month" and year as "informationScreen|futureDate.Year"
    Then user clicks on tick-checkbox



  @TST-972 @hamzaAhmad @e2eSprint @sprint14
  Scenario: Ward Management : Patient Handover - Navigation using top back Arrow
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then user lands on "Ward C1K" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Handover"
    Then user lands on "Patient Handover" module
    Then user clicks on "informationScreen|patientIdentifiers.patient4.patientName"
    Then user clicks on modules back button
    Then user clicks on back icon
    Then user lands on "Ward C1K" page



  @TST-974 @hamzaAhmad @e2eSprint @sprint14
  Scenario: Ward Management : Patient Handover - Verify  Patient Demographics bar (Titles included)
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then user lands on "Ward C1K" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Handover"
    Then user lands on "Patient Handover" module
    Then user clicks on "HENTON, Ian Mr"
    Then switch to iframe in information screen
    Then verify patients demographics exist
    Then verify gender in demographics bar of information screen is "Male"
    Then verify DOB in demographics bar of information screen is "29-May-1986 (36y)"
    Then verify NHS in demographics bar of information screen is "999 999 9999"
    Then verify demographic tittle DOB
    Then verify demographic tittle NHS
    Then verify demographic tittle Gender


  @TST-978 @hamzaAhmad @e2eSprint @sprint14
  Scenario: Ward Management : Handover - Deceased markings to patient list view of ward handover
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "ECC"
    Then user lands on "ECC" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in action menu "Handover"
    Then user lands on "Patient Handover" module
    Then user verify table header with icon "data-set-cell sortable gender-header" exists "true"
    Then user verify table header "Name" exists "true"
    Then user verify table header "Born" exists "true"
    Then user verify table header "NHS Number" exists "true"
    Then user verify table header "Area / Slot" exists "true"
    Then user verify table header "Lead Clinician" exists "true"
    Then user checks if patient "informationScreen|patientIdentifiers.patient5.patientName" is deceased


  @TST-973 @hamzaAhmad @e2eSprint @sprint14 @Bug:LocalIndicatorValueNotSaving
  Scenario: Ward Management : Indicators - Auto refresh Functionality
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the "Systems" card in Settings section
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then user click on module navigator "Indicators"
    Then user lands on "Indicator List" module
    Then verify the table is populated
    Then check if indicator "TST973" with property "TST973" exists and if doesnt create it
    Then user click on module navigator "Locations"
    Then user lands on "Location List" module
    Then user clicks on "informationScreen|wards.wardc1k" in the table
    Then verify pop-up "Location Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Location Menu"
    Then user clicks on the action "Configure Local Indicator Categories"
    Then verify pop-up "Local Indicator Categories List"
    Then user clicks on the action "Test"
    Then verify pop-up "Indicator Category Details"
    Then user clicks on the action "Clinical Indicators"
    Then verify pop-up "Clinical Indicator List"
    Then check if "TST973" exists and if does then remove it and add it again
    Then verify pop-up "Clinical Indicator List"
    Then user clicks on pop-up back icon
    Then verify pop-up "Indicator Category Details"
    Then user clicks on pop-up back icon
    Then verify pop-up "Local Indicator Categories List"
    Then user clicks on pop-up back icon
    Then verify pop-up "Location Details"
    Then user clicks on pop-up back icon
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then add patient with NHS number "informationScreen|patientIdentifiers.patient8" in bed "Bay 1 / Bed 5"
    Then user clicks on the option "Bay 1 / Bed 5"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "Clinical Indicators"
    Then verify pop-up "Clinical Indicators"
    Then navigate scroll till user reaches with local clinical indicator "Test"
    Then user inputs "TST973" with value "Yes" inline
    Then user clicks on tick-checkbox
    Then verify pop-up "Clinical Indicators"
    Then verify "Submitted" after completing the form
    Then user clicks on tick-checkbox
    Then open new tab with credentials "Haider"
    Then user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "Ward C1K"
    Then user clicks on the option "Bay 1 / Bed 5"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "Clinical Indicators"
    Then verify pop-up "Clinical Indicators"
    Then navigate scroll till user reaches with local clinical indicator "Test"
    Then verify "TST973" with value "Yes"



  @TST-905 @AYERSHUJA @e2eSprint @Sp19Refactor
  Scenario: Ward Information screen Settings :  Configure Global Indicator Categories
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the "Systems" card in Settings section
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then user clicks on the action icon
    Then verify pop-up "Menu"
    Then user verify action "Create Information Screen" is available
    Then user verify action "Configure Clinician Colours" is available
    Then user verify action "Configure Specialty Colours" is available
    Then user verify action "Configure Global Indicator Categories" is available
    Then user clicks on the action "Configure Global Indicator Categories"
    Then verify pop-up "Global Indicator Categories List"
    Then user clicks on the plus icon
    Then verify pop-up "Create Indicator Category"
    Then user inputs "Name" with random value in information page
    Then user clicks on tick-checkbox
    Then verify pop-up "Indicator Category Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Submission Successful" after completing the form
    Then user clicks on the action "Configure Indicators For This Category"

  @TST-910 @AYERSHUJA @e2eSprint @Sp19Refactor
  Scenario: Ward Information screen Settings : Select a Ward / Location - Verify Activate / deactivate options
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user clicks "Indicators" tab in Information Screen settings page
    Then user clicks on table parameters to filter table options
    Then user clicks on "Active" option in parameters in filter parameters popUp
    Then user clicks on "Active" option in Select Active popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user verify the option selected in Indicators filter
    Then user clicks on table parameters to filter table options
    Then user clicks on "Types" option in parameters in filter parameters popUp
    Then user clicks on "Date" option in Select Types popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user verify the filtered results

  @TST-907 @AYERSHUJA @e2eSprint @Sp19Refactor
  Scenario: Ward Information screen Settings : Select a Ward / Location - Enable Automated Slot Clean
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user click on module navigator "Indicators"
    Then user verify table header "Indicator Last Updated" exists "true"
    Then user clicks on the plus icon
    Then verify pop-up "New Clinical Indicator"
    Then enter clinical personnel name "informationScreen|newIndicatorList.clinicalPersonnelName"
    Then user clicks on "Select a Value"
    Then verify pop-up "Property Search"
    Then user clicks on "Create Property"
    Then verify pop-up "Create Property"
    Then user enters "informationScreen|newIndicatorList.createProperty" in text-area
    Then user clicks on "Name" on popup
    Then user enters "informationScreen|newIndicatorList.name" in text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Description" on popup
    Then user enters "informationScreen|newIndicatorList.description" in text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Type" on popup
    Then user clicks on "Date" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on "Publish Property"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then user clicks on "informationScreen|newIndicatorList.indicatorsName"
    Then user clicks on action menu on popup
    Then user clicks on "Edit"
    Then enter clinical personnel name "informationScreen|newIndicatorList.edit"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-908 @AYERSHUJA @e2eSprint @Sp19Refactor
  Scenario: Ward Information screen Settings : Select a Ward / Location - Enable / Disable Maintenance mode
    Given user lands on "Systems" page
    Then navigate to information screen in Site "Diana Princess of Wales Hospital" with Location "ECC"
    Then user lands on "ECC" page
    Then user clicks on the option "Majors / Bay 1"
    Then verify pop-up "Slot Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Slot Menu"
    Then user clicks on the action "clinical personnel"
    Then verify pop-up "Clinical Personnel"
    Then user clicks on the action "Manage Clinical Personnel"
    Then verify pop-up "Manage Clinical Personnel"
    Then user clicks on the action "Responsible Clinician"
    Then verify pop-up "Select Accountable Personnel"
    Then user clicks on the action "informationScreen|accountablePersonnelData.accountablePersonnel1.accountablePersonnelName1"
    Then user clicks on tick-checkbox
    Then verify pop-up "Manage Clinical Personnel"
    Then verify "Responsible Clinician" is set to "informationScreen|accountablePersonnelData.accountablePersonnel1.accountablePersonnelName2" as clinical personnel


  @TST-912 @AYERSHUJA @e2eSprint @SubmissionMakingFailed @Sp19Refactor
  Scenario: Ward Information screen Settings : Clinical Indicators - Assign Indicator Icons to Property values
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the card "Systems"
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card in Systems page
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then user click on module navigator "Indicators"
    Then user lands on "Indicator List" module
    Then verify plus button exists
    Then verify back button exists
    Then verify "Active" is displayed as the table header
    Then verify "Indicator Name" is displayed as the table header
    Then verify "Indicator Last Updated" is displayed as the table header
    Then verify "Property Name" is displayed as the table header
    Then verify "Property Type" is displayed as the table header
    Then verify "Primary Icon" is displayed as the table header
    Then verify each row has a right arrow icon and and ellipse present
    Then user clicks on the plus icon
    Then verify pop-up "New Clinical Indicator"
    Then user verify action "Name" is available
    Then user verify action "Property" is available
    Then user inputs "Name" with random value in information page
    Then user clicks on the action "Property"
    Then verify pop-up "Property Search"
    Then user clicks on the action "Create Property"
    Then verify pop-up "Create Property"
    Then user input "Code" with value "Prop_TST-912_Code"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Prop_TST-912" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Description"
    Then verify pop-up "Enter Description"
    Then user enters "Prop_TST-912_Description" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Type"
    Then verify pop-up "Select Property Type"
    Then user clicks on the action "Date"
    Then user clicks on the action "Persistence"
    Then verify pop-up "Select Persistence"
    Then user clicks on the action "Always"
    Then user clicks on the toggle button "Searchable" to "true"
    Then user clicks on tick-checkbox
    Then verify pop-up "Property Details Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"

  @TST-752 @haider @e2eSprint @sprint18
  Scenario: Ward Information screen Settings :  Select a Ward from the Screens List & Verify Location Details
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on the "Systems" card in Settings section
    Then user lands on "Systems Settings" page
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user lands on "Location List" module
    Then user clicks on "informationScreen|wards.wardc1k" in the table
    Then verify pop-up "Location Details"
    Then verify "Status" with value "Active" in the pop-up details
    Then verify "Updated By" with value "loginData|credentials.name" in the pop-up details
    Then verify "Name" with value "informationScreen|wards.wardc1k" in the pop-up details
    Then verify "Site" with value "Diana Princess of Wales Hospital" in the pop-up details
    Then verify "Primary Specialty" with value "Cardiology" in the pop-up details
    Then verify "Secondary Specialties" with value "Anaesthetics, Cardiology" in the pop-up details
    Then verify "Automated Slot Clean" with value "No" in the pop-up details

