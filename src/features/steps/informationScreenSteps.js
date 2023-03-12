import {Then} from "@cucumber/cucumber";
import profilePage from "../pages/actions/profilePage";
import utility from "../../utilities/utility";
import wardScreenPage from "../pages/actions/wardScreenPage";
import settingsPage from "../pages/actions/settingsPage";
import informationScreenSettings from "../pages/actions/informationScreenSettings";
import roleSettingsPage from "../pages/actions/roleSettingsPage";
import clinicalRecordsPage from "../pages/actions/clinicalRecordsPage";
import informationScreenPage from "../pages/actions/informationScreenPage";
import login_utility from "../../utilities/helper/login_utility";

Then('user clicks on the sub-navigation in action menu {string}', {timeout: 60 * 1000},async function(label){
    await profilePage.clickProfileMenu(this.page,label);
});

Then('user clicks on the exact sub-navigation in profile menu {string}', {timeout: 60 * 1000},async function(label){
    await profilePage.clickProfileMenuExact(this.page,label);
});

Then('add patient {string} in the holding area with reason {string} in Bed {string}', {timeout: 360 * 1000},async function(value,reason,bed){
    let patientIdentifierSearch = await utility.getJsonValue(value);
    await this.attach("Patient Identifier Search: "+patientIdentifierSearch, 'text/plain');
    await wardScreenPage.addPatientInHoldingArea(this.page, patientIdentifierSearch,reason,bed);
});

Then('verify plus button exists', {timeout: 60 * 1000},async function(){
  await settingsPage.verifyPlusButtonExists(this.page);
});

Then('verify back button exists', {timeout: 60 * 1000},async function(){
    await settingsPage.verifyBackButtonExists(this.page);
});

Then('verify each row has a right arrow icon and and ellipse present', {timeout: 60 * 1000},async function(){
    await informationScreenSettings.verifyEachRowContainsArrowIconAndEllipse(this.page);
});

Then('user inputs {string} with random value in information page',  {timeout: 60 * 1000},async function(label){
    let randomValue = await informationScreenSettings.inputRandomValueInline(this.page,label);
    await this.attach("Random Value Name: "+randomValue, 'text/plain');
});

Then('user verify {string} with random value in information page',  {timeout: 60 * 1000},async function(label){
    let randomValue = await informationScreenSettings.verifyRandomValuePopUpWithLabel(this.page,label);
    await this.attach("Random Value Name: "+randomValue, 'text/plain');
});

Then('user clicks on the card {string}',  {timeout: 60 * 1000},async function(label){
    await informationScreenSettings.clickOnCard(this.page,label);
});

Then('user clicks on magnifying glass on the ward page',  {timeout: 60 * 1000},async function(){
    await informationScreenSettings.clickOnWardMagnifyingGlass(this.page);
});

Then('verify the mouse select has shifted to a for way icon',  {timeout: 60 * 1000},async function(){
    await informationScreenSettings.verifyForWayMouseIcon(this.page);
});

Then('save the translate option of the viewpoint',  {timeout: 60 * 1000},async function(){
    let offsetValue = await informationScreenSettings.saveTranslate(this.page);
    await this.attach("Offset Left: "+offsetValue, 'text/plain');
});

Then('we drag and drop from {string} to {string}',  {timeout: 360 * 1000},async function(source,destination){
    await informationScreenSettings.dragAndDropXpath(this.page,source,destination);
});

Then('compare the translate option of the viewpoint',  {timeout: 60 * 1000},async function(){
    let offsetValue = await informationScreenSettings.compareTranslate(this.page);
    await this.attach("New Offset Left: "+offsetValue, 'text/plain');
});

Then('verify {string} is set to {string} as clinical personnel',  {timeout: 60 * 1000},async function(value,option){

    option = await utility.getJsonValue(option);
    await this.attach("Action: "+option, 'text/plain');

    await informationScreenSettings.verifyClinicalPersonnel(this.page,value,option);
});

Then('verify patients demographics bar is visible in information screen',  {timeout: 60 * 1000},async function(){
    await informationScreenSettings.verifyDemographicsBar(this.page);
});

Then('verify DOB in demographics bar is {string}',  {timeout: 60 * 1000},async function(value){

    value = await utility.getJsonValue(value);
    await this.attach("Action: "+value, 'text/plain');
    await informationScreenSettings.verifyDemographicsDOB(this.page,value);
});

Then('verify NHS in demographics bar is {string}',  {timeout: 60 * 1000},async function(value){

    value = await utility.getJsonValue(value);
    await this.attach("Action: "+value, 'text/plain');
    await informationScreenSettings.verifyDemographicsNHS(this.page,value);
});

Then('verify gender in demographics bar is {string}',  {timeout: 60 * 1000},async function(value){

    value = await utility.getJsonValue(value);
    await this.attach("Action: "+value, 'text/plain');
    await informationScreenSettings.verifyDemographicsGender(this.page,value);
});

Then('verify history contains ward {string} location {string} status {string} and date {string}',  {timeout: 60 * 1000},async function(ward,loc,status,date){

    ward = await utility.getJsonValue(ward);
    await this.attach("Action: "+ward, 'text/plain');
    await informationScreenSettings.verifyHistory(this.page,ward,loc,status,date);
});

Then('verify demographic bar in in reservation summary pop-up',  {timeout: 60 * 1000},async function(){
    await informationScreenSettings.verifySummaryDemographicsBar(this.page);
});

Then('verify NHS number {string}',  {timeout: 60 * 1000},async function(value){
    value = await utility.getJsonValue(value);
    await this.attach("Action: "+value, 'text/plain');
    await informationScreenSettings.verifySummaryNHS(this.page,value);
});

Then('verify gender {string}',  {timeout: 60 * 1000},async function(value){
    value = await utility.getJsonValue(value);
    await this.attach("Action: "+value, 'text/plain');
    await informationScreenSettings.verifySummaryGender(this.page,value);
});

Then('verify Decommission status is {string}',  {timeout: 60 * 1000},async function(value){
    await informationScreenSettings.DecommissionStatus(this.page,value);
});

Then('verify slots {string} status is {string}',  {timeout: 60 * 1000},async function(value,option){
    await informationScreenSettings.SlotStatus(this.page,value,option);
});

Then('verify slots {string} unavailability reason is {string}',  {timeout: 60 * 1000},async function(value,option){
    await informationScreenSettings.UnavailabilityReason(this.page,value,option);
});

Then('enter clinical personnel name {string}',  {timeout: 60 * 1000},async function(value){

    value = await utility.getJsonValue(value);
    await this.attach("Action: "+value, 'text/plain');

    await informationScreenSettings.enterClinicalPersonnel(this.page,value);
});

Then('verify option {string} contains value {string}',  {timeout: 60 * 1000},async function(option,value){

    option = await utility.getJsonValue(option);
    await this.attach("Action: "+option, 'text/plain');

    value = await utility.getJsonValue(value);
    await this.attach("Action: "+value, 'text/plain');

    await informationScreenSettings.verifyOptionAndValue(this.page,option,value);
});

Then('user selects time hours as {string} and minutes as {string}',{timeout: 90 * 1000},async function(hours,minutes){
    let hoursValue = await utility.getJsonValue(hours);
    await this.attach("Hours: "+hoursValue, 'text/plain');
    let minutesValue = await utility.getJsonValue(minutes);
    await this.attach("Minutes: "+minutesValue, 'text/plain');
    await informationScreenPage.selectTime(this.page,hoursValue,minutesValue);
});

Then('user verifies zoom is maximum {string} times',{timeout: 60 * 1000},async function(zoomAmount){
    await informationScreenPage.maxZoom(this.page,zoomAmount);
});

Then('user verifies zoom is minimum {string} times',{timeout: 60 * 1000},async function(zoomAmount){
    await informationScreenPage.minZoom(this.page,zoomAmount);
});

Then('user clicks on the random value in the table',{timeout: 60 * 1000},async function(){
    await informationScreenPage.clickRandomValueInTable(this.page,roleSettingsPage.randomValueGenerated);
});

Then('verify column {string} of name {string} contains value {string} in information screens',{timeout: 60 * 1000},async function(column,code,value){

    code = await utility.getJsonValue(code);
    await this.attach("code: "+code, 'text/plain');

    value = await utility.getJsonValue(value);
    await this.attach("value: "+value, 'text/plain');

    await informationScreenSettings.verifySiteInColumn(this.page,column,code,value);
});

Then('user clicks on modules back button',{timeout: 60 * 1000},async function(){
    await informationScreenSettings.moduleBackBtn(this.page);
});

Then('verify demographic tittle DOB',{timeout: 60 * 1000},async function(){
    await informationScreenSettings.titleDOB(this.page);
});

Then('verify demographic tittle NHS',{timeout: 60 * 1000},async function(){
    await informationScreenSettings.titleNHS(this.page);
});

Then('verify demographic tittle Gender',{timeout: 60 * 1000},async function(){
    await informationScreenSettings.titleGender(this.page);
});

Then('verify speciality {string} has a grey dot',{timeout: 60 * 1000},async function(speciality){

    speciality = await utility.getJsonValue(speciality);
    await this.attach("Value: "+speciality, 'text/plain');
    await informationScreenSettings.specialityGreyDot(this.page,speciality);
});

Then('user checks if patient {string} is deceased',{timeout: 60 * 1000},async function(name){

    name = await utility.getJsonValue(name);
    await this.attach("Value: "+name, 'text/plain');
    await informationScreenSettings.checkDeceasedStatus(this.page,name);
});

Then('switch to iframe in information screen',{timeout: 60 * 1000},async function(){

    try {
        const elementHandle = await this.page.waitForXPath("//div[@class='iframe-container']/iframe",{visible:true});
        const frame = await elementHandle.contentFrame();
        this.page = frame;
    }
    catch (errorMessage) {
        throw new Error(`errorMessage: ${errorMessage}, errorStack: ${errorMessage.stack}`);
    }

    // await informationScreenSettings.switchIframeInformationScreens(this.page);
});

Then('verify gender in demographics bar of information screen is {string}',  {timeout: 60 * 1000},async function(value){

    value = await utility.getJsonValue(value);
    await this.attach("Action: "+value, 'text/plain');
    await informationScreenSettings.verifyInformationDemographicGender(this.page,value);
});

Then('verify DOB in demographics bar of information screen is {string}',  {timeout: 60 * 1000},async function(value){

    value = await utility.getJsonValue(value);
    await this.attach("Action: "+value, 'text/plain');
    await informationScreenSettings.verifyInformationDemographicDOB(this.page,value);
});

Then('verify NHS in demographics bar of information screen is {string}',  {timeout: 60 * 1000},async function(value){

    value = await utility.getJsonValue(value);
    await this.attach("Action: "+value, 'text/plain');
    await informationScreenSettings.verifyInformationDemographicNHS(this.page,value);
});

Then('open new tab',  {timeout: 60 * 1000},async function(){

    await informationScreenSettings.openNewTab(this);
});

Then('check if {string} exists and if does then remove it and add it again',{timeout: 360 * 1000},async function(name){

    await informationScreenSettings.checkLocalClinicalIndicatorList(this.page,name);
});

Then('check if ward {string} exists and if not then create-reset the ward',{timeout: 360 * 1000},async function(name){

    await informationScreenSettings.createResetWardIfNotExist(this.page,name);
});

Then('open new tab with credentials {string}',  {timeout: 60 * 1000},async function(label){
    this.page = await informationScreenSettings.openNewTabWithCredentials(this,label);
});