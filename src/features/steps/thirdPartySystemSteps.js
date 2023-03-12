import {Then} from "@cucumber/cucumber";
import thirdPartySystemsPage from "../pages/actions/thirdPartySystemsPage";
import utility from "../../utilities/utility";
import preRequisiteData from "../../data/preRequisiteCreationData.json"
import roleSettingsPage from "../pages/actions/roleSettingsPage";
import clinicalRecordsPage from "../pages/actions/clinicalRecordsPage";
import patientRecordsPage from "../pages/actions/patientRecordsPage";
import assesmentsPage from "../pages/actions/assesmeentsPage";

Then('check if the role Test 1274 exists along with the pre-requisites', {timeout: 360 * 1000},async function() {
    await roleSettingsPage.checkPreRequisiteTST1274(this.page);
});

Then('verify sub-header {string} has options {string} available',{timeout: 60 * 1000},async function(subHeader,options) {
    options = await utility.getJsonValue(options);
    await this.attach("Options: "+options, 'text/plain');
    await thirdPartySystemsPage.verifySubHeaderWithOptions(this.page,subHeader,options);
});

Then('verify sub-header {string} has options {string} available in list',{timeout: 60 * 1000},async function(subHeader,options) {
    options = await utility.getJsonValue(options);
    await this.attach("Options: "+options, 'text/plain');
    await thirdPartySystemsPage.verifySubHeaderWithOptionsList(this.page,subHeader,options);
});

Then('verify back icon exist on the page', {timeout: 60 * 1000},async function() {
    await thirdPartySystemsPage.verifyBackIcon(this.page);
});

Then('save the number of resource warnings', {timeout: 60 * 1000},async function() {
    await thirdPartySystemsPage.saveResourceWarning(this);
});

Then('compare the popup warnings with the page warning', {timeout: 60 * 1000},async function() {
    await thirdPartySystemsPage.verifyPopUpResourceWarning(this);
});

Then('verify the table is empty with text {string}', {timeout: 60 * 1000},async function(informationValue) {
    await clinicalRecordsPage.verifyTableEmpty(this.page,informationValue);
});

Then('verify the table is empty with text description {string}', {timeout: 60 * 1000},async function(informationValue) {
    await thirdPartySystemsPage.verifyTableEmptyDescription(this.page,informationValue);
});

Then('check if the current user has the site of {string} and if not then change it', {timeout: 360 * 1000},async function(siteValue){
    await roleSettingsPage.verifyAndChangeExistingSite(this.page,siteValue);
});

Then('verify the patient is deceased status is {string} from the demographics bar', {timeout: 60 * 1000},async function(isDead){
    await patientRecordsPage.verifyPatientDeceased(this.page,isDead);
});

Then('verify warning {string}', {timeout: 60 * 1000},async function(warningText){
    await thirdPartySystemsPage.verifyWarning(this.page,warningText);
});

Then('verify sub-headers with {string} with options {string} exists and if does add it to the report',{timeout: 60 * 1000},async function (subHeader,subHeaderOptions) {
    await thirdPartySystemsPage.verifySubHeaderAndAddReport(this,subHeader,subHeaderOptions);
});

Then('verify sub-header {string} has date {string} and has data {string}',{timeout: 60 * 1000},async function (subHeader,isDateActive,isDataActive) {
    await thirdPartySystemsPage.verifySubHeaderWithDate(this.page,subHeader,isDateActive);
    await thirdPartySystemsPage.verifySubHeaderWithData(this.page,subHeader,isDataActive);
});

Then('verify warning {string} in color {string}', {timeout: 60 * 1000},async function(warningText,color){
    await thirdPartySystemsPage.verifyWarningWithColor(this.page,warningText,color);
});

Then('verify sub-header {string} has date {string} in color {string}',{timeout: 60 * 1000},async function (subHeader,isDateActive,color) {
    await thirdPartySystemsPage.verifySubHeaderWithDateAndColor(this.page,subHeader,isDateActive,color);
});