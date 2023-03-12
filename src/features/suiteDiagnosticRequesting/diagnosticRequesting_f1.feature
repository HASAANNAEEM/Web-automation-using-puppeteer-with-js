@diagnosticRequest @diagnosticRequesting1 @e2e
Feature: To Check the Diagnostic Requesting Functionality

  @TST-892 @haiderejaz @e2eSprint @sprint8
  Scenario: Pathology Requesting V3 : Viewing Requests by Patient
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module
    Then user verify detail "Parameters" exists "true"
    Then user verify detail "All Types" exists "true"
    Then user verify detail "All Statuses" exists "true"
    Then user verify table header "STATUS" exists "true"
    Then user verify table header "REQUESTED ON" exists "true"
    Then user verify table header "REQUESTING LOCATION" exists "true"
    Then user verify table header "TYPE" exists "true"
    Then user verify table header "REQUIRED DATE" exists "true"
    Then user verify table header "INVESTIGATION" exists "true"
    Then user verify table header "PRIORITY" exists "true"
    Then user verify table header "INFECTION RISK" exists "true"

  @TST-895 @haiderejaz @Bug:MOST_POPULAR_INVESTIGATION_NOT_AVAILABLE @e2eSprint @sprint8
  Scenario: Pathology Requesting V3 : Creating New Request - Select Investigation types
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module

    Then choose filter "Blood Science" on "All Types"
    Then choose filter "Requested" on "All Statuses"

    Then cancel requests of location "Acute Assessment Unit - DPoW" if not cancelled
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "All Tests" on popup
    Then wait for popup loading
#    Then verify pop-up "Select Investigations"
    Then verify Item "Specimen Type" with respect to status "Blood" is Exist "true"
    Then user inputs "D Dimer for exclusion of VTE" in the filter option
    Then user clicks on "D Dimer for exclusion of VTE" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then wait for popup loading
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Currently Selected Investigations"
    Then user clicks on the plus icon of "Currently Selected Investigations"
    Then user clicks on "Clinically Driven Requests" on popup
    Then wait for popup loading
    Then user inputs "Anaemia" in the filter option
    Then user clicks on "Anaemia" on popup
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Currently Selected Investigations"
    Then user clicks on the plus icon of "Currently Selected Investigations"
    Then user clicks on "Most Popular" on popup
    Then wait for popup loading
    Then user verify detail "Nothing Here" exists "false"
    Then user inputs "Clinical Details" with value "TST-895"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-896 @haiderejaz @MOST_POPULAR_INVESTIGATION_NOT_AVAILABLE @e2eSprint @sprint8
  Scenario: Pathology Requesting V3 : Questions & Guidance attached to Clinically Driven Requests
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module

    Then choose filter "Blood Science" on "All Types"
    Then choose filter "Requested" on "All Statuses"

    Then cancel requests of location "Acute Assessment Unit - DPoW" if not cancelled
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "Clinically Driven Requests" on popup
    Then wait for popup loading
    Then user inputs "Anaemia" in the filter option
    Then user clicks on "Anaemia" on popup
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Currently Selected Investigations"
    Then user verify detail "B12,Folate,Ferritin" exists "true"
    Then user verify detail "FBC" exists "true"
    Then user clicks on pop-up back icon
    Then user inputs "Clinical Details" with value "TST-896"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on "Acute Assessment Unit - DPoW" in the table
    Then user verify detail "Guidance" exists "true"
    Then user verify detail "Questions" exists "true"

  @TST-919 @haiderejaz @e2eSprint @sprint8
  Scenario: Pathology Requesting V3 : Patient Requests - Verify Request Table after creating a Patient Request
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module

    Then choose filter "Blood Science" on "All Types"
    Then choose filter "Requested" on "All Statuses"
    Then wait for popup loading
    Then cancel requests of location "Acute Assessment Unit - DPoW" if not cancelled
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "Clinically Driven Requests" on popup
    Then wait for popup loading
    Then user inputs "Anaemia" in the filter option
    Then user clicks on "Anaemia" on popup
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then user inputs "Clinical Details" with value "TST-919"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify "Acute Assessment Unit - DPoW" is present in the table "true"

  @TST-922 @haiderejaz @e2eSprint @sprint8
  Scenario: Pathology Requesting V3 : Creating New Request - Verify Request Priority Selections
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "Clinically Driven Requests" on popup
    Then wait for popup loading
    Then user inputs "Anaemia" in the filter option
    Then user clicks on "Anaemia" on popup
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then user inputs "Clinical Details" with value "TST-922"
    Then verify Item "Priority" with respect to status "Routine" is Exist "true"
    Then user clicks on "Priority" on popup
    Then user verify detail "Routine" exists "true"
    Then user verify detail "Two Week Wait (31/62)" exists "true"
    Then user verify detail "Urgent" exists "true"
    Then user clicks on "Routine" on popup
    Then user clicks on pop-up back icon
    Then user clicks on tick-checkbox
    Then verify Item "Priority" with respect to status "Routine" is Exist "true"
    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-923 @haiderejaz @e2eSprint @sprint8
  Scenario: Pathology Requesting V3 : Sorting Patient Request List
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module
    Then user verify table header "STATUS" exists "true"
    Then user verify table header "REQUESTED ON" exists "true"
    Then user verify table header "REQUESTING LOCATION" exists "true"
    Then user verify table header "TYPE" exists "true"
    Then user verify table header "REQUIRED DATE" exists "true"
    Then user verify table header "INVESTIGATION" exists "true"
    Then user verify table header "PRIORITY" exists "true"
    Then user verify table header "INFECTION RISK" exists "true"
    Then verify header "Requested On" sorting "sort-down"
    Then user clicks on "Requested On"
    Then verify header "Requested On" sorting "sort-up"
#    Then user clicks on "Status"
#    Then verify header "Status" sorting "sort-up"
#    Then user clicks on "Status"
#    Then verify header "Status" sorting "sort-down"
    Then user clicks on "Requesting Location"
    Then verify header "Requesting Location" sorting "sort-up"
    Then user clicks on "Requesting Location"
    Then verify header "Requesting Location" sorting "sort-down"
    Then user clicks on "Requesting Clinician"
    Then verify header "Requesting Clinician" sorting "sort-up"
    Then user clicks on "Requesting Clinician"
    Then verify header "Requesting Clinician" sorting "sort-down"
#    Then user clicks on "Type"
#    Then verify header "Type" sorting "sort-up"
#    Then user clicks on "Type"
#    Then verify header "Type" sorting "sort-down"
    Then user clicks on "Required Date"
    Then verify header "Required Date" sorting "sort-up"
    Then user clicks on "Required Date"
    Then verify header "Required Date" sorting "sort-down"
    Then user clicks on "Investigation"
    Then verify header "Investigation" sorting "sort-down"
    Then user clicks on "Investigation"
    Then verify header "Investigation" sorting "sort-up"
    Then user clicks on "Priority"
    Then verify header "Priority" sorting "sort-up"
    Then user clicks on "Priority"
    Then verify header "Priority" sorting "sort-down"
    Then user clicks on "Infection Risk"
    Then verify header "Infection Risk" sorting "sort-up"
    Then user clicks on "Infection Risk"
    Then verify header "Infection Risk" sorting "sort-down"

  @TST-924 @haiderejaz @e2eSprint @sprint8
  Scenario: Pathology Requesting V3 : Creating New Request - Verify Investigation Specimen type filter
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "All Tests" on popup
    Then wait for popup loading
#    Then verify pop-up "Select Investigations"
    Then verify Item "Specimen Type" with respect to status "Blood" is Exist "true"
    Then user inputs "D Dimer for exclusion of VTE" in the filter option
    Then user clicks on "D Dimer for exclusion of VTE" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then user inputs "Clinical Details" with value "TST-924"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Microbiology" on popup
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
    Then verify pop-up "Select Specimen"
    Then user clicks on "Blood Culture" on popup
    Then wait for popup loading
    Then verify pop-up "Select Anatomical Site"
    Then wait for popup loading
    Then user clicks on "line" on popup
    Then wait for popup loading
    Then user clicks on "Arterial line" on popup
#    Then wait for popup loading
#    Then verify pop-up "Select Diagnostic Profile"
#    Then wait for popup loading
#    Then user clicks on "line" on popup
#    Then wait for popup loading
#    Then user clicks on "Arterial line" on popup
    Then wait for popup loading
    Then verify pop-up "Create Microbiology Request"
    Then user inputs "Clinical Details" with value "TST-924"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-925 @haiderejaz @Questions_Guidance_not_clickable @e2eSprint @sprint8
  Scenario: Pathology Requesting V3 : Creating New Request - Verify Questions & Guidance
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module

    Then choose filter "Blood Science" on "All Types"
    Then choose filter "Requested" on "All Statuses"

    Then cancel requests of location "Acute Assessment Unit - DPoW" if not cancelled
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "Clinically Driven Requests" on popup
    Then wait for popup loading
    Then user inputs "Anaemia" in the filter option
    Then user clicks on "Anaemia" on popup
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Currently Selected Investigations"
    Then user verify detail "B12,Folate,Ferritin" exists "true"
    Then user verify detail "FBC" exists "true"
    Then user clicks on pop-up back icon
    Then user inputs "Clinical Details" with value "TST-925"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on "Acute Assessment Unit - DPoW" in the table
    Then user verify detail "Guidance" exists "true"
    Then user verify detail "Questions" exists "true"

  @TST-929 @haiderejaz @MOST_POPULAR_INVESTIGATION_NOT_AVAILABLE @e2eSprint @sprint8
  Scenario: Pathology Requesting V3 : Blood Science Requests - Select Most Popular
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module

    Then choose filter "Blood Science" on "All Types"
    Then choose filter "Requested" on "All Statuses"

    Then cancel requests of location "Acute Assessment Unit - DPoW" if not cancelled
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "Most Popular" on popup
    Then wait for popup loading
    Then user verify detail "Nothing Here" exists "false"

  @TST-932 @haiderejaz @e2eSprint @sprint8 @sp8Refactor
  Scenario: Pathology Requesting V3 :  Reception Mode - Verify Request Actions
    Given user lands on "Systems" page
    Then user clicks on the option "Requests"
    Then user lands on "Requests" page
    Then user clicks on the option "Reception"
    Then wait for popup loading
    Then verify pop-up "Reception Mode"
    Then user inputs "Specimen No." with value "BG999978Z"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Request Details"
#    Then user verify detail "Status" with value "Requested"
    Then user verify admission information detail "Status" with value "Requested"
    Then user verify Black header shows up with patient name "Ingersol, Phyllis Nellie"
    Then user verify Black header shows up with patient DOB "15-Apr-1959 (63y)"
    Then user verify Black header shows up with patient gender "Male"
    Then user verify Black header shows up with patient NHS Number "606 765 2064"
    Then user clicks on the action icon of "Request Details"
    Then user verify detail "Accept" exists "true"
    Then user verify detail "Reject" exists "true"
    Then user verify detail "Edit" exists "true"
    Then user verify detail "Print" exists "true"
    Then user verify detail "Cancel" exists "true"

  @TST-934 @haiderejaz @e2eSprint @sprint8 @sp8Refactor
  Scenario: Pathology Requesting V3 :  Reception Mode -  Editing Investigations
    Given user lands on "Systems" page
    Then user clicks on the option "Requests"
    Then user lands on "Requests" page
    Then user clicks on the option "Reception"
    Then wait for popup loading
    Then verify pop-up "Reception Mode"
    Then user inputs "Specimen No." with value "BG999978Z"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Request Details"
    Then user clicks on the action icon of "Request Details"
    Then user clicks on "Edit" on popup
    Then wait for popup loading
    Then verify pop-up "Edit Request"
    Then user clicks on "Investigations" on popup
    Then wait for popup loading
    Then verify pop-up "Currently Selected Investigations"
    Then user clicks on the plus icon of "Currently Selected Investigations"
    Then wait for popup loading
    Then user clicks on "All Tests" on popup
    Then wait for popup loading
#    Then verify pop-up "Select Investigations"
    Then verify Item "Specimen Type" with respect to status "Blood" is Exist "true"
    Then user inputs "D Dimer for exclusion of VTE" in the filter option
    Then user clicks on "D Dimer for exclusion of VTE" on popup
    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox if recent investigations popup appears
    Then wait for popup loading
    Then user verify detail "D Dimer for exclusion of VTE" exists "true"

  @TST-935 @haiderejaz @e2eSprint @sprint8
  Scenario: Radiology Requesting V3 : Creating Radiology Requests
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then user clicks on the plus icon
    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Radiology" in Select Specialities popUp
    Then verify pop-up "Select Location"
    Then user clicks on the action "AMETHYST DAY CASE UNIT"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abourawi, F"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Modality"
    Then verify pop-up "Select Modality"
    Then user clicks on the action "Plain (CR)"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Select Examination Type"
    Then user clicks on the action "Limbs Lower"
    Then verify pop-up "Select Examination Area"
    Then user clicks on the action "Ankle Left"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user input "Provisional Diagnosis" with value "Diagnosis"
    Then user input "Clinical Details" with value "Details"
    Then wait for 10 seconds
    Then user clicks on the action "Method Of Arrival"
    Then verify pop-up "Select Arrival Method"
    Then user verify action "Bed" is available
    Then user verify action "Chair" is available
    Then user verify action "Immobile (Requires Portable)" is available
    Then user verify action "Walking" is available
    Then user clicks on the action "Walking"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on tick-checkbox
    Then verify pop-up "Questions"
    Then set the yes-no of header "Do you know if the patient has any known communicable infection risks?" to "Yes"
    Then user clicks on the question "Please select all items in the list that apply to the patient. If none apply"
    Then verify pop-up "Select A Value"
    Then user clicks on the action "None"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Questions"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Radiology Request Summary"
    Then verify "Method of Arrival" with value "Walking" in the pop-up
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-936 @haiderejaz @e2eSprint @sprint8
  Scenario: Radiology Requesting V3 : Selecting Modality(Trust based)
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then user clicks on the plus icon
    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Radiology" in Select Specialities popUp
    Then verify pop-up "Select Location"
    Then user clicks on the action "AMETHYST DAY CASE UNIT"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abourawi, F"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Modality"
    Then verify pop-up "Select Modality"
    Then user clicks on the action "Plain (CR)"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Select Examination Type"
    Then user clicks on the action "Limbs Lower"
    Then verify pop-up "Select Examination Area"
    Then user clicks on the action "Ankle Left"
    Then user clicks on the action "Ankle Right"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user input "Provisional Diagnosis" with value "Diagnosis"
    Then user input "Clinical Details" with value "Details"
    Then wait for 10 seconds
    Then user clicks on the action "Method Of Arrival"
    Then verify pop-up "Select Arrival Method"
    Then user verify action "Bed" is available
    Then user verify action "Chair" is available
    Then user verify action "Immobile (Requires Portable)" is available
    Then user verify action "Walking" is available
    Then user clicks on the action "Walking"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on tick-checkbox
    Then verify pop-up "Questions"
    Then set the yes-no of header "Do you know if the patient has any known communicable infection risks?" to "Yes"
    Then user clicks on the question "Please select all items in the list that apply to the patient. If none apply"
    Then verify pop-up "Select A Value"
    Then user clicks on the action "None"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Questions"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Radiology Request Summary"
    Then verify "Method of Arrival" with value "Walking" in the pop-up
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-937 @haiderejaz @e2eSprint @sprint8
  Scenario: Radiology Requesting V3 : Select Investigations
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then user clicks on the plus icon
    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Radiology" in Select Specialities popUp
    Then verify pop-up "Select Location"
    Then user clicks on the action "AMETHYST DAY CASE UNIT"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abourawi, F"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Modality"
    Then verify pop-up "Select Modality"
    Then user clicks on the action "Plain (CR)"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Select Examination Type"
    Then user clicks on the action "Limbs Lower"
    Then verify pop-up "Select Examination Area"
    Then user clicks on the action "Ankle Left"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user input "Provisional Diagnosis" with value "Diagnosis"
    Then user input "Clinical Details" with value "Details"
    Then wait for 10 seconds
    Then user clicks on the action "Method Of Arrival"
    Then verify pop-up "Select Arrival Method"
    Then user verify action "Bed" is available
    Then user verify action "Chair" is available
    Then user verify action "Immobile (Requires Portable)" is available
    Then user verify action "Walking" is available
    Then user clicks on the action "Walking"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on tick-checkbox
    Then verify pop-up "Questions"
    Then set the yes-no of header "Do you know if the patient has any known communicable infection risks?" to "Yes"
    Then user clicks on the question "Please select all items in the list that apply to the patient. If none apply"
    Then verify pop-up "Select A Value"
    Then user clicks on the action "None"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Questions"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Radiology Request Summary"
    Then verify "Method of Arrival" with value "Walking" in the pop-up
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-938 @haiderejaz @e2eSprint @sprint8 @sp8Refactor
  Scenario: Radiology Requesting V3 : Creating New Radiology Request - Verify Request Summary
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "9999999999"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then user clicks on the plus icon
    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Radiology" in Select Specialities popUp
    Then verify pop-up "Select Location"
    Then user clicks on the action "AMETHYST DAY CASE UNIT"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abourawi, F"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Modality"
    Then verify pop-up "Select Modality"
    Then user clicks on the action "Plain (CR)"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Select Examination Type"
    Then user clicks on the action "Limbs Lower"
    Then verify pop-up "Select Examination Area"
    Then user clicks on the action "Ankle Left"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user input "Provisional Diagnosis" with value "Diagnosis"
    Then user input "Clinical Details" with value "Details"
    Then wait for 10 seconds
    Then user clicks on the action "Method Of Arrival"
    Then verify pop-up "Select Arrival Method"
    Then user verify action "Bed" is available
    Then user verify action "Chair" is available
    Then user verify action "Immobile (Requires Portable)" is available
    Then user verify action "Walking" is available
    Then user clicks on the action "Walking"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on tick-checkbox
    Then verify pop-up "Questions"
    Then set the yes-no of header "Do you know if the patient has any known communicable infection risks?" to "Yes"
    Then user clicks on the question "Please select all items in the list that apply to the patient. If none apply"
    Then verify pop-up "Select A Value"
    Then user clicks on the action "None"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Questions"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Radiology Request Summary"
    Then user verify Black header shows up with patient name "HENTON, IAN (MR)"
    Then user verify Black header shows up with patient DOB "29-May-1986 (36y)"
    Then user verify Black header shows up with patient gender "Male"
    Then user verify Black header shows up with patient NHS Number "999 999 9999"
    Then verify "Organisation" with value "Diana Princess of Wales Hospital" in the pop-up
    Then verify "Location" with value "AMETHYST DAY CASE UNIT" in the pop-up
    Then verify "Clinician" with value "Abourawi, F" in the pop-up
    Then verify "Modality" with value "Plain (CR)" in the pop-up
    Then verify "Investigations" with value "Ankle Left" in the pop-up
    Then verify "Provisional Diagnosis" with value "Diagnosis" in the pop-up
    Then verify "Clinical Details" with value "Details" in the pop-up
    Then verify "Method of Arrival" with value "Walking" in the pop-up
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-889 @haiderejaz @e2eSprint @sprint9
  Scenario: Pathology Requesting V3 : Create new Patient Blood Science Request
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module

    Then choose filter "Blood Science" on "All Types"
    Then choose filter "Requested" on "All Statuses"

    Then cancel requests of location "Acute Assessment Unit - DPoW" if not cancelled
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify Black header shows up with patient name "HENTON, IAN (MR)"
    Then user verify Black header shows up with patient DOB "29-May-1986 (36y)"
    Then user verify Black header shows up with patient gender "Male"
    Then user verify Black header shows up with patient NHS Number "999 999 9999"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "All Tests" on popup
    Then wait for popup loading
#    Then verify pop-up "Select Investigations"
    Then verify Item "Specimen Type" with respect to status "Blood" is Exist "true"
    Then user inputs "D Dimer for exclusion of VTE" in the filter option
    Then user clicks on "D Dimer for exclusion of VTE" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then wait for popup loading
    Then user inputs "Clinical Details" with value "TST-889"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on "Acute Assessment Unit - DPoW" in the table
    Then user verify Black header shows up with patient name "HENTON, IAN (MR)"
    Then user verify Black header shows up with patient DOB "29-May-1986 (36y)"
    Then user verify Black header shows up with patient gender "Male"
    Then user verify Black header shows up with patient NHS Number "999 999 9999"
    Then user verify Popup Adjacent Item "STATUS" with value "Requested"

  @TST-890 @haiderejaz @e2eSprint @sprint9
  Scenario: Pathology Requesting V3 : Create New Patient  Microbiology Request
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module

    Then choose filter "Microbiology" on "All Types"
    Then choose filter "Requested" on "All Statuses"

    Then cancel requests of location "Acute Assessment Unit - DPoW" if not cancelled
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Microbiology" on popup
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
    Then wait for popup loading
    Then user clicks on "Blood Culture" on popup
    Then wait for popup loading
    Then wait for popup loading
    Then user clicks on "line" on popup
    Then wait for popup loading
    Then user clicks on "Arterial line" on popup
    Then wait for popup loading
#    Then user clicks on "Arterial line" on popup
#    Then wait for popup loading
    Then user inputs "Clinical Details" with value "TST-890"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-891 @haiderejaz @e2eSprint @sprint9 @refactor9
  Scenario: Pathology Requesting V3 : Verify Requests Table
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module

    Then choose filter "Blood Science" on "All Types"
    Then choose filter "Requested" on "All Statuses"

    Then cancel requests of location "Acute Assessment Unit - DPoW" if not cancelled
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify Black header shows up with patient name "HENTON, IAN (MR)"
    Then user verify Black header shows up with patient DOB "29-May-1986 (36y)"
    Then user verify Black header shows up with patient gender "Male"
    Then user verify Black header shows up with patient NHS Number "999 999 9999"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "All Tests" on popup
    Then wait for popup loading
#    Then verify pop-up "Select Investigations"
    Then verify Item "Specimen Type" with respect to status "Blood" is Exist "true"
    Then user inputs "D Dimer for exclusion of VTE" in the filter option
    Then user clicks on "D Dimer for exclusion of VTE" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then wait for popup loading
    Then user inputs "Clinical Details" with value "TST-891"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on "System" in menu bar section
    Then user clicks on "Requests"
    Then user lands on "Requests" page
    Then user lands on "Requests List" module
    Then wait for popup loading
    Then user verify detail " Parameters" exists "true"
    Then user verify detail "All Priorities" exists "true"
    Then user verify detail "All Risk Levels" exists "true"
    Then user verify detail "All Locations" exists "true"
    Then user verify detail "All Providing Organisations" exists "true"
    Then user verify detail "All Types" exists "true"
    Then user verify detail "All Statuses" exists "true"
    Then user verify table header with icon "gender-header" exists "true"
    Then user verify table header "Name" exists "true"
    Then user verify table header "Born" exists "true"
    Then user verify table header "NHS Number" exists "true"
    Then user verify table header "Specimen No." exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Requested" exists "true"
    Then user verify table header "Location" exists "true"
    Then user verify table header "Requesting Clinician" exists "true"
    Then user verify table header "Type" exists "true"
    Then user verify table header "Investigation" exists "true"
    Then user verify table header "Priority" exists "true"
    Then user verify table header "Infection Risk" exists "true"
    Then user clicks on "Acute Assessment Unit - DPoW" in the table
    Then user verify Black header shows up with patient name "HENTON, IAN"
    Then user verify Black header shows up with patient DOB "29-May-1986 (36y)"
    Then user verify Black header shows up with patient gender "Male"
    Then user verify Black header shows up with patient NHS Number "999 999 9999"

  @TST-893 @haiderejaz @e2eSprint @sprint9
  Scenario: Pathology Requesting V3 : Requests List - Verify Search Mode Selections
    Given user lands on "Systems" page
    Then user clicks on "Requests"
    Then user lands on "Requests" page
    Then user lands on "Requests List" module
    Then wait for popup loading
    Then user clicks on navigation search icon
#    Then user clicks on magnifying glass of section "Requests List"
    Then verify pop-up "Search Mode Select"
    Then user verify detail "All Requests" exists "true"
    Then user verify detail "Patient Based Search" exists "true"
    Then user clicks on "All Requests" on popup
    Then wait for popup loading
    Then verify the table is populated
    Then user clicks on navigation search icon
#    Then user clicks on magnifying glass of section "Requests List"
    Then verify pop-up "Search Mode Select"
    Then user verify detail "All Requests" exists "true"
    Then user verify detail "Patient Based Search" exists "true"
    Then user clicks on "Patient Based Search" on popup
    Then wait for popup loading
    Then verify pop-up "Patient Search"
    Then user verify detail "Patient Identifier" exists "true"
    Then user verify detail "Date of Birth & Surname" exists "true"
    Then user clicks on "Patient Identifier" on popup
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "4989446682"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify the table is populated
    Then user clicks on navigation search icon
#    Then user clicks on magnifying glass of section "Requests List"
    Then verify pop-up "Search Mode Select"
    Then user verify detail "All Requests" exists "true"
    Then user verify detail "Patient Based Search" exists "true"
    Then user clicks on "Patient Based Search" on popup
    Then wait for popup loading
    Then verify pop-up "Patient Search"
    Then user verify detail "Patient Identifier" exists "true"
    Then user verify detail "Date of Birth & Surname" exists "true"
    Then user clicks on "Date of Birth & Surname" on popup
#    Then verify pop-up "Date of Birth & Surname Search"
    Then user clicks on "Date of Birth" on popup
    Then user selects date "18" of "May" of "2014"
    Then user clicks on tick-checkbox
    Then user inputs "Surname" with value "IHRINGER"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on "422 056 7925" on popup
    Then wait for popup loading
    Then verify the table is populated

  @TST-894 @haiderejaz @e2eSprint @sprint9
  Scenario: Pathology Requesting V3 : Verify Requests summary panel
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module

    Then choose filter "Blood Science" on "All Types"
    Then choose filter "Requested" on "All Statuses"

    Then cancel requests of location "Acute Assessment Unit - DPoW" if not cancelled
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "All Tests" on popup
    Then wait for popup loading
#    Then verify pop-up "Select Investigations"
    Then verify Item "Specimen Type" with respect to status "Blood" is Exist "true"
    Then user inputs "D Dimer for exclusion of VTE" in the filter option
    Then user clicks on "D Dimer for exclusion of VTE" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then wait for popup loading
    Then user inputs "Clinical Details" with value "TST-894"
    Then user clicks on tick-checkbox

    Then user verify detail "Organisation" with value "Diana Princess of Wales Hospital"
    Then user verify detail "Location" with value "Acute Assessment Unit - DPoW"
    Then user verify detail "Clinician" with value "Abourawi, F"
    Then user verify detail "Investigations" with value "D Dimer for exclusion of VTE"
    Then user verify detail "Clinical Details" with value "TST-894"

    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-917 @haiderejaz @e2eSprint @sprint9
  Scenario: Pathology Requesting V3 : Creating New Request - Selecting Patient Category
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module

    Then choose filter "Blood Science" on "All Types"
    Then choose filter "Requested" on "All Statuses"

    Then cancel requests of location "Acute Assessment Unit - DPoW" if not cancelled
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "All Tests" on popup
    Then wait for popup loading
#    Then verify pop-up "Select Investigations"
    Then verify Item "Specimen Type" with respect to status "Blood" is Exist "true"
    Then user inputs "D Dimer for exclusion of VTE" in the filter option
    Then user clicks on "D Dimer for exclusion of VTE" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then wait for popup loading
    Then user inputs "Clinical Details" with value "TST-917"
    Then user clicks on the toggle button "Private Patient" to "true"
    Then user clicks on tick-checkbox

    Then user verify detail "Organisation" with value "Diana Princess of Wales Hospital"
    Then user verify detail "Location" with value "Acute Assessment Unit - DPoW"
    Then user verify detail "Clinician" with value "Abourawi, F"
    Then user verify detail "Investigations" with value "D Dimer for exclusion of VTE"
    Then user verify detail "Clinical Details" with value "TST-917"
    Then user verify detail "Private Patient" with value "Private"

    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-918 @haiderejaz @e2eSprint @sprint9 @refactor9
  Scenario: Pathology Requesting V3 : Request List - Verify Request List filter Options
    Given user lands on "Systems" page
    Then user clicks on "Requests"
    Then user lands on "Requests" page
    Then user lands on "Requests List" module
    Then wait for popup loading
    Then wait for popup loading
    Then user verify detail " Parameters" exists "true"
    Then user verify detail "All Priorities" exists "true"
    Then user verify detail "All Risk Levels" exists "true"
    Then user verify detail "All Locations" exists "true"
    Then user verify detail "All Providing Organisations" exists "true"
    Then user verify detail "All Types" exists "true"
    Then user verify detail "All Statuses" exists "true"
    Then choose filter "Blood Science" on "All Types"
    Then choose filter "Cancelled" on "All Statuses"
    Then wait for popup loading
    Then verify the table is populated
    Then verify value "Blood Science" is present in the table
    Then verify value "Cancelled" is present in the table

  @TST-921 @haiderejaz @e2eSprint @sprint9 @refactor9
  Scenario: Pathology Requesting V3 : Patient Requests - Verify Request Status
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module

    Then choose filter "Blood Science" on "All Types"
    Then choose filter "Requested" on "All Statuses"

    Then cancel requests of location "Acute Assessment Unit - DPoW" if not cancelled
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "All Tests" on popup
    Then wait for popup loading
#    Then verify pop-up "Select Investigations"
    Then verify Item "Specimen Type" with respect to status "Blood" is Exist "true"
    Then user inputs "D Dimer for exclusion of VTE" in the filter option
    Then user clicks on "D Dimer for exclusion of VTE" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then wait for popup loading
    Then user inputs "Clinical Details" with value "TST-921"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify the table is populated
    Then verify value "Requested" is present in the table

  @TST-926 @haiderejaz @e2eSprint @sprint9 @refactor9
  Scenario: Pathology Requesting V3 :  Patient Requests -  Verify questions and Guidance attached to selected Investigation
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module

    Then choose filter "Blood Science" on "All Types"
    Then choose filter "Requested" on "All Statuses"

    Then cancel requests of location "Acute Assessment Unit - DPoW" if not cancelled
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "Clinically Driven Requests" on popup
    Then wait for popup loading
    Then user inputs "Anaemia" in the filter option
    Then user clicks on "Anaemia" on popup
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Currently Selected Investigations"
    Then user verify detail "B12,Folate,Ferritin" exists "true"
    Then user verify detail "FBC" exists "true"
    Then user clicks on pop-up back icon
    Then user inputs "Clinical Details" with value "TST-926"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on "Acute Assessment Unit - DPoW" in the table
    Then user verify detail "Guidance" exists "true"
    Then user verify detail "Questions" exists "true"

  @TST-927 @haiderejaz @e2eSprint @sprint9
  Scenario: Pathology Requesting V3 : Verify Request Details Page
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then wait for popup loading
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "4989446682"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module

    Then choose filter "Blood Science" on "All Types"
    Then choose filter "Requested" on "All Statuses"

    Then cancel requests of location "Acute Assessment Unit - DPoW" if not cancelled
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "All Tests" on popup
    Then wait for popup loading
#    Then verify pop-up "Select Investigations"
    Then verify Item "Specimen Type" with respect to status "Blood" is Exist "true"
    Then user inputs "D Dimer for exclusion of VTE" in the filter option
    Then user clicks on "D Dimer for exclusion of VTE" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then wait for popup loading
    Then user inputs "Clinical Details" with value "TST-927"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on "Acute Assessment Unit - DPoW" in the table
    Then wait for popup loading
    Then verify pop-up "Request Details"
    Then user verify Black header shows up with patient name "North, Brendan Orson (MRS)"
    Then user verify Black header shows up with patient DOB "20-Sep-2000 (22y)"
    Then user verify Black header shows up with patient gender "Female"
    Then user verify Black header shows up with patient NHS Number "498 944 6682"
    Then wait for popup loading
    Then user verify detail "Status" with value "Requested"
    Then user verify detail "Requested By" with value "K Kualitatem"
    Then user verify detail "Requested On" exists "true"
    Then user verify detail "Clinician" with value "Abourawi, F"
    Then user verify detail "Location" with value "Acute Assessment Unit - DPoW"
    Then user verify detail "Clinical Details" with value "TST-927"
    Then user verify detail "Patient Comments" exists "true"
    Then user verify detail "Providing Trust" with value "Northern Lincolnshire & Goole"
    Then user verify detail "Providing Organisation" with value "Diana Princess of Wales Hospital"
    Then user verify detail "Investigations" exists "true"
    Then user verify detail "Investigation Codes" exists "true"
    Then user verify detail "Guidance" exists "true"
    Then user verify detail "Questions" exists "true"
    Then user verify detail "Priority" with value "Routine"
    Then user verify detail "Required Date" exists "true"
    Then user verify detail "Category" with value "NHS"
    Then user verify detail "Fasting Sample" exists "true"
    Then user verify detail "Patient Pregnant" exists "true"
    Then user verify detail "Infection Risk" exists "true"

  @TST-928 @haiderejaz @e2eSprint @sprint9
  Scenario: Pathology Requesting V3 : Patient Requests - Verify Patient Demographics
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module
    Then user verify Black header shows up with patient name "HENTON, IAN"
    Then user verify Black header shows up with patient DOB "29-May-1986 (36y)"
    Then user verify Black header shows up with patient gender "Male"
    Then user verify Black header shows up with patient NHS Number "999 999 9999"

  @TST-931 @haiderejaz @e2eSprint @sprint9
  Scenario: Pathology Requesting V3 : Reception Mode - Finding a Request
    Given user lands on "Systems" page
    Then user clicks on the option "Requests"
    Then user lands on "Requests" page
    Then user clicks on the option "Reception"
    Then wait for popup loading
    Then verify pop-up "Reception Mode"
    Then user inputs "Specimen No." with value "BG999978Z"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Request Details"
#    Then user verify detail "Status" with value "Requested"
    Then user verify admission information detail "Status" with value "Requested"
    Then user verify Black header shows up with patient name "Ingersol, Phyllis Nellie"
    Then user verify Black header shows up with patient DOB "15-Apr-1959 (63y)"
    Then user verify Black header shows up with patient gender "Male"
    Then user verify Black header shows up with patient NHS Number "606 765 2064"
    Then user verify detail "Investigations" exists "true"
    Then user verify detail "Investigation Codes" exists "true"
    Then user verify detail "Guidance" exists "true"
    Then user verify detail "Questions" exists "true"
    Then user verify detail "Required Date" exists "true"
    Then user verify detail "Category" with value "NHS"
    Then user verify detail "Fasting Sample" exists "true"

  @TST-933 @haiderejaz @e2eSprint @sprint9
  Scenario: Pathology Requesting V3 : Cancelling Requests
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
    Then user clicks on the action icon of "Patient Summary"
    Then user clicks on "Requests" on popup
    Then user lands on "Patient Requests" page
    Then user lands on "Requests List" module

    Then choose filter "Blood Science" on "All Types"
    Then choose filter "Requested" on "All Statuses"

    Then cancel requests of location "Acute Assessment Unit - DPoW" if not cancelled
    Then user clicks on the plus icon of "Requests List"
    Then wait for popup loading
#    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on "Blood Science" on popup
#    Then verify pop-up "Select Location"
    Then user inputs "Acute Assessment Unit - DPoW" in the filter option
    Then user clicks on "Acute Assessment Unit - DPoW" on popup
#    Then verify pop-up "Select Clinician"
    Then user inputs "Abourawi, F" in the filter option
    Then user clicks on "Abourawi, F" on popup
    Then wait for popup loading
#    Then verify pop-up "Create Blood Science Request"
    Then user clicks on "Investigations" on popup
#    Then verify pop-up "Investigation Type Select"
    Then user verify detail "Most Popular" exists "true"
    Then user verify detail "All Tests" exists "true"
    Then user verify detail "Clinically Driven Requests" exists "true"
    Then user clicks on "All Tests" on popup
    Then wait for popup loading
#    Then verify pop-up "Select Investigations"
    Then verify Item "Specimen Type" with respect to status "Blood" is Exist "true"
    Then user inputs "D Dimer for exclusion of VTE" in the filter option
    Then user clicks on "D Dimer for exclusion of VTE" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox if recent investigations popup appears
    Then wait for popup loading
    Then user inputs "Clinical Details" with value "TST-933"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
#    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on "Acute Assessment Unit - DPoW" in the table
    Then wait for popup loading
    Then verify pop-up "Request Details"
    Then user clicks on the action icon of "Request Details"
    Then user clicks on "Cancel" on popup
    Then verify "Confirm Cancellation" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Request Updated" after completing the form
    Then user clicks on "View Details" on popup
    Then wait for popup loading
    Then user verify admission information detail "Status" with value "Cancelled"

  @TST-943 @haiderejaz @e2eSprint @sprint9 @Bug:Create_property_details_summary
  Scenario: Pathology Requesting V3 : Configuration - Editing Questions & Guidance
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Requests"
    Then user lands on "Requests Administration" page
    Then verify module navigator "Global" exits
    Then verify module navigator "Blood Sciences" exits
    Then user lands on "Questions & Guidance" module
    Then user clicks on the plus icon
    Then verify pop-up "Create Question"
    Then user clicks on the action "Name"
    Then user enters "Question_TST-943_Name" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Property"
    Then verify pop-up "Property Search"
    Then user clicks on the action "Create Property"
    Then user input "Code" with value "Prop_TST-943_Code"
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Name"
    Then user enters "Prop_TST-943_Name" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Description"
    Then verify pop-up "Enter Description"
    Then user enters "Prop_TST-943_Description" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Type"
    Then verify pop-up "Select Property Type"
    Then user verify action "Date" is available
    Then user verify action "Datetime" is available
    Then user verify action "Selection" is available
    Then user verify action "Selection-Radio" is available
    Then user verify action "Text-Input" is available
    Then user verify action "Text-Input-Inline" is available
    Then user verify action "Time" is available
    Then user verify action "Yes-No-Inline" is available
    Then user verify action "Yes-No-Na-Inline" is available
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
    Then verify pop-up "Create Question"
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Question Summary"
    Then verify "Name" with value "Question_TST-943_Name" in the pop-up
    Then verify "Property" with value "Prop_TST-943_NameProp_TST-943_CodeText-Input-Inline" in the pop-up
    Then verify "Type" with value "Question" in the pop-up
    Then verify "Active" with value "Yes" in the pop-up
    Then verify "Created By" with value "K Kualitatem" in the pop-up
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on header "Updated On" on table
    Then verify the first row "Name" is "Question_TST-943_Name"
    Then verify the first row "Property" is "Prop_TST-943_Name"
    Then verify the first row "Type" is "Question"
    Then verify the first row "Status" is "Active"
#    Then verify the first row "Updated On" is current date
    Then verify the first row "Updated By" is "K Kualitatem"
    Then user clicks on "Question_TST-943_Name" in the table
    Then user clicks on the action icon of "Question Details"
    Then user clicks on "Edit" on popup
    Then user clicks on the action "Name"
    Then verify pop-up "Enter Text"
    Then user clears the text-area
    Then user enters "Question_TST-943_Name_Editted" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify "Name" with value "Question_TST-943_Name_Editted" in the pop-up
