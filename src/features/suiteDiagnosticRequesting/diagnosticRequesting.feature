@diagnosticRequest @diagnosticRequesting @e2e
Feature: To check the Diagnostic Requesting Functionality

  @TST-940 @haider @e2eSprint @sprint8
  Scenario: Radiology Requesting V3 : Creating New Request - Verify Request Options (Method of Arrival)
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
    Then user clicks on the action "Plain (CR)"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Select Examination Type"
    Then user clicks on the action "Limbs Lower"
    Then verify pop-up "Select Examination Area"
    Then user clicks on the action "Ankle Left"
    Then user clicks on tick-checkbox
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
    Then wait for 20 seconds
    Then user clicks on Table first row "Radiology"
    Then verify pop-up "Request Details"
    Then verify "Method Of Arrival" with value "Walking" in the pop-up

  @TST-941 @haider @e2eSprint @sprint8
  Scenario: Radiology Requesting V3 : Selecting Method of Arrival Options
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
    Then user clicks on the action "Plain (CR)"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Select Examination Type"
    Then user clicks on the action "Limbs Lower"
    Then verify pop-up "Select Examination Area"
    Then user clicks on the action "Ankle Left"
    Then user clicks on tick-checkbox
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
    Then user clicks on Table first row "Radiology"
    Then verify pop-up "Request Details"
    Then verify "Method Of Arrival" with value "Walking" in the pop-up

  @TST-942 @haider @e2eSprint @sprint8
  Scenario: Pathology Requesting V3 :  Configuration - Questions  and  Guidance
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
    Then filter item "All Names" with value "Prop_TST-942_Name"
    Then create a property with Code "Prop_TST-942_Code" Name "Prop_TST-942_Name" Desc "Prop_TST-942_Description" and Type "Text-Input-Inline" if not exist
    Then publish "Prop_TST-942_Name" if it is not published
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
    Then user enters "Question_TST-942_Name" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action "Property"
    Then verify pop-up "Property Search"
    Then user clicks on the action "Use Existing Property"
    Then verify pop-up "Existing Property Search"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then user inputs "Prop_TST-942_Name" in the filter option
    Then user clicks on "Prop_TST-942_Name" on popup with respect to "Published"
    Then wait for "3" seconds
    Then user clicks on tick-checkbox
#    Then user clicks on the action "Name"
#    Then verify pop-up "Enter Name"
#    Then user enters "Prop_TST-942_Name" in the text-area
#    Then user clicks on tick-checkbox
#    Then user clicks on the action "Description"
#    Then verify pop-up "Enter Description"
#    Then user enters "Prop_TST-942_Description" in the text-area
#    Then user clicks on tick-checkbox
#    Then user clicks on the action "Type"
#    Then verify pop-up "Select Property Type"
#    Then user verify action "Date" is available
#    Then user verify action "Datetime" is available
#    Then user verify action "Selection" is available
#    Then user verify action "Selection-Radio" is available
#    Then user verify action "Text-Input" is available
#    Then user verify action "Text-Input-Inline" is available
#    Then user verify action "Time" is available
#    Then user verify action "Yes-No-Inline" is available
#    Then user verify action "Yes-No-Na-Inline" is available
#    Then user clicks on the action "Text-Input-Inline"
#    Then user clicks on the action "Persistence"
#    Then verify pop-up "Select Persistence"
#    Then user clicks on the action "Always"
#    Then user clicks on the toggle button "Searchable" to "true"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Property Details Summary"
#    Then user clicks on tick-checkbox
#    Then verify "Success" after completing the form
#    Then user clicks on the action "Publish Property"
#    Then verify pop-up "Publish Property"
#    Then user clicks on tick-checkbox
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox
    Then verify pop-up "Create Question"
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Question Summary"
    Then verify "Name" with value "Question_TST-942_Name" in the pop-up
    Then verify "Property" with value "Prop_TST-942_NameProp_TST-942_CodeText-Input-Inline" in the pop-up
    Then verify "Type" with value "Question" in the pop-up
    Then verify "Active" with value "Yes" in the pop-up
    Then verify "Created By" with value "loginData|credentials.name" in the pop-up
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on header "Updated On" on table
    Then verify the first row "Name" is "Question_TST-942_Name"
    Then verify the first row "Property" is "Prop_TST-942_Name"
    Then verify the first row "Type" is "Question"
    Then verify the first row "Status" is "Active"
#    Then verify the first row "Updated On" is current date
    Then verify the first row "Updated By" is "loginData|credentials.name"

  @TST-945 @haider @e2eSprint @sprint7
  Scenario: Radiology Requesting V3 : Filtering Radiology Requests
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "diagnosticRequestData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the exact sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then create a radiology request with location "diagnosticRequestData|radiology.locationPascal" Clinician "diagnosticRequestData|radiology.clinician" Modality "Plain (CR)" Investigations "Limbs Lower" Examination Area "Ankle Left|Ankle Right" Provisional Diagnosis "Under Stress" Clinical Details "Under Review" Method of Arrival "Walking"
    Then user clicks on "Systems" in menu bar section
    Given user lands on "Systems" page
    Then user clicks on "Requests" card in Systems
    Then user lands on "Requests" page
    Then user click on module navigator "Review"
    Then user lands on "Requests List" module
    Then wait for 20 seconds
    Then verify the table is populated
    Then verify "gender" is displayed as the table header with no visual text
    Then verify "Name" is displayed as the table header
    Then verify "Born" is displayed as the table header
    Then verify "NHS Number" is displayed as the table header
    Then verify "Status" is displayed as the table header
    Then verify "Requested" is displayed as the table header
    Then verify "Location" is displayed as the table header
    Then verify "Requesting Clinician" is displayed as the table header
    Then verify "Type" is displayed as the table header
    Then verify "Investigation" is displayed as the table header
    Then verify "Priority" is displayed as the table header
#    Then verify "Required Date" is displayed as the table header
    Then verify "Infection Risk" is displayed as the table header
    Then verify "All Priorities" is displayed as the filter parameters
    Then verify "All Risk Levels" is displayed as the filter parameters
    Then verify "All Locations" is displayed as the filter parameters
    Then verify "All Providing Organisations" is displayed as the filter parameters
    Then verify "Requested" is displayed as the filter parameters
    Then verify "Radiology" is displayed as the filter parameters
    Then verify "All Investigations" is displayed as the filter parameters
    Then user clicks on filter Parameter
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Priority"
    Then verify pop-up "Select Priority"
    Then user clicks on the action "Routine"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Requested Date"
    Then verify pop-up "Select Requested Date"
    Then user clicks on the action "Select Current Date"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Infection Risk"
    Then verify pop-up "Select Infection Risk"
    Then user clicks on the action "No"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Status"
    Then verify pop-up "Select Status"
    Then user clicks on the action "Accepted"
#    Then user clicks on the action "Requested"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Location"
    Then verify pop-up "Select Locations"
    Then user clicks on the action "diagnosticRequestData|radiology.locationPascal"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Providing Organisation"
    Then verify pop-up "Select Organisation"
    Then user clicks on the action "Diana Princess of Wales Hospital"
#    Then user clicks on the action "Type"
#    Then verify pop-up "Select Type"
#    Then user clicks on the action "Radiology"
#    Then user clicks on tick-checkbox
#    Then user clicks on the action "Location"
#    Then verify pop-up "Select Locations"
#    Then user clicks on the action "diagnosticRequestData|radiology.location"
#    Then user clicks on tick-checkbox
    Then user clicks on the action "Modality"
    Then verify pop-up "Select Investigations"
    Then user clicks on the action "Plain (CR)"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify "Routine" is displayed as the filter parameters
    Then verify "Not Infection Risk" is displayed as the filter parameters
    Then verify "diagnosticRequestData|radiology.locationPascal" is displayed as the filter parameters
    Then verify "Diana Princess of Wales Hospital" is displayed as the filter parameters
#    Then verify "Requested" is displayed as the filter parameters
#    Then verify "Radiology" is displayed as the filter parameters
#    Then verify "Accepted" is displayed as the filter parameters
    Then verify "Radiology" is displayed as the filter parameters
    Then verify "2 Statuses" is displayed as the filter parameters
    Then verify "Plain (CR)" is displayed as the filter parameters
    Then verify the table is populated
    Then verify all the "Priority" are "Routine" as filtered result
    Then verify all the "Investigation" are "Plain (CR)" as filtered result
    Then verify all the "Status" are "Requested,Accepted" as filtered result
    Then verify all the "Location" are "diagnosticRequestData|radiology.locationPascal" as filtered result
    Then verify all the "Providing Organisation" are "Diana Princess of Wales Hospital" as filtered result
    Then verify all the "Infection Risk" are "No" as filtered result

#  @TST-946 @haider @e2eSprint @sprint8 @resetProfile
#  Scenario: Radiology Requesting V3: Restricting Radiology Requests per modality
#    Given user lands on "Systems" page
#    Then check if role "TST-946" exists and if not then create it
#    Then check if the current user has the role of "TST-946" and if not then change it
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "diagnosticRequestData|patientNHSNumber"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then user lands on "Patient Summary" page
#    Then user clicks on the action icon
#    Then user clicks on the exact sub-navigation in profile menu "Requests"
#    Then user lands on "Patient Requests" page
#    Then user clicks on the plus icon
#    Then verify pop-up "Create Diagnostic Request"
#    Then user clicks on the action "Radiology & Medical Physics"
#    Then verify pop-up "Select Location"
#    Then user clicks on the action "diagnosticRequestData|radiology.location"
#    Then verify pop-up "Select Clinician"
#    Then user clicks on the action "diagnosticRequestData|radiology.clinician"
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
#    Then user clicks on "TST-946" in the table
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
#    Then user clicks on the action "Radiology"
#    Then user verify action "CT" is available
#    Then user verify action "Clinical Neurophysiology" is available
#    Then user verify action "Fluoroscopy" is available
#    Then user verify action "Interventional/Misc" is available
#    Then user verify action "MRI" is available
#    Then user verify action "NLG CT Colon" is available
#    Then user verify action "Nuclear Medicine" is available
#    Then user verify action "Physiological Measurement" is available
#    Then user verify action "Plain (CR)" is available
#    Then user verify action "Ultrasound" is available
#    Then check "CT" role permissions to "left-click-inactive"
#    Then check "Clinical Neurophysiology" role permissions to "left-click-inactive"
#    Then check "Fluoroscopy" role permissions to "left-click-inactive"
#    Then check "Interventional/Misc" role permissions to "left-click-inactive"
#    Then check "MRI" role permissions to "left-click-inactive"
#    Then check "NLG CT Colon" role permissions to "left-click-inactive"
#    Then check "Nuclear Medicine" role permissions to "left-click-inactive"
#    Then check "Physiological Measurement" role permissions to "left-click-inactive"
#    Then check "Plain (CR)" role permissions to "left-click-inactive"
#    Then check "Ultrasound" role permissions to "left-click-inactive"
#    Then user clicks on pop-up back icon
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
#    Then user enters Patient Identifier Search "diagnosticRequestData|patientNHSNumber"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then user lands on "Patient Summary" page
#    Then user clicks on the action icon
#    Then user clicks on the exact sub-navigation in profile menu "Requests"
#    Then user lands on "Patient Requests" page
#    Then user clicks on the plus icon
#    Then verify pop-up "Create Diagnostic Request"
#    Then user clicks on the action "Radiology & Medical Physics"
#    Then verify pop-up "Select Location"
#    Then user clicks on the action "diagnosticRequestData|radiology.location"
#    Then verify pop-up "Select Clinician"
#    Then user clicks on the action "diagnosticRequestData|radiology.clinician"
#    Then verify pop-up "Create Radiology Request"
#    Then user clicks on the action "Modality"
#    Then verify pop-up "Select Modality"
#    Then verify "Nothing Here" is present in the pop-up table
##    Then user clicks on pop-up back icon
##    Then verify pop-up "Create Radiology Request"
##    Then user clicks on pop-up back icon
##    Then verify pop-up "Create Diagnostic Request"
##    Then user clicks on cross icon
##    Then user clicks on "Settings" in menu bar section
##    Then user lands on "Settings" page
##    Then user clicks on "Roles" icon
##    Then user lands on "Role Settings" page
##    Then user clicks on "WebV Admin" in the table
##    Then verify pop-up "Role Details"
##    Then user clicks on the action icon pop-up
##    Then verify pop-up "Menu"
##    Then user clicks on the action "Configure Permissions"
##    Then verify pop-up "Role Permissions"
##    Then check "Systems" role permissions to "left-click-active"
##    Then user clicks on tick-checkbox
##    Then verify "Success" after completing the form
##    Then user clicks on tick-checkbox

  @TST-947 @haider @e2eSprint @sprint8 @defectCantSelectTrust
  Scenario: Radiology Requesting V3 : Requesting to Another Site
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
    Then verify "Organisation" with value "Diana Princess of Wales Hospital" in the pop-up
    Then user clicks on the action "Organisation"
    Then user verify action "Community Services" is available
    Then user verify action "Diana Princess of Wales Hospital" is available
    Then user verify action "Goole and District Hospital" is available
    Then user verify action "North East Lincs Community Services" is available
    Then user verify action "North Lincs Community Services" is available
    Then user verify action "Scunthorpe General Hospital" is available
    Then user clicks on the action "Scunthorpe General Hospital"
    Then verify pop-up "Select Location"
    Then user clicks on the action "A&E"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abdulhadi, M"
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
    Then user input "Provisional Diagnosis" with value "Diagnosis"
    Then user input "Clinical Details" with value "Details"
    Then user clicks on the action "Method Of Arrival"
    Then verify pop-up "Select Arrival Method"
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
    Then verify "Providing Organisation" with value "Diana Princess of Wales Hospital" in the pop-up last
    Then verify "Organisation" with value "Scunthorpe General Hospital" in the pop-up last
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Radiology"
    Then verify pop-up "Request Details"
    Then verify "Providing Organisation" with value "Diana Princess of Wales Hospital" in the pop-up last
    Then verify "Providing Trust" with value "Northern Lincolnshire & Goole" in the pop-up last

  @TST-948 @haider @e2eSprint @sprint8
  Scenario: Radiology Requesting V3 : Investigations - Verify  multi select functionality
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
    Then user clicks on the action "Plain (CR)"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Select Examination Type"
    Then user clicks on the action "Limbs Lower"
    Then verify pop-up "Select Examination Area"
    Then user clicks on the action "Ankle Left"
    Then user clicks on the action "Ankle Right"
    Then user clicks on tick-checkbox
    Then user input "Provisional Diagnosis" with value "Diagnosis"
    Then user input "Clinical Details" with value "Details"
    Then user clicks on the action "Method Of Arrival"
    Then verify pop-up "Select Arrival Method"
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
    Then verify "Investigations" with value "Ankle LeftAnkle Right" in the pop-up last
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Radiology"
    Then verify pop-up "Request Details"
    Then verify "Investigations" with value "Limbs Lower - Ankle Left, Limbs Lower - Ankle Right" in the pop-up last

  @TST-949 @haider @e2eSprint @sprint8
  Scenario: Radiology Requesting V3 : Verify Investigation Information Summary
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
    Then user clicks on the action "Plain (CR)"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Select Examination Type"
    Then user clicks on the action "Limbs Lower"
    Then verify pop-up "Select Examination Area"
    Then user clicks on the action "Ankle Left"
    Then user clicks on the action "Ankle Right"
    Then user clicks on tick-checkbox
    Then verify "Investigations" with value "Ankle LeftAnkle Right" in the pop-up last
    Then user clicks on the action "Investigations"
    Then verify pop-up "Currently Selected Investigations"
    Then user click on minus button of label "Limbs Lower"
    Then user clicks on the action "Limbs Lower"
    Then verify pop-up "Select Examination Area"
    Then user clicks on the action "Foot Left"
    Then user clicks on the action "Foot Right"
    Then user clicks on tick-checkbox
    Then user input "Provisional Diagnosis" with value "Diagnosis"
    Then user input "Clinical Details" with value "Details"
    Then user clicks on the action "Method Of Arrival"
    Then verify pop-up "Select Arrival Method"
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
    Then verify "Investigations" with value "Foot LeftFoot Right" in the pop-up last
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Radiology"
    Then verify pop-up "Request Details"
    Then verify "Investigations" with value "Limbs Lower - Foot Left, Limbs Lower - Foot Right" in the pop-up last

  @TST-950 @haider @e2eSprint @sprint8 @noData
  Scenario: Radiology Requesting V3 : Cancelling Radiology Requests
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "diagnosticRequestData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the exact sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then create a radiology request with location "diagnosticRequestData|radiology.location" Clinician "diagnosticRequestData|radiology.clinician" Modality "Plain (CR)" Investigations "Limbs Lower" Examination Area "Ankle Left|Ankle Right" Provisional Diagnosis "Under Stress" Clinical Details "Under Review" Method of Arrival "Walking"
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then user clicks on "Requests" card in Systems
    Then user lands on "Requests" page
    Then user click on module navigator "Review"
    Then user lands on "Requests List" module
    Then verify the table is populated
    Then user clicks on the latest row meatballs icon
    Then verify pop-up "Request Details"
    Then verify "Status" with value "Requested" in the pop-up
    Then user clicks on the action icon pop-up
    Then verify pop-up "Request Actions"
    Then user clicks on the action "Cancel"
    Then verify pop-up "Cancel Request"
    Then user verify action "Incorrect Patient Referred" is available
    Then user verify action "No Longer Required" is available
    Then user clicks on the action "No Longer Required"
    Then verify "Confirm cancellation" is present in the pop-up table
    Then user clicks on tick-checkbox
    Then verify "Request Updated" after completing the form
    Then user clicks on the action "View Details"
    Then verify pop-up "Request Details"
    Then verify "Status" with value "Cancelled" in the pop-up
    Then user clicks on cross icon
#    Then reload page
#    Then verify the first row "Status" is "Cancelled"

  @TST-951 @haider @e2eSprint @sprint8
  Scenario: Radiology Requesting V3 :  Rejecting  Requests
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "diagnosticRequestData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the exact sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then create a radiology request with location "diagnosticRequestData|radiology.location" Clinician "diagnosticRequestData|radiology.clinician" Modality "Plain (CR)" Investigations "Limbs Lower" Examination Area "Ankle Left|Ankle Right" Provisional Diagnosis "Under Stress" Clinical Details "Under Review" Method of Arrival "Walking"
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then user clicks on "Requests" card in Systems
    Then user lands on "Requests" page
    Then user click on module navigator "Review"
    Then user lands on "Requests List" module
    Then verify the table is populated
    Then check the latest checkbox of patient NHS "diagnosticRequestData|patientNHSNumberVerify" to "active"
    Then user clicks on the action icon
    Then verify pop-up "Review Mode Actions"
    Then user clicks on the action "Reject"
    Then verify "Confirm Reject Requests" is present in the pop-up table
    Then user inputs "Rejection Message" with value "TST-951"
    Then user clicks on tick-checkbox
    Then verify "Request Updated" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on filter parameter "Requested"
    Then verify pop-up "Select Status"
    Then user clicks on the action "Rejected"
    Then user clicks on the tick-checkbox
    Then user clicks on header "Requested" on table
    Then user clicks on the latest row meatballs icon
    Then verify pop-up "Request Details"
    Then verify "Status" with value "Rejected" in the pop-up
    Then user clicks on cross icon
    Then verify the first row "Status" is "Rejected"

  @TST-952 @haider @e2eSprint @sprint8 @patientPregnantBug
  Scenario: Radiology Requesting V3 : Additional Details
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "eObservationsData|patientNHSNumber"
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
    Then user verify action "Priority" is available
    Then user verify action "Method of Arrival" is available
    Then user verify action "Providing Organisation" is available
    Then user verify action "Infection Risk" is available
    Then user verify action "Private Patient" is available
    Then user verify action "Patient Pregnant" is unavailable
    Then user verify action "Last Menstrual Period" is unavailable
    Then user clicks on pop-up back icon
    Then user clicks on cross icon
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "diagnosticRequestData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then reload page
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
    Then verify "Organisation" with value "Diana Princess of Wales Hospital" in the pop-up
    Then user clicks on the action "Organisation"
    Then user verify action "Community Services" is available
    Then user verify action "Diana Princess of Wales Hospital" is available
    Then user verify action "Goole and District Hospital" is available
    Then user verify action "North East Lincs Community Services" is available
    Then user verify action "North Lincs Community Services" is available
    Then user verify action "Scunthorpe General Hospital" is available
    Then user clicks on the action "Scunthorpe General Hospital"
    Then verify pop-up "Select Location"
    Then user clicks on the action "A&E"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abdulhadi, M"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Modality"
    Then verify pop-up "Select Modality"
    Then user clicks on the action "CT"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Select Examination Type"
    Then user clicks on the action "Limbs Lower"
    Then verify pop-up "Select Examination Area"
    Then user clicks on the action "Ankle Left"
    Then user clicks on tick-checkbox
    Then user input "Provisional Diagnosis" with value "Diagnosis"
    Then user input "Clinical Details" with value "Details"
    Then user clicks on the action "Method Of Arrival"
    Then verify pop-up "Select Arrival Method"
    Then user clicks on the action "Chair"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the toggle button "Patient Pregnant" to "true"
    Then user clicks on the toggle button "Private Patient" to "true"
    Then user clicks on the toggle button "Infection Risk" to "true"
    Then user clicks on the action "Last Menstrual Period"
    Then verify pop-up "Select Last Menstrual Period"
    Then user selects date "1" of "January" of "2022"
    Then user clicks on the tick-checkbox
    Then verify pop-up warning "The selected last menstrual period is over 28 days ago. Please provide additional comments below."
    Then user input "Last Menstrual Period Comments" with value "LMP Comments"
    Then user clicks on tick-checkbox
    Then verify pop-up "Questions"
    Then set the yes-no of header "Does the patient have any acute heart conditions?" to "Yes"
    Then set the yes-no of header "Is the patient on metformin or other similar drugs?" to "Yes"
    Then set the yes-no of header "Does the patient have asthma?" to "Yes"
    Then set the yes-no of header "Do you know if the patient has any known communicable infection risks?" to "Yes"
    Then set the yes-no of header "Do you know if the patient has any renal impairment?" to "Yes"
    Then set the yes-no of header "Patients may receive IV contrast media-are you aware of contraindications including allergies or NSF/NFD in patients with renal impairment?" to "Yes"
    Then set the yes-no of header "If the patient is pregnant, have you discussed the risks versus benefits with the patient?" to "Yes"
    Then verify "Providing Organisation" with value "Diana Princess of Wales Hospital" in the pop-up
    Then user clicks on the question "Please select all items in the list that apply to the patient. If none apply"
    Then verify pop-up "Select A Value"
    Then user clicks on the action "None"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Questions"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Radiology Request Summary"
    Then verify "Patient Pregnant" with value "Yes" in the pop-up last
    Then verify "Private Patient" with value "Private" in the pop-up last
    Then verify "Infection Risk" with value "Yes" in the pop-up last
    Then verify "Last Menstrual Period" with value "01-Jan-2022" in the pop-up last
    Then verify "Last Menstrual Period Comments" with value "LMP Comments" in the pop-up last
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then reload page
    Then user clicks on Table first row "Radiology"
    Then verify pop-up "Request Details"
    Then verify "Patient Pregnant" with value "Yes" in the pop-up last
    Then verify "Private Patient" with value "Private" in the pop-up last
    Then verify "Infection Risk" with value "Yes" in the pop-up last
    Then verify "Last Menstrual Period" with value "01-Jan-2022" in the pop-up last
    Then verify "Last Menstrual Period Comments" with value "LMP Comments" in the pop-up last
    Then user clicks on cross icon
    Then user clicks on the plus icon
    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on the action "Radiology & Medical Physics"
    Then verify pop-up "Select Location"
    Then user clicks on the action "diagnosticRequestData|radiology.location"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "diagnosticRequestData|radiology.clinician"
    Then verify pop-up "Create Radiology Request"
    Then verify "Organisation" with value "Diana Princess of Wales Hospital" in the pop-up last
    Then user clicks on the action "Organisation"
    Then user verify action "Community Services" is available
    Then user verify action "Diana Princess of Wales Hospital" is available
    Then user verify action "Goole and District Hospital" is available
    Then user verify action "North East Lincs Community Services" is available
    Then user verify action "North Lincs Community Services" is available
    Then user verify action "Scunthorpe General Hospital" is available
    Then user clicks on the action "Scunthorpe General Hospital"
    Then verify pop-up "Select Location"
    Then user clicks on the action "A&E"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "Abdulhadi, M"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Modality"
    Then verify pop-up "Select Modality"
    Then user clicks on the action "CT"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Select Examination Type"
    Then user clicks on the action "Limbs Lower"
    Then verify pop-up "Select Examination Area"
    Then user clicks on the action "Ankle Left"
    Then user clicks on tick-checkbox
    Then user input "Provisional Diagnosis" with value "Diagnosis"
    Then user input "Clinical Details" with value "Details"
    Then user clicks on the action "Method Of Arrival"
    Then verify pop-up "Select Arrival Method"
    Then user clicks on the action "Chair"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the toggle button "Patient Pregnant" to "true"
    Then user clicks on the toggle button "Private Patient" to "true"
    Then user clicks on the toggle button "Infection Risk" to "true"
    Then user clicks on tick-checkbox
    Then verify pop-up "Questions"
    Then set the yes-no of header "Does the patient have any acute heart conditions?" to "Yes"
    Then set the yes-no of header "Is the patient on metformin or other similar drugs?" to "Yes"
    Then set the yes-no of header "Does the patient have asthma?" to "Yes"
    Then set the yes-no of header "Do you know if the patient has any known communicable infection risks?" to "Yes"
    Then set the yes-no of header "Do you know if the patient has any renal impairment?" to "Yes"
    Then set the yes-no of header "Patients may receive IV contrast media-are you aware of contraindications including allergies or NSF/NFD in patients with renal impairment?" to "Yes"
    Then set the yes-no of header "If the patient is pregnant, have you discussed the risks versus benefits with the patient?" to "Yes"
    Then verify "Providing Organisation" with value "Diana Princess of Wales Hospital" in the pop-up
    Then user clicks on the question "Please select all items in the list that apply to the patient. If none apply"
    Then verify pop-up "Select A Value"
    Then user clicks on the action "None"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Questions"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Radiology Request Summary"
    Then verify "Patient Pregnant" with value "Yes" in the pop-up last
    Then verify "Private Patient" with value "Private" in the pop-up last
    Then verify "Infection Risk" with value "Yes" in the pop-up last
    Then user verify action "Last Menstrual Period" is unavailable
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Radiology"
    Then verify pop-up "Request Details"
    Then verify "Patient Pregnant" with value "Yes" in the pop-up last
    Then verify "Private Patient" with value "Private" in the pop-up last
    Then verify "Infection Risk" with value "Yes" in the pop-up last
    Then verify "Last Menstrual Period" with value "Invalid Date" in the pop-up last
    Then verify "Last Menstrual Period Comments" with value "Not Known" in the pop-up last

  @TST-958 @haider @e2eSprint @sprint8
  Scenario: Pathology Requesting V3 : Configuration - Create new Investigation
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Requests"
    Then user lands on "Requests Administration" page
    Then user click on module navigator "Blood Sciences"
    Then user lands on "Blood Sciences" module
    Then create an investigation with code "Investigation_TST-958_Code2" Name "Investigation_TST-958_Name2" Display "Investigation_TST-958_Display2" Specimen "Blood" Providing Trust "Northern Lincolnshire & Goole" Loopback days "15" receptacles "Black" Questions and Guidance "Do you know if the patient has any known communicable infection risks?" Trusts "Northern Lincolnshire & Goole"
    Then user clicks on the plus icon
    Then user verify action "Clinically Driven RequestConfigure a complaint-based clinically driven request, including specialty and required tests" is available
    Then user verify action "InvestigationConfigure a profile to be used within clinically driven requests" is available
    Then user clicks on the action "Investigation"
    Then verify pop-up "Create Investigation"
    Then user inputs "Code" with random value
#    Then user input "Code" with value "Investigation_TST-958_Code"
    Then user input "Name" with value "Investigation_TST-958_Name"
    Then user input "Display" with value "Investigation_TST-958_Display_1"
    Then user clicks on the action "Specimen"
    Then verify pop-up "Select Specimen"
    Then user clicks on the action "Blood"
    Then verify pop-up "Create Investigation"
    Then user clicks on the action "Providing Trust"
    Then verify pop-up "Select Trust"
    Then user clicks on the action "Northern Lincolnshire & Goole"
    Then verify pop-up "Create Investigation"
    Then user clicks on the action "Linked Profiles"
    Then verify pop-up "Select Investigations"
    Then user clicks on the action "Investigation_TST-958_Display2"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Create Investigation"
    Then user input "Lookback Days" with value "15"
    Then user clicks on the action "Receptacles"
    Then verify pop-up "Select Receptacles"
    Then user clicks on the action "Black"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Currently Selected Receptacles"
    Then user clicks on pop-up back icon
    Then verify pop-up "Create Investigation"
    Then user clicks on the action "Questions and Guidance"
    Then verify pop-up "Select Questions & Guidance"
    Then user clicks on the action "Do you know if the patient has any known communicable infection risks?"
    Then user clicks on the tick-checkbox
    Then user clicks on the action "Trusts"
    Then verify pop-up "Select Trusts"
    Then user clicks on the action "Northern Lincolnshire & Goole"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Create Investigation"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Summary"
    Then verify "Code" with random value in the pop-up
#    Then verify "Code" with value "Investigation_TST-958_Code" in the pop-up
    Then verify "Name" with value "Investigation_TST-958_Name" in the pop-up
    Then verify "Display" with value "Investigation_TST-958_Display_1" in the pop-up
    Then verify "Specimen" with value "Blood" in the pop-up
    Then verify "Providing Trust" with value "Northern Lincolnshire & Goole" in the pop-up
    Then verify "Linked Profiles" with value "Investigation_TST-958_Display2" in the pop-up
    Then verify "Lookback Days" with value "15" in the pop-up
    Then verify "Questions & Guidance" with value "Do you know if the patient has any known communicable infection risks?" in the pop-up
    Then verify "Trusts" with value "Northern Lincolnshire & Goole" in the pop-up
    Then user clicks on the tick-checkbox
    Then check if investigation pop-up appears because an investigation like it already exists
    Then user able to click on Parameter filter
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Name"
    Then verify pop-up "Select Name"
    Then user inputs "Investigation_TST-958_Display_1" in the filter option
    Then user clicks on the action "Investigation_TST-958_Display_1"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
#    Then filter item "All Names" with value "Investigation_TST-958_Display_1"
#    Then user filter item "All Names" with value "Investigation_TST-958_Display"
    Then user clicks on the last "Investigation_TST-958_Name" in the table
    Then verify pop-up "Investigation Details"
#    Then verify "Code" with value "Investigation_TST-958_Code" in the pop-up
    Then verify "Code" with random value in the pop-up
    Then verify "Name" with value "Investigation_TST-958_Name" in the pop-up details
    Then verify "Display Name" with value "Investigation_TST-958_Display_1" in the pop-up
    Then verify "Specimen" with value "Blood" in the pop-up
    Then verify "Providing Trust" with value "Northern Lincolnshire & Goole" in the pop-up
    Then verify "Linked Profiles" with value "Investigation_TST-958_Display2" in the pop-up
    Then verify "Lookback Days" with value "15" in the pop-up
    Then verify "Questions and Guidance" with value "Do you know if the patient has any known communicable infection risks?" in the pop-up
    Then verify "Trusts" with value "Northern Lincolnshire & Goole" in the pop-up
    Then verify "Active" with value "Active" in the pop-up
#    Then user clicks on cross icon

  @TST-959 @haider @e2eSprint @sprint8
  Scenario: Pathology Requesting V3 : Configuration - Create new Investigation
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "diagnosticRequestData|patientNHSNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on the action icon
    Then user clicks on the exact sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then create a radiology request with location "diagnosticRequestData|radiology.locationPascal" Clinician "diagnosticRequestData|radiology.clinician" Modality "Plain (CR)" Investigations "Limbs Lower" Examination Area "Ankle Left" Provisional Diagnosis "Under Stress" Clinical Details "Under Review" Method of Arrival "Chair"
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then user clicks on "Requests" card in Systems
    Then user lands on "Requests" page
    Then user click on module navigator "Review"
    Then user lands on "Requests List" module
    Then verify the table is populated
    Then user clicks on filter Parameter
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Requested Date"
    Then verify pop-up "Select Requested Date"
    Then user clicks on the action "Select Current Date"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then wait for 20 seconds
    Then verify the table is populated
#    Then user clicks on header "Requested" on table
#    Then user clicks on header "Requested" on table
    Then verify table header "Requested" date column with current date exists
    Then verify "gender-header" is displayed as the table header with no visual text
    Then verify "Name" is displayed as the table header
    Then verify "Born" is displayed as the table header
    Then verify "NHS Number" is displayed as the table header
    Then verify "Specimen No." is displayed as the table header
    Then verify "Status" is displayed as the table header
    Then verify "Requested" is displayed as the table header
    Then verify "Location" is displayed as the table header
    Then verify "Requesting Clinician" is displayed as the table header
    Then verify "Type" is displayed as the table header
    Then verify "Investigation" is displayed as the table header
    Then verify "Priority" is displayed as the table header
    Then verify "Infection Risk" is displayed as the table header
    Then user clicks on the meatball option of the last row
    Then verify pop-up "Request Details"
    Then verify pop-up patients demographics exist
    Then verify "Order Number" with value "Not Known" in the pop-up
    Then verify "Status" with value "Requested" in the pop-up
    Then verify "Requested By" with value "loginData|credentials.name" in the pop-up
#    Then verify "Requested On" with value "loginData|credentials.name" in the pop-up
    Then verify "Clinician" with value "diagnosticRequestData|radiology.clinician" in the pop-up
    Then verify "Location" with value "diagnosticRequestData|radiology.locationPascal" in the pop-up
    Then verify "Clinical Details" with value "Under Review" in the pop-up
    Then verify "Provisional Diagnosis" with value "Under Stress" in the pop-up
    Then verify "Patient Comments" with value "Not Known" in the pop-up
    Then verify "Providing Trust" with value "Northern Lincolnshire & Goole" in the pop-up
    Then verify "Providing Organisation" with value "Diana Princess of Wales Hospital" in the pop-up
    Then verify "Patient Weight (Kg)" with value "Not Known" in the pop-up
    Then verify "Investigations" with value "Limbs Lower - Ankle Left" in the pop-up
    Then verify "Investigation Codes" with value "XANKL" in the pop-up
    Then verify "Priority" with value "Routine" in the pop-up
    Then verify "Required Date" with value "Not Applicable" in the pop-up
    Then verify "Method Of Arrival" with value "Chair" in the pop-up
    Then verify "Category" with value "NHS" in the pop-up
    Then verify "Infection Risk" with value "No" in the pop-up

  @TST-963 @haider @e2eSprint @sprint8
  Scenario: Pathology Requesting V3 : Configuration - Create new Investigation
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "3333333333"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for the page to load
    Then user clicks on the action icon
    Then user clicks on the exact sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then create a radiology request with location "diagnosticRequestData|radiology.location" Clinician "diagnosticRequestData|radiology.clinician" Modality "Plain (CR)" Investigations "Limbs Lower" Examination Area "Ankle Left|Ankle Right" Provisional Diagnosis "Under Stress" Clinical Details "Under Review" Method of Arrival "Walking"
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "5555555555"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for the page to load
    Then user clicks on the action icon
    Then user clicks on the exact sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then create a radiology request with location "diagnosticRequestData|radiology.location" Clinician "diagnosticRequestData|radiology.clinician" Modality "Plain (CR)" Investigations "Limbs Lower" Examination Area "Ankle Left|Ankle Right" Provisional Diagnosis "Under Stress" Clinical Details "Under Review" Method of Arrival "Walking"
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "1111111111"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for the page to load
    Then user clicks on the action icon
    Then user clicks on the exact sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then create a radiology request with location "diagnosticRequestData|radiology.location" Clinician "diagnosticRequestData|radiology.clinician" Modality "Plain (CR)" Investigations "Limbs Lower" Examination Area "Ankle Left|Ankle Right" Provisional Diagnosis "Under Stress" Clinical Details "Under Review" Method of Arrival "Walking"
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "2222222222"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then wait for the page to load
    Then user clicks on the action icon
    Then user clicks on the exact sub-navigation in profile menu "Requests"
    Then user lands on "Patient Requests" page
    Then create a radiology request with location "diagnosticRequestData|radiology.location" Clinician "diagnosticRequestData|radiology.clinician" Modality "Plain (CR)" Investigations "Limbs Lower" Examination Area "Ankle Left|Ankle Right" Provisional Diagnosis "Under Stress" Clinical Details "Under Review" Method of Arrival "Walking"
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then user clicks on "Requests" card in Systems
    Then user lands on "Requests" page
    Then user click on module navigator "Review"
    Then user lands on "Requests List" module
    Then user clicks on filter Parameter
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Requested Date"
    Then verify pop-up "Select Requested Date"
    Then user clicks on the action "Select Current Date"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then wait for 20 seconds
    Then verify the table is populated
    Then verify "gender-header" is displayed as the table header with no visual text
    Then verify "Name" is displayed as the table header
    Then verify "Born" is displayed as the table header
    Then verify "NHS Number" is displayed as the table header
    Then verify "Specimen No." is displayed as the table header
    Then verify "Status" is displayed as the table header
    Then verify "Requested" is displayed as the table header
    Then verify "Location" is displayed as the table header
    Then verify "Requesting Clinician" is displayed as the table header
    Then verify "Type" is displayed as the table header
    Then verify "Investigation" is displayed as the table header
    Then verify "Priority" is displayed as the table header
    Then verify "Infection Risk" is displayed as the table header
    Then verify table header "Requested" date column with current date exists
    Then check the latest checkbox of patient NHS "333 333 3333" to "active"
    Then check the latest checkbox of patient NHS "555 555 5555" to "active"
    Then user clicks on the action icon
    Then user verify action "Accept" is available
    Then user verify action "Reject" is available
    Then user verify action "Print" is available
    Then user clicks on the action "Accept"
    Then verify pop-up "Review Mode Accept"
    Then verify "Confirm Accept Requests" after completing the form
    Then verify "Please confirm that you are accepting 2 requests, click the top right tick to confirm this." after completing the form description
    Then user clicks on the tick-checkbox
    Then verify "Request Updated" after completing the form
    Then user clicks on the tick-checkbox
    Then check the latest checkbox of patient NHS "111 111 1111" to "active"
    Then check the latest checkbox of patient NHS "222 222 2222" to "active"
    Then user clicks on the action icon
    Then user clicks on the action "Reject"
    Then verify pop-up "Review Mode Reject"
    Then verify "Confirm Reject Requests" after completing the form
    Then verify "Please enter additional comments in the field below, and click the top right tick to reject these 2 requests." after completing the form description
    Then user inputs "Rejection Message" with value "TST-963"
    Then user clicks on the tick-checkbox
    Then verify "Request Updated" after completing the form
    Then user clicks on the tick-checkbox
    Then user clicks on filter parameter "Requested"
    Then user clicks on the action "Requested"
    Then user clicks on the action "Accepted"
    Then user clicks on the tick-checkbox
    Then verify table header "Requested" date column with current date exists
    Then verify value "333 333 3333" is present in the table
    Then verify value "555 555 5555" is present in the table
    Then verify all the "Status" are "Accepted" as filtered result
    Then user clicks on filter parameter "Accepted"
    Then user clicks on the action "Accepted"
    Then user clicks on the action "Rejected"
    Then user clicks on the tick-checkbox
    Then verify table header "Requested" date column with current date exists
    Then verify value "111 111 1111" is present in the table
    Then verify value "222 222 2222" is present in the table
    Then verify all the "Status" are "Rejected" as filtered result

  @TST-964 @safi @e2eSprint @sprint8 @refactorSp18
  Scenario: Radiology Requesting V3 - Review Mode - Enable Review Mode Actions
    Given user lands on "Systems" page
    Then user clicks on "Requests" card in Systems
    Then user lands on "Requests" page
    Then user click on module navigator "Review"
    Then user lands on "Requests List" module
#    Then user clicks on filter Parameter
#    Then verify pop-up "Table Parameters"
#    Then user clicks on the action "Requested Date"
#    Then verify pop-up "Select Requested Date"
#    Then user clicks on the action "Select Current Date"
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
#    Then verify table header "Requested" date column with current date exists
    Then verify "Name" is displayed as the table header
    Then verify "Born" is displayed as the table header
    Then verify "NHS Number" is displayed as the table header
    Then verify "Specimen No." is displayed as the table header
    Then verify "Status" is displayed as the table header
    Then verify "Requested" is displayed as the table header
    Then verify "Location" is displayed as the table header
    Then verify "Requesting Clinician" is displayed as the table header
    Then verify "Type" is displayed as the table header
    Then verify "Investigation" is displayed as the table header
    Then verify "Priority" is displayed as the table header
    Then verify "Infection Risk" is displayed as the table header
    Then check the latest checkbox of patient NHS "718 680 7690" to "active"
    Then user clicks on the action icon
    Then user verify action "Accept" is available
    Then user verify action "Reject" is available
    Then user verify action "Print" is available
    Then user clicks on the action "Accept"
    Then verify pop-up "Review Mode Accept"
    Then verify "Confirm Accept Requests" after completing the form
    Then user clicks on the tick-checkbox
    Then verify "Request Updated" after completing the form
    Then user clicks on the tick-checkbox
    Then check the latest checkbox of patient NHS "718 680 7690" to "active"
    Then user clicks on the action icon
    Then user verify action "Accept" is available
    Then user verify action "Reject" is available
    Then user verify action "Print" is available
    Then user clicks on the action "Reject"
    Then verify pop-up "Review Mode Reject"
    Then verify "Confirm Reject Requests" after completing the form
    Then verify "Please enter additional comments in the field below, and click the top right tick to reject these 1 requests." after completing the form description
    Then user inputs "Rejection Message" with value "TST-964"
    Then user clicks on the tick-checkbox
    Then verify "Request Updated" after completing the form
    Then user clicks on the tick-checkbox
    Then check the latest checkbox of patient NHS "718 680 7690" to "active"
    Then user clicks on the action icon
    Then user verify action "Accept" is available
    Then user verify action "Reject" is available
    Then user verify action "Print" is available
    Then user clicks on the action "Print"
    Then user verify "Printing Error" popUp is displayed
    Then user clicks on pop-up back icon

  @TST-984 @safi @e2eSprint @sprint8 @refactorSp18
  Scenario: Radiology Requesting V3 - Creating New Request - Verify Priority options
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "8888888888"
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
    Then user clicks on the action "Fluoroscopy"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Select Examination Type"
    Then user clicks on the action "General"
    Then verify pop-up "Select Examination Area"
    Then user clicks on the action "Fistulogram"
    Then user clicks on tick-checkbox
    Then user input "Provisional Diagnosis" with value "Diagnosis"
    Then user input "Clinical Details" with value "Details"
    Then wait for 10 seconds
    Then user clicks on the action "Method Of Arrival"
    Then verify pop-up "Select Arrival Method"
    Then user clicks on the action "Walking"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on tick-checkbox
    Then verify pop-up "Questions"
    Then set the yes-no of header "Do you know if the patient has any known communicable infection risks?" to "Yes"
    Then set the yes-no of header "Do you know if the patient has any renal impairment?" to "Yes"
    Then set the yes-no of header "Patients may receive IV contrast media-are you aware of contraindications including allergies or NSF/NFD in patients with renal impairment?" to "Yes"
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
    Then user clicks on "Systems" in menu bar section
    Then user lands on "Systems" page
    Then user clicks on "Requests" card in Systems
    Then user lands on "Requests" page
    Then user click on module navigator "Review"
    Then user lands on "Requests List" module
    Then verify the table is populated
    Then user clicks on header "Requested" on table
    Then user clicks on header "Requested" on table
 #   Then user clicks on filter Parameter
#    Then verify pop-up "Table Parameters"
#    Then user clicks on the action "Requested Date"
#    Then verify pop-up "Select Requested Date"
#    Then user clicks on the action "Select Current Date"
#    Then user clicks on tick-checkbox
#    Then user clicks on tick-checkbox
  #  Then verify table header "Requested" date column with current date exists
    Then verify "gender-header" is displayed as the table header with no visual text

  @TST-988 @safi @e2eSprint @sprint8
  Scenario: Radiology Requesting V3 : Creating New Radiology Requests - LMP & Additional Details
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "8888888888"
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
    Then user verify action "Priority" is available
    Then user verify action "Method of Arrival" is available
    Then user verify action "Providing Organisation" is available
    Then user verify action "Infection Risk" is available
    Then user verify action "Private Patient" is available
    Then user verify action "Patient Pregnant" is unavailable
    Then user verify action "Last Menstrual Period" is unavailable
    Then user clicks on pop-up back icon
    Then user clicks on cross icon

  @TST-985 @safi @e2eSprint @sprint8 @refactorSp18
  Scenario: Pathology Requesting V3 - Reception Mode - Printing Microbiology Labels
    Given user lands on "Systems" page
    Then user clicks on "Requests" card in Systems
    Then user lands on "Requests" page
    Then user click on module navigator "Reception"
    Then user lands on "Requests List" module
    Then user clicks on cross icon
    Then user click on module navigator "Review"
    Then user lands on "Requests List" module
    Then user clicks on filter Parameter
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Requested Date"
    Then verify pop-up "Select Requested Date"
    Then user clicks on the action "Select Current Date"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify table header "Requested" date column with current date exists

  @TST-967 @safi @e2eSprint @sprint8
  Scenario: Pathology Requesting V3 - Requesting future Tests (When Printing)
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then user enters Patient Identifier Search "8888888888"
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
    Then user verify action "Priority" is available
    Then user clicks on pop-up back icon
    Then user clicks on cross icon

  @TST-944 @haider @e2eSprint @sprint9 @bug:whenAddingSecondReceptableOfDifferentColorFirstReceptableValueIsOverwritten
  Scenario: Pathology Requesting V3 : Configuration  - Receptacles
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Requests"
    Then user lands on "Requests Administration" page
    Then user click on module navigator "Blood Sciences"
    Then user lands on "Blood Sciences" module
    Then user click on module navigator "Profiles"
    Then verify the table is populated
    Then user clicks on the plus icon
    Then user verify action "Clinically Driven RequestConfigure a complaint-based clinically driven request, including specialty and required tests" is available
    Then user verify action "InvestigationConfigure a profile to be used within clinically driven requests" is available
    Then user clicks on the action "Investigation"
    Then verify pop-up "Create Investigation"
    Then user inputs "Code" with random value
#    Then user input "Code" with value "Investigation_TST-958_Code"
    Then user input "Name" with value "Investigation_TST-944_Name"
    Then user input "Display" with value "Investigation_TST-944_Display"
    Then user clicks on the action "Specimen"
    Then verify pop-up "Select Specimen"
    Then user clicks on the action "Blood"
    Then verify pop-up "Create Investigation"
    Then user clicks on the action "Providing Trust"
    Then verify pop-up "Select Trust"
    Then user clicks on the action "Northern Lincolnshire & Goole"
    Then verify pop-up "Create Investigation"
#    Then user clicks on the action "Linked Profiles"
#    Then verify pop-up "Select Investigations"
#    Then user clicks on the action "Investigation_TST-958_Display2"
#    Then user clicks on the tick-checkbox
#    Then verify pop-up "Create Investigation"
    Then user input "Lookback Days" with value "15"
    Then user clicks on the action "Receptacles"
    Then verify pop-up "Select Receptacles"
    Then user clicks on the action "Black"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Currently Selected Receptacles"
    Then user clicks on pop-up back icon
    Then verify pop-up "Create Investigation"
    Then user clicks on the action "Questions and Guidance"
    Then verify pop-up "Select Questions & Guidance"
    Then user clicks on the action "Do you know if the patient has any known communicable infection risks?"
    Then user clicks on the tick-checkbox
    Then user clicks on the action "Trusts"
    Then verify pop-up "Select Trusts"
    Then user clicks on the action "Northern Lincolnshire & Goole"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Create Investigation"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Summary"
    Then verify "Code" with random value in the pop-up
#    Then verify "Code" with value "Investigation_TST-958_Code" in the pop-up
    Then verify "Name" with value "Investigation_TST-944_Name" in the pop-up
    Then verify "Display" with value "Investigation_TST-944_Display" in the pop-up
    Then verify "Specimen" with value "Blood" in the pop-up
    Then verify "Providing Trust" with value "Northern Lincolnshire & Goole" in the pop-up
#    Then verify "Linked Profiles" with value "Investigation_TST-958_Display2" in the pop-up
    Then verify "Lookback Days" with value "15" in the pop-up
    Then verify "Questions & Guidance" with value "Do you know if the patient has any known communicable infection risks?" in the pop-up
    Then verify "Trusts" with value "Northern Lincolnshire & Goole" in the pop-up
    Then user clicks on the tick-checkbox
    Then check if investigation pop-up appears because an investigation like it already exists
    Then user able to click on Parameter filter
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Name"
    Then verify pop-up "Select Name"
    Then user inputs "Investigation_TST-944_Display" in the filter option
    Then user clicks on the action "Investigation_TST-944_Display"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
#    Then filter item "All Names" with value "Investigation_TST-958_Display_1"
#    Then user filter item "All Names" with value "Investigation_TST-958_Display"
    Then user clicks on the last "Investigation_TST-944_Name" in the table
#    Then verify pop-up "Investigation Details"
#    Then verify "Code" with value "Investigation_TST-958_Code" in the pop-up
#    Then verify "Code" with random value in the pop-up
#    Then verify "Name" with value "Investigation_TST-958_Name" in the pop-up details
#    Then verify "Display Name" with value "Investigation_TST-958_Display_1" in the pop-up
#    Then verify "Specimen" with value "Blood" in the pop-up
#    Then verify "Providing Trust" with value "Northern Lincolnshire & Goole" in the pop-up
#    Then verify "Linked Profiles" with value "Investigation_TST-958_Display2" in the pop-up
#    Then verify "Lookback Days" with value "15" in the pop-up
#    Then verify "Questions and Guidance" with value "Do you know if the patient has any known communicable infection risks?" in the pop-up
#    Then verify "Trusts" with value "Northern Lincolnshire & Goole" in the pop-up
#    Then verify "Active" with value "Active" in the pop-up
#    Then create an investigation with code "Investigation_TST-944_Code" Name "Investigation_TST-944_Name" Display "Investigation_TST-944_Display" Specimen "Blood" Providing Trust "Northern Lincolnshire & Goole" Loopback days "15" receptacles "Black" Questions and Guidance "Do you know if the patient has any known communicable infection risks?" Trusts "Northern Lincolnshire & Goole"
#    Then user able to click on Parameter filter
#    Then verify pop-up "Table Parameters"
#    Then user clicks on the action "Name"
#    Then verify pop-up "Select Name"
#    Then user inputs "Investigation_TST-958_Display_1" in the filter option
#    Then user clicks on the action "Investigation_TST-944_Display"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Table Parameters"
#    Then user clicks on tick-checkbox
#    Then user clicks on Table first row "Investigation_TST-944_Name"
    Then verify pop-up "Investigation Details"
    Then verify "Code" with random value in the pop-up
#    Then verify "Code" with value "Investigation_TST-944_Code" in the pop-up
    Then verify "Name" with value "Investigation_TST-944_Name" in the pop-up details
    Then verify "Display Name" with value "Investigation_TST-944_Display" in the pop-up
    Then verify "Specimen" with value "Blood" in the pop-up
    Then verify "Providing Trust" with value "Northern Lincolnshire & Goole" in the pop-up
    Then verify "Lookback Days" with value "15" in the pop-up
    Then verify "Questions and Guidance" with value "Do you know if the patient has any known communicable infection risks?" in the pop-up
    Then verify "Trusts" with value "Northern Lincolnshire & Goole" in the pop-up
    Then verify "Active" with value "Active" in the pop-up
    Then verify receptacle is shown with color and text "Black" with value "1"
    Then user clicks on the action icon
    Then verify pop-up "Investigation Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Investigation"
    Then user clicks on the action "Receptacles"
    Then verify pop-up "Currently Selected Receptacles"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Select Receptacles"
    Then user clicks on the action "Green"
    Then user clicks on tick-checkbox
    Then verify pop-up "Currently Selected Receptacles"
    Then user clicks on pop-up back icon
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify receptacle is shown with color and text "Green" with value "1"
    Then verify receptacle is shown with color and text "Black" with value "1"
    Then user clicks on cross icon
    Then user clicks on "Systems" in menu bar section
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
    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on the action "Blood Science"
    Then verify pop-up "Select Location"
    Then user clicks on the action "diagnosticRequestData|radiology.location"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "diagnosticRequestData|radiology.clinician"
    Then verify pop-up "Create Blood Science Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Investigation Type Select"
    Then user clicks on the action "All Tests"
    Then verify pop-up "Select Investigations"
    Then user clicks on the action "Investigation_TST-944_Name"
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Blood Science Request"
    Then user input "Clinical Details" with value "Details Clinical"
    Then user clicks on tick-checkbox
    Then verify pop-up "Blood Science Summary"
    Then verify receptacle is shown with color and text "Black" with value "1"
    Then verify receptacle is shown with color and text "Green" with value "1"

  @TST-954 @haider @e2eSprint @sprint9
  Scenario: Pathology Requesting V3 :  Linked Profiles
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Requests"
    Then user lands on "Requests Administration" page
    Then user click on module navigator "Blood Sciences"
    Then user lands on "Blood Sciences" module
    Then user click on module navigator "Profiles"
    Then verify the table is populated
#    Then create an investigation with code "Investigation_TST-954_Code" Name "Investigation_TST-954_Name" Display "Investigation_TST-954_Display" Specimen "Blood" Providing Trust "Northern Lincolnshire & Goole" Loopback days "15" receptacles "Black" Questions and Guidance "Do you know if the patient has any known communicable infection risks?" Trusts "Northern Lincolnshire & Goole"
    Then create an investigation with code "Investigation_TST-954-2_Code" Name "Investigation_TST-954-2_Name" Display "Investigation_TST-954-2_Display" Specimen "Blood" Providing Trust "Northern Lincolnshire & Goole" Loopback days "15" receptacles "Black" Questions and Guidance "Do you know if the patient has any known communicable infection risks?" Trusts "Northern Lincolnshire & Goole"
#    Then user filter item "All Names" with value "Investigation_TST-954_Name"
#    Then user clicks on Table first row "Investigation_TST-954_Name"
    Then user clicks on the plus icon
    Then user clicks on the action "Investigation"
    Then verify pop-up "Create Investigation"
    Then user inputs "Code" with random value
    Then user input "Name" with value "Investigation_TST-954_Name"
    Then user input "Display" with value "Investigation_TST-954_Display-1"
    Then user clicks on the action "Specimen"
    Then verify pop-up "Select Specimen"
    Then user clicks on the action "Blood"
    Then verify pop-up "Create Investigation"
    Then user clicks on the action "Providing Trust"
    Then verify pop-up "Select Trust"
    Then user clicks on the action "Northern Lincolnshire & Goole"
    Then verify pop-up "Create Investigation"
    Then user input "Lookback Days" with value "15"
    Then user clicks on the action "Receptacles"
    Then verify pop-up "Select Receptacles"
    Then user clicks on the action "Black"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Currently Selected Receptacles"
    Then user clicks on pop-up back icon
    Then verify pop-up "Create Investigation"
    Then user clicks on the action "Questions and Guidance"
    Then verify pop-up "Select Questions & Guidance"
    Then user clicks on the action "Do you know if the patient has any known communicable infection risks?"
    Then user clicks on the tick-checkbox
    Then user clicks on the action "Trusts"
    Then verify pop-up "Select Trusts"
    Then user clicks on the action "Northern Lincolnshire & Goole"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Create Investigation"
    Then user clicks on the tick-checkbox
    Then verify pop-up "Summary"
    Then verify "Code" with random value in the pop-up
    Then verify "Name" with value "Investigation_TST-954_Name" in the pop-up
    Then verify "Display" with value "Investigation_TST-954_Display-1" in the pop-up
    Then verify "Specimen" with value "Blood" in the pop-up
    Then verify "Providing Trust" with value "Northern Lincolnshire & Goole" in the pop-up
    Then verify "Lookback Days" with value "15" in the pop-up
    Then verify "Questions & Guidance" with value "Do you know if the patient has any known communicable infection risks?" in the pop-up
    Then verify "Trusts" with value "Northern Lincolnshire & Goole" in the pop-up
    Then user clicks on the tick-checkbox
    Then check if investigation pop-up appears because an investigation like it already exists
    Then user able to click on Parameter filter
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Name"
    Then verify pop-up "Select Name"
    Then user inputs "Investigation_TST-954_Display" in the filter option
    Then user clicks on the action "Investigation_TST-954_Display-1"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on the last "Investigation_TST-954_Name" in the table
    Then verify pop-up "Investigation Details"
    Then verify "Code" with random value in the pop-up
    Then user clicks on the action icon
    Then verify pop-up "Investigation Actions"
    Then user clicks on the action "Edit"
    Then verify pop-up "Edit Investigation"
    Then user clicks on the action "Linked Profiles"
    Then verify pop-up "Select Investigations"
    Then user clicks on the action "Investigation_TST-954-2_Display"
    Then user clicks on tick-checkbox
    Then verify pop-up "Edit Investigation"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Investigation Details"
    Then user clicks on cross icon
    Then user clicks on "Systems" in menu bar section
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
    Then user clicks on the action "Blood Science"
    Then verify pop-up "Select Location"
    Then user clicks on the action "diagnosticRequestData|bloodScience.location"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "diagnosticRequestData|bloodScience.clinician"
    Then verify pop-up "Create Blood Science Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Investigation Type Select"
    Then user clicks on the action "All Tests"
    Then verify pop-up "Select Investigations"
    Then user clicks on the action "Investigation_TST-954_Display"
    Then user clicks on tick-checkbox
    Then check if recent investigation pop-up appears because an investigation like it already exists
    Then verify pop-up "Questions"
    Then set the yes-no of header "Do you know if the patient has any known communicable infection risks?" to "Yes"
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Blood Science Request"
    Then user input "Clinical Details" with value "Details Clinical"
    Then user clicks on tick-checkbox
    Then verify pop-up "Blood Science Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on Table first row "Investigation_TST-954_Name"
    Then verify pop-up "Request Details"
    Then verify "Investigations" with value "Investigation_TST-954-2_DisplayInvestigation_TST-954_Display" in the pop-up last

  @TST-955 @haider @e2eSprint @sprint9
  Scenario: Pathology Requesting V3 : Creating Patient  Request - Look back Days & Warning messages
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Requests"
    Then user lands on "Requests Administration" page
    Then user click on module navigator "Blood Sciences"
    Then user lands on "Blood Sciences" module
    Then user click on module navigator "Profiles"
    Then verify the table is populated
    Then create an investigation with code "Investigation_TST-955_Code" Name "Investigation_TST-955_Name" Display "Investigation_TST-955_Display" Specimen "Blood" Providing Trust "Northern Lincolnshire & Goole" Loopback days "1" receptacles "Black" Questions and Guidance "Do you know if the patient has any known communicable infection risks?" Trusts "Northern Lincolnshire & Goole"
    Then user clicks on "Systems" in menu bar section
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
    Then user clicks on the action "Blood Science"
    Then verify pop-up "Select Location"
    Then user clicks on the action "diagnosticRequestData|bloodScience.location"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "diagnosticRequestData|bloodScience.clinician"
    Then verify pop-up "Create Blood Science Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Investigation Type Select"
    Then user clicks on the action "All Tests"
    Then verify pop-up "Select Investigations"
    Then user clicks on the action "Investigation_TST-955_Display"
    Then user clicks on tick-checkbox
    Then check if recent investigation pop-up appears because an investigation like it already exists
    Then verify pop-up "Questions"
    Then set the yes-no of header "Do you know if the patient has any known communicable infection risks?" to "Yes"
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Blood Science Request"
    Then user input "Clinical Details" with value "Details Clinical"
    Then user clicks on tick-checkbox
    Then verify pop-up "Blood Science Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on the plus icon
    Then verify pop-up "Create Diagnostic Request"
    Then user clicks on the action "Blood Science"
    Then verify pop-up "Select Location"
    Then user clicks on the action "diagnosticRequestData|bloodScience.location"
    Then verify pop-up "Select Clinician"
    Then user clicks on the action "diagnosticRequestData|bloodScience.clinician"
    Then verify pop-up "Create Blood Science Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Investigation Type Select"
    Then user clicks on the action "All Tests"
    Then verify pop-up "Select Investigations"
    Then user clicks on the action "Investigation_TST-955_Display"
    Then user clicks on tick-checkbox
    Then verify pop-up "Recent Investigations"
    Then verify "Recent Investigations" after completing the form
    Then verify "The following investigations selected have been carried out within the time period specified. Please choose if you would still like to request this investigation, and then click the tick to confirm." after completing the form description

  @TST-956 @haider @e2eSprint @sprint9 @UIBUG(StatusisActive)
  Scenario: Pathology Requesting V3 : Configuration - Verify Requests Administration Page
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Requests"
    Then user lands on "Requests Administration" page
    Then user lands on "Questions & Guidance" module
    Then verify "Name" is displayed as the table header
    Then verify "Property" is displayed as the table header
    Then verify "Type" is displayed as the table header
    Then verify "Status" is displayed as the table header
    Then verify "Updated By" is displayed as the table header
    Then verify "Updated On" is displayed as the table header
    Then user click on module navigator "Blood Sciences"
    Then user lands on "Blood Sciences" module
    Then verify module navigator "Clinically Driven Requests" exits
    Then verify module navigator "Profiles" exits
    Then verify "Complaint" is displayed as the table header
    Then verify "Specialty" is displayed as the table header
    Then user click on module navigator "Profiles"
    Then verify "Display Name" is displayed as the table header
#    Then verify "Name" is displayed as the table header
    #should be status instead of active
    Then verify "Active" is displayed as the table header
    Then user clicks on the plus icon
    Then user verify action "Clinically Driven RequestConfigure a complaint-based clinically driven request, including specialty and required tests" is available
    Then user verify action "InvestigationConfigure a profile to be used within clinically driven requests" is available
    Then user clicks on cross icon
    Then user click on module navigator "Global"
    Then user lands on "Requests Administration" page
    Then user lands on "Questions & Guidance" module
    Then user clicks on the plus icon
    Then verify pop-up "Create Question"
    Then verify popup option "Name" is visible
    Then verify popup option "Type" is visible
    Then verify popup option "Property" is visible
    Then verify popup option "Active" is visible
    Then user clicks on the action "Property"
    Then verify pop-up "Property Search"
    Then user clicks on the action "Create Property"
    Then verify pop-up "Create Property"
    Then user clicks on the action "Type"
    Then verify pop-up "Select Property Type"
    Then user verify action "Date" is available
    Then user verify action "Datetime" is available
    Then user verify action "Time" is available
    Then user verify action "Text-Input" is available
    Then user verify action "Text-Input-Inline" is available
    Then user verify action "Selection" is available
    Then user verify action "Selection-Radio" is available
    Then user verify action "Yes-No-Inline" is available
    Then user verify action "Yes-No-Na-Inline" is available
    Then user clicks on pop-up back icon
    Then verify pop-up "Create Property"
    Then user clicks on pop-up back icon
    Then verify pop-up "Property Search"
    Then user clicks on pop-up back icon
    Then verify pop-up "Create Question"
    Then user clicks on the action "Type"
    Then verify pop-up "Select Type"
    Then user clicks on the action "Guidance"
    Then verify pop-up "Create Guidance"
    Then verify popup option "Name" is visible
    Then verify popup option "Type" is visible
    Then verify popup option "Property" is visible
    Then verify popup option "Active" is visible
    Then user clicks on the action "Property"
    Then verify pop-up "Property Search"
    Then user clicks on the action "Create Property"
    Then verify pop-up "Create Property"
    Then verify "Type" with value "Information" in the pop-up

  @TST-957 @haider @e2eSprint @sprint9 @bugWhenAddingSpecialty
  Scenario: Pathology Requesting V3 :  Blood Sciences Configuration - Creating Clinically driven requests
    Given user lands on "Systems" page
    Then user clicks on "Settings" in menu bar section
    Then user lands on "Settings" page
    Then user clicks on "Systems" icon
    Then user lands on "Systems Settings" page
    Then user clicks on the option "Requests"
    Then user lands on "Requests Administration" page
    Then user lands on "Questions & Guidance" module
    Then user click on module navigator "Blood Sciences"
    Then user lands on "Blood Sciences" module
    Then create an investigation with code "Investigation_TST-957_Code" Name "Investigation_TST-957_Name" Display "Investigation_TST-957_Display" Specimen "Blood" Providing Trust "Northern Lincolnshire & Goole" Loopback days "1" receptacles "Black" Questions and Guidance "Do you know if the patient has any known communicable infection risks?" Trusts "Northern Lincolnshire & Goole"
    Then user clicks on the plus icon
    Then verify pop-up "Create Configuration"
    Then user clicks on the action "Clinically Driven Request"
    Then verify pop-up "Create Clinically Driven Request"
    Then user input "Complaint" with value "Complaint_TST-957"
    Then user clicks on the action "Providing Trust"
    Then verify pop-up "Select Trust"
    Then user clicks on the action "Northern Lincolnshire & Goole"
    Then verify pop-up "Create Clinically Driven Request"
    Then user clicks on the action "Specialty"
    Then verify pop-up "Select Specialties"
    Then user clicks on the action "Accident & Emergency"
    Then verify pop-up "Create Clinically Driven Request"
    Then user clicks on the action "Specimen"
    Then verify pop-up "Select Specimen"
    Then user clicks on the action "Blood"
    Then verify pop-up "Create Clinically Driven Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Select Investigations"
    Then user clicks on the action "Investigation_TST-957_Display"
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Clinically Driven Request"
    Then user input "Clinical Details" with value "Details Value"
    Then user input "Additional Tests" with value "Tests Value"
    Then user clicks on the action "Questions and Guidance"
#    Then user clicks on the action "Questions & Guidance"
    Then verify pop-up "Select Questions & Guidance"
    Then user clicks on the action "Do you know if the patient has any known communicable infection risks?"
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Clinically Driven Request"
    Then user clicks on tick-checkbox
    Then verify pop-up "Summary"
    Then user clicks on tick-checkbox
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on "Complaint_TST-957" in the table
    Then verify pop-up "Clinically Driven Request Details"
    Then verify "Complaint" with value "Complaint_TST-957" in the pop-up
    Then verify "Providing Trust" with value "Northern Lincolnshire & Goole" in the pop-up
    Then verify "Specialty" with value "Accident & Emergency" in the pop-up
    Then verify "Specimen" with value "Blood" in the pop-up
    Then verify "Investigations" with value "Investigation_TST-957_Display" in the pop-up
    Then verify "Questions and Guidance" with value "Do you know if the patient has any known communicable infection risks?" in the pop-up
    Then verify "Clinical Details" with value "Details Value" in the pop-up
    Then verify "Additional Tests" with value "Tests Value" in the pop-up

  @TST-960 @haider @e2eSprint @sprint9
  Scenario: Pathology Requesting V3 : System Requests - Sorting Request Table
    Given user lands on "Systems" page
    Then user clicks on "Requests" card in Systems
    Then user lands on "Requests" page
    Then user lands on "Requests List" module
    Then wait for the page to load
    Then verify the table is populated
    Then user clicks on the header "gender-header"
    Then verify the header "gender-header" sorting "sort-up"
    Then user clicks on the header "gender-header"
    Then verify the header "gender-header" sorting "sort-down"
    Then user clicks on the header "Name"
    Then verify the header "Name" sorting "sort-up"
    Then user clicks on the header "Name"
    Then verify the header "Name" sorting "sort-down"
    Then user clicks on the header "Born"
    Then verify the header "Born" sorting "sort-up"
    Then user clicks on the header "Born"
    Then verify the header "Born" sorting "sort-down"
    Then user clicks on the header "NHS Number"
    Then verify the header "NHS Number" sorting "sort-up"
    Then user clicks on the header "NHS Number"
    Then verify the header "NHS Number" sorting "sort-down"
    Then user clicks on the header "Specimen No"
    Then verify the header "Specimen No" sorting "sort-up"
    Then user clicks on the header "Specimen No"
    Then verify the header "Specimen No" sorting "sort-down"
    Then user clicks on the header "Status"
    Then verify the header "Status" sorting "sort-up"
    Then user clicks on the header "Status"
    Then verify the header "Status" sorting "sort-down"
    Then user clicks on the header "Requested"
    Then verify the header "Requested" sorting "sort-up"
    Then user clicks on the header "Requested"
    Then verify the header "Requested" sorting "sort-down"
    Then user clicks on the header "Location"
    Then verify the header "Location" sorting "sort-up"
    Then user clicks on the header "Location"
    Then verify the header "Location" sorting "sort-down"
    Then user clicks on the header "Requesting Clinician"
    Then verify the header "Requesting Clinician" sorting "sort-up"
    Then user clicks on the header "Requesting Clinician"
    Then verify the header "Requesting Clinician" sorting "sort-down"
    Then user clicks on the header "Type"
    Then verify the header "Type" sorting "sort-up"
    Then user clicks on the header "Type"
    Then verify the header "Type" sorting "sort-down"
    Then user clicks on the header "Investigation"
    Then verify the header "Investigation" sorting "sort-up"
    Then user clicks on the header "Investigation"
    Then verify the header "Investigation" sorting "sort-down"
    Then user clicks on the header "Priority"
    Then verify the header "Priority" sorting "sort-up"
    Then user clicks on the header "Priority"
    Then verify the header "Priority" sorting "sort-down"
    Then user clicks on the header "Infection Risk"
    Then verify the header "Infection Risk" sorting "sort-up"
    Then user clicks on the header "Infection Risk"
    Then verify the header "Infection Risk" sorting "sort-down"

  @TST-966 @haider @e2eSprint @sprint9 @Bug:noSpecimenNumberAvailable
  Scenario: Pathology Requesting V3 :  Reception Mode - Using Hot Keys for Request Actions
    Given user lands on "Systems" page
    Then user clicks on "Requests" card in Systems
    Then user lands on "Requests" page
    Then user lands on "Requests List" module
    Then user click on module navigator "Reception"
    Then verify pop-up "Reception Mode"
    Then user input "Specimen No." with value "1111111111"
    Then user clicks on tick-checkbox
    Then verify "No Requests Found" after completing the form
    Then verify "No requests were found matching the specimen number provided." after completing the form description
    Then user clear inputs "Specimen No."
#    Then user clears the text-input "Specimen No."
    Then user input "Specimen No." with value "2222222222"
    Then user clicks on tick-checkbox
    Then verify the table is populated
    Then user clicks on the meatball option of the first row
    Then verify pop-up "Request Action"
#    Then user clicks on action menu on popup
    Then user verify action "Edit" is available
    Then user verify action "Print" is available
    Then user verify action "Cancel" is available
    Then user verify action "Status" is available
    Then user verify action "History" is available

  @TST-990 @haider @e2eSprint @sprint9
  Scenario: Pathology Requesting V3 : Request List - Verify Filter options
    Given user lands on "Systems" page
    Then user clicks on "Systems" in menu bar section
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
    Then user clicks on the action "Fluoroscopy"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on the action "Investigations"
    Then verify pop-up "Select Examination Type"
    Then user clicks on the action "General"
    Then verify pop-up "Select Examination Area"
    Then user clicks on the action "Fistulogram"
    Then user clicks on tick-checkbox
    Then user input "Provisional Diagnosis" with value "Diagnosis"
    Then user input "Clinical Details" with value "Details"
    Then wait for 10 seconds
    Then user clicks on the action "Method Of Arrival"
    Then verify pop-up "Select Arrival Method"
    Then user clicks on the action "Walking"
    Then verify pop-up "Create Radiology Request"
    Then user clicks on tick-checkbox
    Then verify pop-up "Questions"
    Then set the yes-no of header "Do you know if the patient has any known communicable infection risks?" to "Yes"
    Then set the yes-no of header "Do you know if the patient has any renal impairment?" to "Yes"
    Then set the yes-no of header "Patients may receive IV contrast media-are you aware of contraindications including allergies or NSF/NFD in patients with renal impairment?" to "Yes"
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
    Then user clicks on "Systems" in menu bar section
    Given user lands on "Systems" page
    Then user clicks on "Requests" card in Systems
    Then user lands on "Requests" page
    Then user lands on "Requests List" module
    Then wait for the page to load
    Then verify the table is populated
    Then user clicks on filter Parameter
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Priority"
    Then verify pop-up "Select Priority"
    Then user clicks on the action "Routine"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Requested Date"
    Then verify pop-up "Select Requested Date"
    Then user clicks on the action "Select Current Date"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Infection Risk"
    Then verify pop-up "Select Infection Risk"
    Then user clicks on the action "No"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Status"
    Then verify pop-up "Select Status"
    Then user clicks on the action "Requested"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Location"
    Then verify pop-up "Select Locations"
    Then user clicks on the action "diagnosticRequestData|radiology.location"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Providing Organisation"
    Then verify pop-up "Select Organisation"
    Then user clicks on the action "Diana Princess of Wales Hospital"
#    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Type"
    Then verify pop-up "Select Type"
    Then user clicks on the action "Radiology"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on the action "Modality"
    Then verify pop-up "Select Investigations"
    Then user clicks on the action "Fluoroscopy"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify the table is populated
    Then verify the first row "Status" is "Requested"
    Then verify the first row "Location" is "diagnosticRequestData|radiology.locationPascal"
    Then verify the first row "Type" is "Radiology"
    Then verify the first row "Investigation" is "Fluoroscopy"
    Then verify the first row "Priority" is "Routine"
    Then verify the first row "Infection Risk" is "No"
    Then verify table header "Requested" date column with current date exists

  @TST-991 @haider @e2eSprint @sprint9
  Scenario: Pathology Requesting V3 : Request Status Colour codes
    Given user lands on "Systems" page
    Then user clicks on "Requests" card in Systems
    Then user lands on "Requests" page
    Then user lands on "Requests List" module
    Then wait for the page to load
    Then verify the table is populated
    Then verify the status color threshold for "Requested" is "amber"
    Then verify the status color threshold for "Recieved" is "amber"
    Then verify the status color threshold for "Rejected" is "red"
    Then verify the status color threshold for "Cancelled" is "red"
    Then verify the status color threshold for "Collected" is "green"
    Then verify the status color threshold for "Accepted" is "green"



#  @TST-992 @safi #print func not available
#  Scenario: Pathology Requesting V3 - Reception Mode -  Microbiology requests  label Printing  & Blood Science G printing
#    Given user lands on "Systems" page
#    Then user clicks on "Requests" card in Systems
#    Then user lands on "Requests" page
#    Then user click on module navigator "Reception"
#    Then user lands on "Requests List" module
#    Then user enters "Specimen No." value in Reception mode popUp
#
