@thirdPartySystems @e2e
Feature: To check the Third Party Systems Functionality

#  @TST-1274 @haider @resetProfile @e2eSprint @sprint12
#  Scenario: Accessing YHCR
#    Given user lands on "Systems" page
#    Then check if the role Test 1274 exists along with the pre-requisites
#    Then check if the current user has the role of "TST1274" and if not then change it
#    Then user clicks on "Systems" in menu bar section
#    Then user lands on "Systems" page
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "thirdPartySystemData|patientIdentifiers.patient4.nhsNumber"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then user lands on "Patient Summary" page
#    Then wait for 10 seconds
#    Then user clicks on the action icon
#    Then user clicks on the sub-navigation in profile menu "Third Party Systems"
#    Then verify pop-up "Third Party Systems"
#    Then user clicks on the action "Yorkshire & Humber Care Record (YHCR)"
#    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
#    Then verify pop-up "Patient Consent"
#    Then user clicks on the action "Yes"
#    Then verify back icon exist on the page
#    Then verify patients demographics exist
#    Then save the number of resource warnings
#    Then user clicks on the option "Resource Warnings"
#    Then verify pop-up "Resource Warnings"
#    Then compare the popup warnings with the page warning
#    Then user clicks on cross icon
#    Then verify sub-header "Resource List" has options "Medical Record Summary|Allergies & Reactions|Clinical Administration|Clinical Report|Encounter Report|Immunisations|Medication Record|Observations|Problems|Referral Details" available
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "thirdPartySystemData|patientIdentifiers.patient2.nhsNumber"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then user lands on "Patient Summary" page
#    Then wait for 10 seconds
#    Then verify the patient is deceased status is "true" from the demographics bar
#    Then user clicks on the action icon
#    Then user clicks on the sub-navigation in profile menu "Third Party Systems"
#    Then verify pop-up "Third Party Systems"
#    Then user verify action "Yorkshire & Humber Care Record (YHCR)" is unavailable
#    Then user clicks on pop-up back icon
#    Then user lands on "Patient Summary" page
#    Then user clicks on "Systems" in menu bar section
#    Then user lands on "Systems" page
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "thirdPartySystemData|patientIdentifiers.patient3.nhsNumber"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then user lands on "Patient Summary" page
#    Then wait for 10 seconds
#    Then user clicks on the action icon
#    Then user clicks on the sub-navigation in profile menu "Third Party Systems"
#    Then verify pop-up "Third Party Systems"
#    Then user clicks on the action "Yorkshire & Humber Care Record (YHCR)"
#    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
#    Then verify pop-up "Patient Consent"
#    Then user clicks on the action "Yes"
#    Then verify pop-up "Warnings"
#    Then verify "Patient Deceased" after completing the form
#    Then verify "This patient is recorded as deceased on a third-party system. Therefore, further data cannot be requested." after completing the form description
#    Then user clicks on back icon
#    Then user lands on "Patient Summary" page
#    Then check if the current user has the role of "WebV Admin" and if not then change it
#
#  @TST-1290 @haider @resetProfile @e2eSprint @sprint12
#  Scenario: Site Changes
#    Given user lands on "Systems" page
#    Then user clicks on profile from main menu
#    Then user lands on "Profile" page
#    Then user clicks on the action icon
#    Then user clicks on the sub-navigation in profile menu "Change Site"
#    Then verify pop-up "Select Site"
#    Then user verify action "Diana Princess of Wales Hospital" is available
#    Then user verify action "Goole and District Hospital" is available
#    Then user verify action "North East Lincs Community Services" is available
#    Then user verify action "North Lincs Community Services" is available
#    Then user verify action "Scunthorpe General Hospital" is available
#    Then user clicks on the action "Community Services"
#    Then verify pop-up "Submission Status"
#    Then verify "Success" after completing the form
#    Then user clicks on tick-checkbox
#    Then user verify profile detail "Site" with value "Community Services"
#    Then user clicks on "Patient Quick Search" in menu bar section
#    Then verify pop-up "Patient Identifier Search"
#    Then user enters Patient Identifier Search "thirdPartySystemData|patientIdentifiers.patient4.nhsNumber"
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Confirmation Required"
#    Then user clicks on the action "Continue"
#    Then user lands on "Patient Summary" page
#    Then verify the patient is deceased status is "false" from the demographics bar
#    Then wait for 10 seconds
#    Then user clicks on the action icon
#    Then user clicks on the sub-navigation in profile menu "Third Party Systems"
#    Then verify pop-up "Third Party Systems"
#    Then user clicks on the action "Yorkshire & Humber Care Record (YHCR)"
#    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
#    Then verify pop-up "Patient Consent"
#    Then user verify action "YesI have gained the patients consent." is available
#    Then user verify action "NoI am accessing the record in response to a clinical emergency." is available
#    Then user verify action "CancelI do not wish to access the patients record." is available
#    Then user clicks on the action "Yes"
#    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
#    Then verify the table is empty with text "Error"
#    Then verify the table is empty with text description "Cannot retrieve third-party patient FHIR ID."
#    Then check if the current user has the site of "Diana Princess of Wales Hospital" and if not then change it

  @TST-1287 @haider @e2eSprint @sprint12
  Scenario: Demographics discrepancies
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "thirdPartySystemData|patientIdentifiers.patient4.nhsNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then verify the patient is deceased status is "false" from the demographics bar
    Then wait for 10 seconds
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Third Party Systems"
    Then user clicks on the action "Yorkshire & Humber Care Record (YHCR)"
    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
    Then verify pop-up "Patient Consent"
    Then user verify action "YesI have gained the patients consent." is available
    Then user verify action "NoI am accessing the record in response to a clinical emergency." is available
    Then user verify action "CancelI do not wish to access the patients record." is available
    Then user clicks on the action "Yes"
    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
    Then wait for the page to load
    Then verify the patient is deceased status is "false" from the demographics bar
    Then verify header "Record Resources" exists
    Then verify header "No Resource Selected" exists
    Then user clicks on the option "Resource Warnings"
    Then verify pop-up "Resource Warnings"
    Then user clicks on the action "Demographic Discrepancies"
    Then verify pop-up "Patient Demographic Discrepancies"
    Then verify sub-headers with "Resource Warnings" with options "Family Name|Given Name|Date Of Birth|Gender|GP Practice" exists and if does add it to the report

  @TST-1288 @haider @e2eSprint @sprint12
  Scenario: Patient Consent
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "thirdPartySystemData|patientIdentifiers.patient4.nhsNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then verify the patient is deceased status is "false" from the demographics bar
    Then wait for 10 seconds
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Third Party Systems"
    Then user clicks on the action "Yorkshire & Humber Care Record (YHCR)"
    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
    Then verify pop-up "Patient Consent"
    Then user verify action "YesI have gained the patients consent." is available
    Then user verify action "NoI am accessing the record in response to a clinical emergency." is available
    Then user verify action "CancelI do not wish to access the patients record." is available
    Then user clicks on the action "No"
    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
    Then wait for the page to load
    Then verify the patient is deceased status is "false" from the demographics bar
    Then verify header "Record Resources" exists
    Then verify header "No Resource Selected" exists
    Then user clicks on back icon
    Then user lands on "Patient Summary" page
    Then verify the patient is deceased status is "false" from the demographics bar
    Then wait for 10 seconds
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Third Party Systems"
    Then user clicks on the action "Yorkshire & Humber Care Record (YHCR)"
    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
    Then verify pop-up "Patient Consent"
    Then user clicks on the action "Cancel"
    Then user lands on "Patient Summary" page

  @TST-1289 @haider @e2eSprint @sprint12
  Scenario: Date filter shows even if there are no records to display
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "thirdPartySystemData|patientIdentifiers.patient4.nhsNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then verify the patient is deceased status is "false" from the demographics bar
    Then wait for 10 seconds
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Third Party Systems"
    Then user clicks on the action "Yorkshire & Humber Care Record (YHCR)"
    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
    Then verify pop-up "Patient Consent"
    Then user verify action "YesI have gained the patients consent." is available
    Then user verify action "NoI am accessing the record in response to a clinical emergency." is available
    Then user verify action "CancelI do not wish to access the patients record." is available
    Then user clicks on the action "Yes"
    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
    Then wait for the page to load
    Then user clicks on filter Parameter
    Then verify pop-up "Filter Parameters"
    Then user clicks on the action "Date"
    Then verify pop-up "Select Start Date"
    Then user selects date DD as "thirdPartySystemData|patientIdentifiers.patient4.startDay" Month as "thirdPartySystemData|patientIdentifiers.patient4.startMonth" and year as "thirdPartySystemData|patientIdentifiers.patient4.startYear"
    Then user clicks on tick-checkbox
    Then verify pop-up "Select End Date"
    Then user selects date DD as "thirdPartySystemData|patientIdentifiers.patient4.endDay" Month as "thirdPartySystemData|patientIdentifiers.patient4.endMonth" and year as "thirdPartySystemData|patientIdentifiers.patient4.endYear"
    Then user clicks on tick-checkbox
    Then verify pop-up "Filter Parameters"
    Then user clicks on tick-checkbox
    Then wait for the page to load
    Then user clicks on the option "Medical Record Summary"
    Then verify warning "Filters are not applied to the selected resource."
    Then user clicks on the option "Allergies & Reactions"
    Then verify warning "Filters are not applied to the selected resource."
    Then user clicks on the option "Immunisations"
    Then verify warning "Filters are not applied to the selected resource."
    Then user clicks on the option "Clinical Administration"
    Then verify sub-header "Administrative Items" has date "active" and has data "inactive"
    Then user clicks on the option "Clinical report"
    Then verify sub-header "Clinical Items" has date "active" and has data "inactive"
    Then user clicks on the option "Encounter report"
    Then verify sub-header "Encounters" has date "active" and has data "inactive"
    Then user clicks on the option "Medication Record"
    Then verify sub-header "Acute Medication (Last 12 Months)" has date "inactive" and has data "active"
    Then verify sub-header "Current Repeat Medication" has date "inactive" and has data "active"
    Then verify sub-header "Discontinued Repeat Medication" has date "inactive" and has data "active"
    Then verify sub-header "All Medication" has date "active" and has data "active"
    Then verify sub-header "All Medication Issues" has date "active" and has data "active"
    Then user clicks on the option "Observations"
    Then verify sub-header "Observations" has date "active" and has data "inactive"
    Then user clicks on the option "Problems"
    Then verify sub-header "Active Problems and Issues" has date "inactive" and has data "active"
    Then verify sub-header "Major Inactive Problems and Issues" has date "active" and has data "inactive"
    Then verify sub-header "Other Inactive Problems and Issues" has date "active" and has data "inactive"
    Then user clicks on the option "Referral details"
    Then verify sub-header "Referrals" has date "active" and has data "inactive"

  @TST-1286 @haider @e2eSprint @sprint12
  Scenario: "Date filter not applied"  for records that are not subject to date filter
    Given user lands on "Systems" page
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "thirdPartySystemData|patientIdentifiers.patient4.nhsNumber"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then verify the patient is deceased status is "false" from the demographics bar
    Then wait for 10 seconds
    Then user clicks on the action icon
    Then user clicks on the sub-navigation in profile menu "Third Party Systems"
    Then user clicks on the action "Yorkshire & Humber Care Record (YHCR)"
    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
    Then verify pop-up "Patient Consent"
    Then user verify action "YesI have gained the patients consent." is available
    Then user verify action "NoI am accessing the record in response to a clinical emergency." is available
    Then user verify action "CancelI do not wish to access the patients record." is available
    Then user clicks on the action "Yes"
    Then user lands on "Yorkshire & Humber Care Record (YHCR)" page
    Then wait for the page to load
    Then user clicks on filter Parameter
    Then verify pop-up "Filter Parameters"
    Then user clicks on the action "Date"
    Then verify pop-up "Select Start Date"
    Then user selects date DD as "thirdPartySystemData|patientIdentifiers.patient4.startDay" Month as "thirdPartySystemData|patientIdentifiers.patient4.startMonth" and year as "thirdPartySystemData|patientIdentifiers.patient4.startYear"
    Then user clicks on tick-checkbox
    Then verify pop-up "Select End Date"
    Then user selects date DD as "thirdPartySystemData|patientIdentifiers.patient4.endDay" Month as "thirdPartySystemData|patientIdentifiers.patient4.endMonth" and year as "thirdPartySystemData|patientIdentifiers.patient4.endYear"
    Then user clicks on tick-checkbox
    Then verify pop-up "Filter Parameters"
    Then user clicks on tick-checkbox
    Then wait for the page to load
    Then user clicks on the option "Medical Record Summary"
    Then verify warning "Filters are not applied to the selected resource." in color "red"
    Then user clicks on the option "Allergies & Reactions"
    Then verify warning "Filters are not applied to the selected resource." in color "red"
    Then user clicks on the option "Immunisations"
    Then verify warning "Filters are not applied to the selected resource." in color "red"
    Then user clicks on the option "Medication Record"
    Then verify sub-header "Acute Medication (Last 12 Months)" has date "inactive" in color "black2"
    Then verify sub-header "Current Repeat Medication" has date "inactive" in color "black2"
    Then verify sub-header "Discontinued Repeat Medication" has date "inactive" in color "black2"
    Then user clicks on the option "Problems"
    Then verify sub-header "Active Problems and Issues" has date "inactive" in color "black2"