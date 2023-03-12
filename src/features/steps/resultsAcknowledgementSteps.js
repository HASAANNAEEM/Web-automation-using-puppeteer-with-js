import {Given,Then} from "@cucumber/cucumber";
import navigationPage from "../pages/actions/navigationBar";
import settingsPage from "../pages/actions/settingsPage";
import announcementPage from "../pages/actions/announcementPage";
import clicking from "../../utilities/clicking";
import settingsLocators from "../locators/settings.json"
import login_utility from "../../utilities/helper/login_utility";
import dates from "../../data/date.json"
import profilePage from "../pages/actions/profilePage";
import clinicalRecordsPage from "../pages/actions/clinicalRecordsPage";
import roleSettingsPage from "../pages/actions/roleSettingsPage";
import accountSettingsPage from "../pages/actions/accountSettingsPage";
import reportsPage from "../pages/actions/reportsPage";
import organisationSettingsPage from "../pages/actions/organisationSettingsPage";
import patientRecordsPage from "../pages/actions/patientRecordsPage";
import patMergePage from "../pages/actions/patMergePage";
import navigationBar from "../pages/actions/navigationBar";
import documentSettingsPage from "../pages/actions/documentSettingsPage";
import loginData from "../../data/loginData.json";
import resultsAcknowledgementPage from "../pages/actions/resultsAcknowledgementPage";
import utility from "../../utilities/utility";
import preRequisiteData from "../../data/preRequisiteCreationData.json"
import clinicalNotingPage from "../pages/actions/clinicalNotingPage";
import infectionControl from "../pages/actions/infectionControl";

Then('user clicks on {string} in Reports search popup', {timeout: 60 * 1000},async function(value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('user clicks on {string} first report in result section', {timeout: 60 * 1000},async function(value) {

    await resultsAcknowledgementPage.selectReport(this.page,value);
});
Then('user verify the patient report {string} in Event report section', {timeout: 60 * 1000},async function (value) {

    await resultsAcknowledgementPage.verifyReport(this.page,value);
});
Then('user selects {string} from Actions popUp', {timeout: 60 * 1000},async function(value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user go to {string} in Confirm Actions popUp', {timeout: 60 * 1000},async function(value) {

    await patMergePage.clickType(this.page,value);
});
Then('user verify {string} report in the results list', {timeout: 60 * 1000},async function(value) {

    await resultsAcknowledgementPage.verifyAckReport(this.page,value);
});
Then('user clicks on {string} in Predefined Criteria popup', {timeout: 60 * 1000},async function(value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('user clicks on {string} in Select Clinician popup', {timeout: 60 * 1000},async function(value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('user clicks on {string} in the Event List section', {timeout: 60 * 1000},async function(value) {

    await resultsAcknowledgementPage.clickParam(this.page,value);
});
Then('user clicks on {string} in Filters popUp', {timeout: 60 * 1000},async function(value) {

    await patMergePage.clickType(this.page,value);
});
Then('user clicks on {string} in Select Clinic popUp', {timeout: 60 * 1000},async function(value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('verify status should not be {string}', {timeout: 60 * 1000},async function(value) {

    await resultsAcknowledgementPage.verifyReportStatus(this.page,value);
});
Then('verify report name is {string}', {timeout: 60 * 1000},async function(value) {

    await resultsAcknowledgementPage.verifyReportName(this.page,value);
});
Then('user clicks on {string} in Select Location popUp', {timeout: 60 * 1000},async function(value) {

    await resultsAcknowledgementPage.selectLoc(this.page,value);
});
Then('user clicks on {string} in Select Specialities popUp', {timeout: 60 * 1000},async function(value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('user selects {string} from Report Acknowledgement popUp', {timeout: 60 * 1000},async function(value) {

    await patMergePage.selectDispName(this.page,value);
});

Then('user clicks on the first active lozenge filter parameter', {timeout: 60 * 1000},async function() {

    await resultsAcknowledgementPage.clickFirstActiveLozengeFilterParameter(this.page);
});

Then('verify patient name {string} with patient number {string} under the heading {string}', {timeout: 60 * 1000},async function(patientName,patientNHSNumber,headerValue) {
    let patientNHSNumberValue = await utility.getJsonValue(patientNHSNumber);
    await this.attach("Patient NHS Number: "+patientNHSNumberValue, 'text/plain');
    let patientNameValue = await utility.getJsonValue(patientName);
    await this.attach("Patient Name: "+patientNameValue, 'text/plain');
    await resultsAcknowledgementPage.verifyPatientNameAndNumberInHeading(this.page,patientNameValue,patientNHSNumberValue,headerValue);
});

Then('check if a report {string} with Time {string} exists which needs to be acknowledged for patient {string}', {timeout: 600 * 1000},async function(patientReport,patientReportTime,patientNumber) {
    let patientReportTimeValue = await utility.getJsonValue(patientReportTime);
    await this.attach("Patient Report: "+patientReportTimeValue, 'text/plain');
    let patientReportNameValue = await utility.getJsonValue(patientReport);
    await this.attach("Patient Time: "+patientReportNameValue, 'text/plain');
    let patientNumberValue = await utility.getJsonValue(patientNumber);
    await this.attach("Patient Number: "+patientNumberValue, 'text/plain');
    await resultsAcknowledgementPage.checkIfPatientReportExistsToBeAcknowledged(this.page,patientReportNameValue,patientReportTimeValue,patientNumberValue);
});

Then('check if a report {string} with Time {string} exists which needs to be unacknowledged for patient {string}', {timeout: 600 * 1000},async function(patientReport,patientReportTime,patientNumber) {
    let patientReportTimeValue = await utility.getJsonValue(patientReportTime);
    await this.attach("Patient Report: "+patientReportTimeValue, 'text/plain');
    let patientReportNameValue = await utility.getJsonValue(patientReport);
    await this.attach("Patient Time: "+patientReportNameValue, 'text/plain');
    let patientNumberValue = await utility.getJsonValue(patientNumber);
    await this.attach("Patient Number: "+patientNumberValue, 'text/plain');
    await resultsAcknowledgementPage.checkIfPatientReportExistsToBeUnacknowledged(this.page,patientReportNameValue,patientReportTimeValue,patientNumberValue);
});

Then('select an acknowledged report with name {string} and Time {string}', {timeout: 240 * 1000},async function(patientReport,patientReportTime) {
    let patientReportNameValue = await utility.getJsonValue(patientReport);
    await this.attach("Patient Time: "+patientReportNameValue, 'text/plain');
    let patientReportTimeValue = await utility.getJsonValue(patientReportTime);
    await this.attach("Patient Report: "+patientReportTimeValue, 'text/plain');
    await resultsAcknowledgementPage.selectAcknowledgedReport(this.page,patientReportNameValue,patientReportTimeValue);
});

Then('select an acknowledged report with name {string} and Time {string} without tag', {timeout: 240 * 1000},async function(patientReport,patientReportTime) {
    let patientReportNameValue = await utility.getJsonValue(patientReport);
    let patientReportTimeValue = await utility.getJsonValue(patientReportTime);
    await this.attach("Patient Report: "+patientReportNameValue, 'text/plain');
    await this.attach("Patient Time: "+patientReportTimeValue, 'text/plain');
    await resultsAcknowledgementPage.selectAcknowledgedReportWithoutTag(this.page,patientReportNameValue,patientReportTimeValue);
});


Then('user saves the acknowledgement information',  {timeout: 60 * 1000},async function() {
    await resultsAcknowledgementPage.saveAcknowledgeInformation(this.page,this);
});

Then('verify sub-header with name {string} exists',  {timeout: 60 * 1000},async function(subHeaderName) {
    await resultsAcknowledgementPage.verifySubHeader(this.page,subHeaderName);
});

Then('verify {string} with value {string} in the pop-up already exists',{timeout: 60 * 1000},async function(label,value) {
    await resultsAcknowledgementPage.verifyValueAlreadyExists(this.page,label,value);
});

Then('verify a report with name {string} and Time {string} with event note icon', {timeout: 240 * 1000},async function(patientReport,patientReportTime) {
    let patientReportNameValue = await utility.getJsonValue(patientReport);
    let patientReportTimeValue = await utility.getJsonValue(patientReportTime);
    await this.attach("Patient Report: "+patientReportNameValue, 'text/plain');
    await this.attach("Patient Time: "+patientReportTimeValue, 'text/plain');
    await resultsAcknowledgementPage.verifyEventReportEventIcon(this.page,patientReportNameValue,patientReportTimeValue);
});

Then('verify all reports have property {string} with value {string}',{timeout: 12000 * 1000},async function(label,value) {
    await resultsAcknowledgementPage.verifyAllReportsStatus(this.page,label,value);
});

Then('verify module navigator {string} is selected', {timeout: 60 * 1000},async function(label) {
    await resultsAcknowledgementPage.verifyModuleNavigatorSelected(this.page,label);
});

Then('check if the role Test 859 exists along with the pre-requisites', {timeout: 360 * 1000},async function() {
    let reportToKeepActive = await utility.getJsonValue(preRequisiteData.preRequisites.TST859.rolePermissions);
    await this.attach("Report Type To Keep Active: "+reportToKeepActive, 'text/plain');
    await resultsAcknowledgementPage.checkPreRequisiteTST859(this.page,reportToKeepActive);
});

Then('verify event report {string} with value {string} last', {timeout: 60 * 1000},async function (label,value) {
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await resultsAcknowledgementPage.verifyEventReportLast(this.page,label,value);
});

Then('verify the module {string} is disabled', {timeout: 60 * 1000},async function (label) {
    await resultsAcknowledgementPage.verifyModuleDisable(this.page,label);
});

Then('verify the module {string} is enabled', {timeout: 60 * 1000},async function (label) {
    await resultsAcknowledgementPage.verifyModuleEnabled(this.page,label);
});
Then('verify all event reports names are {string}', {timeout: 60 * 1000},async function(label) {
    let reportsName = await utility.getJsonValue(label);
    await this.attach("Reports Name: "+reportsName, 'text/plain');
    await resultsAcknowledgementPage.verifyReportsNames(this.page,reportsName);
});
Then('set report permission of with title {string} to isactive {string}',{timeout: 60 * 1000},async function(label,isActive) {
    let actionItem = await utility.getJsonValue(label);
    await this.attach("Label: "+actionItem, 'text/plain');
    await clinicalNotingPage.makeReportPermissionsActiveInActive(this.page,actionItem,isActive);
});

Then('check if pop-up appears and it does then close it', {timeout: 180 * 1000},async function() {
    await resultsAcknowledgementPage.checkPopUpAppearsAndClose(this.page);
});

Then('verify the table is populated in reports page',{timeout: 60 * 1000},async function(){
    await resultsAcknowledgementPage.verifyTableHasMultipleRows(this.page)
});

Then('verify text-area has a character limit of {string} character', {timeout: 60 * 1000},async function(key){
    let textArea = await utility.getJsonValue(key);
    await this.attach("Value: "+textArea, 'text/plain');
    await resultsAcknowledgementPage.verifyCharacterLimit(this.page,textArea);
});

Then('select the first report in the event list of report page', {timeout: 60 * 1000},async function(){
    await resultsAcknowledgementPage.selectFirstReportInEventListOfReportPage(this.page);
});

Then('save the number of rows available', {timeout: 60 * 1000},async function(){
    await resultsAcknowledgementPage.saveNumberOfRowsAvailable(this);
});

Then('compare the rows and they should be same as before filtering', {timeout: 60 * 1000},async function(){
    await resultsAcknowledgementPage.compareRowsAndEqual(this.page);
});

Then('verify the table has limited number of {string} rows', {timeout: 60 * 1000},async function(row){
await resultsAcknowledgementPage.verifyTableHasDefinedRows(this.page,row);
});

Then('verify event report header {string} with value {string} last', {timeout: 60 * 1000},async function(header,value){
await resultsAcknowledgementPage.verifyEventReportLastHeaderValue(this.page,header,value);
});

Then('check if the role Test 866 exists along with the pre-requisites', {timeout: 360 * 1000},async function() {
    await resultsAcknowledgementPage.checkPreRequisiteTST866(this.page);
});

Then('save the first report acknowledgement in patient summary page',{timeout: 60 * 1000},async function(){
    await resultsAcknowledgementPage.saveFirstRowDataOfReportsAcknowledgementInPatientSummaryPage(this);
});

Then('user clicks on the first row of {string}', {timeout: 60 * 1000},async function(header){
await resultsAcknowledgementPage.clickFirstRowOnHeader(this.page,header);
});

Then('verify the report name and time from the event report',  {timeout: 60 * 1000},async function(){
    await resultsAcknowledgementPage.verifyReportDescipleNameAndTime(this.page);
});

Then('verify the report name and time from the event report in selected event list table',  {timeout: 60 * 1000},async function(){
    await resultsAcknowledgementPage.verifyReportDescipleNameAndTimeInEventListTable(this.page);
});

Then('check if a report {string} with Time {string} exists which needs to be authorised for patient {string}', {timeout: 600 * 1000},async function(patientReport,patientReportTime,patientNumber) {
    let patientReportTimeValue = await utility.getJsonValue(patientReportTime);
    await this.attach("Patient Report: "+patientReportTimeValue, 'text/plain');
    let patientReportNameValue = await utility.getJsonValue(patientReport);
    await this.attach("Patient Time: "+patientReportNameValue, 'text/plain');
    let patientNumberValue = await utility.getJsonValue(patientNumber);
    await this.attach("Patient Number: "+patientNumberValue, 'text/plain');
    await resultsAcknowledgementPage.checkIfPatientReportExistsToBeAuthorised(this.page,patientReportNameValue,patientReportTimeValue,patientNumberValue);
});
Then('user clicks on {string} in Action menu popUp',{timeout: 360 * 1000},async function(value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user selects {string} from Select Clinician popUp',{timeout: 360 * 1000},async function(value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('user verify that the Reports for clinician will appear down the left hand side under the results banner',{timeout: 360 * 1000},async function () {

    await resultsAcknowledgementPage.verifyReportInList(this.page);
});

Then('verify no acknowledged report tick mark exists',{timeout: 360 * 1000},async function () {

    await resultsAcknowledgementPage.noAcknowledgedTickReportExists(this.page);
});
// Then('user verify the patient report {string} in Event report section',{timeout: 360 * 1000},async function(value) {
//
//     await resultsAcknowledgementPage.verifyReportCR(this.page,value);
// });