@v2Patient @e2e @comorbidities
Feature: To check the V2 Comorbidities
#Sprint 7

  @TST-1175 @safi @e2eSprint @sprint7 @refactorSp18
  Scenario: Declaring Comorbidities
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|patient1.genderNHS"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Comorbidities" option from dropdown
    Then user lands on "Patient Comorbidities" page
    Then user clicks on the action icon
    Then verify pop-up "Comorbidities List Menu"
    Then user clicks on "Sign Clinical Declaration" in Comorbidities list menu popUp
    Then verify pop-up "Declaration Information"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then user verify the updated Clinical declaration values
    Then user clicks on plus icon on top right corner of the page
    Then verify pop-up "New Comorbidity"
    Then user selects "Cardiovascular" option from the New Comorbidity popUp list
    Then user selects "Hypertensive renal disease without renal failure" option from the popUp
    Then verify pop-up "Comorbidity Details"
    Then user clicks on tick-checkbox
    Then verify pop-up "Comorbidity Summary"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
   # Then user clicks on header "Updated On" on the table
    Then user clicks on active comorbidity in the list
    Then verify pop-up "Comorbidity Menu"
    Then user clicks on "Deactivate" from Comorbidity Menu popUp
    Then verify pop-up "Deactivate Comorbidity"
    Then user selects "No Longer Relevant" option from Deactivate Comorbidity popUp
    Then verify pop-up "Deactivation Summary"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|patient1.genderNHS"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Comorbidities" option from dropdown
    Then user clicks on back icon
  #  Then user lands on "Patient Summary" page

  @TST-1177 @safi @e2eSprint @sprint7 @refactorSp18
  Scenario: De-activate Co-morbidity Status
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|patient1.genderNHS"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Comorbidities" option from dropdown
    Then user lands on "Patient Comorbidities" page
    Then user clicks on plus icon on top right corner of the page
    Then verify pop-up "New Comorbidity"
    Then user selects "Cardiovascular" option from the New Comorbidity popUp list
    Then user selects "Hypertensive renal disease without renal failure" option from the popUp
    Then verify pop-up "Comorbidity Details"
    Then user clicks on tick-checkbox
    Then verify pop-up "Comorbidity Summary"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
   # Then user clicks on header "Updated On" on the table
    Then user clicks on active comorbidity in the list
    Then verify pop-up "Comorbidity Menu"
    Then user clicks on "Deactivate" from Comorbidity Menu popUp
    Then verify pop-up "Deactivate Comorbidity"
    Then user selects "No Longer Relevant" option from Deactivate Comorbidity popUp
    Then verify pop-up "Deactivation Summary"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-1173 @safi @e2eSprint @sprint7 @refactorSp18
  Scenario: Viewing Comorbidities
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|patient1.genderNHS"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Comorbidities" option from dropdown
    Then user lands on "Patient Comorbidities" page
    Then user lands on "Comorbidities List" module
  #  Then user clicks on header "Comorbidity" on the table
    Then user verify the comorbidity list

  @TST-1174 @safi @e2eSprint @sprint7 @refactorSp18
  Scenario: Accessing Comorbidities List (V2 to v3 Link)
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|patient1.genderNHS"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Comorbidities" option from dropdown
    Then user lands on "Patient Comorbidities" page
    Then user clicks on the action icon
    Then verify pop-up "Comorbidities List Menu"
    Then user clicks on "Sign Clinical Declaration" in Comorbidities list menu popUp
    Then verify pop-up "Declaration Information"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then user verify the updated Clinical declaration values

  @TST-1172 @safi @e2eSprint @sprint7 @refactorSp18
  Scenario: Adding Comorbidities
    Given user lands on "Systems" page
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|patient1.genderNHS"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Comorbidities" option from dropdown
    Then user lands on "Patient Comorbidities" page
    Then user clicks on the action icon
    Then verify pop-up "Comorbidities List Menu"
    Then user clicks on "Sign Clinical Declaration" in Comorbidities list menu popUp
    Then verify pop-up "Declaration Information"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then user verify the updated Clinical declaration values
    Then user clicks on plus icon on top right corner of the page
    Then verify pop-up "New Comorbidity"
    Then user selects "Cardiovascular" option from the New Comorbidity popUp list
    Then user selects "Hypertensive renal disease without renal failure" option from the popUp
    Then verify pop-up "Comorbidity Details"
    Then user clicks on tick-checkbox
    Then verify pop-up "Comorbidity Summary"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on active comorbidity in the list
    Then verify pop-up "Comorbidity Menu"
    Then user clicks on "Deactivate" from Comorbidity Menu popUp
    Then verify pop-up "Deactivate Comorbidity"
    Then user selects "No Longer Relevant" option from Deactivate Comorbidity popUp
    Then verify pop-up "Deactivation Summary"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on "Patient Quick Search" in menu bar section
    Then verify pop-up "Patient Identifier Search"
    Then user enters Patient Identifier Search "patientData|patient1.genderNHS"
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then user clicks on the action "Continue"
    Then user lands on "Patient Summary" page
    Then user clicks on patient menu in top right corner of the page
    Then user selects "Comorbidities" option from dropdown
    Then user clicks on back icon
