import {Given,Then} from "@cucumber/cucumber";
import outpatientsPage from "../pages/actions/outpatientsPage";
import infectionControl from "../pages/actions/infectionControl";
import utility from "../../utilities/utility";


Then('verify column {string} of name {string} contains value {string}', {timeout: 60 * 1000},async function(column,code,value) {

    code = await utility.getJsonValue(code);
    await this.attach("code: "+code, 'text/plain');

    value = await utility.getJsonValue(value);
    await this.attach("value: "+value, 'text/plain');

    await outpatientsPage.verifyTableColumns(this.page,column,code,value);
});

Then('user clicks on the meatball option where name is {string}', {timeout: 60 * 1000},async function(value) {
    let meatBallOption = await utility.getJsonValue(value);
    await this.attach("Meatball Value: "+meatBallOption, 'text/plain');
    await outpatientsPage.meatballOptions(this.page,meatBallOption);
});

Then('verify appointment status is {string}', {timeout: 60 * 1000},async function(value) {

    await outpatientsPage.appointmentStatus(this.page,value);
});
Then('verify current date exists in parameter', {timeout: 60 * 1000},async function() {

    await outpatientsPage.verifyParamDate(this.page);
});
Then('verify header name contains {string}', {timeout: 60 * 1000},async function(value) {

    value = await utility.getJsonValue(value);
    await this.attach("Patient Identifier Search: "+value, 'text/plain');
    await outpatientsPage.verifyHeaderName(this.page,value);
});
Then('verify header code contains {string}', {timeout: 60 * 1000},async function(value) {

    value = await utility.getJsonValue(value);
    await this.attach("Patient Identifier Search: "+value, 'text/plain');
    await outpatientsPage.verifyHeaderCode(this.page,value);
});
Then('verify header speciality contains {string}', {timeout: 60 * 1000},async function(value) {

    value = await utility.getJsonValue(value);
    await this.attach("Patient Identifier Search: "+value, 'text/plain');
    await outpatientsPage.verifyHeaderSpeciality(this.page,value);
});
Then('verify header start contains {string}', {timeout: 60 * 1000},async function(value) {

    value = await utility.getJsonValue(value);
    await this.attach("Patient Identifier Search: "+value, 'text/plain');
    await outpatientsPage.verifyHeaderStart(this.page,value);
});
Then('verify header capacity contains {string}', {timeout: 60 * 1000},async function(value) {

    value = await utility.getJsonValue(value);
    await this.attach("Patient Identifier Search: "+value, 'text/plain');
    await outpatientsPage.verifyHeaderCapacity(this.page,value);
});
Then('verify header status contains {string}', {timeout: 60 * 1000},async function(value) {

    value = await utility.getJsonValue(value);
    await this.attach("Patient Identifier Search: "+value, 'text/plain');
    await outpatientsPage.verifyHeaderStatus(this.page,value);
});
Then('verify that RTT status {string} is equal to {string}', {timeout: 60 * 1000},async function(status,value) {

    await outpatientsPage.verifyRttStatusNumbers(this.page,status,value);
});
Then('click favourite icon clinic {string} and make it {string} and verify', {timeout: 60 * 1000},async function(docName, isActive) {
    docName = await utility.getJsonValue(docName);
    await this.attach("Patient Identifier Search: "+docName, 'text/plain');
    await outpatientsPage.clinicsFavouritesIcon(this.page,docName, isActive);
});
Then('verify {string} button is {string}', {timeout: 60 * 1000},async function(btn, status) {

    await outpatientsPage.CmpltBtnStatus(this.page,btn,status);
});
Then('verify {string} header is present in event report', {timeout: 60 * 1000},async function(value) {

    await outpatientsPage.eventReportHeader(this.page,value);
});
Then('verify header {string} option {string} contains value {string}', {timeout: 60 * 1000},async function(header,option,value) {

    await outpatientsPage.verifyProcedure(this.page,header,option,value);
});
Then('verify {string} is present in not seen reasons', {timeout: 60 * 1000},async function(value) {

    await outpatientsPage.verifyOptions(this.page,value);
});
Then('verify {string}th appointment option is {string}', {timeout: 60 * 1000},async function(option,value) {

    await outpatientsPage.verifyAppointmentOptions(this.page,option,value);
});
Then('verify Documents {string} contains value {string}', {timeout: 60 * 1000},async function(option,value) {

    await outpatientsPage.verifyDocumentOptions(this.page,option,value);
});

Then('verify the first row appointment type', {timeout: 60 * 1000},async function() {
    await outpatientsPage.verifyFirstRowAppointmentType(this);
});

Then('user clicks on the meatball option of the first row', {timeout: 60 * 1000},async function() {
    await outpatientsPage.firstMeatballOptions(this.page);
});

Then('user clicks on the meatball option of the last row', {timeout: 60 * 1000},async function() {
    await outpatientsPage.lastMeatballOptions(this.page);
});

Then('verify the pop-up appointment type', {timeout: 60 * 1000},async function() {
    await outpatientsPage.verifyPopUpAppointmentType(this.page);
});
