import {Then} from "@cucumber/cucumber";
import utility from "../../utilities/utility";
import diagnosticRequestPage from "../pages/actions/diagnosticRequestPage";
import roleSettingsPage from "../pages/actions/roleSettingsPage";
import patientRequest from "../pages/actions/patientRequest";
import navigationPage from "../pages/actions/navigationBar";
import documentSettingsPage from "../pages/actions/documentSettingsPage";
import announcementPage from "../pages/actions/announcementPage";

Then('user reads {string}', {timeout: 180 * 1000},async function(key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    console.log(x);
});

Then("cancel requests of location {string} if not cancelled", {timeout: 1800 * 1000},async function (location) {
    await diagnosticRequestPage.cancelRequests(this.page, location);
});

Then('user clicks on tick-checkbox if recent investigations popup appears', {timeout: 60 * 1000},async function(){
    await diagnosticRequestPage.recentInvestigationsApprove(this.page);
});

Then('check if the current user has the role of {string} and if not then change it', {timeout: 480 * 1000},async function(roleValue){
    await roleSettingsPage.verifyAndChangeExistingRole(this.page,roleValue);
});

Then('user clicks on the remove icon of {string}', {timeout: 180 * 1000},async function(itemName){
    await patientRequest.clickOnRemoveIcon(this.page,itemName);
});

Then('create a radiology request with location {string} Clinician {string} Modality {string} Investigations {string} Examination Area {string} Provisional Diagnosis {string} Clinical Details {string} Method of Arrival {string}', {timeout: 360 * 1000},async function (location,clinician,modality,investigation,examinationArea,diagnosis,details,methodOfArrival) {
    location = await utility.getJsonValue(location);
    await this.attach("Location: "+location, 'text/plain');
    clinician = await utility.getJsonValue(clinician);
    await this.attach("Clinician: "+clinician, 'text/plain');
    await patientRequest.createRadiologyRequest(this.page,location,clinician,modality,investigation,examinationArea,diagnosis,details,methodOfArrival);
});

Then('check the latest checkbox of patient NHS {string} to {string}', {timeout: 180 * 1000},async function(nhsNumber,selection){
    nhsNumber = await utility.getJsonValue(nhsNumber);
    await this.attach("Clinician: "+nhsNumber, 'text/plain');
    await patientRequest.clickLatestNHSCheckbox(this.page,nhsNumber,selection);
});

Then('verify table header {string} date column with current date exists', {timeout: 180 * 1000},async function(headerName){
    await patientRequest.verifyCurrentDate(this.page,headerName);
});

Then('user clicks on the question {string}', {timeout: 180 * 1000},async function(headerName){
    await patientRequest.clickQuestion(this.page,headerName);
});

Then('verify {string} with value {string} in the pop-up last',{timeout: 180 * 1000},async function(headerName,value){
    await patientRequest.verifyLastRequest(this.page,headerName,value);
});

Then('user click on minus button of label {string}',{timeout: 180 * 1000},async function(headerName){
    await patientRequest.clickMinusIcon(this.page,headerName);
});

Then('user clicks on the latest row meatballs icon',{timeout: 180 * 1000},async function(){
    await patientRequest.clickMeatbalIcon(this.page);
});

Then('check if investigation pop-up appears because an investigation like it already exists',{timeout: 180 * 1000},async function(){
    await patientRequest.checkInvestigationALreadyExistsPopUp(this.page);
});

Then('check if recent investigation pop-up appears because an investigation like it already exists',{timeout: 180 * 1000},async function(){
    await patientRequest.checkRecentInvestigationALreadyExistsPopUp(this.page);
});

Then('verify header {string} sorting {string}',{timeout: 180 * 1000},async function(headerName, sortingClass){
    await patientRequest.verifySortingClass(this.page, headerName, sortingClass);
});

Then('verify the header {string} sorting {string}',{timeout: 180 * 1000},async function(headerName, sortingClass){
    await announcementPage.verifySortingClass(this.page, headerName, sortingClass);
});

Then('user clicks on column header {string}', {timeout: 60 * 1000},async function(elementName){
    await navigationPage.clickOnColumnHeader(this.page,elementName);
});

Then('user clicks on magnifying glass of section {string}', {timeout: 180 * 1000}, async function(headerName) {
    await diagnosticRequestPage.clickMagnificationGlassSearch(this.page,headerName);
});


Then('create an investigation with code {string} Name {string} Display {string} Specimen {string} Providing Trust {string} Loopback days {string} receptacles {string} Questions and Guidance {string} Trusts {string}', {timeout: 860 * 1000},async function(code,name,display,specimen,provTrust,lookbackDays,receptacles,questionsAndGuidance,trusts){
    await diagnosticRequestPage.createInvestigation(this.page,code,name,display,specimen,provTrust,lookbackDays,receptacles,questionsAndGuidance,trusts);
});
Then('verify receptacle is shown with color and text {string} with value {string}', {timeout: 60 * 1000},async function(colorText,receptacleValue){
    await diagnosticRequestPage.verifyReceptacles(this.page,colorText,receptacleValue);
});

Then('create a blood science request with location {string} Clinician {string} Modality {string} Investigations {string} Examination Area {string} Provisional Diagnosis {string} Clinical Details {string} Method of Arrival {string}', {timeout: 360 * 1000},async function (location,clinician,modality,investigation,examinationArea,diagnosis,details,methodOfArrival) {
    await patientRequest.createBloodScienceRequest(this.page,location,clinician,modality,investigation,examinationArea,diagnosis,details,methodOfArrival);
});

Then('verify the status color threshold for {string} is {string}',  {timeout: 60 * 1000},async function(statusText,statusColor){
    await diagnosticRequestPage.verifyStatusTextColor(this.page,statusText,statusColor);
});

Then('user filter item {string} with value {string}', {timeout: 120 * 1000},async function (itemName, filterValue) {
    await diagnosticRequestPage.filterTextItem(this.page,itemName, filterValue);
});
Then('user verify {string} popUp is displayed',{timeout: 180 * 1000},async function (option) {

    await patientRequest.verifyPrint(this.page,option);
});
Then('user enters {string} value in Reception mode popUp',{timeout: 180 * 1000},async function (option) {

    await patientRequest.enterOrderno(this.page,option);
});