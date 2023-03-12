@outpatientsClinics @e2e

Feature: To verify and validate Outpatients

  @TST-1031 @hamzaAhmad @e2eSprint @sprint11 @HamzaRefactorSP11
    Scenario: Outpatients V3 : Consultation Tab - Viewing Clinic Details (in the table)
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user verify table header "Clinic" exists "true"
    Then user verify table header "Code" exists "true"
    Then user verify table header "Specialty" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Start" exists "true"
    Then user verify table header with icon "data-set-cell sortable capacity --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable patient --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable waiting --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable inprogress --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable complete --center" exists "true"
    Then user verify table header "Delay" exists "true"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify column "1" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicCode"
    Then verify column "2" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicSpeciality"
    Then verify column "3" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicStatus"
    Then verify column "4" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicStart"
    Then verify column "5" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicCapacity"
    Then verify column "6" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicAppointment"
    Then verify column "7" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicArrived"
    Then verify column "8" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicInProgress"
    Then verify column "10" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicDelayed"



  @TST-1035 @hamzaAhmad @e2eSprint @sprint11 @HamzaRefactorSP11
  Scenario: Outpatients V3 :  Recording Attended Not Seen Details
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then wait for 10 seconds
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user clicks on the meatball option where name is "outpatients|patientIdentifiers.patient1.patientName"
    Then verify pop-up "Appointment Details"
    Then user clicks on the action icon pop-up
    Then user clicks on "Create Summary" on popup
    Then user lands on "Episode Summary" page
    Then user clicks on "Attendance"
    Then set the yes-no of header "Has the patient attended the appointment?" to "Yes"
    Then set the yes-no of header "Was the patient seen during the appointment?" to "No"
    Then user clicks on "Why was the patient not seen?"
    Then verify "Patient Not Seen Reason" module exists "true"
    Then verify "No Clinician" is present in not seen reasons
    Then verify "No Medical Notes" is present in not seen reasons
    Then verify "No Referral Letter" is present in not seen reasons
    Then verify "Patient unable to wait - over 30 minutes" is present in not seen reasons
    Then verify "Patient unable to wait - under 30 minutes" is present in not seen reasons
    Then user clicks on "No Medical Notes"
    Then verify "Patient Attendance" module exists "true"
    Then user clicks on the action icon
    Then user clicks on "Save" on popup
    Then verify pop-up "Submission Status"
    Then user clicks on "Continue"
    Then verify "No Medical Notes" is present in the document
    Then set the yes-no of header "Has the patient attended the appointment?" to "No"



  @TST-1038 @hamzaAhmad @e2eSprint @sprint11 @HamzaRefactorSP11
  Scenario: Outpatients V3 :  Verify Appointment Details Page
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user clicks on "outpatients|patientIdentifiers.patient1.patientName"
    Then user lands on "Episode Summary" page
    Then verify patients demographics exist
    Then user verify Black header shows up with patient DOB "outpatients|patientIdentifiers.patient1.demographicsBar.headerDOB"
    Then user verify Black header shows up with patient gender "outpatients|patientIdentifiers.patient1.demographicsBar.headerGender"
    Then user verify Black header shows up with patient name "outpatients|patientIdentifiers.patient1.demographicsBar.headerName"
    Then user verify Black header shows up with patient NHS Number "outpatients|patientIdentifiers.patient1.demographicsBar.headerNHS"
    Then verify appointment status is "Booked"



  @TST-1039 @hamzaAhmad @e2eSprint @sprint11 @HamzaRefactorSP11
  Scenario: Outpatients V3 :  Viewing clinic Details(Table)
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user verify table header "Clinic" exists "true"
    Then user verify table header "Code" exists "true"
    Then user verify table header "Specialty" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Start" exists "true"
    Then user verify table header with icon "data-set-cell sortable capacity --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable patient --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable waiting --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable inprogress --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable complete --center" exists "true"
    Then user verify table header "Delay" exists "true"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify column "1" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicCode"
    Then verify column "2" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicSpeciality"
    Then verify column "3" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicStatus"
    Then verify column "4" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicStart"
    Then verify column "5" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicCapacity"
    Then verify column "6" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicAppointment"
    Then verify column "7" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicArrived"
    Then verify column "8" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicInProgress"
    Then verify column "10" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicDelayed"



  @TST-1037 @hamzaAhmad @e2eSprint @sprint11 @HamzaRefactorSP11
  Scenario: Outpatients V3 : Reception Tab - Filter by Multiple Clinics
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user click on module navigator "Reception"
    Then user lands on "Patients List" module
    Then user verify table header with icon "data-set-cell sortable favourite-header" exists "true"
    Then user verify table header with icon "data-set-cell sortable gender-header" exists "true"
    Then user verify table header "Name" exists "true"
    Then user verify table header "NHS Number" exists "true"
    Then user verify table header "Date Of Birth" exists "true"
    Then user verify table header "Clinic" exists "true"
    Then user verify table header "Appointment" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Arrived" exists "true"
    Then verify current date exists in parameter
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then verify popup option "Clinic Date" is visible
    Then verify popup option "Site" is visible
    Then verify popup option "Area" is visible
    Then verify popup option "Clinic" is visible
    Then verify popup option "Status" is visible
    Then verify popup option "Clinician" is visible
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic" on popup
    Then verify pop-up "Select Clinic"
    Then user clicks on "outpatients|clinicsData.clinic2.clinicName" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify column "3" of name "outpatients|patientIdentifiers.patient5.patientName" contains value "outpatients|clinicsData.clinic2.clinicName"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic" on popup
    Then verify pop-up "Select Clinic"
    Then user clicks on "outpatients|clinicsData.clinic3.clinicName" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify column "3" of name "outpatients|patientIdentifiers.patient5.patientName" contains value "outpatients|clinicsData.clinic2.clinicName"
    Then verify column "3" of name "outpatients|patientIdentifiers.patient6.patientName" contains value "outpatients|clinicsData.clinic3.clinicName"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic" on popup
    Then verify pop-up "Select Clinic"
    Then user clicks on "outpatients|clinicsData.clinic3.clinicName" on popup
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify column "3" of name "outpatients|patientIdentifiers.patient5.patientName" contains value "outpatients|clinicsData.clinic2.clinicName"



  @TST-1033 @hamzaAhmad @e2eSprint @sprint11 @HamzaRefactorSP11
  Scenario: Outpatients V3 : Recording Attendance
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user verify table header "Clinic" exists "true"
    Then user verify table header "Code" exists "true"
    Then user verify table header "Specialty" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Start" exists "true"
    Then user verify table header with icon "data-set-cell sortable capacity --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable patient --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable waiting --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable inprogress --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable complete --center" exists "true"
    Then user verify table header "Delay" exists "true"
    Then verify current date exists in parameter
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user clicks on "outpatients|patientIdentifiers.patient2.patientName"
    Then user lands on "Episode Summary" page
    Then verify patients demographics exist
    Then user verify Black header shows up with patient DOB "outpatients|patientIdentifiers.patient2.demographicsBar.headerDOB"
    Then user verify Black header shows up with patient gender "outpatients|patientIdentifiers.patient2.demographicsBar.headerGender"
    Then user verify Black header shows up with patient name "outpatients|patientIdentifiers.patient2.demographicsBar.headerName"
    Then user verify Black header shows up with patient NHS Number "outpatients|patientIdentifiers.patient2.demographicsBar.headerNHS"
    Then verify "Appointment Tasks" module exists "true"
    Then verify "Patient Event List" is present in the document
    Then verify "Attendance" is present in the document
    Then verify "Diagnosis" is present in the document
    Then verify "Procedures & Investigation" is present in the document
    Then verify "Documents" is present in the document
    Then verify "Outcome" is present in the document
    Then verify "Save and Preview" is present in the document
    Then user clicks on "Attendance"
    Then verify "Patient Attendance" module exists "true"
    Then set the yes-no of header "Has the patient attended the appointment?" to "No"
    Then user clicks on "Not Known"
    Then verify "Patient Not Seen Reason" module exists "true"
    Then verify "Discharge to Referrer" is present in the document
    Then verify "Indicate on dictation any special instructions to GP / Patient" is present in the document
    Then verify "Reappoint" is present in the document
    Then verify "To be used where there are strong clinical grounds to do so" is present in the document
    Then user clicks on "Discharge to Referrer"
    Then verify "Patient Attendance" module exists "true"
    Then verify "Discharge" is present in the document
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then verify event report "Attendance Outcome" with value "Failure To Be Brought"
    Then verify event report "Did Not Attend Outcome" with value "Discharge"
    Then user clicks on "Attendance"
    Then verify "Patient Attendance" module exists "true"
    Then set the yes-no of header "Has the patient attended the appointment?" to "Yes"
    Then set the yes-no of header "Was the patient seen during the appointment?" to "Yes"
    Then user clicks on "Who was the patient seen by during the appointment?"
    Then verify "Patient Seen By" module exists "true"
    Then verify "Specialty Doctor" is present in the document
    Then user clicks on "Specialty Doctor"
    Then user clicks on the tick-checkbox
    Then verify "Patient Attendance" module exists "true"
    Then verify "Specialty Doctor" is present in the document
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then verify event report "Attendance Outcome" with value "Attended"
    Then verify event report "Seen By" with value "Specialty Doctor"



  @TST-1041 @hamzaAhmad @e2eSprint @sprint11 @HamzaRefactorSP11
  Scenario: Outpatients V3 : Configuring Packages for Clinics
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user verify table header "Clinic" exists "true"
    Then user verify table header "Code" exists "true"
    Then user verify table header "Specialty" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Start" exists "true"
    Then user verify table header with icon "data-set-cell sortable capacity --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable patient --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable waiting --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable inprogress --center" exists "true"
    Then user verify table header with icon "data-set-cell sortable complete --center" exists "true"
    Then user verify table header "Delay" exists "true"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify column "1" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicCode"
    Then verify column "2" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicSpeciality"
    Then verify column "3" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicStatus"
    Then verify column "4" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicStart"
    Then verify column "5" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicCapacity"
    Then verify column "6" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicAppointment"
    Then verify column "7" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicArrived"
    Then verify column "8" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicInProgress"
    Then verify column "10" of name "outpatients|clinicsData.clinic1.clinicName" contains value "outpatients|clinicsData.clinic1.clinicDelayed"
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then verify header name contains "outpatients|patientIdentifiers.patient3.patientList.headerName"
    Then verify header code contains "outpatients|patientIdentifiers.patient3.patientList.headerCode"
    Then verify header speciality contains "outpatients|patientIdentifiers.patient3.patientList.headerSpeciality"
    Then verify header start contains "outpatients|patientIdentifiers.patient3.patientList.headerStart"
    Then verify header capacity contains "outpatients|patientIdentifiers.patient3.patientList.headerCapacity"
    Then verify header status contains "outpatients|patientIdentifiers.patient3.patientList.headerStatus"
    Then verify header "Start" sorting "sort-up"
    Then user clicks on "outpatients|patientIdentifiers.patient3.patientName"
    Then user lands on "Episode Summary" page
    Then user clicks on "Documents"
    Then verify "Appointment Document List" module exists "true"
    Then user verify table header with icon "data-set-cell sortable favorite-header" exists "true"
    Then user verify table header "Name" exists "true"
    Then user verify table header "Category" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Updated" exists "true"
    Then user verify table header with icon "data-set-cell sortable document-header" exists "true"
    Then verify column "2" of name "outpatients|patientIdentifiers.patient3.patientDocuments.documentsName" contains value "outpatients|patientIdentifiers.patient3.patientDocuments.documentsStatus"



  @TST-1036 @hamzaAhmad @e2eSprint @sprint11 @HamzaRefactorSP11
  Scenario: Outpatients V3 :  Recording DNA/Failure to be brought (FTBB) Details
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user clicks on "outpatients|patientIdentifiers.patient4.patientName"
    Then user lands on "Episode Summary" page
    Then verify "Appointment Tasks" module exists "true"
    Then verify "Patient Event List" is present in the document
    Then verify "Attendance" is present in the document
    Then verify "Diagnosis" is present in the document
    Then verify "Procedures & Investigation" is present in the document
    Then verify "Documents" is present in the document
    Then verify "Outcome" is present in the document
    Then verify "Save and Preview" is present in the document
    Then user clicks on "Attendance"
    Then verify "Patient Attendance" module exists "true"
    Then set the yes-no of header "Has the patient attended the appointment?" to "No"
    Then user clicks on "How would you like to proceed?"
    Then verify "Patient Not Seen Reason" module exists "true"
    Then verify "Discharge to Referrer" is present in the document
    Then verify "Indicate on dictation any special instructions to GP / Patient" is present in the document
    Then verify "Reappoint" is present in the document
    Then verify "To be used where there are strong clinical grounds to do so" is present in the document
    Then user clicks on "Discharge to Referrer"
    Then verify "Discharge" is present in the document
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then verify event report "Attendance Outcome" with value "Failure To Be Brought"
    Then verify event report "Did Not Attend Outcome" with value "Discharge"
    Then user clicks on "Attendance"
    Then verify "Patient Attendance" module exists "true"
    Then set the yes-no of header "Has the patient attended the appointment?" to "Yes"
    Then user clicks on the action icon
    Then user clicks on "Save" on popup
    Then verify pop-up "Submission Status"
    Then user clicks on "Continue"



  @TST-1084 @hamzaAhmad @e2eSprint @sprint12 @HamzaRefactorSP12
  Scenario: Outpatients V3 :  Verify RTT Statuses
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user clicks on "outpatients|patientIdentifiers.patient3.patientName"
    Then user lands on "Episode Summary" page
    Then verify "Appointment Tasks" module exists "true"
    Then verify "Patient Event List" is present in the document
    Then verify "Attendance" is present in the document
    Then verify "Diagnosis" is present in the document
    Then verify "Procedures & Investigation" is present in the document
    Then verify "Documents" is present in the document
    Then verify "Outcome" is present in the document
    Then verify "Save and Preview" is present in the document
    Then user clicks on "Outcome"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "What is the referral to treatment action?"
    Then verify "Outcome Action" module exists "true"
    Then verify that RTT status "Discharge" is equal to "01"
    Then verify that RTT status "Discharge - Patient Initiated Follow Up" is equal to "01"
    Then verify that RTT status "Refer to - Discharge" is equal to "02"
    Then verify that RTT status "Refer to - Reappoint" is equal to "04"
    Then verify that RTT status "Follow Up Appointment" is equal to "04"
    Then verify that RTT status "Follow Up Appointment - PIFU" is equal to "04"
    Then verify that RTT status "Add to Waiting List" is equal to "05"
    Then verify that RTT status "Discharge to Shared Care" is equal to "H"



  @TST-1331 @hamzaAhmad @e2eSprint @sprint12 @HamzaRefactorSP12
  Scenario: Test to see if user can select specialty DR
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user clicks on "outpatients|patientIdentifiers.patient14.patientName"
    Then user lands on "Episode Summary" page
    Then verify "Appointment Tasks" module exists "true"
    Then verify "Patient Event List" is present in the document
    Then verify "Attendance" is present in the document
    Then verify "Diagnosis" is present in the document
    Then verify "Procedures & Investigation" is present in the document
    Then verify "Documents" is present in the document
    Then verify "Outcome" is present in the document
    Then verify "Save and Preview" is present in the document
    Then user clicks on "Attendance"
    Then verify "Patient Attendance" module exists "true"
    Then set the yes-no of header "Has the patient attended the appointment?" to "No"
    Then set the yes-no of header "Has the patient attended the appointment?" to "Yes"
    Then set the yes-no of header "Was the patient seen during the appointment?" to "Yes"
    Then user clicks on "Who was the patient seen by during the appointment?"
    Then verify "Patient Seen By" module exists "true"
    Then verify "Specialty Doctor" is present in the document
    Then user clicks on "Specialty Doctor"
    Then user clicks on the tick-checkbox
    Then verify "Patient Attendance" module exists "true"



  @TST-1325 @hamzaAhmad @e2eSprint @sprint12 @HamzaRefactorSP12
  Scenario: Test for no options appearing after add to waiting list selected
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user clicks on "outpatients|patientIdentifiers.patient15.patientName"
    Then user lands on "Episode Summary" page
    Then verify "Appointment Tasks" module exists "true"
    Then verify "Patient Event List" is present in the document
    Then verify "Attendance" is present in the document
    Then verify "Diagnosis" is present in the document
    Then verify "Procedures & Investigation" is present in the document
    Then verify "Documents" is present in the document
    Then verify "Outcome" is present in the document
    Then verify "Save and Preview" is present in the document
    Then user clicks on "Outcome"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "What is the referral to treatment action?"
    Then verify "Outcome Action" module exists "true"
    Then user clicks on "Add to Waiting List"
    Then verify "Patient Outcome" module exists "true"
    Then verify "What is the referral to treatment action?" is present in the document
    Then verify "What is the referral to treatment outcome?" is present in the document
    Then verify "Would you like to reappoint the patient?" is present in the document



  @TST-1086 @hamzaAhmad @e2eSprint @sprint12 @HamzaRefactorSP12
  Scenario: Outpatients V3 :  Clinics list Table - Marking as Favourite
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then click favourite icon clinic "outpatients|clinicsData.clinic1.clinicName" and make it "active" and verify
    Then wait for "3" seconds



  @TST-1090 @hamzaAhmad @e2eSprint @sprint12 @HamzaRefactorSP12
  Scenario: Outpatients V3 : Clinics - Patient's PAS Comments
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user verify table header with icon "data-set-cell sortable gender-header" exists "true"
    Then user verify table header "Name" exists "true"
    Then user verify table header "NHS Number" exists "true"
    Then user verify table header with icon "data-set-cell sortable advisory-header" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Start" exists "true"
    Then user verify table header "General Practitioner" exists "true"
    Then user verify table header "Pas Comments" exists "true"
    Then verify column "11" of name "outpatients|patientIdentifiers.patient3.patientName" contains value "Not Known"



  @TST-1105 @hamzaAhmad @e2eSprint @sprint15 @HamzaRefactorSP12
  Scenario: Outpatients V3 :  Table of Appointments Requiring Review
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user click on module navigator "Reception"
    Then user lands on "Patients List" module
    Then user verify table header with icon "data-set-cell sortable favourite-header" exists "true"
    Then user verify table header with icon "data-set-cell sortable gender-header" exists "true"
    Then user verify table header "Name" exists "true"
    Then user verify table header "NHS Number" exists "true"
    Then user verify table header "Date Of Birth" exists "true"
    Then user verify table header "Clinic" exists "true"
    Then user verify table header "Appointment" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Arrived" exists "true"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then verify popup option "Clinic Date" is visible
    Then verify popup option "Site" is visible
    Then verify popup option "Area" is visible
    Then verify popup option "Clinic" is visible
    Then verify popup option "Status" is visible
    Then verify popup option "Clinician" is visible
    Then user clicks on "Clinic Date" on popup
    Then verify pop-up "Select Clinic Date"
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify column "3" of name "outpatients|patientIdentifiers.patient7.patientName" contains value "outpatients|clinicsData.clinic4.clinicName"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Site" on popup
    Then verify pop-up "Select Organisation"
    Then verify popup option "Community Services" is visible
    Then verify popup option "Diana Princess of Wales Hospital" is visible
    Then verify popup option "Goole and District Hospital" is visible
    Then verify popup option "North East Lincs Community Services" is visible
    Then verify popup option "North Lincs Community Services" is visible
    Then verify popup option "Scunthorpe General Hospital" is visible
    Then user clicks on "Goole and District Hospital" on popup
    Then user clicks on tick-checkbox
    Then verify column "3" of name "ORLIN, Susan Marvin" contains value "MR BHOJWANI 130 CLINIC GDH"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Site" on popup
    Then verify pop-up "Select Organisation"
    Then verify popup option "Community Services" is visible
    Then verify popup option "Diana Princess of Wales Hospital" is visible
    Then verify popup option "Goole and District Hospital" is visible
    Then verify popup option "North East Lincs Community Services" is visible
    Then verify popup option "North Lincs Community Services" is visible
    Then verify popup option "Scunthorpe General Hospital" is visible
    Then user clicks on "Diana Princess of Wales Hospital" on popup
    Then user clicks on tick-checkbox
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic" on popup
    Then verify pop-up "Select Clinic"
    Then user clicks on "outpatients|clinicsData.clinic4.clinicName" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify column "3" of name "outpatients|patientIdentifiers.patient7.patientName" contains value "outpatients|clinicsData.clinic4.clinicName"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic" on popup
    Then verify pop-up "Select Clinic"
    Then user clicks on "outpatients|clinicsData.clinic6.clinicName" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify column "3" of name "outpatients|patientIdentifiers.patient7.patientName" contains value "outpatients|clinicsData.clinic4.clinicName"
    Then verify column "3" of name "outpatients|patientIdentifiers.patient9.patientName" contains value "outpatients|clinicsData.clinic6.clinicName"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic" on popup
    Then verify pop-up "Select Clinic"
    Then user clicks on "outpatients|clinicsData.clinic6.clinicName" on popup
    Then user clicks on "outpatients|clinicsData.clinic4.clinicName" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinician" on popup
    Then verify pop-up "Select Clinician"
    Then user clicks on "outpatients|consultantsData.consultant1.consultantName" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify column "3" of name "outpatients|patientIdentifiers.patient12.patientName" contains value "outpatients|clinicsData.clinic7.clinicName"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinician" on popup
    Then verify pop-up "Select Clinician"
    Then user clicks on "outpatients|consultantsData.consultant2.consultantName" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify column "3" of name "outpatients|patientIdentifiers.patient12.patientName" contains value "outpatients|clinicsData.clinic7.clinicName"
    Then verify column "3" of name "outpatients|patientIdentifiers.patient13.patientName" contains value "outpatients|clinicsData.clinic8.clinicName"



  @TST-1091 @hamzaAhmad @e2eSprint @sprint12 @HamzaRefactorSP12
  Scenario: Outpatients V3 :  Follow up Appointments - Verify Follow up reason options
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user clicks on "outpatients|patientIdentifiers.patient10.patientName"
    Then user lands on "Episode Summary" page
    Then verify "Appointment Tasks" module exists "true"
    Then verify "Patient Event List" is present in the document
    Then verify "Attendance" is present in the document
    Then verify "Diagnosis" is present in the document
    Then verify "Procedures & Investigation" is present in the document
    Then verify "Documents" is present in the document
    Then verify "Outcome" is present in the document
    Then verify "Save and Preview" is present in the document
    Then user clicks on "Outcome"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "What is the referral to treatment action?"
    Then verify "Outcome Action" module exists "true"
    Then user clicks on "Follow Up Appointment"
    Then set the yes-no of header "Would you like to reappoint the patient?" to "Yes"
    Then user clicks on "What is the reason for the follow-up?"
    Then verify "Discuss results" is present in the document
    Then verify "Long term condition" is present in the document
    Then verify "Post-operative review" is present in the document
    Then verify "Surveillance/planned care" is present in the document
    Then verify "Treatment in clinic" is present in the document
    Then user clicks on "Discuss results"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then switch to iframe "event-list-iframe"
    Then verify "Outcome" header is present in event report
    Then switch to main context
    Then verify event report "Reason" with value "Discuss results"
    Then user clicks on "Outcome"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "What is the reason for the follow-up?"
    Then user clicks on "Long term condition"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then switch to iframe "event-list-iframe"
    Then verify "Outcome" header is present in event report
    Then switch to main context
    Then verify event report "Reason" with value "Long term condition"




  @TST-1099 @hamzaAhmad @e2eSprint @sprint12 @HamzaRefactorSP12
  Scenario: Outpatients V3 :  Attendance section - Recording Follow up
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user clicks on "outpatients|patientIdentifiers.patient11.patientName"
    Then user lands on "Episode Summary" page
    Then verify "Appointment Tasks" module exists "true"
    Then verify "Patient Event List" is present in the document
    Then verify "Attendance" is present in the document
    Then verify "Diagnosis" is present in the document
    Then verify "Procedures & Investigation" is present in the document
    Then verify "Documents" is present in the document
    Then verify "Outcome" is present in the document
    Then verify "Save and Preview" is present in the document
    Then user clicks on "Outcome"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "What is the referral to treatment action?"
    Then verify "Outcome Action" module exists "true"
    Then user clicks on "Follow Up Appointment"
    Then set the yes-no of header "Would you like to reappoint the patient?" to "Yes"
    Then user clicks on "What is the reason for the follow-up?"
    Then verify "Discuss results" is present in the document
    Then verify "Long term condition" is present in the document
    Then verify "Post-operative review" is present in the document
    Then verify "Surveillance/planned care" is present in the document
    Then verify "Treatment in clinic" is present in the document
    Then user clicks on "Discuss results"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then switch to iframe "event-list-iframe"
    Then verify "Outcome" header is present in event report
    Then switch to main context
    Then verify event report "Reason" with value "Discuss results"
    Then user clicks on "Outcome"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "What is the reason for the follow-up?"
    Then user clicks on "Long term condition"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then switch to iframe "event-list-iframe"
    Then verify "Outcome" header is present in event report
    Then switch to main context
    Then verify event report "Reason" with value "Long term condition"



  @TST-1319 @hamzaAhmad @e2eSprint @sprint12 @HamzaRefactorSP12
  Scenario: Test for amendments not showing on the event report in summary
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user clicks on "outpatients|patientIdentifiers.patient14.patientName"
    Then user lands on "Episode Summary" page
    Then verify "Appointment Tasks" module exists "true"
    Then verify "Patient Event List" is present in the document
    Then verify "Attendance" is present in the document
    Then verify "Diagnosis" is present in the document
    Then verify "Procedures & Investigation" is present in the document
    Then verify "Documents" is present in the document
    Then verify "Outcome" is present in the document
    Then verify "Save and Preview" is present in the document
    Then user clicks on "Attendance"
    Then verify "Patient Attendance" module exists "true"
    Then set the yes-no of header "Has the patient attended the appointment?" to "No"
    Then set the yes-no of header "Has the patient attended the appointment?" to "Yes"
    Then set the yes-no of header "Was the patient seen during the appointment?" to "Yes"
    Then user clicks on "Who was the patient seen by during the appointment?"
    Then verify "Patient Seen By" module exists "true"
    Then verify "Specialty Doctor" is present in the document
    Then user clicks on "Specialty Doctor"
    Then user clicks on the tick-checkbox
    Then verify "Patient Attendance" module exists "true"
    Then user clicks on "Procedures & Investigation"
    Then user clicks on the plus icon
    Then verify pop-up "Add Procedures"
    Then user clicks on "Adjustment of External Fixator"
    Then user clicks on "Ankle Joint"
    Then user clicks on tick-checkbox
    Then verify "Adjustment of External Fixator" is present in the document
    Then verify "Ankle Joint" is present in the document
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then switch to iframe "event-list-iframe"
    Then verify "Procedures Information" header is present in event report
    Then verify header "Procedures" option "1" contains value "Adjustment of External Fixator"
    Then verify header "Procedures" option "2" contains value "Ankle Joint"
    Then switch to main context
    Then user clicks on "Procedures & Investigation"
    Then user clicks on the plus icon
    Then verify pop-up "Add Procedures"
    Then user clicks on "Bilateral Operation"
    Then user clicks on tick-checkbox
    Then verify "Adjustment of External Fixator" is present in the document
    Then verify "Ankle Joint" is present in the document
    Then verify "Bilateral Operation" is present in the document
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then switch to iframe "event-list-iframe"
    Then verify "Procedures Information" header is present in event report
    Then verify header "Procedures" option "1" contains value "Adjustment of External Fixator"
    Then verify header "Procedures" option "2" contains value "Ankle Joint"
    Then verify header "Procedures" option "3" contains value "Bilateral Operation"
    Then switch to main context
    Then user clicks on "Attendance"
    Then verify "Patient Attendance" module exists "true"
    Then set the yes-no of header "Has the patient attended the appointment?" to "No"




  @TST-1089 @hamzaAhmad @e2eSprint @sprint12 @partiallyCompleted @Bug:proceduresNotSaving
  Scenario: Outpatients V3 :  Previewing Outpatient Summary
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date "18" of "October" of "2021"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user clicks on "ADAMS, Julie Richard Mast"
    Then user lands on "Episode Summary" page
    Then verify "Appointment Tasks" module exists "true"
    Then verify "Patient Event List" is present in the document
    Then verify "Attendance" is present in the document
    Then verify "Diagnosis" is present in the document
    Then verify "Procedures & Investigation" is present in the document
    Then verify "Documents" is present in the document
    Then verify "Outcome" is present in the document
    Then verify "Save and Preview" is present in the document
    Then user clicks on "Attendance"
    Then verify "Patient Attendance" module exists "true"
    Then set the yes-no of header "Has the patient attended the appointment?" to "No"
    Then set the yes-no of header "Has the patient attended the appointment?" to "Yes"
    Then set the yes-no of header "Was the patient seen during the appointment?" to "Yes"
    Then user clicks on "Who was the patient seen by during the appointment?"
    Then verify "Patient Seen By" module exists "true"
    Then verify "Specialty Doctor" is present in the document
    Then user clicks on "Specialty Doctor"
    Then user clicks on the tick-checkbox
    Then verify "Patient Attendance" module exists "true"
    Then user clicks on the action icon
    Then user clicks on "Save" on popup
    Then verify pop-up "Submission Status"
    Then verify "Please be aware that some of the options below may be temporarily restricted until all mandatory fields are completed and the preview has been viewed." is present in the pop-up menu
    Then verify "Complete" button is "inactive"
    Then user clicks on "Continue" on popup
    Then user clicks on "Procedures & Investigation"
    Then user clicks on the plus icon
    Then verify pop-up "Add Procedures"
    Then user clicks on "Adjustment of External Fixator"
    Then user clicks on "Ankle Joint"
    Then user clicks on tick-checkbox
    Then verify "Adjustment of External Fixator" is present in the document
    Then verify "Ankle Joint" is present in the document
    Then user clicks on "Diagnosis"
    Then user clicks on "Documents"
    Then verify "Appointment Document List" module exists "true"
    Then user clicks on "Trauma and Orthopaedics Outpatient Letter"
    Then verify "Document Properties" module exists "true"
    Then user clicks on "Diagnosis" span
    Then user clears the text-area
    Then user enter value "Automation testing of web v" in the text-area
    Then user clicks on the tick-checkbox
    Then user clicks on "Outcome" span
    Then user clears the text-area
    Then user enter value "Automation testing of web v" in the text-area
    Then user clicks on the tick-checkbox
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on "Save Amendments" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on "Return To Menu" on popup
    Then user clicks on "Outcome"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "What is the referral to treatment action?"
    Then verify "Outcome Action" module exists "true"
    Then user clicks on "Add to Waiting List"
    Then user clicks on "What is the referral to treatment action?"
    Then verify "Outcome Action" module exists "true"
    Then user clicks on "Discharge"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "What is the referral to treatment outcome?"
    Then verify "Outcome" module exists "true"
    Then user clicks on "Treatment / Monitoring previously given"
    Then verify "Patient Outcome" module exists "true"
    Then set the yes-no of header "Was the patient advised to return within 3 months if symptoms reoccur?" to "Yes"
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then user clicks on the action icon
    Then user clicks on "Save" on popup
    Then verify pop-up "Submission Status"
    Then verify "Complete" button is "active"
    Then user clicks on "Continue" on popup
    Then verify "7"th appointment option is "Save and Preview"
    Then switch to iframe "event-list-iframe"
    Then verify "Attendance" header is present in event report
    Then switch to main context
    Then verify event report "Attendance Outcome" with value "Attended"
    Then verify event report "Seen By" with value "Specialty Doctor"
    Then switch to iframe "event-list-iframe"
    Then verify "Outcome" header is present in event report
    Then switch to main context
    Then verify event report "Referral To Treatment Action" with value "Discharge"
    Then verify event report "Referral To Treatment Outcome" with value "Treatment / Monitoring previously given"
    Then verify event report "Discharge Advice Given" with value "Yes"
    Then switch to iframe "event-list-iframe"
    Then verify "Procedures Information" header is present in event report
    Then verify header "Procedures" option "1" contains value "Adjustment of External Fixator"
    Then verify header "Procedures" option "2" contains value "Ankle Joint"
    Then verify "Documents" header is present in event report
    Then verify Documents "Diagnosis" contains value "Automation testing of web v"
    Then verify Documents "Outcome" contains value "Automation testing of web v"
    Then switch to main context
    Then user clicks on "Procedures & Investigation"
    Then user clicks on the plus icon
    Then verify pop-up "Add Procedures"
    Then user clicks on "Bilateral Operation"
    Then user clicks on tick-checkbox
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then switch to iframe "event-list-iframe"
    Then verify "Procedures Information" header is present in event report
    Then verify header "Procedures" option "1" contains value "Adjustment of External Fixator"
    Then verify header "Procedures" option "2" contains value "Ankle Joint"
    Then verify header "Procedures" option "3" contains value "Bilateral Operation"



  @TST-1088 @hamzaAhmad @e2eSprint @sprint12 @HamzaRefactorSP12
  Scenario: Outpatients V3 : Reception Tab - Verify Table filters
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user click on module navigator "Reception"
    Then user lands on "Patients List" module
    Then user verify table header with icon "data-set-cell sortable favourite-header" exists "true"
    Then user verify table header with icon "data-set-cell sortable gender-header" exists "true"
    Then user verify table header "Name" exists "true"
    Then user verify table header "NHS Number" exists "true"
    Then user verify table header "Date Of Birth" exists "true"
    Then user verify table header "Clinic" exists "true"
    Then user verify table header "Appointment" exists "true"
    Then user verify table header "Status" exists "true"
    Then user verify table header "Arrived" exists "true"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then verify popup option "Clinic Date" is visible
    Then verify popup option "Site" is visible
    Then verify popup option "Area" is visible
    Then verify popup option "Clinic" is visible
    Then verify popup option "Status" is visible
    Then verify popup option "Clinician" is visible
    Then user clicks on "Clinic Date" on popup
    Then verify pop-up "Select Clinic Date"
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then user clicks on tick-checkbox
    Then verify column "3" of name "outpatients|patientIdentifiers.patient7.patientName" contains value "outpatients|clinicsData.clinic4.clinicName"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Site" on popup
    Then verify pop-up "Select Organisation"
    Then verify popup option "Community Services" is visible
    Then verify popup option "Diana Princess of Wales Hospital" is visible
    Then verify popup option "Goole and District Hospital" is visible
    Then verify popup option "North East Lincs Community Services" is visible
    Then verify popup option "North Lincs Community Services" is visible
    Then verify popup option "Scunthorpe General Hospital" is visible
    Then user clicks on "Goole and District Hospital" on popup
    Then user clicks on tick-checkbox
    Then verify column "3" of name "outpatients|patientIdentifiers.patient8.patientName" contains value "outpatients|clinicsData.clinic5.clinicName"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Site" on popup
    Then verify pop-up "Select Organisation"
    Then verify popup option "Community Services" is visible
    Then verify popup option "Diana Princess of Wales Hospital" is visible
    Then verify popup option "Goole and District Hospital" is visible
    Then verify popup option "North East Lincs Community Services" is visible
    Then verify popup option "North Lincs Community Services" is visible
    Then verify popup option "Scunthorpe General Hospital" is visible
    Then user clicks on "Diana Princess of Wales Hospital" on popup
    Then user clicks on tick-checkbox
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic" on popup
    Then verify pop-up "Select Clinic"
    Then user clicks on "outpatients|clinicsData.clinic4.clinicName" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify column "3" of name "outpatients|patientIdentifiers.patient7.patientName" contains value "outpatients|clinicsData.clinic4.clinicName"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic" on popup
    Then verify pop-up "Select Clinic"
    Then user clicks on "NURSE 420 BLOOD CLINIC SGH" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify column "3" of name "outpatients|patientIdentifiers.patient7.patientName" contains value "outpatients|clinicsData.clinic4.clinicName"
    Then verify column "3" of name "outpatients|patientIdentifiers.patient9.patientName" contains value "outpatients|clinicsData.clinic6.clinicName"
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Status" on popup
    Then verify pop-up "Select Status"
    Then user clicks on "Booked" on popup
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then verify column "5" of name "outpatients|patientIdentifiers.patient7.patientName" contains value "Booked"

  @TST-1042 @haider @e2eSprint @sprint14
  Scenario: Outpatients V3 :  Completing Packages
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams1.day" Month as "outpatients|dateParams1.month" and year as "outpatients|dateParams1.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then wait for the page to load
    Then user clicks on "outpatients|clinicsData.clinic1.clinicHalfName"
    Then user lands on "Patients List" module
    Then user clicks on the meatball option where name is "Not Started"
#    Then user clicks on the meatball option where name is "In Progress"
    Then verify pop-up "Appointment Details"
    Then user clicks on the action icon pop-up
    Then verify pop-up "Appointment Details"
    Then user clicks on "Create Summary" on popup
    Then user lands on "Episode Summary" page
    Then user clicks on "Documents"
    Then verify the table is populated
    Then user clicks on "Trauma and Orthopaedics Outpatient Letter"
    Then wait for 20 seconds
    Then user lands on "Patient Documents" page
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on the action "Complete"
    Then verify pop-up "Complete Document"
    Then verify "Cannot Complete Document" after completing the form
    Then verify "The document cannot be completed, as it contains mandatory fields that have not been completed." after completing the form description
    Then user clicks on tick-checkbox
    Then user clicks on "Diagnosis" span
    Then user enters "Diagnosis Value" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on "Outcome" span
    Then user enters "Outcome Value" in the text-area
    Then user clicks on tick-checkbox
    Then user clicks on the action icon
    Then user clicks on "Complete"
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on the action "Return To Menu"
    Then user lands on "Episode Summary" page
    Then verify the first row "Status" is "Complete"
    Then user clicks on "Trauma and Orthopaedics Outpatient Letter"
    Then wait for the page to load
    Then wait for 20 seconds
    Then user lands on "Patient Documents" page
    Then verify "Diagnosis" with value "Diagnosis Value"
    Then verify "Outcome" with value "Outcome Value"

  @TST-1043 @haider @e2eSprint @sprint14 @bug:appointmentTypeNotShowing
  Scenario: Outpatients V3 : Verify Appointment  Types
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then verify module navigator "Consultation" is selected
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then verify the table is populated
    Then verify the first row appointment type
    Then user clicks on the meatball option of the first row
    Then verify pop-up "Appointment Details"
    Then verify sub-header "Appointment Information" has options "Appointment Type|Count of Cancellations|Count of DNAS" available
    Then verify the pop-up appointment type

  @TST-1055 @haider @e2eSprint @sprint14 @sort
  Scenario: Outpatients V3 :  Clinics list - Table sorting
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then verify module navigator "Consultation" is selected
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then wait for the page to load
    Then verify the table is populated
    Then verify the header "Clinic" sorting "sort-up"
    Then user clicks on the header "Clinic"
    Then verify the header "Clinic" sorting "sort-down"
    Then user clicks on the header "Code"
    Then verify the header "Code" sorting "sort-up"
    Then user clicks on the header "Code"
    Then verify the header "Code" sorting "sort-down"
    Then user clicks on the header "Specialty"
    Then verify the header "Specialty" sorting "sort-up"
    Then user clicks on the header "Specialty"
    Then verify the header "Specialty" sorting "sort-down"
    Then user clicks on the header "Status"
    Then verify the header "Status" sorting "sort-up"
    Then user clicks on the header "Status"
    Then verify the header "Status" sorting "sort-down"
    Then user clicks on the header "Start"
    Then verify the header "Start" sorting "sort-up"
    Then user clicks on the header "Start"
    Then verify the header "Start" sorting "sort-down"




  @TST-1075 @hamzaAhmad @e2eSprint @sprint18
  Scenario: Outpatients V3 :  Patient Seen by - Select Options
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date DD as "outpatients|dateParams.day" Month as "outpatients|dateParams.month" and year as "outpatients|dateParams.year"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user clicks on "outpatients|patientIdentifiers.patient2.patientName"
    Then user lands on "Episode Summary" page
    Then verify "Appointment Tasks" module exists "true"
    Then verify "Patient Event List" is present in the document
    Then verify "Attendance" is present in the document
    Then verify "Diagnosis" is present in the document
    Then verify "Procedures & Investigation" is present in the document
    Then verify "Documents" is present in the document
    Then verify "Outcome" is present in the document
    Then verify "Save and Preview" is present in the document
    Then user clicks on "Attendance"
    Then verify "Patient Attendance" module exists "true"
    Then set the yes-no of header "Has the patient attended the appointment?" to "No"
    Then set the yes-no of header "Has the patient attended the appointment?" to "Yes"
    Then set the yes-no of header "Was the patient seen during the appointment?" to "Yes"
    Then user clicks on "Who was the patient seen by during the appointment?"
    Then verify "Patient Seen By" module exists "true"
    Then verify "Specialty Doctor" is present in the document
    Then user clicks on "Specialty Doctor"
    Then user clicks on the tick-checkbox
    Then verify "Patient Attendance" module exists "true"
    Then verify "Specialty Doctor" is present in the document
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then verify event report "Attendance Outcome" with value "Attended"
    Then verify event report "Seen By" with value "Specialty Doctor"



  @TST-1060 @hamzaAhmad @e2eSprint @sprint18 @partiallyCompleted @Bug:proceduresNotSaving
  Scenario: Outpatients V3 :  View Completed Consultation (Timeline)
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date "18" of "October" of "2021"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user clicks on "ADAM, Will Alfred Mrs"
    Then user lands on "Episode Summary" page
    Then verify "Appointment Tasks" module exists "true"
    Then verify "Patient Event List" is present in the document
    Then verify "Attendance" is present in the document
    Then verify "Diagnosis" is present in the document
    Then verify "Procedures & Investigation" is present in the document
    Then verify "Documents" is present in the document
    Then verify "Outcome" is present in the document
    Then verify "Save and Preview" is present in the document
    Then user clicks on "Attendance"
    Then verify "Patient Attendance" module exists "true"
    Then set the yes-no of header "Has the patient attended the appointment?" to "No"
    Then set the yes-no of header "Has the patient attended the appointment?" to "Yes"
    Then set the yes-no of header "Was the patient seen during the appointment?" to "Yes"
    Then user clicks on "Who was the patient seen by during the appointment?"
    Then verify "Patient Seen By" module exists "true"
    Then verify "Specialty Doctor" is present in the document
    Then user clicks on "Specialty Doctor"
    Then user clicks on the tick-checkbox
    Then verify "Patient Attendance" module exists "true"
    Then user clicks on the action icon
    Then user clicks on "Save" on popup
    Then verify pop-up "Submission Status"
    Then verify "Please be aware that some of the options below may be temporarily restricted until all mandatory fields are completed and the preview has been viewed." is present in the pop-up menu
    Then verify "Complete" button is "inactive"
    Then user clicks on "Continue" on popup
    Then user clicks on "Procedures & Investigation"
    Then user clicks on the plus icon
    Then verify pop-up "Add Procedures"
    Then user clicks on "Adjustment of External Fixator"
    Then user clicks on "Ankle Joint"
    Then user clicks on tick-checkbox
    Then verify "Adjustment of External Fixator" is present in the document
    Then verify "Ankle Joint" is present in the document
    Then user clicks on "Diagnosis"
    Then user clicks on "Documents"
    Then verify "Appointment Document List" module exists "true"
    Then user clicks on "Trauma and Orthopaedics Outpatient Letter"
    Then verify "Document Properties" module exists "true"
    Then user clicks on "Diagnosis" span
    Then user clears the text-area
    Then user enter value "Automation testing of web v" in the text-area
    Then user clicks on the tick-checkbox
    Then user clicks on "Outcome" span
    Then user clears the text-area
    Then user enter value "Automation testing of web v" in the text-area
    Then user clicks on the tick-checkbox
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on "Save Amendments" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on "Return To Menu" on popup
    Then user clicks on "Outcome"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "What is the referral to treatment action?"
    Then verify "Outcome Action" module exists "true"
    Then user clicks on "Add to Waiting List"
    Then user clicks on "What is the referral to treatment action?"
    Then verify "Outcome Action" module exists "true"
    Then user clicks on "Discharge"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "What is the referral to treatment outcome?"
    Then verify "Outcome" module exists "true"
    Then user clicks on "Treatment / Monitoring previously given"
    Then verify "Patient Outcome" module exists "true"
    Then set the yes-no of header "Was the patient advised to return within 3 months if symptoms reoccur?" to "Yes"
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then user clicks on the action icon
    Then user clicks on "Save" on popup
    Then verify pop-up "Submission Status"
    Then verify "Complete" button is "active"
    Then user clicks on "Continue" on popup
    Then verify "7"th appointment option is "Save and Preview"
    Then switch to iframe "event-list-iframe"
    Then verify "Attendance" header is present in event report
    Then switch to main context
    Then verify event report "Attendance Outcome" with value "Attended"
    Then verify event report "Seen By" with value "Specialty Doctor"
    Then switch to iframe "event-list-iframe"
    Then verify "Outcome" header is present in event report
    Then switch to main context
    Then verify event report "Referral To Treatment Action" with value "Discharge"
    Then verify event report "Referral To Treatment Outcome" with value "Treatment / Monitoring previously given"
    Then verify event report "Discharge Advice Given" with value "Yes"
    Then switch to iframe "event-list-iframe"
    Then verify "Procedures Information" header is present in event report
    Then verify header "Procedures" option "1" contains value "Adjustment of External Fixator"
    Then verify header "Procedures" option "2" contains value "Ankle Joint"
    Then verify "Documents" header is present in event report
    Then verify Documents "Diagnosis" contains value "Automation testing of web v"
    Then verify Documents "Outcome" contains value "Automation testing of web v"
    Then switch to main context
    Then user clicks on "Procedures & Investigation"
    Then user clicks on the plus icon
    Then verify pop-up "Add Procedures"
    Then user clicks on "Bilateral Operation"
    Then user clicks on tick-checkbox
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then switch to iframe "event-list-iframe"
    Then verify "Procedures Information" header is present in event report
    Then verify header "Procedures" option "1" contains value "Adjustment of External Fixator"
    Then verify header "Procedures" option "2" contains value "Ankle Joint"
    Then verify header "Procedures" option "3" contains value "Bilateral Operation"



  @TST-1061 @hamzaAhmad @e2eSprint @sprint18 @partiallyCompleted @Bug:administratorReviewOptionNotAvailable @Bug:proceduresNotSaving
  Scenario: Outpatients V3 : Requiring Review
    Given user lands on "Systems" page
    Then user clicks on "Clinics" card in Systems
    Then user lands on "Clinics" page
    Then user lands on "Clinics List" module
    Then user clicks on "Parameters"
    Then verify pop-up "Table Parameters"
    Then user clicks on "Clinic Date" on popup
    Then user selects date "18" of "October" of "2021"
    Then user clicks on tick-checkbox
    Then verify pop-up "Table Parameters"
    Then user clicks on tick-checkbox
    Then user clicks on "outpatients|clinicsData.clinic1.clinicName"
    Then user lands on "Patients List" module
    Then user clicks on "GARCIA, Sam Howard"
    Then user lands on "Episode Summary" page
    Then verify "Appointment Tasks" module exists "true"
    Then verify "Patient Event List" is present in the document
    Then verify "Attendance" is present in the document
    Then verify "Diagnosis" is present in the document
    Then verify "Procedures & Investigation" is present in the document
    Then verify "Documents" is present in the document
    Then verify "Outcome" is present in the document
    Then verify "Save and Preview" is present in the document
    Then user clicks on "Attendance"
    Then verify "Patient Attendance" module exists "true"
    Then set the yes-no of header "Has the patient attended the appointment?" to "No"
    Then set the yes-no of header "Has the patient attended the appointment?" to "Yes"
    Then set the yes-no of header "Was the patient seen during the appointment?" to "Yes"
    Then user clicks on "Who was the patient seen by during the appointment?"
    Then verify "Patient Seen By" module exists "true"
    Then verify "Specialty Doctor" is present in the document
    Then user clicks on "Specialty Doctor"
    Then user clicks on the tick-checkbox
    Then verify "Patient Attendance" module exists "true"
    Then user clicks on the action icon
    Then user clicks on "Save" on popup
    Then verify pop-up "Submission Status"
    Then verify "Please be aware that some of the options below may be temporarily restricted until all mandatory fields are completed and the preview has been viewed." is present in the pop-up menu
    Then verify "Complete" button is "inactive"
    Then user clicks on "Continue" on popup
    Then user clicks on "Procedures & Investigation"
    Then user clicks on "Adjustment of External Fixator"
    Then user clicks on "Ankle Joint"
    Then user clicks on the plus icon
    Then verify pop-up "Add Procedures"
    Then user clicks on "Adjustment of External Fixator"
    Then user clicks on "Ankle Joint"
    Then user clicks on tick-checkbox
    Then verify "Adjustment of External Fixator" is present in the document
    Then verify "Ankle Joint" is present in the document
    Then user clicks on "Diagnosis"
    Then user clicks on "Documents"
    Then verify "Appointment Document List" module exists "true"
    Then user clicks on "Trauma and Orthopaedics Outpatient Letter"
    Then verify "Document Properties" module exists "true"
    Then user clicks on "Diagnosis" span
    Then user clears the text-area
    Then user enter value "Automation testing of web v" in the text-area
    Then user clicks on the tick-checkbox
    Then user clicks on "Outcome" span
    Then user clears the text-area
    Then user enter value "Automation testing of web v" in the text-area
    Then user clicks on the tick-checkbox
    Then user clicks on the action icon
    Then verify pop-up "Save Document"
    Then user clicks on "Save Amendments" on popup
    Then verify pop-up "Document Submission"
    Then user clicks on tick-checkbox
    Then verify pop-up "Complete Document"
    Then user clicks on "Return To Menu" on popup
    Then user clicks on "Outcome"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "What is the referral to treatment action?"
    Then verify "Outcome Action" module exists "true"
    Then user clicks on "Add to Waiting List"
    Then user clicks on "What is the referral to treatment action?"
    Then verify "Outcome Action" module exists "true"
    Then user clicks on "Discharge"
    Then verify "Patient Outcome" module exists "true"
    Then user clicks on "What is the referral to treatment outcome?"
    Then verify "Outcome" module exists "true"
    Then user clicks on "Treatment / Monitoring previously given"
    Then verify "Patient Outcome" module exists "true"
    Then set the yes-no of header "Was the patient advised to return within 3 months if symptoms reoccur?" to "Yes"
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then user clicks on the action icon
    Then user clicks on "Save" on popup
    Then verify pop-up "Submission Status"
    Then verify "Complete" button is "active"
    Then user clicks on "Continue" on popup
    Then verify "7"th appointment option is "Save and Preview"
    Then switch to iframe "event-list-iframe"
    Then verify "Attendance" header is present in event report
    Then switch to main context
    Then verify event report "Attendance Outcome" with value "Attended"
    Then verify event report "Seen By" with value "Specialty Doctor"
    Then switch to iframe "event-list-iframe"
    Then verify "Outcome" header is present in event report
    Then switch to main context
    Then verify event report "Referral To Treatment Action" with value "Discharge"
    Then verify event report "Referral To Treatment Outcome" with value "Treatment / Monitoring previously given"
    Then verify event report "Discharge Advice Given" with value "Yes"
    Then switch to iframe "event-list-iframe"
    Then verify "Procedures Information" header is present in event report
    Then verify header "Procedures" option "1" contains value "Adjustment of External Fixator"
    Then verify header "Procedures" option "2" contains value "Ankle Joint"
    Then verify "Documents" header is present in event report
    Then verify Documents "Diagnosis" contains value "Automation testing of web v"
    Then verify Documents "Outcome" contains value "Automation testing of web v"
    Then switch to main context
    Then user clicks on "Procedures & Investigation"
    Then user clicks on the plus icon
    Then verify pop-up "Add Procedures"
    Then user clicks on "Bilateral Operation"
    Then user clicks on tick-checkbox
    Then user clicks on "Save and Preview"
    Then verify "Event Report" module exists "true"
    Then switch to iframe "event-list-iframe"
    Then verify "Procedures Information" header is present in event report
    Then verify header "Procedures" option "1" contains value "Adjustment of External Fixator"
    Then verify header "Procedures" option "2" contains value "Ankle Joint"
    Then verify header "Procedures" option "3" contains value "Bilateral Operation"
    Then switch to main context
    Then user clicks on back icon
    Then verify pop-up "Confirm Action"
    Then user clicks on "Save" on popup
    Then user lands on "Patients List" module
    Then user clicks on the meatball option where name is "GARCIA, Sam Howard"
    Then verify pop-up "Appointment Details"
    Then user clicks on the action icon pop-up
    Then verify popup option "Administrator Review" is visible