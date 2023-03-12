@informationScreens @informationScreens2 @v3DocumentsInformationScreens @e2e
Feature: To check the Ward Information screens


  @TST-750 @safi
  Scenario: Ward Information screen Settings - View Ward Information Screens List for a selected Site
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user verify the Location list visible or not

  @TST-906 @safi @refactorSp18
  Scenario: Ward Information screen Settings - Select a Ward / Location - Verify Location Details Page
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user clicks on Location "ECC" in Location List
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Location Menu"
    Then user clicks on "Edit" in Location Menu popUp
    Then verify pop-up "Edit Location Details"
    Then user clicks on "Primary Specialty" in Edit Location Details popUp
    Then user clicks on "Accident & Emergency" in Speciality popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user verify Location details

  @TST-882 @safi
  Scenario: Ward Management Settings - Multiple Specialities (Ability to set more than  one secondary Speciality)
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user clicks on the action icon
    Then user clicks on "Create Information Screen" in Menu popUp
    Then user clicks on "Organisation" in Create popUp
    Then user selects "Diana Princess of Wales Hospital" option from Select Orgainzation popUp
    Then user clicks on "Location" in Create popUp
    Then user selects "AMETHYST WARD" option from Select Location popUp
    Then user clicks on "Primary Specialty" in Create popUp
    Then user clicks on "Accident & Emergency" in Speciality popUp
    Then user clicks on "Secondary Specialties" in Create popUp
    Then user clicks on "Accident & Emergency" in Speciality popUp
    Then user clicks on "Acute Internal Medicine" in Speciality popUp
    Then user clicks on "Anaesthetics" in Speciality popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on Location "ECC" in Location List
    Then user clicks on action menu on Location details popup
    Then user clicks on "Edit" in Location Menu popUp
    Then user clicks on "Primary Specialty" in Edit Location Details popUp
    Then user clicks on "Accident & Emergency" in Speciality popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user verify Location details

  @TST-772 @safi
  Scenario: Ward Management - Ward Menu - Add Patients to Holding area
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user clicks on the action icon
    Then user clicks on "Holding Area" in Ward Menu
    Then user clicks on the plus icon
    Then user clicks on "Patient Identifier" in Populate Holding Area popUp
    Then user enters Patient Identifier Search "patientData|patient1.nhs"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user selects a reason from Holding Area reason popUp
    Then verify pop-up "Holding Area Reason"
    Then user verify action "TCI AM" is available
    Then user verify action "TCI PM" is available
    Then user verify action "TCI Tomorrow AM" is available
    Then user verify action "TCI Tomorrow PM" is available
    Then user verify action "Waiting For Bed" is available
    Then user clicks on the action "Waiting For Bed"
    Then verify pop-up "Select An Intended Slot"
    Then user selects first option from not set list
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-887 @safi
  Scenario: Ward Management - Zoom Functionality
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user clicks on magnifying icon in the bottom right corner
    Then user clicks on zoom in icon
    Then user verify the zoom functionality on ward screen
    Then user clicks on the action icon
    Then user clicks on "Settings" in ward menu dropdown
    Then user clicks on "zoom level" in Ward settings popUp
    Then user clicks on "50%" value from default zoom level popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user verify the zoom functionality on ward screen

  @TST-754 @safi
  Scenario: Ward Information screen - Add / Configure Clinical Indicators
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user clicks on Location "ECC" in Location List
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Location Menu"
    Then user clicks on "Configure Local Indicator Categories" in Location Menu popUp
    Then user clicks on plus icon on Local Indicator Categories List popUp
    Then user enter "Name" in Create Indicator popUp category
    Then user clicks on tick-checkbox
    Then user verify Indicator Category Information
    Then user clicks on tick-checkbox
    Then user clicks on "Configure Indicators For This Category" option in further actions
    Then user clicks on the action icon
    Then user clicks on "Add Clinical Indicator" from Clinical Indicator menu
    Then user clicks on "KTM-Indicator" option from Select Clinical Indicatior popUp
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks on "Reorder Clinical Indicators" option in Clinical Indicators menu popUp
    Then user verify the order of clinical indicators by clicking upward and downward buttons

  @TST-757 @safi
  Scenario: Ward Information screen Settings - View Clinical Indicators
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

    @TST-786 @safi
    Scenario: Ward Management - History of Responsible Personnel
      Given user lands on "Systems" page
      Then user clicks on "Information Screens" card in Systems
      Then user lands on "Information Screens" page
      Then user clicks on Location "ECC" in Location List
      Then user selects a patient from ward slot "Majors / Bay 1"
#      Then verify pop-up "Observation Details"
#      Then user clicks on menu icon on Observation Details popUp
#      Then verify pop-up "Observation Action Menu"
#      Then user clicks on the action "SuppressMark an observation as recorded in error"
#      Then verify pop-up "Suppress Vital"
#      Then user clicks on the action "Reason"
#      Then verify pop-up "Suppression Reasons"
#      Then user clicks on the action "Wrong Patient"
#      Then user clicks on tick-checkbox
#      Then verify pop-up "Suppress Vital Summary"
#      Then user clicks on tick-checkbox
#      Then verify "Success" after completing the form
#      Then user clicks on tick-checkbox
#      Then user clicks on back icon
#      Then user clicks on cross icon
#      Then user selects a patient from ward slot "Majors / Bay 1"
      Then verify pop-up "Slot Details"
      Then user clicks on menu icon on Observation Details popUp
      Then verify pop-up "Slot Menu"
      Then user clicks on "clinical personnel" in Slot menu popUp
      Then verify pop-up "Clinical Personnel"
      Then user clicks on "Clinical Personnel History" in Clinical personnel
      Then verify pop-up "Clinical Personnel History"
      Then user verify the clinical history

    @TST-780 @safi
    Scenario: Ward Management - Recommissioning a Bed
      Given user lands on "Systems" page
      Then user clicks on "Information Screens" card in Systems
      Then user lands on "Information Screens" page
      Then user clicks on Location "ECC" in Location List
      Then user selects a patient from ward slot "ISO Bays / Bay 3"
      Then user clicks on the "decommission" option in Slot Details popUp
      Then user clicks on "Awaiting Mattress" option in Decomission reason popUp
      Then user clicks on tick-checkbox
      Then user clicks on tick-checkbox
      Then user clicks on back icon
      Then user selects a patient from ward slot "ISO Bays / Bay 3"
      Then user clicks on the "recommission" option in Slot Details popUp
      Then user clicks on tick-checkbox
      Then user clicks on tick-checkbox
      Then user verify the status of bed

  @TST-766 @safi
  Scenario: Ward Management - Setting Patient Clinical Indicators
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user selects a patient from ward slot "Majors / Bay 1"
    Then verify pop-up "Slot Details"
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Slot Menu"
    Then user clicks on "clinical indicators" in Slot menu popUp
    Then user clicks on "Allergies" in Clinical Indicators popUp
    Then user clicks on "Yes" in clinical Indicators popUp
    Then user clicks on "Covid-19" in Clinical Indicators popUp
    Then user clicks on "Positive" in clinical Indicators popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-765 @safi @refactored
  Scenario: Ward Management - Adding a Patient to Ward Board
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user selects a patient from ward slot "ISO Bays / Bay 5"
    Then verify pop-up "Slot Details"
    Then user verify the Slot details and Slot options
    Then user clicks on "populate" in Slot Options
    Then verify pop-up "Populate Slot"
    Then user clicks on "patient identifier" in populate Slot option
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|credentials1.nhs"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
#    Then user clicks on "Amenity" reason option in Populate Information popUp
    Then verify pop-up "Slot Details"
    Then user verify the status of slot in Populate Summary popUp
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Slot Menu"
    Then user clicks on "residency management" in Slot menu popUp
    Then verify pop-up "Residency Management"
    Then user verify action "Movement History" is available
    Then user verify action "Absent" is available
    Then user verify action "Move" is available
    Then user verify action "Swap Beds" is available
    Then user verify action "Transfer" is available
    Then user verify action "Discharge" is available
    Then user clicks on the action "discharge"
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
    Then user clicks on tick-checkbox
    Then user verify the Slot details and Slot options
    Then user verify the status of bed

  @TST-769 @safi
  Scenario: Ward Management - Removing/discharging Patients from a  ward slots
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user selects a patient from ward slot "ISO Bays / Bay 5"
    Then verify pop-up "Slot Details"
    Then user verify the Slot details and Slot options
    Then user clicks on "populate" in Slot Options
    Then verify pop-up "Populate Slot"
    Then user clicks on "patient identifier" in populate Slot option
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|credentials1.nhs"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
#    Then user clicks on "Amenity" reason option in Populate Information popUp
    Then verify pop-up "Slot Details"
    Then user verify the status of slot in Populate Summary popUp
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Slot Menu"
    Then user clicks on "residency management" in Slot menu popUp
    Then verify pop-up "Residency Management"
    Then user verify action "Movement History" is available
    Then user verify action "Absent" is available
    Then user verify action "Move" is available
    Then user verify action "Swap Beds" is available
    Then user verify action "Transfer" is available
    Then user verify action "Discharge" is available
    Then user clicks on the action "discharge"
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
    Then user clicks on tick-checkbox
    Then user verify the Slot details and Slot options
    Then user verify the status of bed

  @TST-789 @safi
  Scenario: Ward Management - Clinical Indicator - Verify Ward specific Indicators
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user clicks on the action icon
    Then user clicks on "Settings" in Ward Menu
    Then verify pop-up "Ward Settings"
    Then user clicks on "clinical indicator category" in Ward Settings popUp
    Then verify pop-up "Default Indicator Category"
    Then user verify ward specific indicators under local category
    Then user clicks on "DPoW ECC Majors" option in Local Indicator Category options
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-879 @safi
  Scenario: Ward Management - Reservation Additional Details
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user selects a patient from ward slot "Major / Bay6"
    Then user verify the Slot details and Slot options
    Then user clicks on "reserve" in Slot Options
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|patient1.nhs"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then verify pop-up "reservation"
    Then user clicks on "Patient Coming In" in reservation popUp
    Then verify pop-up "Populate Information"
#    Then user clicks on "Amenity" reason option in Populate Information popUp
    Then user clicks on tick-checkbox
    Then user verify the status on Reservation Summary popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user verify the status on Slot Details
    Then user clicks on "Cancel Reservation" in Slot Options
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-877 @safi
  Scenario: Ward Management - Showing Responsible Personnel on the Handover
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
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

  @TST-874 @safi
  Scenario: Ward Information screen Settings - Editing Slots
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user clicks on Location "ECC" in Location List
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Location Menu"
    Then user clicks on "Configure Layout" in Location Menu popUp
    Then user clicks on "Slots"
    Then user clicks on "Bay 1" slot
    Then user verify type "Residency" in Edit Slot popUp
    Then user clicks on back icon
    Then user lands on "Information Screen Configuration" page
    Then user clicks on back icon
    Then user lands on "Information Screen Settings" page
    Then user clicks on Location "ECC" in Location List
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Location Menu"
    Then user clicks on "Disable Maintenance Mode" in Location Menu popUp

  @TST-756 @safi
  Scenario: Ward Information screen Settings - Create Ward Information Screen by Selecting Site & Location
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user clicks on the action icon
    Then user clicks on "Create Information Screen" in Menu popUp
    Then user clicks on "Organisation" in Create popUp
    Then user selects "Community Services" option from Select Orgainzation popUp
    Then user clicks on "Location" in Create popUp
    Then user selects "Acute Therapies (DPOW): Assessment Areas" option from Select Location popUp
    Then user clicks on "Primary Specialty" in Create popUp
    Then user clicks on "Cardiology" in Speciality popUp
    Then user clicks on "Secondary Specialties" in Create popUp
    Then user clicks on "Blood Transfusion" in Speciality popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-790 @safi @bug
  Scenario: Ward Management - Verify Utility Icons - Flag Icon functionality
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user clicks on flag icon in bottom right corner
    Then user clicks on "DPoW ECC Majors" option in Local Indicator Category options
    Then user verify ward specific indicators under local category

  @TST-763 @safi
  Scenario: Ward Management - Viewing Ward Information
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user clicks on the action icon
    Then user clicks on "Flashback" in Ward Menu
    Then user clicks on tick-checkbox
    Then verify pop-up "Flashback Date & Time"
    Then user clicks on tick-checkbox
    Then user clicks on "Select Current Time" in Flashback Date and Time popUp
    Then user clicks on tick-checkbox
    Then user clicks on manual refresh button to navigate back to real time

  @TST-773 @safi
  Scenario: Ward Management - Moving Patients to holding area
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user selects a patient from ward slot "Majors / Bay 1"
    Then verify pop-up "Slot Details"
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Slot Menu"
    Then user clicks on "residency management" in Slot menu popUp
    Then verify pop-up "Residency Management"
    Then verify pop-up patients demographics exist
    Then user verify action "Movement History" is available
    Then user verify action "Absent" is available
    Then user verify action "Move" is available
    Then user verify action "Swap Beds" is available
    Then user verify action "Transfer" is available
    Then user verify action "Discharge" is available
    Then user clicks on the action "move"
    Then verify pop-up "Select Destination"
    Then user clicks on "Holding Area"
    Then verify pop-up "holding area"
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
    Then user selects a patient from ward slot "Majors / Bay 1"
    Then user verify the Slot details and Slot options
    Then user clicks on "populate" in Slot Options
    Then user clicks on "patient identifier" in populate Slot option
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|patient1.wardNHS"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-755 @safi
  Scenario: Ward Information screen Settings  Designing the ward layout
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user clicks on Location "5 Day Ward - Grimsby" in Location List
    Then verify pop-up "Location Details"
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Location Menu"
    Then user clicks on "Configure Layout" in Location Menu popUp
    Then user lands on "Information Screen Configuration" page
    Then user clicks on action menu in Area Management Section
    Then verify pop-up "Management Menu"
    Then user clicks on "Area Management" in Management menu popUp
    Then user verify by adding and removing slots from all dimensions
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Location Saved"

  @TST-764 @safi
  Scenario: Ward Management - Viewing Patients on Ward Board / Ward Information Screen
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user selects a patient from ward slot "Majors / Bay 1"
    Then verify pop-up "Slot Details"
    Then verify patients demographics bar is visible in information screen
    Then verify popup option "Area / Slot" is visible
    Then verify popup option "Status" is visible
    Then verify popup option "Updated On" is visible
    Then verify popup option "Updated By" is visible
    Then verify popup option "Admission Date & Time" is visible
    Then verify popup option "Estimated Discharge" is visible

  @TST-768 @safi
  Scenario: Ward Management - Verify Priority of Indicator Icons
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user selects a patient from ward slot "Majors / Bay 1"
    Then verify pop-up "Slot Details"
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Slot Menu"
    Then user clicks on "clinical indicators" in Slot menu popUp
    Then verify pop-up "Clinical Indicators"
    Then user clicks on "Allergies" in Clinical Indicators popUp
    Then user clicks on "Yes" in clinical Indicators popUp
    Then user clicks on "Covid-19" in Clinical Indicators popUp
    Then user clicks on "Positive" in clinical Indicators popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks on "clinical indicators" in Slot menu popUp
    Then user verify the updated indicators

  @TST-758 @safi
  Scenario: Ward Information screen Settings - Slot Configuration
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user clicks on the "Systems" card in Settings section
    Then user clicks on "Information Screens" card
    Then user lands on "Information Screen Settings" page
    Then user clicks on Location "Laurel Ward - Grimsby" in Location List
    Then verify pop-up "Location Details"
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Location Menu"
    Then user clicks on "Configure Layout" in Location Menu popUp
    Then user clicks on action menu in Area Management Section
    Then verify pop-up "Management Menu"
    Then user clicks on "Area Management" in Management menu popUp
    Then user verify by adding and removing slots from all dimensions
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-770 @safi
  Scenario: Ward Management : Ward Holding area - Adding / Discharging Patients
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user selects a patient from ward slot "KTM Bed 7 / Slot 7"
    Then verify pop-up "Slot Details"
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Slot Menu"
    Then user clicks on "residency management" in Slot menu popUp
    Then verify pop-up "Residency Management"
    Then verify pop-up patients demographics exist
    Then user verify action "Movement History" is available
    Then user verify action "Absent" is available
    Then user verify action "Move" is available
    Then user verify action "Swap Beds" is available
    Then user verify action "Transfer" is available
    Then user verify action "Discharge" is available
    Then user clicks on the action "move"
    Then verify pop-up "Select Destination"
    Then user clicks on "Holding Area"
    Then verify pop-up "holding area"
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
    Then user clicks on the action icon
    Then user clicks on "Holding Area" in Ward Menu
    Then user verify whether the patient is present or not
    Then user selects the patient from the holding area
    Then verify pop-up "Holding Area Details"
    Then user clicks on action menu in Holding area details popUp
    Then verify pop-up "Holding Area Patient Menu"
    Then user clicks on "Discharge" option in holding area patient menu
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
    Then user clicks on tick-checkbox
    Then user clicks on cancel on holding area popUp
    Then user selects a patient from ward slot "KTM Bed 7 / Slot 7"
    Then user verify the Slot details and Slot options
    Then user clicks on "populate" in Slot Options
    Then user clicks on "patient identifier" in populate Slot option
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|patient1.slotNHS"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-767 @safi
  Scenario: Ward Management : Moving a Patient
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user selects a patient from ward slot "Bay 8"
    Then verify pop-up "Slot Details"
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Slot Menu"
    Then user clicks on "residency management" in Slot menu popUp
    Then verify pop-up "Residency Management"
    Then verify pop-up patients demographics exist
    Then user verify action "Movement History" is available
    Then user verify action "Absent" is available
    Then user verify action "Move" is available
    Then user verify action "Swap Beds" is available
    Then user verify action "Transfer" is available
    Then user verify action "Discharge" is available
    Then user clicks on the action "move"
    Then verify pop-up "Select Destination"
    Then user clicks on "Bay 10"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user selects a patient from ward slot "Bay 8"
    Then user verify the Slot details and Slot options
    Then user clicks on "populate" in Slot Options
    Then user clicks on "patient identifier" in populate Slot option
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|wardPat.nhs"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-771 @safi
  Scenario: Ward Management - Move / Transfer patients from Holding Area
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user clicks on the action icon
    Then user clicks on "Holding Area" in Ward Menu
    Then user clicks on the plus icon
    Then verify pop-up "Populate Holding Area"
    Then user clicks on "Patient Identifier" in Populate Holding Area popUp
    Then user enters Patient Identifier Search "patientData|wardPat.nhs1"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user selects a reason from Holding Area reason popUp
    Then verify pop-up "Holding Area Reason"
    Then user verify action "TCI AM" is available
    Then user verify action "TCI PM" is available
    Then user verify action "TCI Tomorrow AM" is available
    Then user verify action "TCI Tomorrow PM" is available
    Then user verify action "Waiting For Bed" is available
    Then user clicks on the action "Waiting For Bed"
    Then verify pop-up "Select An Intended Slot"
    Then user selects first option from not set list
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user verify whether the patient is present or not
    Then user selects the patient from the holding area
    Then verify pop-up "Holding Area Details"
    Then user clicks on menu icon on Observation Details popUp
    Then verify pop-up "Holding Area Patient Menu"
    Then user clicks on "move" option in holding area patient menu
    Then verify pop-up "Select Destination"
    Then user clicks on the first available slot
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on cancel on holding area popUp

  @TST-878 @safi
  Scenario: Ward Management - Automatic Bed Status
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user selects a patient from ward slot "Bay 10"
    Then user clicks on the action icon
    Then user clicks on "residency management" in Slot menu popUp
    Then verify pop-up "Residency Management"
    Then verify pop-up patients demographics exist
    Then user verify action "Movement History" is available
    Then user verify action "Absent" is available
    Then user verify action "Move" is available
    Then user verify action "Swap Beds" is available
    Then user verify action "Transfer" is available
    Then user verify action "Discharge" is available
    Then user clicks on the action "discharge"
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
    Then user clicks on tick-checkbox
    Then user verify the Slot details and Slot options
    Then user verify the status of bed

  @TST-785 @safi
  Scenario: Ward Management - Preventing Breaches (Mixed sex breaches) - Adding Patients / Slot reservations
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user selects a patient from ward slot "Major / Bay6"
    Then user verify the Slot details and Slot options
    Then user clicks on "populate" in Slot Options
    Then user clicks on "patient identifier" in populate Slot option
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|patient1.genderNHS"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then verify pop-up "Populate Information"
    Then user verify "Mixed Sex Breach" popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks on "residency management" in Slot menu popUp
    Then verify pop-up "Residency Management"
    Then verify pop-up patients demographics exist
    Then user verify action "Movement History" is available
    Then user verify action "Absent" is available
    Then user verify action "Move" is available
    Then user verify action "Swap Beds" is available
    Then user verify action "Transfer" is available
    Then user verify action "Discharge" is available
    Then user clicks on the action "discharge"
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
    Then user clicks on tick-checkbox
    Then user verify the Slot details and Slot options
    Then user verify the status of bed

  @TST-781 @safi
  Scenario: Ward Management - Reserve a Patient slot / bed
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user selects a patient from ward slot "ISO Bays / Bay 5"
    Then user verify the Slot details and Slot options
    Then user clicks on "reserve" in Slot Options
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|credentials1.nhs"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then verify pop-up "reservation"
    Then user clicks on "Patient Coming In" in reservation popUp
    Then verify pop-up "reservation"
    Then user verify the status on Reservation Summary popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on back icon
    Then user selects a patient from ward slot "ISO Bays / Bay 5"
    Then verify pop-up "Slot Details"
    Then user clicks on "Cancel Reservation" in Slot Options list
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-876 @safi
  Scenario: Ward Management - Swapping beds
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user selects a patient from ward slot "Bay 8"
    Then user clicks on the action icon
    Then user clicks on "residency management" in Slot menu popUp
    Then verify pop-up "Residency Management"
    Then verify pop-up patients demographics exist
    Then user verify action "Movement History" is available
    Then user verify action "Absent" is available
    Then user verify action "Move" is available
    Then user verify action "Swap Beds" is available
    Then user verify action "Transfer" is available
    Then user verify action "Discharge" is available
    Then user clicks on the action "swap beds"
    Then verify pop-up "Select Second Patient"
    Then user selects the patient in list to swap
    Then verify pop-up "Patient Swap Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Patient Swap "
    Then user verify "Swap Successful" popUp
    Then user clicks on tick-checkbox

  @TST-783 @safi
  Scenario: Ward Management - Verify Flash back Utility
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user clicks on the action icon
    Then user clicks on "Flashback" in Ward Menu
    Then user clicks on tick-checkbox
    Then verify pop-up "Flashback Date & Time"
    Then user clicks on tick-checkbox
    Then user clicks on "Select Current Time" in Flashback Date and Time popUp
    Then user clicks on tick-checkbox
    Then user clicks on manual refresh button to navigate back to real time

  @TST-787 @safi
  Scenario: Ward Management - Setting Clinician Colours (Ward)
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user clicks on the action icon
    Then user clicks on "Settings" in Ward Menu
    Then verify pop-up "Ward Settings"
    Then user clicks on "Clinician colours" in Ward Settings popUp
    Then verify pop-up "clinician"
    Then user clicks on "Abdelgabar, Abdel N M" in Clician list popUp
    Then verify pop-up "Select Clinician Colour"
    Then user clicks on "Alizarin" in Select Clinician colour popUp
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-782 @safi
  Scenario: Ward Management - Setting patient as Temporarily Absent from the Ward Location
    Given user lands on "Systems" page
    Then user clicks on "Information Screens" card in Systems
    Then user lands on "Information Screens" page
    Then user clicks on Location "ECC" in Location List
    Then user selects a patient from ward slot "Bay 10"
    Then user clicks on the action icon
    Then user clicks on "residency management" in Slot menu popUp
    Then verify pop-up "Residency Management"
    Then verify pop-up patients demographics exist
    Then user verify action "Movement History" is available
    Then user verify action "Absent" is available
    Then user verify action "Move" is available
    Then user verify action "Swap Beds" is available
    Then user verify action "Transfer" is available
    Then user verify action "Discharge" is available
    Then user clicks on the action "Absent"
    Then verify pop-up "Select Absence"
    Then user selects "CT" option from Reasons list
    Then user verify status "Absent" in Absence Summary popUp
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on back icon
    Then user selects a patient from ward slot "Bay 10"
    Then user clicks on "patient returned" in Slot Details popUp
    Then user clicks on tick-checkbox
    Then verify pop-up "Patient Return "
    Then user clicks on tick-checkbox
