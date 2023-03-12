@ClinicalRecord @e2e
Feature: To check the V3 Documents

  @TST-1093 @AYERSHUJA @CR_Module @RefactoredTestcase @Sp19Refactor
  Scenario: V3 Clinical Record : Last viewed Patient Search
    Given user lands on "Systems" page
    Then user clicks on "Clinical Record" card in Systems
    Then user lands on "Clinical Record" page
    Then verify pop-up "Patient Search"
    Then user clicks on "Predefined Criteria" on popup
    Then verify pop-up "Predefined Criteria Search"
    Then user clicks on "Recently Viewed Patients" on popup
    Then user lands on "Patient List" module

  @TST-1067 @AYERSHUJA @CR_Module @RefactoredTestcase @Sp19Refactor
  Scenario: V3 Clinical Record : Admission Information on Patient Summary Screen
    Given user lands on "Systems" page
    Then user clicks on "Clinical Record" card in Systems
    Then user lands on "Clinical Record" page
    Then verify pop-up "Patient Search"
    Then user clicks on "Patient Identifier" on popup
    Then user enters Patient Identifier Search "2222222222"
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then user clicks on the action icon of Patient Summary
    Then user lands on "Patient Summary" page
    Then wait for popup loading
    Then user clicks on the action icon of "Patient Summary"
    Then verify panel "Patient Information" exists
    Then verify panel "Admission Information" exists
    Then verify panel "Advisories" exists
    Then verify panel "Reports Acknowledgement" exists
    Then verify panel "General Practitioner Information" exists
    Then verify panel "Document Information" exists
    Then user verify admission information detail "SOURCE" with value "PAS"
    Then user verify admission information detail "ADMITTING CLINICIAN" with value "Not Known"
    Then user verify admission information detail "ADMITTING SPECIALTY" with value "Not Known"
    Then user verify admission information detail "ADMISSION DATE & TIME" with value "Not Known"
    Then user verify admission information detail "CLINICIAN" with value "Not Known"
    Then user verify admission information detail "SPECIALTY" with value "Not Known"
    Then user verify admission information detail "SITE" with value "Not Known"
    Then user verify admission information detail "WARD / UNIT" with value "Not Known"
    Then user verify admission information detail "SINCE" with value "Not Known"


