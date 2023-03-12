@infectionPrevention @e2e
Feature: To check the Infection Prevention Functionalities

  @TST-576 @AYERSHUJA @IC_Module @e2eSprint @sprint10 @SP_RefactorTest @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Add Infection manually and mark as resolved when needed
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for 20 seconds
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then user clicks on menu icon
    Then user clicks on "Edit Case Details" on popup
    Then user selects "Bed Management" with value "outBreak|EditCase.BedManagement"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Details"
    Then user clicks on menu icon
    Then user clicks on "Close Case" on popup
    Then verify pop-up "Close Case"
    Then user selects "Closure Criteria" with value "outBreak|CloseCase.EditCaseDetails"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-585 @AYERSHUJA @IC_Module @SP_RefactorTest @e2eSprint @RefactoredTestcases @sprint10 @Bug:whenSelectingSiteFromParameterAndClickOnTickSiteValueDisappearWhichShowsNoValueInTableAndTableValueSeemsEmpty
  Scenario: V3 Documents : IC Module - Verify Trust Outbreak Overview
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then verify the table is populated
    Then verify user displayed from table header as "outBreak|TableHeader.Column1"
    Then verify user displayed from table header as "outBreak|TableHeader.Column2"
    Then verify user displayed from table header as "outBreak|TableHeader.Column3"
    Then verify user displayed from table header as "outBreak|TableHeader.Column4"
    Then verify user displayed from table header as "outBreak|TableHeader.Column5"
    Then verify user displayed from table header as "outBreak|TableHeader.Column6"
    Then verify user displayed from table header as "outBreak|TableHeader.Column7"
    Then verify user displayed from table header as "outBreak|TableHeader.Column8" with no visual text
    Then verify user displayed from table header as "outBreak|TableHeader.Column9" with no visual text
#    creation of OutBreak
    Then user clicks on the plus icon
    Then verify pop-up "Create Outbreak"
    Then user selects "Organisation" with value "outBreak|outBreakCreation.Organisation" while creating outbreak
    Then user selects "Ward/Unit" with value "outBreak|outBreakCreation.Ward" while creating outbreak
    Then user selects "Assignee" with value "outBreak|outBreakCreation.Assignee" while creating outbreak
    Then user selects "Primary Symptom" with value "outBreak|outBreakCreation.PrimarySymptom" while creating outbreak
    Then user clicks on the action "Outbreak Start"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user selects Hours HH as "outBreak|DateTime.Hour" Minutes MM as "outBreak|DateTime.Minutes" and Seconds SS as "outBreak|DateTime.Sec"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Bed Days Lost"
    Then user enters "outBreak|bedDaysLost.days" in text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Outbreak Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Outbreak Details"
    Then user clicks on cross icon
    Then user click on parameter
    Then user clicks on the action "Status"
    Then check "Open" role permissions to "active"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user click on last record in the table
    Then verify pop-up "Outbreak Details"
    Then verify "Status" with Label value "outBreak|outbreakDetails.status" in pop-up details
    Then verify "Updated By" with Label value "outBreak|outbreakDetails.UpdatedBy" in pop-up details
    Then verify "Outbreak Location" in pop-up details
    Then verify "Site" with Label value "outBreak|outBreakCreation.Organisation" in pop-up details
    Then verify "Ward/Unit" with Label value "outBreak|outBreakCreation.Ward" in pop-up details
    Then verify "Operational Status" with Label value "outBreak|outbreakDetails.status" in pop-up details
    Then verify "Bed Days Lost" with Label value "outBreak|bedDaysLost.days" in pop-up details
    Then verify "Operational Comments" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Outbreak Information" in pop-up details
    Then verify "Primary Organism" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Primary Organism" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Linked Cases" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Involved Staff" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Infection Events" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Reviews" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Symptoms" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Assignee" with Label value "outBreak|outBreakCreation.Assignee" in pop-up details
    Then verify "Review" in pop-up details
    Then verify "Reviewed On" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Reviewed By" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Next Review" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then user clicks on cross icon

  @TST-626 @AYERSHUJA @IC_Module @e2eSprint @sprint10 @SP_RefactorTest @RefactoredTestcases @Bug:whileEnteringFutureMonthDateItsUnableToCreateARecord
  Scenario: V3 Documents : IC Module : Edit / Update Organism and Verify Case detail
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then user consider pre-requsite against infectionControl
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then user clicks on "Infection Events" on popup
    Then verify pop-up "Case Infections"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Create Infection Event"
    Then verify "outBreak|CreateInfectionEventsFields.Field1" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field2" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field3" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field4" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field5" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field6" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field7" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field8" fields in pop-up details
    Then user selects "Organism" with the value "outBreak|CreateInfectionEventsValue.Organism"
    Then user selects "Specimen Site" with the value "outBreak|CreateInfectionEventsValue.SpecimenSite"
    Then user selects "Specimen Type" with the value "outBreak|CreateInfectionEventsValue.SpecimenType"
    Then user selects "Care Setting" with the value "outBreak|CreateInfectionEventsValue.CareSetting"
    Then user clicks on the action "Suspected On"
    Then user input the current date and time
    Then user clicks on the action "Confirmed On"
    Then user input the current date and time
    Then user clicks on the action "Sample Number"
    Then user enters "outBreak|TextSample.TextAreaTest" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user click on last record in the table of popup
    Then verify pop-up "Infection Event Details"
    Then user clicks on action menu on popup
    Then user clicks on "Edit" on popup
    Then user selects "Care Setting" with the value "outBreak|CreateInfectionEventsValue.CareSettingOption2"
    Then verify "Care Setting" with Label value "outBreak|CreateInfectionEventsValue.CareSettingOption2" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user click on last record in the table of popup
    Then verify pop-up "Infection Event Details"
    Then verify "Status" with Label value "outBreak|InfectionEventDetails.Status" in pop-up details
    Then verify "Updated By" with Label value "outBreak|InfectionEventDetails.UpdatedByNew" in pop-up details
    Then verify "Manually Created" with Label value "outBreak|InfectionEventDetails.ManuallyCreated" in pop-up details
    Then verify "Organism" with Label value "outBreak|CreateInfectionEventsValue.Organism" in pop-up details
    Then verify "Care Setting" with Label value "outBreak|CreateInfectionEventsValue.CareSettingOption2" in pop-up details
    Then verify "Sample Number" with Label value "outBreak|TextSample.TextAreaTest" in pop-up details
    Then verify "Request" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Location" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Clinician" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Specimen" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Specimen Site" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Specimen Type" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Result" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Resistance" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Sensitive" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Comments" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details

  @TST-571 @AYERSHUJA @IC_Module @e2eSprint @sprint10 @SP_RefactorTest @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Edit / Update Organism and Verify Case detailsc
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column1"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column2"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column3"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column4"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column5"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column6"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column7"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column8"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column9"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column10"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column11"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column12"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column13"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column14"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column15"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column16"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column17"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column18"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column19"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column20"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column21"

  @TST-578 @AYERSHUJA @IC_Module @e2eSprint @sprint10 @SP_RefactorTest @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Add Reviews
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then user clicks on "Reviews" on popup
    Then verify pop-up "Case Reviews"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Create Review"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter1"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter2"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter3"
    Then user clicks on the action "Next Review"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user selects "Sample Status" with value "outBreak|SelectSampleStatus.value"
    Then user clicks on the action "Comments"
    Then verify pop-up "Review Comments"
    Then user enters "outBreak|TextSample.TextAreaTest" in text-area
    Then user clicks on tick-checkbox
    Then verify "Sample Status" with Label value "outBreak|SelectSampleStatus.value" in pop-up details
    Then verify "Comments" with Label value "outBreak|TextSample.TextAreaTest" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Review Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-582 @AYERSHUJA @IC_Module @e2eSprint @sprint10 @SP_RefactorTest @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Verify Outbreak List
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then verify the table is populated
    Then verify user displayed from table header as "outBreak|TableHeader.Column1"
    Then verify user displayed from table header as "outBreak|TableHeader.Column2"
    Then verify user displayed from table header as "outBreak|TableHeader.Column3"
    Then verify user displayed from table header as "outBreak|TableHeader.Column4"
    Then verify user displayed from table header as "outBreak|TableHeader.Column5"
    Then verify user displayed from table header as "outBreak|TableHeader.Column6"
    Then verify user displayed from table header as "outBreak|TableHeader.Column7"
    Then verify user displayed from table header as "outBreak|TableHeader.Column8" with no visual text
    Then verify user displayed from table header as "outBreak|TableHeader.Column9" with no visual text

  @TST-572 @AYERSHUJA @IC_Module @e2eSprint @sprint10 @SP_RefactorTest @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Active Cases - Filter by Site/Status
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user consider pre-requsite against infectionControl
    Then user able to click on Parameter filter
    Then verify pop-up "Case Search"
    Then verify user able to see the parameter list as "outBreak|ParameterList.Parameter1"
    Then verify user able to see the parameter list as "outBreak|ParameterList.Parameter2"
    Then verify user able to see the parameter list as "outBreak|ParameterList.Parameter3"
    Then verify user able to see the parameter list as "outBreak|ParameterList.Parameter4"
    Then verify user able to see the parameter list as "outBreak|ParameterList.Parameter5"
    Then verify user able to see the parameter list as "outBreak|ParameterList.Parameter7"
    Then verify user able to see the parameter list as "outBreak|ParameterList.Parameter8"
    Then verify user able to see the parameters list as "outBreak|ParameterList.Parameter9"
    Then user selects "Status" with value "outBreak|CaseStatus.StatusClosed"
    Then user clicks on tick-checkbox
    Then user able to click on Parameter filter
    Then verify pop-up "Case Search"
    Then user selects "Status" with value "outBreak|CaseStatus.StatusOpen"
    Then user selects "Location" with value "outBreak|CaseSite.Location2"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-600 @AYERSHUJA @IC_Module @e2eSprint @sprint10 @SP_RefactorTest @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Set End Date for a Case
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user able to click on Parameter filter
    Then verify pop-up "Case Search"
    Then user clicks on the action "Date Range"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month2" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox

  @TST-604 @AYERSHUJA @IC_Module @e2eSprint @sprint10 @SP_RefactorTest @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Edit Actions
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then user clicks on "Actions" on popup
    Then verify pop-up "Case Actions"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Add Action"
    Then user clicks on the action "Description"
    Then user enters "outBreak|bedDaysLost.text" in text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Add Action"
    Then user clicks on tick-checkbox
    Then verify pop-up "Action Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Actions"
    Then user click on last record in the table of popup
    Then user clicks on action menu on popup
    Then verify pop-up "Action Actions"
    Then user clicks on "Edit" on popup
    Then user clicks on the action "Description"
    Then user clears the text-area
    Then user enters "outBreak|TextSample.UpdatedText" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Add Action"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-620 @AYERSHUJA @IC_Module @e2eSprint @sprint10 @sP19RefactorFailed
  Scenario: V3 Documents : IC Module : Edi t Outbreaks - Verify Linked Case List
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then verify the table is populated
    Then verify user displayed from table header as "outBreak|TableHeader.Column1"
    Then verify user displayed from table header as "outBreak|TableHeader.Column2"
    Then verify user displayed from table header as "outBreak|TableHeader.Column3"
    Then verify user displayed from table header as "outBreak|TableHeader.Column4"
    Then verify user displayed from table header as "outBreak|TableHeader.Column5"
    Then verify user displayed from table header as "outBreak|TableHeader.Column6"
    Then verify user displayed from table header as "outBreak|TableHeader.Column7"
    Then verify the table is populated
    Then user click on last record in the table
    Then verify pop-up "Outbreak Details"
    Then user clicks on "Linked Cases" on popup
    Then verify pop-up "Outbreak Cases"
    Then user clicks on action menu on popup
    Then verify pop-up "Patient Case Menu"
    Then user clicks on "Add" on popup
    Then user selects "Location" with value "outBreak|CaseSite.Location2"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Search Results"
    Then user click on last record in the table of popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Patient Case Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-574 @AYERSHUJA @IC_Module @e2eSprint @sprint10 @SP_RefactorTest @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Active Cases - Verify Case Summary
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then verify the table is populated
    Then user verify the Open or Active Case list
    Then user clicks on "Open" on popup
    Then user clicks on tick-checkbox
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column1"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column2"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column3"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column4"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column5"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column6"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column7"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column8"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column9"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column10"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column11"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column12"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column13"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column14"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column15"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column16"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column17"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column18"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column19"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column20"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column21"

  @TST-586 @AYERSHUJA @IC_Module @e2eSprint @sprint10 @SP_RefactorTest @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Outbreaks -  Create New  Outbreak
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then verify the table is populated
   #    creation of OutBreak
    Then user clicks on the plus icon
    Then verify pop-up "Create Outbreak"
    Then user selects "Organisation" with value "outBreak|outBreakCreation.Organisation" while creating outbreak
    Then user selects "Ward/Unit" with value "outBreak|outBreakCreation.Ward" while creating outbreak
    Then user selects "Assignee" with value "outBreak|outBreakCreation.Assignee" while creating outbreak
    Then user selects "Primary Symptom" with value "outBreak|outBreakCreation.PrimarySymptom" while creating outbreak
    Then user clicks on the action "Outbreak Start"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user selects Hours HH as "outBreak|DateTime.Hour" Minutes MM as "outBreak|DateTime.Minutes" and Seconds SS as "outBreak|DateTime.Sec"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Bed Days Lost"
    Then user enters "outBreak|bedDaysLost.days" in text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Outbreak Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Outbreak Details"
    Then verify "Status" with Label value "outBreak|outbreakDetails.status" in pop-up details
    Then verify "Updated By" with Label value "outBreak|outbreakDetails.UpdatedBy" in pop-up details
    Then verify "Outbreak Location" in pop-up details
    Then verify "Site" with Label value "outBreak|outBreakCreation.Organisation" in pop-up details
    Then verify "Ward/Unit" with Label value "outBreak|outBreakCreation.Ward" in pop-up details
    Then verify "Operational Status" with Label value "outBreak|outbreakDetails.status" in pop-up details
    Then verify "Bed Days Lost" with Label value "outBreak|bedDaysLost.days" in pop-up details
    Then verify "Operational Comments" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Outbreak Information" in pop-up details
    Then verify "Primary Organism" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Primary Symptom" with Label value "outBreak|outBreakCreation.PrimarySymptom" in pop-up details

  @TST-624 @AYERSHUJA @IC_Module @SP_RefactorTest @e2eSprint @sprint10 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Complete an Action and verify Action Details
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user consider pre-requsite against infectionControl
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then user clicks on "Actions" on popup
    Then verify pop-up "Case Actions"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Add Action"
    Then user clicks on the action "Description"
    Then user enters "outBreak|bedDaysLost.text" in text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Add Action"
    Then verify "Description" with Label value "outBreak|bedDaysLost.text" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Action Summary"
    Then verify "Description" with Label value "outBreak|bedDaysLost.text" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Actions"
    Then user click on First record in the table of popup
    Then verify user able to see the label on popup as "outBreak|ActionDetail.Column1"
    Then verify user able to see the label on popup as "outBreak|ActionDetail.Column2"
    Then verify user able to see the label on popup as "outBreak|ActionDetail.Column3"
    Then verify user able to see the label on popup as "outBreak|ActionDetail.Column4"
    Then verify user able to see the label on popup as "outBreak|ActionDetail.Column5"
    Then verify user able to see the label on popup as "outBreak|ActionDetail.Column6"
    Then verify user able to see the label on popup as "outBreak|ActionDetail.Column7"
    Then verify "Status" with Label value "outBreak|ActionDetailData.Status" in pop-up details
    Then verify "Updated By" with Label value "outBreak|ActionDetailData.UpdatedBy" in pop-up details
    Then verify "Description" with Label value "outBreak|bedDaysLost.text" in pop-up details
    Then verify "Completed On" with Label value "outBreak|ActionDetailValue.CompletedOn" in pop-up details
    Then verify "Completed By" with Label value "outBreak|ActionDetailValue.CompletedBy" in pop-up details
    Then verify "Completed Comments" with Label value "outBreak|ActionDetailValue.CompletedComments" in pop-up details
    Then user clicks on action menu on popup
    Then verify pop-up "Action Actions"
    Then user clicks on "Complete Action" on popup
    Then verify pop-up "Add Action"
    Then user clicks on "Completed Comments" on popup
    Then verify pop-up "Action Complete Comments"
    Then user enter value "Completed Test" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Add Action"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify user able to see the label on popup as "outBreak|CaseAction.resolved"

  @TST-625 @AYERSHUJA @IC_Module @SP_RefactorTest @e2eSprint @sprint10 @@sP19RefactorFailed @inlineno134itshouldbeOutbreakLocationaspertestcase @bug:AfterCreatingStaffCaseAndClickOnItshowsEndedOnas"InvalidDate"WhichIsWrong
  Scenario: V3 Documents : IC Module : Outbreaks - Add / Edit Involved Staff
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then verify the table is populated
    Then user click on last record in the table
    Then verify pop-up "Outbreak Details"
    Then user clicks on menu icon
    Then user click on Edit on outbreak Menu
    Then verify pop-up "Edit Outbreak"
    Then verify "Outbreak Information" in pop-up details
    Then verify "Operational Information" in pop-up details
    Then user clicks on the action "Outbreak Start"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then user clicks on "Involved Staff"
    Then user clicks on the pop-up plus icon
    Then user clicks on "Staff Name"
    Then user enters "outBreak|staffCase.staffName" in the text-area
    Then user clicks on the Substantial as "Yes"
#    Then user clicks on <string> selecting Yes or No
    Then user clicks on "Grade"
    Then user enter value "22" in the text-area
    Then user clicks on "Started On"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Staff Case"
    Then user clicks on tick-checkbox
    Then verify pop-up "Staff Case Summary"
    Then verify "Staff Name" with Label value "outBreak|staffCase.staffName" in pop-up details
    Then verify "Grade" with Label value "outBreak|bedDaysLost.days" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Staff Cases"
    Then user click on last record in the table of popup
    Then verify pop-up "Staff Case Details"
    Then verify "Status" with Label value "outBreak|staffCase.Status" in pop-up details
    Then verify "Staff Name" with Label value "outBreak|staffCase.staffName" in pop-up details
    Then verify "Grade" with Label value "outBreak|bedDaysLost.days" in pop-up details
#    Then verify "Ended On" with Label value "outBreak|staffCase.EndedOn" in pop-up details

  @TST-575 @AYERSHUJA @IC_Module @e2eSprint @sprint10 @SP_RefactorTest @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Edit /Update Case Details
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column1"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column2"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column3"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column4"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column5"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column6"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column7"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column8"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column9"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column10"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column11"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column12"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column13"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column14"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column15"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column16"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column17"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column18"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column19"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column20"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column21"
    Then user clicks on action menu on popup
    Then verify pop-up "Case Menu"
    Then user clicks on the action "Edit Case Details"
    Then verify pop-up "Edit Case"
    Then verify user able to see the label on popup as "outBreak|CaseInformation.Parameter1"
    Then verify user able to see the label on popup as "outBreak|CaseInformation.Parameter2"
    Then verify user able to see the label on popup as "outBreak|CaseInformation.Parameter3"
    Then verify user able to see the label on popup as "outBreak|CaseInformation.Parameter4"
    Then verify user able to see the label on popup as "outBreak|CaseInformation.Parameter5"
    Then verify user able to see the label on popup as "outBreak|CaseInformation.Parameter6"
    Then verify user able to see the label on popup as "outBreak|CaseInformation.Parameter7"
    Then user verify the records of patient
    Then user selects "Bed Management" with value "outBreak|EditCase.BedManagement"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Details"
    Then verify "Status" with Label value "outBreak|staffCase.Status" in pop-up details
    Then verify user displayed from table header as "outBreak|CaseDetail.Column4"

  @TST-598 @AYERSHUJA @IC_Module  @e2eSprint @SP_RefactorTest @sprint11 @refactoredSprint17 @RefactoredTestcases @Bug:OnEditUnableToSelectTheOrganism
  Scenario: V3 Documents : IC Module : Cases - Add Organism
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user consider pre-requsite against infectionControl
    Then user click on First record in the table
    Then verify pop-up "Case Details"
    Then verify "Case Information" in pop-up details
    Then verify "Patient Information" in pop-up details
    Then verify "Isolation Information" in pop-up details
    Then verify "Review" in pop-up details
    Then user clicks on "Infection Events" on popup
    Then verify pop-up "Case Infections"
    Then verify "Infection Events" in pop-up details
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Create Infection Event"
    Then verify "Infection Information" in pop-up details
    Then user clicks on the action "Organism"
    Then user inputs "Abiotrophia defectiva" in the filter option
    Then user selects "Abiotrophia defectiva" option from the popUp

  @TST-577 @AYERSHUJA @IC_Module @e2eSprint @sprint11 @refactoredSprint17 @a2e @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Add Signs & Symptoms
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user consider pre-requsite against infectionControl
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then user clicks on "Symptoms" on popup
    Then verify pop-up "Case Symptoms"
    Then user clicks on the pop-up plus icon
    Then verify user able to see the label on popup as "outBreak|SymptomsList.Parameter1"
    Then verify user able to see the label on popup as "outBreak|SymptomsList.Parameter2"
    Then verify user able to see the label on popup as "outBreak|SymptomsList.Parameter3"
    Then verify user able to see the label on popup as "outBreak|SymptomsList.Parameter4"
    Then user selects "Sign/Symptom" with the value "outBreak|SymptomsValue.SignSymptom"
    Then user clicks on the action "Date of Onset"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user selects "Care Setting" with the value "outBreak|SymptomsValue.CareSetting"
    Then user clicks on the action "Notes"
    Then user enters "outBreak|bedDaysLost.days" in text-area
    Then user clicks on tick-checkbox

  @TST-580 @AYERSHUJA @IC_Module @e2eSprint @sprint11 @refactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Select a Case and Verify Patient Info
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
#    Then user consider pre-requsite against infectionControl for demographics
    Then user consider pre-requsite against infectionControl with closed case & Community service
    Then user clicks on the table with patient name "DRABEK, Mario Janice"
    Then wait for the page to load
    Then verify pop-up "Case Details"
    Then verify case detail is displayed
    Then verify patients demographics exist
    Then verify surname as "Drabek" and forename as "Mario Janice"
    Then user verify patients DOB as "18-Jan-1959" and year as "(63y)"
    Then user verify Black header shows up with patient gender "Female"
    Then verify NHS no as "654 146 1414"

  @TST-581 @AYERSHUJA @IC_Module @e2eSprint @sprint11 @refactoredSprint17 @RefactoredTestcases @tickButtonAvailableOnlyOnOpenOutbreaks
  Scenario: V3 Documents : IC Module : Outbreaks - Add Cases
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then verify the table is populated
    Then user click on last record in the table
    Then verify pop-up "Outbreak Details"
    Then user clicks on "Linked Cases" on popup
    Then verify pop-up "Outbreak Cases"
    Then wait for popup loading
    Then user clicks on action menu on popup
    Then user clicks on "Add" on popup
    Then verify pop-up "Case Search"
    Then user selects "Location" with value "outBreak|CaseSite.Location2"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Case Search Results"
    Then user selects first Linked Case in the filtered rows
    Then user clicks on tick-checkbox
    Then verify pop-up "Patient Case Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-592 @AYERSHUJA @IC_Module @e2eSprint @sprint11 @refactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Select a Case and verify whether the Case is involved in an Outbreak
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user consider pre-requsite against infectionControl
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then wait for the page to load
    Then verify the table is populated
    Then verify header "outBreak|HeaderCaseList.NameHeader" of case list
    Then verify header "outBreak|HeaderCaseList.NhsHeader" of case list
    Then verify header "outBreak|HeaderCaseList.WardHeader" of case list
    Then verify header "outBreak|HeaderCaseList.BedMHeader" of case list
    Then verify header "outBreak|HeaderCaseList.SiteHeader" of case list
    Then verify header "outBreak|HeaderCaseList.AssigneeHeader" of case list
    Then verify header "outBreak|HeaderCaseList.OrganismHeader" of case list
    Then verify header "outBreak|HeaderCaseList.StatusHeader" of case list
    Then verify header "outBreak|HeaderCaseList.ReviewHeader" of case list

  @TST-622 @AYERSHUJA @IC_Module @e2eSprint @sprint11
  Scenario: V3 Documents : Ic Module : Outbreaks - Verify Outbreak Information on the Outbreak Details Page (Primary Organism & Symptom)
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then verify the table is populated
    Then user clicks on the plus icon
    Then verify pop-up "Create Outbreak"
    Then user selects "Organisation" with value "outBreak|outBreakCreation.Organisation" while creating outbreak
    Then user selects "Ward/Unit" with value "outBreak|outBreakCreation.Ward" while creating outbreak
    Then user selects "Assignee" with value "outBreak|outBreakCreation.Assignee" while creating outbreak
    Then user selects "Primary Symptom" with value "outBreak|outBreakCreation.PrimarySymptom" while creating outbreak
    Then user clicks on the action "Outbreak Start"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user selects Hours HH as "outBreak|DateTime.Hour" Minutes MM as "outBreak|DateTime.Minutes" and Seconds SS as "outBreak|DateTime.Sec"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Bed Days Lost"
    Then user enters "outBreak|bedDaysLost.days" in text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Outbreak Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Outbreak Details"
    Then user clicks on cross icon
    Then user clicks on Location filter Parameter of Outbreak
    Then user check "outBreak|outBreakCreation.Organisation" in Organization Parameter
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
#    Then wait for the page to load
#    Then user click on last record in the table
#    Then verify pop-up "Outbreak Details"
#    Then verify "Primary Organism" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
#    Then verify "Infection Events" with count "outBreak|outbreakDetails.InitialCount" in pop-up details

  @TST-579 @AYERSHUJA @IC_Module @e2eSprint @sprint11 @refactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Close a Case - Record Closure Info
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user verify the Open or Active Case list
    Then user clicks on "Open" on popup
    Then user clicks on tick-checkbox
    Then user click on First record in the table
    Then user clicks on action menu on popup
    Then user clicks on "Close Case" on popup
    Then verify "outBreak|CloseCaseModalPage.Section1" fields in pop-up details
    Then verify "outBreak|CloseCaseModalPage.Section2" fields in pop-up details
    Then user clicks on "Closure Criteria" on popup
    Then verify data is populated on popup detail
    Then user selects "Died"
    Then user clicks on "Comments" on popup
    Then user enters "outBreak|CloseCaseModalPage.Comments" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Close Case"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox

  @TST-607 @AYERSHUJA @IC_Module @e2eSprint @sprint11 @refactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module :  Cases - Edit / Update the Status of Infection Event
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user consider pre-requsite against infectionControl
    Then user click on last record in the table
    Then wait for the page to load
    Then verify pop-up "Case Details"
    Then verify "outBreak|CaseDetail.Column2" in pop-up detail
    Then verify "outBreak|CaseDetail.Column3" in pop-up detail
    Then verify "outBreak|CaseDetail.CaseInfo" in pop-up detail
    Then user clicks on "Infection Events" on popup
    Then verify pop-up "Case Infections"
    Then user clicks on the pop-up plus icon
    Then verify "Suspected On" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Confirmed On" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Notes" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then user selects "Organism" with the value "outBreak|CreateInfectionEventsValue.Organism"
    Then user selects "Specimen Site" with the value "outBreak|CreateInfectionEventsValue.SpecimenSite"
    Then user selects "Specimen Type" with the value "outBreak|CreateInfectionEventsValue.SpecimenType"
    Then user selects "Care Setting" with the value "outBreak|CreateInfectionEventsValue.CareSetting"
    Then user clicks on the action "Suspected On"
    Then user input the current date and time
    Then user clicks on the action "Confirmed On"
    Then user input the current date and time
    Then user clicks on the action "Sample Number"
    Then user enters "outBreak|TextSample.TextAreaTest" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user click on last record in the table of popup

  @TST-570 @AYERSHUJA @IC_Module @e2eSprint @sprint11 @refactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Start / Create a Case manually by entering Patient Details
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
    Then user clicks on plus icon on top right corner of the page
    Then verify data is populated on case detail
    Then verify pop-up "Create Case"
    Then verify "outBreak|CreateCaseDetail.SectionCaseInfo" in pop-up detail
    Then verify "outBreak|CreateCaseDetail.SectionIsolationInfo" in pop-up detail
    Then verify "Patient Involved" is mandatory Field in the pop-up
    Then verify "Bed Management" is mandatory Field in the pop-up
    Then verify "Organisation" is mandatory Field in the pop-up
    Then user clicks on "Patient Involved" on popup
    Then user inputs with random Number
    Then user clicks on the tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Patient Information"
    Then verify "outBreak|PatientInformation.SectionActions" in pop-up detail
#    create clinical Record
    Then user clicks on "Create New Patient" on popup
    Then verify "NHS Number" is mandatory Field in the pop-up
    Then verify "Title" is mandatory Field in the pop-up
    Then verify "Surname" is mandatory Field in the pop-up
    Then verify "Forename" is mandatory Field in the pop-up
    Then verify "Date Of Birth" is mandatory Field in the pop-up
    Then verify "Sex" is mandatory Field in the pop-up
    Then user clicks on "NHS Number" on popup
    Then user inputs with random Number upto 10 digits
    Then user saves the number of records for this patient
    Then user selects "Title" with value "outBreak|ClinicalRecordDetailsValue.Title" while creating Case
    Then user inputs "Surname" with value "outBreak|ClinicalRecordDetailsValue.Surname" clickable
    Then user inputs "Forename" with value "outBreak|ClinicalRecordDetailsValue.Forename" clickable
    Then user clicks on the action "Date Of Birth"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user selects "Sex" with value "outBreak|ClinicalRecordDetailsValue.Sex" while creating Case
    Then user inputs "Address" with value "outBreak|ClinicalRecordDetailsValue.Address" clickable
    Then user inputs "Town/City" with value "outBreak|ClinicalRecordDetailsValue.Town/City" clickable
    Then user inputs "County" with value "outBreak|ClinicalRecordDetailsValue.County" clickable
    Then user inputs "Postcode" with value "outBreak|ClinicalRecordDetailsValue.Postcode" clickable
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Clinical Record Summary"
    Then verify "Title" with Label value "outBreak|ClinicalRecordDetailsValue.Title" in pop-up details
    Then verify "Surname" with Label value "outBreak|ClinicalRecordDetailsValue.Surname" in pop-up details
    Then verify "Forename" with Label value "outBreak|ClinicalRecordDetailsValue.Forename" in pop-up details
    Then verify "Sex" with Label value "outBreak|ClinicalRecordDetailsValue.Sex" in pop-up details
#    Then verify "Address" with Label value "outBreak|ClinicalRecordDetailsValue.Address" in pop-up details
    Then verify "Town/City" with Label value "outBreak|ClinicalRecordDetailsValue.Town/City" in pop-up details
    Then verify "County" with Label value "outBreak|ClinicalRecordDetailsValue.County" in pop-up details
    Then verify "Postcode" with Label value "outBreak|ClinicalRecordDetailsValue.Postcode" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Clinical Record Created" after completing the form
    Then user clicks on tick-checkbox
#    create case
    Then user clicks on the action "Patient Involved"
    Then verify pop-up "Patient Identifier Search"
    Then user enters "outBreak|CreateCase.NHSNumber" in text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then verify "Patient Identity Check" after completing the form
    Then user clicks on "Continue" on popup
    Then verify pop-up "Create Case"
    Then user selects "Assignee" with value "outBreak|CreateCase.Assignee" while creating Case
    Then user selects "Bed Management" with value "outBreak|CreateCase.Bed Management" while creating Case
    Then user selects "Organisation" with value "outBreak|CreateCase.Organisation" while creating Case
    Then user clicks on the action "Date Of Isolation"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user clicks on the Substantial as "Yes"
    Then user selects "Reason For Failure To Isolate" with value "outBreak|CreateCase.ReasonForFailureToIsolate" while creating Case
    Then user clicks on tick-checkbox
    Then user clicks on the action "Case Summary"
    Then verify "Assignee" with Label value "outBreak|CreateCase.Assignee" in pop-up details
    Then verify "Bed Management" with Label value "outBreak|CreateCase.Bed Management" in pop-up details
    Then verify "Organisation" with Label value "outBreak|CreateCase.Organisation" in pop-up details
    Then verify "Reason For Failure To Isolate" with Label value "outBreak|CreateCase.ReasonForFailureToIsolate" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"

  @TST-608 @AYERSHUJA @IC_Module @e2eSprint @sprint11 @refactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Filter Cases by Start Date and End Date
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
#    Then user consider pre-requsite against infectionControl
    Then wait for the page to load
    Then user able to click on Date Parameter filter
    Then verify pop-up "Select Start Date"
    Then user selects date DD as "outBreak|DateFilter.Date" Month as "outBreak|DateFilter.Month" and year as "outBreak|DateFilter.OneYearBefore"
    Then user clicks on tick-checkbox
    Then verify pop-up "Select End Date"
    Then user selects date DD as "outBreak|DateFilter.Date" Month as "outBreak|DateFilter.Month" and year as "outBreak|DateFilter.Year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox
    Then wait for the page to load
    Then verify "outBreak|DateFilter.MonthShort" displayed as the filter parameters

  @TST-602 @AYERSHUJA @IC_Module @e2eSprint @sprint11 @refactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Select a Case and Verify Case Details Modal Page
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user consider pre-requsite against infectionControl with closed case & Community service
    Then user clicks on the table with patient name "DRABEK, Mario Janice"
    Then verify pop-up "Case Details"
    Then verify patients demographics exist
    Then verify "Status" is in "green" Color in the pop-up
    Then verify "Status" with Label value "outBreak|CaseDetailValue2.Status" in pop-up details
    Then verify "Updated By" with Label value "outBreak|CaseDetailValue2.UpdatedBy" in pop-up details
    Then verify "Created On" with Label value "outBreak|CaseDetailValue2.CreatedOn" in pop-up details
    Then verify "Case Site" with Label value "outBreak|CaseDetailValue2.CaseSite" in pop-up details
    Then verify "Bed Management" is in "red" Color in the pop-up
    Then verify "Bed Management" with Label value "outBreak|CaseDetailValue2.BedManagement" in pop-up details
    Then verify "Involved In Outbreak" with Label value "outBreak|CaseDetailValue2.InvolvedInOutbreak" in pop-up details
    Then verify "Infection Events" is in "red" Color in the pop-up
    Then verify "Infection Events" with count "outBreak|CaseDetailValue2.InfectionEvents" in pop-up details
    Then verify "Symptoms" is in "green" Color in the pop-up
    Then verify "Symptoms" with count "outBreak|CaseDetailValue2.Symptoms" in pop-up details
    Then verify "Actions" is in "red" Color in the pop-up
    Then verify "Actions" with count "outBreak|CaseDetailValue2.Actions" in pop-up details
    Then verify "Reviews" is in "blue" Color in the pop-up
    Then verify "Reviews" with count "outBreak|CaseDetailValue2.Reviews" in pop-up details
    Then verify "Historic Cases" is in "blue" Color in the pop-up
    Then verify "Historic Cases" with count "outBreak|CaseDetailValue2.HistoricCases" in pop-up details
    Then verify "Documents" is in "blue" Color in the pop-up
    Then verify "Documents" with count "outBreak|CaseDetailValue2.Documents" in pop-up details
    Then verify "Isolated Within Timeframe" with Label value "outBreak|CaseDetailValue2.IsolatedWithinTimeframe" in pop-up details

  @TST-606 @AYERSHUJA @IC_Module @e2eSprint @sprint11 @refactoredSprint17 @RefactoredTestcases @Bug:SystemdisplaystheEventCounthighlightedInRedNotInGrey
  Scenario: V3 Documents : IC Module : Cases - Add / Edit Infection Events
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user consider pre-requsite against infectionControl
    Then user click on First record in the table
#    create Infection Events
    Then verify pop-up "Case Details"
    Then user clicks on "Infection Events" on popup
    Then verify pop-up "Case Infections"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Create Infection Event"
    Then verify "outBreak|CreateInfectionEventsFields.Field1" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field2" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field3" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field4" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field5" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field6" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field7" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field8" fields in pop-up details
    Then user selects "Organism" with the value "outBreak|CreateInfectionEventsValue.Organism"
    Then user selects "Specimen Site" with the value "outBreak|CreateInfectionEventsValue.SpecimenSite"
    Then user selects "Specimen Type" with the value "outBreak|CreateInfectionEventsValue.SpecimenType"
    Then user selects "Care Setting" with the value "outBreak|CreateInfectionEventsValue.CareSetting"
    Then user clicks on the action "Suspected On"
    Then user input the current date and time
    Then user clicks on the action "Confirmed On"
    Then user input the current date and time
    Then user clicks on the action "Sample Number"
    Then user enters "outBreak|TextSample.TextAreaTest" in the text-area
    Then verify "Organism" with Label value "outBreak|CreateInfectionEventsValue.Organism" in pop-up details
    Then verify "Specimen Site" with Label value "outBreak|CreateInfectionEventsValue.SpecimenSite" in pop-up details
    Then verify "Specimen Type" with Label value "outBreak|CreateInfectionEventsValue.SpecimenType" in pop-up details
    Then verify "Care Setting" with Label value "outBreak|CreateInfectionEventsValue.CareSetting" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-583 @AYERSHUJA @IC_Module @e2eSprint @sprint11 @refactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module: Record Outbreak Case Review
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then verify the table is populated
    Then user clicks on Location filter Parameter of Outbreak
    Then check "Diana Princess of Wales Hospital" role permissions to "active"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user click on parameter
    Then user clicks on the action "Site"
    Then check "Diana Princess of Wales Hospital" role permissions to "active"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user click on last record in the table
    Then verify pop-up "Outbreak Details"
    Then user clicks on "Reviews" on popup
    Then verify pop-up "Outbreak Reviews"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Create Review"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter1"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter3"
    Then user clicks on the action "Next Review"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Comments"
    Then verify pop-up "Review Comments"
    Then user enters "outBreak|TextSample.TextAreaTest" in text-area
    Then user clicks on tick-checkbox
    Then verify "Comments" with Label value "outBreak|TextSample.TextAreaTest" in pop-up details
    Then verify "outBreak|DateFilter.MonthShortJuly" displayed as the filter parameters
    Then user clicks on tick-checkbox
    Then verify pop-up "Review Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-619 @AYERSHUJA @IC_Module @e2eSprint @sprint11 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Verify Bed Management options for a selected Case
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on last record in the table
    Then wait for the page to load
    Then verify pop-up "Case Details"
    Then user clicks on menu icon
    Then verify pop-up "Case Menu"
    Then user clicks on "Edit Case Details" on popup
    Then user selects "Bed Management" with value "outBreak|EditCaseBedManagement.BedManagementColor1"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify "Bed Management" is in "red" Color in the pop-up
    Then verify "Bed Management" with Label value "outBreak|EditCaseBedManagement.BedManagementColor1" in pop-up details
    Then user clicks on menu icon
    Then verify pop-up "Case Menu"
    Then user clicks on "Edit Case Details" on popup
    Then user selects "Bed Management" with value "outBreak|EditCaseBedManagement.BedManagementColor2"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify "Bed Management" is in "amber" Color in the pop-up
    Then verify "Bed Management" with Label value "outBreak|EditCaseBedManagement.BedManagementColor2" in pop-up details
    Then user clicks on menu icon
    Then verify pop-up "Case Menu"
    Then user clicks on "Edit Case Details" on popup
    Then user selects "Bed Management" with value "outBreak|EditCaseBedManagement.BedManagementColor3"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify "Bed Management" is in "green" Color in the pop-up
    Then verify "Bed Management" with Label value "outBreak|EditCaseBedManagement.BedManagementColor3" in pop-up details

  @TST-603 @AYERSHUJA @IC_Module @e2eSprint @sprint11 @refactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Add Actions
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on last record in the table
    Then wait for the page to load
    Then verify pop-up "Case Details"
    Then user clicks on "Actions" on popup
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Add Action"
    Then user clicks on the action "Description"
    Then user enters "outBreak|bedDaysLost.text" in text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Add Action"
    Then user clicks on tick-checkbox
    Then verify pop-up "Action Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Actions"
    Then verify Review as "outBreak|bedDaysLost.text"

  @TST-627 @AYERSHUJA @IC_Module @sprint12 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Select a Site & Filter  the Case list by Organism
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
    Then user click on parameter
    Then verify "outBreak|CaseSearch.AssigneeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.BedManagementLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.DateRangeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OriginSiteLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.LocationLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OrganismLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.PatientLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.StatusLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.SymptomLabel" is displayed as Popup Case Search
    Then user click on parameter
    Then wait for popup loading
    Then verify pop-up "Case Search"
    Then user clicks on the action "Origin Site"
    Then user check "Goole and District Hospital" in Organ Site Parameter
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox
    Then verify "Goole and District Hospital" is displayed as Case list

  @TST-632 @AYERSHUJA @IC_Module @sprint12 @needClientUnderstanding
  Scenario: V3 Documents : IC Module : Outbreaks - Verify Patient List  when Linking cases by ward selection
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module

  @TST-633 @AYERSHUJA @IC_Module @sprint12 @ClearMeanAll @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Filter Cases by Bed Management options
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
    Then user click on parameter
    Then verify "outBreak|CaseSearch.AssigneeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.BedManagementLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.DateRangeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OriginSiteLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.LocationLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OrganismLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.PatientLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.StatusLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.SymptomLabel" is displayed as Popup Case Search
    Then user clicks on the action "Bed Management"
    Then user check "Red" in Bed Management Parameter
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox
    Then verify "Red" is displayed as Case list
    Then user click on parameter
    Then user clicks on the action "Bed Management"
    Then verify pop-up "Bed Management Status"
    Then user check "Amber" in Bed Management Parameter
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox
    Then verify "Amber" is displayed as Case list
    Then user click on parameter
    Then user clicks on the action "Bed Management"
    Then verify pop-up "Bed Management Status"
    Then user check "Green" in Bed Management Parameter
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox
    Then verify "Green" is displayed as Case list
    Then user click on parameter
    Then user clicks on the action "Bed Management"
    Then verify pop-up "Bed Management Status"
    Then user clicks on "Clear" on popup
    Then user clicks on tick-checkbox
    Then user clicks on "Case Search" on popup
    Then user clicks on tick-checkbox

  @TST-605 @AYERSHUJA @IC_Module @sprint12 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Verify Infection Events associated with a case
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user consider pre-requsite against infectionControl with closed case & Community service
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then user clicks on "Infection Events" on popup
    Then verify pop-up "Case Infections"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Create Infection Event"
    Then verify "outBreak|CreateInfectionEventsFields.Field1" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field2" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field3" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field4" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field5" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field6" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field7" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field8" fields in pop-up details
    Then user selects "Organism" with the value "outBreak|CreateInfectionEventsValue.Organism"
    Then user selects "Specimen Site" with the value "outBreak|CreateInfectionEventsValue.SpecimenSite"
    Then user selects "Specimen Type" with the value "outBreak|CreateInfectionEventsValue.SpecimenType"
    Then user selects "Care Setting" with the value "outBreak|CreateInfectionEventsValue.CareSetting"
    Then user clicks on the action "Suspected On"
    Then user input the current date and time
    Then user clicks on the action "Confirmed On"
    Then user input the current date and time
    Then user clicks on the action "Sample Number"
    Then user enters "outBreak|TextSample.TextAreaTest" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user click on last record in the table of popup
    Then verify pop-up "Infection Event Details"
    Then user clicks on action menu on popup
    Then user clicks on "Edit" on popup
    Then user selects "Care Setting" with the value "outBreak|CreateInfectionEventsValue.CareSettingOption2"
    Then verify "Care Setting" with Label value "outBreak|CreateInfectionEventsValue.CareSettingOption2" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user click on last record in the table of popup
    Then verify pop-up "Infection Event Details"
    Then verify "Status" with Label value "outBreak|InfectionEventDetail.Status" in pop-up details
    Then verify "Updated By" with Label value "outBreak|InfectionEventDetail.UpdatedBy" in pop-up details
    Then verify "Manually Created" with Label value "outBreak|InfectionEventDetails.ManuallyCreated" in pop-up details
    Then verify "Organism" with Label value "outBreak|CreateInfectionEventsValue.Organism" in pop-up details
    Then verify "Care Setting" with Label value "outBreak|CreateInfectionEventsValue.CareSettingOption2" in pop-up details
    Then verify "Sample Number" with Label value "outBreak|TextSample.TextAreaTest" in pop-up details
    Then verify "Request" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Location" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Clinician" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Specimen" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Specimen Site" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Specimen Type" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Result" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Resistance" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Sensitive" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Comments" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details

  @TST-621 @AYERSHUJA @IC_Module @sprint12 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Filter Cases by Assignee
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
    Then user consider pre-requsite against infectionControl
    Then user click on parameter
    Then verify "outBreak|CaseSearch.AssigneeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.BedManagementLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.DateRangeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OriginSiteLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.LocationLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OrganismLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.PatientLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.StatusLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.SymptomLabel" is displayed as Popup Case Search
    Then user clicks on the action "Assignee"
    Then user check "Angela Miller" in Assignee Parameter
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox
    Then verify "Angela Miller" is displayed as Case list
    Then user click on parameter
    Then user able to click on Date Parameter filter
    Then user clicks on the action "Date Range"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year2021"
    Then user clicks on tick-checkbox
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox
    Then user click on parameter
    Then user clicks on the action "Assignee"
    Then user check "Noelle Williams" in Assignee Parameter
    Then user check "Angela Miller" in Assignee Parameter
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox
    Then verify "Noelle Williams" & "Angela Miller" is displayed as Case list
    Then user click on parameter
    Then user clicks on the action "Assignee"
    Then user uncheck "Noelle Williams" Parameter
    Then user uncheck "Angela Miller" Parameter
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox

  @TST-601 @AYERSHUJA @IC_Module @sprint12 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Add Review details for a New Case
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then user clicks on "Reviews" on popup
    Then verify pop-up "Case Reviews"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Create Review"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter1"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter2"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter3"
    Then user clicks on the action "Next Review"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user selects "Sample Status" with value "outBreak|SelectSampleStatus.value"
    Then user clicks on the action "Comments"
    Then verify pop-up "Review Comments"
    Then user enters "outBreak|TextSample.TextAreaTest" in text-area
    Then user clicks on tick-checkbox
    Then verify "Sample Status" with Label value "outBreak|SelectSampleStatus.value" in pop-up details
    Then verify "Comments" with Label value "outBreak|TextSample.TextAreaTest" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Review Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then wait for 20 seconds

  @TST-610 @AYERSHUJA @IC_Module @sprint12 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Verify Case Review Details
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then user clicks on "Reviews" on popup
    Then verify pop-up "Case Reviews"
    Then user click on First record in the table of popup
    Then verify user displayed from table header as "outBreak|ReviewDetails.ParameterStatus"
    Then verify user displayed from table header as "outBreak|ReviewDetails.ParameterUpdatedOn"
    Then verify user displayed from table header as "outBreak|ReviewDetails.ParameterUpdatedBy"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter1"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter2"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter3"
    Then verify "Sample Status" with Label value "outBreak|SelectSampleStatus.value" in pop-up details
    Then verify "Comments" with Label value "outBreak|TextSample.TextAreaTest" in pop-up details

  @TST-630 @AYERSHUJA @IC_Module @sprint12 @Bug:issuewithparameter @sP19RefactorFailed
  Scenario: V3 Documents : IC Module : Outbreaks - Filter Outbreak list by selecting Multiple Sites
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then verify the table is populated
    Then verify user displayed from table header as "outBreak|TableHeader.Column1"
    Then verify user displayed from table header as "outBreak|TableHeader.Column2"
    Then verify user displayed from table header as "outBreak|TableHeader.Column3"
    Then verify user displayed from table header as "outBreak|TableHeader.Column4"
    Then verify user displayed from table header as "outBreak|TableHeader.Column5"
    Then verify user displayed from table header as "outBreak|TableHeader.Column6"
    Then verify user displayed from table header as "outBreak|TableHeader.Column7"
    Then verify user displayed from table header as "outBreak|TableHeader.Column8" with no visual text
    Then verify user displayed from table header as "outBreak|TableHeader.Column9" with no visual text
    Then user click on parameter
    Then verify pop-up "Configure Outbreak Filters"
    Then verify "outBreak|OutbreakFilters.DateRangeLabel" is displayed as Popup Case Search
    Then verify "outBreak|OutbreakFilters.SiteLabel" is displayed as Popup Case Search
    Then verify "outBreak|OutbreakFilters.UnitLabel" is displayed as Popup Case Search
    Then verify "outBreak|OutbreakFilters.StatusLabel" is displayed as Popup Case Search
    Then verify "outBreak|OutbreakFilters.OrganismLabel" is displayed as Popup Case Search
    Then verify "outBreak|OutbreakFilters.AssigneeLabel" is displayed as Popup Case Search
    Then user click on parameter
    Then user clicks on the action "Site"
    Then check "Community Services" role permissions to "active"
    Then check "Goole and District Hospital" role permissions to "active"
    Then user clicks on tick-checkbox
#    Then verify pop-up "Configure Outbreak Filters"
#    Then user clicks on tick-checkbox
#    Then verify "Community Services" & "Goole and District Hospital" is displayed as Case list
#    Then user click on parameter
#    Then user clicks on the action "Site"
#    Then user uncheck "Community Services" Parameter
#    Then user uncheck "Goole and District Hospital" Parameter
#    Then user clicks on tick-checkbox
#    Then verify pop-up "Configure Outbreak Filters"
#    Then user clicks on tick-checkbox

  @TST-617 @AYERSHUJA @IC_Module @sprint12 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Close a Case and Verify the Case list
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user consider pre-requsite against infectionControl With Selected Bed Management
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then user clicks on menu icon
    Then user clicks on "Close Case" on popup
    Then verify pop-up "Close Case"
    Then user selects "Closure Criteria" with value "outBreak|CloseCase.EditCaseDetails"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-599 @AYERSHUJA @IC_Module @sprint12 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Case List - Set a Start Date
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
    Then user consider pre-requsite against infectionControl
    Then user click on parameter
    Then user able to click on Date Parameter filter
    Then user clicks on the action "Date Range"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year2021"
    Then user clicks on tick-checkbox
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox

  @TST-593 @AYERSHUJA @IC_Module @sprint12 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Outbreaks - Add Primary Symptom
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then user click on last record in the table
    Then user clicks on action menu on popup
    Then wait for 20 seconds
    Then user clicks on "Edit" on popup
    Then verify pop-up "Edit Outbreak"
    Then user selects "Primary Symptom" with value "outBreak|EditOutBreakCreation.PrimarySymptom" while creating outbreak
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify "Primary Symptom" with Label value "outBreak|EditOutBreakCreation.PrimarySymptom" in pop-up details

  @TST-597 @AYERSHUJA @IC_Module @sprint12 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Add/ Edit Bed Management Option
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user clicks on plus icon on top right corner of the page
    Then verify data is populated on case detail
    Then verify pop-up "Create Case"
    Then verify "outBreak|CreateCaseDetail.SectionCaseInfo" in pop-up detail
    Then verify "outBreak|CreateCaseDetail.SectionIsolationInfo" in pop-up detail
    Then verify "Patient Involved" is mandatory Field in the pop-up
    Then verify "Bed Management" is mandatory Field in the pop-up
    Then verify "Organisation" is mandatory Field in the pop-up
    Then user clicks on "Patient Involved" on popup
    Then user inputs with random Number
    Then user clicks on the tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Patient Information"
    Then verify "outBreak|PatientInformation.SectionActions" in pop-up detail
#    create clinical Record
    Then user clicks on "Create New Patient" on popup
    Then verify "NHS Number" is mandatory Field in the pop-up
    Then verify "Title" is mandatory Field in the pop-up
    Then verify "Surname" is mandatory Field in the pop-up
    Then verify "Forename" is mandatory Field in the pop-up
    Then verify "Date Of Birth" is mandatory Field in the pop-up
    Then verify "Sex" is mandatory Field in the pop-up
    Then user clicks on "NHS Number" on popup
    Then user inputs with random Number upto 10 digits
    Then user saves the number of records for this patient
    Then user selects "Title" with value "outBreak|ClinicalRecordDetailsValue.Title" while creating Case
    Then user inputs "Surname" with value "outBreak|ClinicalRecordDetailsValue.Surname" clickable
    Then user inputs "Forename" with value "outBreak|ClinicalRecordDetailsValue.Forename" clickable
    Then user clicks on the action "Date Of Birth"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user selects "Sex" with value "outBreak|ClinicalRecordDetailsValue.Sex" while creating Case
    Then user inputs "Address" with value "outBreak|ClinicalRecordDetailsValue.Address" clickable
    Then user inputs "Town/City" with value "outBreak|ClinicalRecordDetailsValue.Town/City" clickable
    Then user inputs "County" with value "outBreak|ClinicalRecordDetailsValue.County" clickable
    Then user inputs "Postcode" with value "outBreak|ClinicalRecordDetailsValue.Postcode" clickable
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Clinical Record Summary"
    Then verify "Title" with Label value "outBreak|ClinicalRecordDetailsValue.Title" in pop-up details
    Then verify "Surname" with Label value "outBreak|ClinicalRecordDetailsValue.Surname" in pop-up details
    Then verify "Forename" with Label value "outBreak|ClinicalRecordDetailsValue.Forename" in pop-up details
    Then verify "Sex" with Label value "outBreak|ClinicalRecordDetailsValue.Sex" in pop-up details
    Then verify "Town/City" with Label value "outBreak|ClinicalRecordDetailsValue.Town/City" in pop-up details
    Then verify "County" with Label value "outBreak|ClinicalRecordDetailsValue.County" in pop-up details
    Then verify "Postcode" with Label value "outBreak|ClinicalRecordDetailsValue.Postcode" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Clinical Record Created" after completing the form
    Then user clicks on tick-checkbox
#    create case
    Then user clicks on the action "Patient Involved"
    Then verify pop-up "Patient Identifier Search"
    Then user enters "outBreak|CreateCase.NHSNumber" in text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then verify "Patient Identity Check" after completing the form
    Then user clicks on "Continue" on popup
    Then verify pop-up "Create Case"
    Then user selects "Assignee" with value "outBreak|CreateCase.Assignee" while creating Case
    Then user selects "Bed Management" with value "outBreak|CreateCase.Bed Management" while creating Case
    Then user selects "Organisation" with value "outBreak|CreateCase.Organisation" while creating Case
    Then user clicks on the action "Date Of Isolation"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user clicks on the Substantial as "Yes"
    Then user selects "Reason For Failure To Isolate" with value "outBreak|CreateCase.ReasonForFailureToIsolate" while creating Case
    Then user clicks on tick-checkbox
    Then user clicks on the action "Case Summary"
    Then verify "Assignee" with Label value "outBreak|CreateCase.Assignee" in pop-up details
    Then verify "Bed Management" with Label value "outBreak|CreateCase.Bed Management" in pop-up details
    Then verify "Organisation" with Label value "outBreak|CreateCase.Organisation" in pop-up details
    Then verify "Reason For Failure To Isolate" with Label value "outBreak|CreateCase.ReasonForFailureToIsolate" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"

  @TST-612 @AYERSHUJA @IC_Module @sprint12 @sP19RefactorFailed
  Scenario: V3 Documents : IC Module : Cases - Add / Edit Signs & Symptoms
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then user able to click on Date Parameter filter
    Then verify pop-up "Select Start Date"
    Then user clicks on tick-checkbox
    Then user selects date DD as "outBreak|DateFilter.Date" Month as "outBreak|DateFilter.Month" and year as "outBreak|DateFilter.Year"
    Then verify pop-up "Select End Date"
    Then user clicks on tick-checkbox
    Then user clicks on the action "Comments"
    Then verify pop-up "Review Comments"
    Then user enters "outBreak|TextSample.TextAreaTest" in text-area
    Then user clicks on tick-checkbox
    Then verify "Sample Status" with Label value "outBreak|SelectSampleStatus.value" in pop-up details
    Then verify "Comments" with Label value "outBreak|TextSample.TextAreaTest" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Review Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "outBreak|DateFilter.MonthShort" displayed as the filter parameters

  @TST-584 @AYERSHUJA @IC_Module @sprint12 @@sP19RefactorFailed
  Scenario: V3 Documents : IC Module : Edit / Update Outbreak Info
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then verify the table is populated
    Then user clicks on Location filter Parameter of Outbreak
    Then user check "outBreak|outBreakCreation.Organisation" in Organization Parameter
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user click on last record in the table
    Then verify pop-up "Outbreak Details"
    Then user clicks on "Reviews" on popup
    Then verify pop-up "Outbreak Reviews"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Create Review"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter1"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter3"
    Then user clicks on the action "Next Review"

  @TST-609 @AYERSHUJA @IC_Module @sprint13 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Filter by Status
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
    #    Pre-Requsite:
    Then user consider pre-requsite against location
    Then wait for 20 seconds
    Then user click on parameter
    Then wait for 20 seconds
    Then verify "outBreak|CaseSearch.AssigneeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.BedManagementLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.DateRangeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OriginSiteLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.LocationLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OrganismLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.PatientLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.StatusLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.SymptomLabel" is displayed as Popup Case Search
    Then user clicks on the action "Status"
    Then user clicks on "Clear" on popup
    Then user clicks on tick-checkbox
    Then verify "Open" & "Closed" is displayed as Case list
    Then user click on parameter
    Then user clicks on the action "Status"
    Then user clicks on "Open" on popup
    Then user clicks on tick-checkbox
    Then verify "Open" is displayed as Case list
    Then user click on parameter
    Then user clicks on the action "Status"
    Then user clicks on "Closed" on popup
    Then user clicks on tick-checkbox
    Then verify "Closed" is displayed as Case list

  @TST-636 @AYERSHUJA @IC_Module @sprint13 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : Ic Module : Case List - Verify Historic Cases associated with a Selected Case
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
#    Pre-Requsite:
    Then user consider pre-requsite against location
    Then wait for 20 seconds
    Then user click on parameter
    Then wait for 20 seconds
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox
    Then user clicks on the table with patient name "THOMPSON, Sophia James"
    Then verify pop-up "Case Details"
    Then verify "Case Information" in pop-up details
    Then verify "Patient Information" in pop-up details
    Then verify "Isolation Information" in pop-up details
    Then verify "Review" in pop-up details
    Then user clicks on "Historic Cases" on popup
    Then verify "Case History" in pop-up details
    Then user click on First record in the table of popup
    Then verify "Case Information" in pop-up details
    Then verify "Patient Information" in pop-up details
    Then verify "Isolation Information" in pop-up details

  @TST-588 @AYERSHUJA @IC_Module @sprint13 @NOStepsMention
  Scenario: V3 Documents : IC Module : Select a Case and Add Actions
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then user click on last record in the table
    Then verify pop-up "Case Details"

  @TST-591 @AYERSHUJA @IC_Module @sprint13 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : IC Module : Outbreaks - Select a Site / Location and Link Cases
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then verify the table is populated
    Then verify user displayed from table header as "outBreak|TableHeader.Column1"
    Then verify user displayed from table header as "outBreak|TableHeader.Column2"
    Then verify user displayed from table header as "outBreak|TableHeader.Column3"
    Then verify user displayed from table header as "outBreak|TableHeader.Column4"
    Then verify user displayed from table header as "outBreak|TableHeader.Column5"
    Then verify user displayed from table header as "outBreak|TableHeader.Column6"
    Then verify user displayed from table header as "outBreak|TableHeader.Column7"
    Then verify user displayed from table header as "outBreak|TableHeader.Column8" with no visual text
    Then verify user displayed from table header as "outBreak|TableHeader.Column9" with no visual text
    Then user click on last record in the table
    Then verify pop-up "Outbreak Details"
#    Then user clicks on "Linked Cases" on popup
    Then user check "Linked Cases" associated showing count

  @TST-590 @AYERSHUJA @IC_Module @sprint13 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Go to Case List and Verify expanded Patient List and Table Parameters
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column1"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column2"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column3"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column4"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column5"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column6"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column7"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column8"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column9"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column10"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column11"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column12"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column13"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column14"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column15"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column16"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column17"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column18"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column19"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column20"
    Then verify user displayed from table header as "outBreak|CaseDetail.Column21"

  @TST-616 @AYERSHUJA @IC_Module @sprint13 @DataIssue @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Filter Cases by Location (Ward /Unit)
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
#    Pre-Requsite:
    Then user consider pre-requsite against location on specific Data from Client
    Then wait for 20 seconds
#    Pre-Requsite Ends
    Then user click on parameter
    Then wait for 20 seconds
    Then verify pop-up "Case Search"
    Then verify "outBreak|CaseSearch.AssigneeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.BedManagementLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.DateRangeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OriginSiteLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.LocationLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OrganismLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.PatientLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.StatusLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.SymptomLabel" is displayed as Popup Case Search
    Then user clicks on the action "Location"
    Then check "Ward 29" role permissions to "active"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify "Ward 29" is displayed as Case list

  @TST-634 @AYERSHUJA @IC_Module @sprint13 @@sP19RefactorFailed
  Scenario: V3 Documents : IC Module : Cases :  Add / Edit Review Information
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    #    Pre-Requsite:
    Then user consider pre-requsite against location
    Then wait for the page to load
    Then user click on parameter
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then user clicks on "Reviews" on popup
    Then verify pop-up "Case Reviews"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Create Review"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter1"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter2"
    Then verify user displayed from table header as "outBreak|ReviewParametersList.Parameter3"
    Then user clicks on the action "Next Review"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user selects "Sample Status" with value "outBreak|SelectSampleStatus.value"
    Then user clicks on the action "Comments"
    Then verify pop-up "Review Comments"
    Then user enters "outBreak|TextSample.TextAreaTest" in text-area
    Then user clicks on tick-checkbox
    Then verify "Sample Status" with Label value "outBreak|SelectSampleStatus.value" in pop-up details
    Then verify "Comments" with Label value "outBreak|TextSample.TextAreaTest" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Review Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then user clicks on tick-checkbox
#    create case
    Then user clicks on the action "Patient Involved"
    Then verify pop-up "Patient Identifier Search"
    Then user enters "outBreak|CreateCase.NHSNumber" in text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Confirmation Required"
    Then verify "Patient Identity Check" after completing the form
    Then user clicks on "Continue" on popup
    Then verify pop-up "Create Case"
    Then user selects "Assignee" with value "outBreak|CreateCase.Assignee" while creating Case
    Then user selects "Bed Management" with value "outBreak|CreateCase.Bed Management" while creating Case
    Then user selects "Organisation" with value "outBreak|CreateCase.Organisation" while creating Case
    Then user clicks on the action "Date Of Isolation"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user clicks on the Substantial as "Yes"
    Then user selects "Reason For Failure To Isolate" with value "outBreak|CreateCase.ReasonForFailureToIsolate" while creating Case
    Then user clicks on tick-checkbox
    Then user clicks on the action "Case Summary"
    Then verify "Assignee" with Label value "outBreak|CreateCase.Assignee" in pop-up details
    Then verify "Bed Management" with Label value "outBreak|CreateCase.Bed Management" in pop-up details
    Then verify "Organisation" with Label value "outBreak|CreateCase.Organisation" in pop-up details
    Then verify "Reason For Failure To Isolate" with Label value "outBreak|CreateCase.ReasonForFailureToIsolate" in pop-up details
    Then user clicks on tick-checkbox
    Then user click on First record in the table of popup
    Then verify pop-up "Review Details"
    Then verify "Sample Status" with Label value "outBreak|SelectSampleStatus.value" in pop-up details
    Then verify "Comments" with Label value "outBreak|TextSample.TextAreaTest" in pop-up details

  @TST-587 @AYERSHUJA @sprint13 @IC_Module @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Close Outbreak
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then verify the table is populated
    Then verify user displayed from table header as "outBreak|TableHeader.Column1"
    Then verify user displayed from table header as "outBreak|TableHeader.Column2"
    Then verify user displayed from table header as "outBreak|TableHeader.Column3"
    Then verify user displayed from table header as "outBreak|TableHeader.Column4"
    Then verify user displayed from table header as "outBreak|TableHeader.Column5"
    Then verify user displayed from table header as "outBreak|TableHeader.Column6"
    Then verify user displayed from table header as "outBreak|TableHeader.Column7"
    Then verify user displayed from table header as "outBreak|TableHeader.Column8" with no visual text
    Then verify user displayed from table header as "outBreak|TableHeader.Column9" with no visual text
#    creation of OutBreak
    Then user clicks on the plus icon
    Then verify pop-up "Create Outbreak"
    Then user selects "Organisation" with value "outBreak|outBreakCreation.Organisation" while creating outbreak
    Then user selects "Ward/Unit" with value "outBreak|outBreakCreation.Ward" while creating outbreak
    Then user selects "Assignee" with value "outBreak|outBreakCreation.Assignee" while creating outbreak
    Then user selects "Primary Symptom" with value "outBreak|outBreakCreation.PrimarySymptom" while creating outbreak
    Then user clicks on the action "Outbreak Start"
    Then user input the current date and time
    Then user clicks on the action "Bed Days Lost"
    Then user enters "outBreak|bedDaysLost.days" in text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Outbreak Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Outbreak Details"
    Then user clicks on cross icon
    Then user click on parameter
    Then user clicks on the action "Status"
    Then user clicks on "Clear" on popup
    Then user clicks on "Open" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for the page to load
    Then user click on last record in the table
    Then verify pop-up "Outbreak Details"
    Then verify "Status" with Label value "outBreak|outbreakDetails.status" in pop-up details
    Then verify "Updated By" with Label value "outBreak|outbreakDetails.UpdatedBy" in pop-up details
    Then verify "Outbreak Location" in pop-up details
    Then verify "Site" with Label value "outBreak|outBreakCreation.Organisation" in pop-up details
    Then verify "Ward/Unit" with Label value "outBreak|outBreakCreation.Ward" in pop-up details
    Then verify "Operational Status" with Label value "outBreak|outbreakDetails.status" in pop-up details
    Then verify "Bed Days Lost" with Label value "outBreak|bedDaysLost.days" in pop-up details
    Then verify "Operational Comments" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Outbreak Information" in pop-up details
    Then verify "Primary Organism" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Primary Symptom" with Label value "outBreak|outBreakCreation.PrimarySymptom" in pop-up details
    Then verify "Primary Organism" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Linked Cases" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Involved Staff" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Infection Events" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Reviews" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Symptoms" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Assignee" with Label value "outBreak|outBreakCreation.Assignee" in pop-up details
    Then verify "Review" in pop-up details
    Then verify "Reviewed On" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Reviewed By" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Next Review" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then user clicks on menu icon
    Then user clicks on "Close" on popup
    Then verify pop-up "Close Outbreak"
    Then user clicks on the action "Outbreak End"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user selects Hours HH as "outBreak|DateTime.Hour" Minutes MM as "outBreak|DateTime.Minutes" and Seconds SS as "outBreak|DateTime.Sec"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox

  @TST-596 @AYERSHUJA @IC_Module @sprint13 @@sP19RefactorFailed
  Scenario: V3 Documents : IC Module : Cases - Add Assignee for a selected Case
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
      #    Pre-Requsite:
    Then user consider pre-requsite against location
    Then wait for 20 seconds
    Then user click on parameter
    Then wait for 20 seconds
    Then verify "outBreak|CaseSearch.AssigneeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.BedManagementLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.DateRangeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OriginSiteLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.LocationLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OrganismLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.PatientLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.StatusLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.SymptomLabel" is displayed as Popup Case Search
    Then user clicks on the action "Assignee"
    Then user check "outBreak|AssigneeParameter.Assignee" in a Parameter
    Then user clicks on tick-checkbox

  @TST-628 @AYERSHUJA @IC_Module @sprint13 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Verify Case List after adding a New Case
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
    Then user clicks on plus icon on top right corner of the page
    Then verify pop-up "Create Case"
    Then verify "outBreak|CreateCaseDetail.SectionCaseInfo" in pop-up detail
    Then verify "outBreak|CreateCaseDetail.SectionIsolationInfo" in pop-up detail
    Then verify "Patient Involved" is mandatory Field in the pop-up
    Then verify "Bed Management" is mandatory Field in the pop-up
    Then verify "Organisation" is mandatory Field in the pop-up
    Then user clicks on "Patient Involved" on popup
    Then user inputs with random Number
    Then user clicks on the tick-checkbox
    Then wait for popup loading
    Then verify pop-up "Patient Information"
    Then verify "outBreak|PatientInformation.SectionActions" in pop-up detail
#    create clinical Record
    Then user clicks on "Create New Patient" on popup
    Then verify "NHS Number" is mandatory Field in the pop-up
    Then verify "Title" is mandatory Field in the pop-up
    Then verify "Surname" is mandatory Field in the pop-up
    Then verify "Forename" is mandatory Field in the pop-up
    Then verify "Date Of Birth" is mandatory Field in the pop-up
    Then verify "Sex" is mandatory Field in the pop-up
    Then user clicks on "NHS Number" on popup
    Then user inputs with random Number upto 10 digits
    Then user saves the number of records for this patient
    Then user selects "Title" with value "outBreak|ClinicalRecordDetailsValue.Title" while creating Case
    Then user inputs "Surname" with value "outBreak|ClinicalRecordDetailsValue.Surname" clickable
    Then user inputs "Forename" with value "outBreak|ClinicalRecordDetailsValue.Forename" clickable
    Then user clicks on the action "Date Of Birth"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user selects "Sex" with value "outBreak|ClinicalRecordDetailsValue.Sex" while creating Case
    Then user inputs "Address" with value "outBreak|ClinicalRecordDetailsValue.Address" clickable
    Then user inputs "Town/City" with value "outBreak|ClinicalRecordDetailsValue.Town/City" clickable
    Then user inputs "County" with value "outBreak|ClinicalRecordDetailsValue.County" clickable
    Then user inputs "Postcode" with value "outBreak|ClinicalRecordDetailsValue.Postcode" clickable
    Then user clicks on tick-checkbox
    Then verify pop-up "Create Clinical Record Summary"
    Then verify "Title" with Label value "outBreak|ClinicalRecordDetailsValue.Title" in pop-up details
    Then verify "Surname" with Label value "outBreak|ClinicalRecordDetailsValue.Surname" in pop-up details
    Then verify "Forename" with Label value "outBreak|ClinicalRecordDetailsValue.Forename" in pop-up details
    Then verify "Sex" with Label value "outBreak|ClinicalRecordDetailsValue.Sex" in pop-up details
    Then verify "Town/City" with Label value "outBreak|ClinicalRecordDetailsValue.Town/City" in pop-up details
    Then verify "County" with Label value "outBreak|ClinicalRecordDetailsValue.County" in pop-up details
    Then verify "Postcode" with Label value "outBreak|ClinicalRecordDetailsValue.Postcode" in pop-up details
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Clinical Record Created" after completing the form

  @TST-629 @AYERSHUJA @IC_Module @sprint13 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Outbreaks - Add Change Location Status Info
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then user click on module navigator "Outbreaks"
    Then user lands on "Outbreaks List" module
    Then verify the table is populated
    Then verify user displayed from table header as "outBreak|TableHeader.Column1"
    Then verify user displayed from table header as "outBreak|TableHeader.Column2"
    Then verify user displayed from table header as "outBreak|TableHeader.Column3"
    Then verify user displayed from table header as "outBreak|TableHeader.Column4"
    Then verify user displayed from table header as "outBreak|TableHeader.Column5"
    Then verify user displayed from table header as "outBreak|TableHeader.Column6"
    Then verify user displayed from table header as "outBreak|TableHeader.Column7"
    Then verify user displayed from table header as "outBreak|TableHeader.Column8" with no visual text
    Then verify user displayed from table header as "outBreak|TableHeader.Column9" with no visual text
#    creation of OutBreak
    Then user clicks on the plus icon
    Then verify pop-up "Create Outbreak"
    Then user selects "Organisation" with value "outBreak|outBreakCreation.Organisation" while creating outbreak
    Then user selects "Ward/Unit" with value "outBreak|outBreakCreation.Ward" while creating outbreak
    Then user selects "Assignee" with value "outBreak|outBreakCreation.Assignee" while creating outbreak
    Then user selects "Primary Symptom" with value "outBreak|outBreakCreation.PrimarySymptom" while creating outbreak
    Then user clicks on the action "Outbreak Start"
    Then user input the current date and time
    Then user clicks on the action "Bed Days Lost"
    Then user enters "outBreak|bedDaysLost.days" in text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Outbreak Summary"
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify pop-up "Outbreak Details"
    Then user clicks on cross icon
    Then user click on parameter
    Then user clicks on the action "Status"
    Then user clicks on "Clear" on popup
    Then user clicks on "Open" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for the page to load
    Then user click on last record in the table
    Then verify pop-up "Outbreak Details"
    Then verify "Status" with Label value "outBreak|outbreakDetails.status" in pop-up details
    Then verify "Updated By" with Label value "outBreak|outbreakDetails.UpdatedBy" in pop-up details
    Then verify "Outbreak Location" in pop-up details
    Then verify "Site" with Label value "outBreak|outBreakCreation.Organisation" in pop-up details
    Then verify "Ward/Unit" with Label value "outBreak|outBreakCreation.Ward" in pop-up details
    Then verify "Operational Status" with Label value "outBreak|outbreakDetails.status" in pop-up details
    Then verify "Bed Days Lost" with Label value "outBreak|bedDaysLost.days" in pop-up details
    Then verify "Operational Comments" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Outbreak Information" in pop-up details
    Then verify "Primary Organism" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Primary Symptom" with Label value "outBreak|outBreakCreation.PrimarySymptom" in pop-up details
    Then verify "Primary Organism" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Linked Cases" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Involved Staff" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Infection Events" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Reviews" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Symptoms" with count "outBreak|outbreakDetails.InitialCount" in pop-up details
    Then verify "Assignee" with Label value "outBreak|outBreakCreation.Assignee" in pop-up details
    Then verify "Review" in pop-up details
    Then verify "Reviewed On" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Reviewed By" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then verify "Next Review" with Label value "outBreak|ValueNotDefined.UnknownValue" in pop-up details
    Then user clicks on menu icon
    Then user clicks on "Edit" on popup
    Then verify pop-up "Edit Outbreak"
    Then user selects "Organisation" with value "outBreak|outBreakCreation.Organisation2" while creating outbreak
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then verify "Site" with Label value "outBreak|outBreakCreation.Organisation" in pop-up details

  @TST-613 @AYERSHUJA @IC_Module @sprint13 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Filter Cases by Bed Management
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
  #    Pre-Requsite:
    Then user consider pre-requsite against location
    Then wait for 20 seconds
    Then user click on parameter
    Then wait for 20 seconds
    Then verify "outBreak|CaseSearch.AssigneeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.BedManagementLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.DateRangeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OriginSiteLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.LocationLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OrganismLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.PatientLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.StatusLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.SymptomLabel" is displayed as Popup Case Search
    Then user clicks on the action "Bed Management"
    Then user check "Red" in Bed Management Parameter
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox
    Then verify "Red" is displayed as Case list
    Then user click on parameter
    Then user clicks on the action "Bed Management"
    Then verify pop-up "Bed Management Status"
    Then user check "Amber" in Bed Management Parameter
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox
    Then verify "Amber" is displayed as Case list
    Then user click on parameter
    Then user clicks on the action "Bed Management"
    Then verify pop-up "Bed Management Status"
    Then user check "Green" in Bed Management Parameter
    Then user clicks on tick-checkbox
    Then verify pop-up "Case Search"
    Then user clicks on tick-checkbox
    Then verify "Green" is displayed as Case list
    Then user click on parameter
    Then user clicks on the action "Bed Management"
    Then verify pop-up "Bed Management Status"
    Then user clicks on "Clear" on popup
    Then user clicks on tick-checkbox
    Then user clicks on "Case Search" on popup
    Then user clicks on tick-checkbox

  @TST-615 @AYERSHUJA @IC_Module @sprint13 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Create a Case for a selected Site / Location
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
    #    Pre-Requsite:
    Then user consider pre-requsite against location
    Then wait for 20 seconds
    Then user click on parameter
    Then wait for 20 seconds
    Then verify "outBreak|CaseSearch.AssigneeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.BedManagementLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.DateRangeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OriginSiteLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.LocationLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OrganismLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.PatientLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.StatusLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.SymptomLabel" is displayed as Popup Case Search
    Then user clicks on the action "Origin Site"
    Then check "Diana Princess of Wales Hospital" role permissions to "active"
    Then user clicks on tick-checkbox
    #    due to bug at parameter, Remove below three gherkin scripts if parameter issue fixed
    Then user clicks on the action "Origin Site"
    Then check "Diana Princess of Wales Hospital" role permissions to "active"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify "Diana Princess of Wales Hospital" is displayed as Case list

  @TST-594 @AYERSHUJA @IC_Module @sprint13 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : IC Module : Cases - Filter Cases by Site / Multiple Sites
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
    #    Pre-Requsite:
    Then user consider pre-requsite against location
    Then wait for 20 seconds
    Then user click on parameter
    Then wait for 20 seconds
    Then verify "outBreak|CaseSearch.AssigneeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.BedManagementLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.DateRangeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OriginSiteLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.LocationLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OrganismLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.PatientLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.StatusLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.SymptomLabel" is displayed as Popup Case Search
    Then user clicks on the action "Origin Site"
    Then check "Diana Princess of Wales Hospital" role permissions to "active"
    Then user clicks on tick-checkbox
    #    due to bug at parameter, Remove below three gherkin scripts if parameter issue fixed
    Then user clicks on the action "Origin Site"
    Then check "Diana Princess of Wales Hospital" role permissions to "active"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify "Diana Princess of Wales Hospital" is displayed as Case list
    Then wait for 10 seconds
    Then user click on parameter
    Then user clicks on the action "Origin Site"
    Then user check "outBreak|outBreakCreation.Organisation3" in Organization Parameter
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for 40 seconds
    Then verify "Diana Princess of Wales Hospital" & "Goole and District Hospital" is displayed as Case list

  @TST-635 @AYERSHUJA @IC_Module @sprint13 @NOStepsMention
  Scenario: V3 Documents : Ic Module : Case List - Verify Historic Cases associated with a Selected Case
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then user click on last record in the table
    Then verify pop-up "Case Details"

  @TST-1333 @AYERSHUJA @IC_Module @sprint13 @RefactoredSprint17 @RefactoredTestcases
  Scenario: V3 Documents : Test New infections on a different admission need to create a separate open case
    Given user lands on "Systems" page
    Then user clicks on "Infection Control" card in Systems
    Then user lands on "Infection Control" page
    Then wait for the page to load
    Then verify "outBreak|PageSubMenu.Header1" is displayed as SubMenu
    Then verify "outBreak|PageSubMenu.Header2" is displayed as SubMenu
#    Pre-Requsite:
    Then user consider pre-requsite against location
    Then wait for 20 seconds
    Then user click on parameter
    Then wait for 20 seconds
    Then verify "outBreak|CaseSearch.AssigneeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.BedManagementLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.DateRangeLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OriginSiteLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.LocationLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.OrganismLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.PatientLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.StatusLabel" is displayed as Popup Case Search
    Then verify "outBreak|CaseSearch.SymptomLabel" is displayed as Popup Case Search
    Then user clicks on the action "Date Range"
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year2021"
    Then user clicks on tick-checkbox
    Then user selects date DD as "outBreak|DateTime.Date" Month as "outBreak|DateTime.Month" and year as "outBreak|DateTime.Year"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then wait for 40 seconds
    Then user click on last record in the table
    Then verify pop-up "Case Details"
    Then user clicks on "Infection Events" on popup
    Then verify pop-up "Case Infections"
    Then user clicks on the pop-up plus icon
    Then verify pop-up "Create Infection Event"
    Then verify "outBreak|CreateInfectionEventsFields.Field1" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field2" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field3" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field4" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field5" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field6" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field7" fields in pop-up details
    Then verify "outBreak|CreateInfectionEventsFields.Field8" fields in pop-up details
    Then user selects "Organism" with the value "outBreak|CreateInfectionEventsValue.Organism"
    Then user selects "Specimen Site" with the value "outBreak|CreateInfectionEventsValue.SpecimenSite"
    Then user selects "Specimen Type" with the value "outBreak|CreateInfectionEventsValue.SpecimenType"
    Then user selects "Care Setting" with the value "outBreak|CreateInfectionEventsValue.CareSetting"
    Then user clicks on the action "Suspected On"
    Then user input the current date and time
    Then user clicks on the action "Confirmed On"
    Then user input the current date and time
    Then user clicks on the action "Sample Number"
    Then user enters "outBreak|TextSample.TextAreaTest" in the text-area
    Then user clicks on tick-checkbox
    Then verify pop-up "Submission Status"
    Then verify "Success" after completing the form
    Then user clicks on tick-checkbox
    Then user clicks on pop-up back icon
    Then verify pop-up "Case Details"
    Then verify "Infection Events" is in "red" Color in the pop-up





















    










