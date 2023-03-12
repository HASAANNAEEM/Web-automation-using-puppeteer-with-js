@reasonToReside @e2e

Feature: To verify and validate Reason To Reside module

  @TST-1242 @hamzaAhmad @e2eSprint @sprint13 @HamzaRefactorSP13 @Bug:previousDischargeDatesAllowedToBeSelected @Bug:dischargeDateTickButtonNotWorking @Bug:dishchargeDateNotSaving @Bug:destinationOptionsDifferentFromSheet
  Scenario: Discharge Progress
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "reasonToReside|patientIdentifiers.patient1.patientID"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then verify pop-up "Patient Menu"
    Then user clicks on "Discharge" on popup
    Then verify patients demographics exist
    Then user verify Black header shows up with patient NHS Number "reasonToReside|patientIdentifiers.patient1.demographicsBar.headerNHS"
    Then user verify Black header shows up with patient gender "reasonToReside|patientIdentifiers.patient1.demographicsBar.headerGender"
    Then user verify Black header shows up with patient DOB "reasonToReside|patientIdentifiers.patient1.demographicsBar.headerDOB"
    Then verify column "1" of name "reasonToReside|patientIdentifiers.patient1.patientDischarge.spellNumber" contains value "reasonToReside|patientIdentifiers.patient1.patientDischarge.admittedOn"
    Then verify column "2" of name "reasonToReside|patientIdentifiers.patient1.patientDischarge.spellNumber" contains value "reasonToReside|patientIdentifiers.patient1.patientDischarge.dischargedOn"
    Then verify column "3" of name "reasonToReside|patientIdentifiers.patient1.patientDischarge.spellNumber" contains value "reasonToReside|patientIdentifiers.patient1.patientDischarge.admissionStatus"
    Then user clicks on "reasonToReside|patientIdentifiers.patient1.patientDischarge.spellNumber"
    Then verify pop-up "Admission Episode Menu"
    Then verify popup option "View" is visible
    Then user clicks on the pop-up option "View"
    Then user lands on "Patient Discharge" page
    Then verify patients demographics exist
    Then verify "Spell number: IP82235659" is present in the document
    Then verify "Discharge Tasks" module exists "true"
    Then verify "Progress" is present in the document
    Then verify "Medications (View Only)" is present in the document
    Then verify "Discharge Progress" module exists "true"
    Then verify "Estimated Discharge Date (EDD)" is present in the document
    Then verify "Arrived In Discharge Lounge" is present in the document
    Then verify "Actual Discharge Date (ADD)" is present in the document
    Then verify "Discharge Destination" is present in the document
    Then verify "Intended Discharge before 17:00" is present in the document
    Then verify "To Chase" is present in the document
    Then verify "Operational Notes" is present in the document
    Then verify "Admitted On" is present in the document
    Then verify "Stranded Code (Overcode)" is present in the document
    Then verify "Action & Responsibility" is present in the document
    Then user clicks on "Estimated Discharge Date (EDD)"
    # test case should fail here -> previous dates are not allowed to be selected
    Then user clicks on "13" span
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks on "Save" on popup
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then user clicks on "Discharge Destination"
    Then wait for 10 seconds
    Then verify "To own home no input/needs" is present in the document
    Then verify "Care home (returning to)" module exists "true"
    Then verify "Care package (IC@H, LRS, health funded)" is present in the document
    Then verify "Care package (restart, social)" is present in the document
    Then verify "Care package (self funding, family to care)" is present in the document
    Then verify "Rehab Bed" is present in the document
    Then verify "Care home (new placement)" is present in the document
    Then verify "Hospice" is present in the document
    Then verify "Other (e.g. relatives, hostel, hotel, not normal home address, etc.)" is present in the document
    Then user clicks on "To own home no input/needs"
    # to be continued ...
    # options not right to select and continue ...



  @TST-1244 @hamzaAhmad @e2eSprint @sprint13 @HamzaRefactorSP13
  Scenario: Discharge Progress 3
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "reasonToReside|patientIdentifiers.patient2.patientID"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then verify pop-up "Patient Menu"
    Then user clicks on "Discharge" on popup
    Then user lands on "Patient Discharge" page
    Then verify patients demographics exist
    Then user verify Black header shows up with patient NHS Number "reasonToReside|patientIdentifiers.patient2.demographicsBar.headerNHS"
    Then user verify Black header shows up with patient gender "reasonToReside|patientIdentifiers.patient2.demographicsBar.headerGender"
    Then user verify Black header shows up with patient DOB "reasonToReside|patientIdentifiers.patient2.demographicsBar.headerDOB"
    Then verify column "1" of name "reasonToReside|patientIdentifiers.patient2.patientDischarge.spellNumber" contains value "reasonToReside|patientIdentifiers.patient2.patientDischarge.admittedOn"
    Then verify column "2" of name "reasonToReside|patientIdentifiers.patient2.patientDischarge.spellNumber" contains value "reasonToReside|patientIdentifiers.patient2.patientDischarge.dischargedOn"
    Then verify column "3" of name "reasonToReside|patientIdentifiers.patient2.patientDischarge.spellNumber" contains value "reasonToReside|patientIdentifiers.patient2.patientDischarge.admissionStatus"
    Then user clicks on "IP82237615"
    Then verify pop-up "Admission Episode Menu"
    Then verify popup option "View" is visible
    Then user clicks on the pop-up option "View"
    Then user lands on "Patient Discharge" page
    Then verify patients demographics exist
    Then verify "Spell number: IP82237615" is present in the document
    Then verify "Discharge Tasks" module exists "true"
    Then verify "Progress" is present in the document
    Then verify "Medications (View Only)" is present in the document
    Then verify "Discharge Progress" module exists "true"
    Then verify "Estimated Discharge Date (EDD)" is present in the document
    Then verify "Arrived In Discharge Lounge" is present in the document
    Then verify "Actual Discharge Date (ADD)" is present in the document
    Then verify "Discharge Destination" is present in the document
    Then verify "Intended Discharge before 17:00" is present in the document
    Then verify "To Chase" is present in the document
    Then verify "Operational Notes" is present in the document
    Then verify "Admitted On" is present in the document
    Then verify "Stranded Code (Overcode)" is present in the document
    Then verify "Action & Responsibility" is present in the document
    Then user clicks on "To Chase"
    Then user clicks on "Stranded Code (Overcode)"
    Then user clicks on "Waiting for transfer to Acute Hospital for treatment - tertiary fit to travel"
    Then user clicks on "Stranded Code (Overcode)"
    Then user clicks on "Waiting return to other acute hospital - fit to travel"
    Then user clicks on "Action & Responsibility"
    Then user clears the text-area
    Then user enters "reasonToReside|action&Responsibility.value1.value" in text-area in action and responsibility
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks on "Save" on popup
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then user clicks on "Reason to Reside List"
    Then user verify table header "Date & Time" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header with icon "data-set-cell reason-to-reside" exists "true"
    Then user verify table header "Reason" exists "true"
    Then user verify table header "Duration" exists "true"
    Then user verify table header with icon "data-set-cell delayed-transfer-of-care" exists "true"
    Then user verify table header with icon "data-set-cell number-of-nights" exists "true"
    Then user verify table header "Delay Resp" exists "true"
    Then user verify table header with icon "data-set-cell responsibility-agreed" exists "true"
    Then user clicks on modules back button
    Then user clicks on "Operational Notes"
    Then user clicks on the plus icon
    Then verify demographic bar is visible in operational note details pop-up
    Then user enters "reasonToReside|operationalNotes.value1.value" in text-area in action and responsibility
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify "Operational Notes" module exists "true"
    Then user clicks on "reasonToReside|operationalNotes.value1.value" span



  @TST-1245 @hamzaAhmad @e2eSprint @sprint13
  Scenario: Discharge Worklist
    Given user lands on "Systems" page
    Then user clicks on "Worklists" card in Systems
    Then user lands on "Worklists" page
    Then verify module navigator "Documents" exits
    Then verify module navigator "Discharge" exits
    Then verify module navigator "Documents" is selected
    Then user click on module navigator "Discharge"
    Then user lands on "Discharge Worklist" module
    Then verify module navigator "Reason to Reside" exits
    Then verify module navigator "Operational Notes" exits
    Then verify module navigator "Stranded Patients" exits
    Then user clicks on filter Parameter
    Then verify pop-up "Filter Parameters"
    Then verify popup option "Status" is visible
    Then verify popup option "Date & Time" is visible
    Then verify popup option "Reason to Reside" is visible
    Then verify popup option "Delay Responsibility" is visible
    Then verify popup option "Duration" is visible
    Then verify popup option "Delayed Transfer Of Care" is visible
    Then verify popup option "Responsibility Agreed" is visible
    Then user clicks on the tick-checkbox
    Then user verify table header "Name" exists "true"
    Then user verify table header "NHS Number" exists "true"
    Then user verify table header with icon "data-set-cell sortable table-header-chase-patient" exists "true"
    Then user verify table header "Date & Time" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header with icon "data-set-cell reason-to-reside" exists "true"
    Then user verify table header "Reason" exists "true"
    Then user verify table header "Duration" exists "true"
    Then user verify table header with icon "data-set-cell delayed-transfer-of-care" exists "true"
    Then user verify table header with icon "data-set-cell number-of-nights" exists "true"
    Then user verify table header "Delay Resp" exists "true"
    Then user verify table header with icon "data-set-cell responsibility-agreed" exists "true"
    Then user click on module navigator "Operational Notes"
    Then user clicks on filter Parameter
    Then verify pop-up "Filter Parameters"
    Then verify popup option "Date " is visible
    Then user clicks on the tick-checkbox
    Then user verify table header "Name" exists "true"
    Then user verify table header "NHS Number" exists "true"
    Then user verify table header with icon "data-set-cell sortable table-header-chase-patient" exists "true"
    Then user verify table header "Location" exists "true"
    Then user verify table header "Recorded On" exists "true"
    Then user verify table header "Recorded By" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Note" exists "true"
    Then user clicks on the meatball option where name is "reasonToReside|meatballOptions.meatball1.value"
    Then verify pop-up "Operational Note Details"
    Then verify action menu exists on pop-up
    Then verify popup option "Status" is visible
    Then verify popup option "Recorded On" is visible
    Then verify popup option "Recorded By" is visible
    Then verify popup option "Episode Type" is visible
    Then verify popup option "Theme" is visible
    Then verify popup option "Note" is visible
    Then verify popup option "Designation" is visible
    Then verify popup option "Clinical area" is visible
    Then user clicks on the action icon
    Then user clicks on "Retract" on popup
    Then user clicks on "Reason" on popup
    Then user clicks on "Contains Inaccurate Information" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify "Status" with value "Retracted" in the pop-up
    Then user clicks on pop-up back icon
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "reasonToReside|patientIdentifiers.patient2.patientID"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then verify pop-up "Patient Menu"
    Then user clicks on "Discharge" on popup
    Then user lands on "Patient Discharge" page
    Then user clicks on "reasonToReside|patientIdentifiers.patient2.patientDischarge.spellNumber"
    Then verify pop-up "Admission Episode Menu"
    Then verify popup option "View" is visible
    Then user clicks on the pop-up option "View"
    Then user lands on "Patient Discharge" page
    Then user clicks on "Reason to Reside List"
    Then user clicks on the plus icon
    Then user clicks on "Yes" on popup
    Then user clicks on "Reason" on popup
    Then user clicks on "Physiology" on popup
    Then user clicks on "Requiring ITU or HDU care" on popup
    Then user clicks on "Date & Time" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on "Systems" in menu bar section
    Then user clicks on "Worklists" card in Systems
    Then user lands on "Worklists" page
    Then user click on module navigator "Discharge"
    Then user lands on "Discharge Worklist" module
    Then user clicks on the meatball option where name is "reasonToReside|meatballOptions.meatball2.value"
    Then user clicks on the action icon
    Then user clicks on "Go to Discharge Module" on popup
    Then user clicks on back icon
    Then user clicks on the meatball option where name is "reasonToReside|meatballOptions.meatball2.value"
    Then user clicks on the action icon
    Then user clicks on "Edit" on popup


#  @TST-1246 @hamzaAhmad @e2eSprint @sprint15
#  Scenario: Discharge Permissions
#    Given user lands on "Systems" page
#    Then check if the current user has the role of "WebV Admin" and if not then change it
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "2222222222"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then user lands on "Patient Summary" page
#    Then user clicks on the action icon
#    Then user clicks on the sub-navigation in profile menu "Requests"
#    Then user lands on "Patient Requests" page
#    Then user clicks on the plus icon
#    Then verify pop-up "Create Diagnostic Request"
#    Then user clicks on the action "Radiology"
#    Then verify pop-up "Select Location"
#    Then user clicks on the action "AMETHYST DAY CASE UNIT"
#    Then verify pop-up "Select Clinician"
#    Then user clicks on the action "Abourawi, F"
#    Then verify pop-up "Create Radiology Request"
#    Then user clicks on the action "Modality"
#    Then verify pop-up "Select Modality"
#    Then user verify action "CT" is available
#    Then user verify action "Fluoroscopy" is available
#    Then user verify action "Interventional/Misc" is available
#    Then user verify action "MRI" is available
#    Then user verify action "Plain (CR)" is available
#    Then user verify action "Ultrasound" is available
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
#    Then user clicks on the action "Systems"
#    Then user clicks on the action "Requests"
#    Then user clicks on the action "Diagnostics"
#    Then user verify action "Blood Science" is available
#    Then user verify action "Microbiology" is available
#    Then user verify action "Radiology" is available
#    Then user verify action "Radiology - CT" is available
#    Then user verify action "Radiology - Fluoroscopy" is available
#    Then user verify action "Radiology - Interventional/Misc" is available
#    Then user verify action "Radiology - MRI" is available
#    Then user verify action "Radiology - MUGA" is available
#    Then user verify action "Radiology - Myocardial Perfusion Scan" is available
#    Then user verify action "Radiology - NLG CT Colon" is available
#    Then user verify action "Radiology - Plain (CR)" is available
#    Then user verify action "Radiology - Ultrasound" is available
#    Then check "Radiology - CT" role permissions to "left-click-inactive"
#    Then check "Radiology - Fluoroscopy" role permissions to "left-click-inactive"
#    Then check "Radiology - Interventional/Misc" role permissions to "left-click-inactive"
#    Then check "Radiology - MRI" role permissions to "left-click-inactive"
#    Then check "Radiology - MRI" role permissions to "left-click-inactive"
#    Then check "Radiology - Myocardial Perfusion Scan" role permissions to "left-click-inactive"
#    Then check "Radiology - NLG CT Colon" role permissions to "left-click-inactive"
#    Then check "Radiology - Plain (CR)" role permissions to "left-click-inactive"
#    Then check "Radiology - Ultrasound" role permissions to "left-click-inactive"
#    Then user clicks on pop-up back icon
#    Then user clicks on pop-up back icon
#    Then user clicks on pop-up back icon
#    Then user clicks on tick-checkbox
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox
#    Then user clicks on pop-up back icon
#    Then user logs out
#    Then user logs in using credentials "Haider"
#    Given user lands on "Systems" page
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "2222222222"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then user lands on "Patient Summary" page
#    Then user clicks on the action icon
#    Then user clicks on the sub-navigation in profile menu "Requests"
#    Then user lands on "Patient Requests" page
#    Then user clicks on the plus icon
#    Then verify pop-up "Create Diagnostic Request"
#    Then user clicks on the action "Radiology"
#    Then verify pop-up "Select Location"
#    Then user clicks on the action "AMETHYST DAY CASE UNIT"
#    Then verify pop-up "Select Clinician"
#    Then user clicks on the action "Abourawi, F"
#    Then verify pop-up "Create Radiology Request"
#    Then user clicks on the action "Modality"
#    Then verify pop-up "Select Modality"
#    Then verify "Nothing Here" is present in the pop-up table
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



  @TST-1243 @hamzaAhmad @e2eSprint @sprint14 @Bug:toggleSwitchNotAvailable
  Scenario: Discharge Progress 2
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "reasonToReside|patientIdentifiers.patient3.patientID"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Discharge"
    Then user lands on "Patient Discharge" page
    Then user clicks on "reasonToReside|patientIdentifiers.patient3.patientDischarge.spellNumber"
    Then verify pop-up "Admission Episode Menu"
    Then verify popup option "View" is visible
    Then user clicks on the pop-up option "View"
    Then user lands on "Patient Discharge" page
    Then user clicks on "Reason to Reside List"
    Then user clicks on the plus icon
    Then user clicks on "Yes" on popup
    Then user clicks on "Reason" on popup
    Then user clicks on "Physiology" on popup
    Then user clicks on "Requiring ITU or HDU care" on popup
    Then user clicks on "Date & Time" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on the action "Delayed"
    # to be continued ...