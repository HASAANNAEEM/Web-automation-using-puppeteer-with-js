import {Given,Then} from "@cucumber/cucumber";
import utility from "../../utilities/utility";
import informationScreenPage from "../pages/actions/informationScreenPage";
import patMergePage from "../pages/actions/patMergePage";
import resultsAcknowledgementPage from "../pages/actions/resultsAcknowledgementPage";
import informationScreenSettings from "../pages/actions/informationScreenSettings";
import announcementPage from "../pages/actions/announcementPage";
import navigationPage from "../pages/actions/navigationBar";

Then('user verify the Location list visible or not',{timeout: 360 * 1000},async function() {

    await informationScreenPage.verifyLoc(this.page);
});
Then('user clicks on Location {string} in Location List',{timeout: 360 * 1000},async function(value) {

    await informationScreenPage.selectFirstLoc(this.page,value);
});
Then('user clicks on {string} in Location Menu popUp',{timeout: 360 * 1000},async function(value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user clicks on {string} in Edit Location Details popUp',{timeout: 360 * 1000},async function(value) {

    await patMergePage.selectCode(this.page,value);
});
Then('user clicks on {string} in Speciality popUp',{timeout: 360 * 1000},async function(value) {

    await informationScreenPage.selectSpecialty(this.page,value);
});
Then('user verify Location details',{timeout: 360 * 1000},async function () {

    await informationScreenPage.verifyLocDetails(this.page);
});
Then('user clicks on {string} in Menu popUp',{timeout: 360 * 1000},async function(value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user clicks on {string} in Create popUp',{timeout: 360 * 1000},async function(value) {

    await patMergePage.selectCode(this.page,value);
});
Then('user selects {string} option from Select Orgainzation popUp',{timeout: 360 * 1000},async function(value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('user selects {string} option from Select Location popUp',{timeout: 360 * 1000},async function(value) {

    await resultsAcknowledgementPage.selectLoc(this.page,value);
});

Then('user sets up the pre-requisites for TST-882 with colour {string} for label {string} and color {string} for label {string}', {timeout: 360 * 1000},async function(specialtyColor,specialityLabel,clinicanColor,clinicianLabel) {
    await informationScreenSettings.preRequisiteTST882(this.page,specialtyColor,specialityLabel,clinicanColor,clinicianLabel);
});

Then('verify with style {string} of label {string} is color {string}',{timeout: 90 * 1000},async function (style,labelName,color) {

    labelName = await utility.getJsonValue(labelName);
    await this.attach("code: "+labelName, 'text/plain');

    color = await utility.getJsonValue(color);
    await this.attach("value: "+color, 'text/plain');

    await informationScreenSettings.verifyStatusTextColor(this.page,style,labelName,color);
});

Then('verify ward slot {string} has Responsible Clinician {string} with color {string}',{timeout: 90 * 1000},async function (wardNumber,clinicianName,clinicianColor) {
    await informationScreenSettings.verifyWardClinicianColor(this.page,wardNumber,clinicianName,clinicianColor);
});

Then('check if indicator {string} with property {string} exists and if doesnt create it',{timeout: 240 * 1000},async function (indicatorName,indicatorProperty) {
    await informationScreenSettings.checkIfIndicatorExistAndCreateIfItDoesnt(this.page,indicatorName,indicatorProperty);
});
Then('user clicks on {string} in Ward Menu',{timeout: 360 * 1000},async function(value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('user clicks on {string} in Populate Holding Area popUp',{timeout: 360 * 1000},async function(value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('user selects a reason from Holding Area reason popUp',{timeout: 360 * 1000},async function () {

});
Then('user clicks on magnifying icon in the bottom right corner',{timeout: 360 * 1000},async function () {

    await informationScreenPage.clickMagnifier(this.page);
});
Then('user clicks on zoom in icon',{timeout: 360 * 1000},async function () {

    await informationScreenPage.clickZoomIn(this.page);
});
Then('user clicks on {string} in ward menu dropdown',{timeout: 360 * 1000},async function (value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('user clicks on {string} in Ward settings popUp',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user clicks on {string} value from default zoom level popUp',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.selectSpecialty(this.page,value);
});
Then('user verify the zoom functionality on ward screen',{timeout: 360 * 1000},async function () {

});
Then('user selects a patient from ward slot {string}',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.selectWardPatient(this.page,value);
});
Then('user clicks on plus icon on Local Indicator Categories List popUp',{timeout: 360 * 1000},async function () {

    await patMergePage.clickPlus(this.page);
});
Then('user enter {string} in Create Indicator popUp category',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.entrName(this.page,value);
});
Then('user verify Indicator Category Information',{timeout: 360 * 1000},async function () {

    await informationScreenPage.verifyIndicator(this.page);
});
Then('user clicks on {string} option in further actions',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user clicks on {string} from Clinical Indicator menu',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user clicks on {string} option from Select Clinical Indicatior popUp',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.selectSpecialty(this.page,value);
});
Then('user clicks on {string} option in Clinical Indicators menu popUp',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user verify the order of clinical indicators by clicking upward and downward buttons',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.verifyReorder(this.page);
});
Then('user clicks {string} tab in Information Screen settings page',{timeout: 360 * 1000},async function (value) {

    await patMergePage.selectOption(this.page,value);
});
Then('user clicks on table parameters to filter table options',{timeout: 360 * 1000},async function () {

    await patMergePage.selectParam(this.page);
});
Then('user clicks on {string} option in parameters in filter parameters popUp',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickType(this.page,value);
});
Then('user clicks on {string} option in Select Active popUp',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.selectActive(this.page,value);
});
Then('user verify the option selected in Indicators filter',{timeout: 360 * 1000},async function () {

    await informationScreenPage.verifyOption(this.page);
});
Then('user clicks on {string} option in Select Types popUp',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.selectActive(this.page,value);
});
Then('user verify the filtered results',{timeout: 360 * 1000},async function () {

    await informationScreenPage.verifyPropType(this.page);
});
Then('user clicks on {string} in Slot menu popUp',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user clicks on {string} in Clinical personnel',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user verify the clinical history',{timeout: 360 * 1000},async function () {

    await informationScreenPage.verifyHistory(this.page);
});
Then('user clicks on the {string} option in Slot Details popUp',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user clicks on {string} option in Decomission reason popUp',{timeout: 360 * 1000},async function (value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('user verify the status of bed',{timeout: 360 * 1000},async function () {

    await informationScreenPage.verifyBedStats(this.page);
});
Then('user clicks on {string} in Clinical Indicators popUp',{timeout: 360 * 1000},async function (value) {

    await patMergePage.selectCode(this.page,value);
});
Then('user clicks on {string} in clinical Indicators popUp',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.selectSpecialty(this.page,value);
});
Then('user verify the Slot details and Slot options',{timeout: 360 * 1000},async function () {

    await informationScreenPage.verifySlotDetails(this.page);
    await informationScreenPage.verifySlotOpt(this.page);

});
Then('user clicks on {string} in Slot Options',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user clicks on {string} in populate Slot option',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user clicks on {string} reason option in Populate Information popUp',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.selectSpecialty(this.page,value);
});
Then('user verify the status of slot in Populate Summary popUp',{timeout: 360 * 1000},async function () {

    await informationScreenPage.verifySlotStatus(this.page);
});
Then('user clicks on {string} in Ward Settings popUp',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user clicks on {string} option in Local Indicator Category options',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.selectSpecialty(this.page,value);
});
Then('user verify ward specific indicators under local category',{timeout: 360 * 1000},async function () {

    await informationScreenPage.verifyIndCat(this.page);
});
Then('user clicks on {string} in reservation popUp',{timeout: 360 * 1000},async function (value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('user verify the status on Reservation Summary popUp',{timeout: 360 * 1000},async function () {

    await informationScreenPage.verifyResStat(this.page);
});
Then('user verify the status on Slot Details',{timeout: 360 * 1000},async function () {

    await informationScreenPage.verifyResStat(this.page);
});
Then('user verify Responsible Personnel {string} in Handover Section',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.verDetails(this.page,value);
});
Then('user clicks on {string} slot',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSpan(this.page,value);
});
Then('user verify type {string} in Edit Slot popUp',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.verDetails(this.page,value);
});
Then('user clicks on flag icon in bottom right corner',{timeout: 360 * 1000},async function () {

    await informationScreenPage.clickFlag(this.page);
});
Then('user clicks on {string} in Flashback Date and Time popUp',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.clickCurrentTime(this.page,value);
});
Then('user clicks on manual refresh button to navigate back to real time',{timeout: 360 * 1000},async function () {

    await informationScreenPage.manualRefresh(this.page);
});
Then('user verify the updated indicators',{timeout: 360 * 1000},async function () {

    await informationScreenPage.verifyUpdatedInd(this.page);
});
Then('user clicks on action menu in Area Management Section',{timeout: 360 * 1000},async function () {

    await patMergePage.clickMenu(this.page);
});
Then('user clicks on {string} in Management menu popUp',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user verify by adding and removing slots from all dimensions',{timeout: 360 * 1000},async function () {

    await informationScreenPage.verifyInfoConfig(this.page);
});
Then('user verify whether the patient is present or not',{timeout: 360 * 1000},async function () {

    await informationScreenPage.verifyPatHoldingArea(this.page);
});
Then('user selects the patient from the holding area',{timeout: 360 * 1000},async function () {

    await informationScreenPage.selectPat(this.page);
});
Then('user clicks on action menu in Holding area details popUp',{timeout: 360 * 1000},async function () {

    await patMergePage.clickMenu(this.page);
});
Then('user clicks on {string} option in holding area patient menu',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user clicks on cancel on holding area popUp',{timeout: 360 * 1000},async function () {

    await informationScreenPage.clickCancel(this.page);
});
Then('user clicks on the first available slot',{timeout: 360 * 1000},async function () {

    await informationScreenPage.selectFirstSlot(this.page);
});
Then('user verify {string} popUp',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.verifyMixedSex(this.page,value);
});
Then('user clicks on {string} in Slot Options list',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user selects the patient in list to swap',{timeout: 360 * 1000},async function () {

    await informationScreenPage.selectSwapPat(this.page);
});
// Then('user verify {string} popUp',{timeout: 360 * 1000},async function (value) {
//
//     await announcementPage.verifyForm(this.page, value);
// });
Then('user clicks on {string} in Clician list popUp',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user clicks on {string} in Select Clinician colour popUp',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSpan(this.page,value);
});
Then('user selects {string} option from Reasons list',{timeout: 360 * 1000},async function (value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('user verify status {string} in Absence Summary popUp',{timeout: 360 * 1000},async function (value) {

    await informationScreenPage.verifyAbsentStat(this.page,value);
});
Then('user clicks on {string} in Slot Details popUp',{timeout: 360 * 1000},async function (value) {

    await patMergePage.clickSystemCard(this.page,value);
});
Then('user selects first option from not set list',{timeout: 360 * 1000},async function () {

    await informationScreenPage.selectFirstOption(this.page);
});

Then('check if {string} exists in {string} list and if not then add one in manage personell',{timeout: 360 * 1000},async function (value,header) {
    await informationScreenPage.managePersonell(this.page,header,value);
});

Then('user saves the number of records for the label {string}',{timeout: 360 * 1000},async function (header) {
    header = await informationScreenPage.saveNumberOfRecords(this.page,header);
    await this.attach("Value: "+header, 'text/plain');
});

Then('user verifies the new number of records for the label {string}',{timeout: 360 * 1000},async function (header) {
    await informationScreenPage.verifyNewRecordAdded(this.page,header);
});

Then('user verifies the number of records for the label {string} with value {string}',{timeout: 360 * 1000},async function (header,value) {
    await informationScreenPage.verifyNewRecordAddedWithValue(this.page,header,value);
});

Then('check if patient {string} has an open case and if he does then close it',{timeout: 360 * 1000},async function (patientValue) {
    patientValue = await utility.getJsonValue(patientValue);
    await this.attach("Patient Value: "+patientValue, 'text/plain');
    await informationScreenPage.closeInfectionControlCaseIfOpen(this.page,patientValue);
});

Then('subnavigate to information screen in Site {string} with Location {string}',{timeout: 360 * 1000},async function (site,location) {
    location = await utility.getJsonValue(location);
    await this.attach("Location: "+location, 'text/plain');
    await informationScreenPage.navigateToWardScreen(this.page,site,location);
});

Then('remove all previous categories with name {string}',{timeout: 360 * 1000},async function (value) {
    await informationScreenPage.removePreviousCategories(this.page,value);
});

Then('randomly select a location', {timeout: 360 * 1000},async function () {
    let location = await informationScreenPage.randomlySelectValue(this.page);
    await this.attach("Location: "+location, 'text/plain');
});

Then('verify patient {string} has img {string} with indicator {string}', {timeout: 360 * 1000},async function (patient,imgValue,indicator) {
    patient = await utility.getJsonValue(patient);
    await this.attach("Patient: "+patient, 'text/plain');
    await informationScreenPage.verifyPatientImage(this.page,patient,imgValue,indicator);
});

Then('navigate scroll till user reaches with local clinical indicator {string}',{timeout: 360 * 1000},async function (header) {
    await informationScreenPage.scrollClinicalIndicator(this.page,header);
});

Then('switch to tab {string} tab',{timeout: 360 * 1000},async function (tabValue) {
    let pageArray = await this.browser.pages();
    this.page = pageArray[parseInt(tabValue)-1];
});

