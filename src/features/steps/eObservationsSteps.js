import {Then} from "@cucumber/cucumber";
import assesmentsPage from "../pages/actions/assesmeentsPage";
import roleSettingsPage from "../pages/actions/roleSettingsPage";
import navigationBar from "../pages/actions/navigationBar";
import input from "../../utilities/input";
import announcementPage from "../pages/actions/announcementPage";
import patMergePage from "../pages/actions/patMergePage";
import utility from "../../utilities/utility";

Then('verify module navigator {string} exits', {timeout: 120 * 1000},async function(moduleName){
    await assesmentsPage.verifyModuleNavigator(this.page,moduleName);
});

Then('user click on module navigator {string}', {timeout: 120 * 1000},async function(moduleName){
    await this.page.waitForTimeout(3000);
    await assesmentsPage.clickModuleNavigator(this.page,moduleName);
});

Then('verify the color coding for the thresholds {string}',{timeout: 120 * 1000},async function(colorArray){
    await assesmentsPage.verifyColorThresholds(this.page,colorArray);
});

Then('verify the first row scale color coding to be the threshold {string}',{timeout: 120 * 1000},async function(colorArray){
    await assesmentsPage.verifyFirstColorThresholds(this.page,colorArray);
});

Then('verify events are in descending order in patient vitals module',{timeout: 120 * 1000},async function(){
    await assesmentsPage.verifyDescendingOrder(this.page);
});

Then('verify events are in ascending order in patient vitals module',{timeout: 120 * 1000},async function(){
    await assesmentsPage.verifyAscendingOrder(this.page);
});

Then('verify date filter applied has a difference of {string} days',{timeout: 120 * 1000},async function(days){
    await assesmentsPage.verifyDateDifference(this.page,days);
});

Then('user clicks on {string} in the Section of the Table',{timeout: 120 * 1000},async function(label){
    let expectedValue = await utility.getJsonValue(label);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await assesmentsPage.clickOnTable(this.page,expectedValue);
});

Then('verify {string} with value {string} with {string} as font {string} in the pop-up', {timeout: 60 * 1000},async function(label,value,color,fontColorType){
    await assesmentsPage.verifyPopUpWithLabelAndColor(this.page,label,value,color,fontColorType);
});

Then('verify {string} with value {string} in the observation pop-up', {timeout: 60 * 1000},async function(label,value){
    let expectedValue = await utility.getJsonValue(value);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await assesmentsPage.verifyPopUpWithLabel(this.page,label,expectedValue);
});

Then('user clicks on the {string} to change it to {string}', {timeout: 60 * 1000},async function(label,value){
    await assesmentsPage.changeInputMethodType(this.page,label,value);
});

Then('verify the double barrel value is {string}', {timeout: 60 * 1000},async function(value){
    await assesmentsPage.verifyDoubleBarrelValue(this.page,value);
});

Then('scroll up two time and two time down with {string} for double barrel verification', {timeout: 60 * 1000},async function(inputType){
    await assesmentsPage.scrollMouseForDoubleBarrelVerification(this.page,inputType);
});

Then('add required vital information: Respiration {string} Air or Oxygen {string} SPO2 Scale 1 {string} Blood Pressure {string} Pulse {string} Consciousness {string} Temperature {string}', {timeout: 200 * 1000},async function(respirationValue,oxygenValue,scaleValue,bloodPressureValue,pulseValue,consciousnessValue,temperatureValue){
    await assesmentsPage.addRequiredVitalInformation(this.page,respirationValue,oxygenValue,scaleValue,bloodPressureValue,pulseValue,consciousnessValue,temperatureValue);
});

Then('complete all required vital information: Respiration {string} Air or Oxygen {string} SPO2 Scale 1 {string} Blood Pressure {string} Pulse {string} Consciousness {string} Temperature {string}', {timeout: 300 * 1000},async function(respirationValue,oxygenValue,scaleValue,bloodPressureValue,pulseValue,consciousnessValue,temperatureValue){
    await assesmentsPage.completeRequiredVitalInformation(this.page,respirationValue,oxygenValue,scaleValue,bloodPressureValue,pulseValue,consciousnessValue,temperatureValue);
});

Then('check if patient identity pop-up appears becuase an assemenet was already made 15 mins ago', {timeout: 240 * 1000},async function(){
    await assesmentsPage.alreadyAssessmentCheckUpPopUp(this.page);
});

Then('filter and verify dates by {string} the date on patient vitals page',  {timeout: 300 * 1000},async function(filterType){
await assesmentsPage.shortenAndVerifyDates(this.page,filterType);
});

Then('user saves the number of records for this patient', {timeout: 260 * 1000},async function(){
    await assesmentsPage.savePatientOneNumberOfRecords(this.page);
});

Then('user saves and compares the number of records for this patient', {timeout: 260 * 1000},async function(){
    await assesmentsPage.savePatientTwoNumberOfRecordsAndCompare(this.page);
});

Then('wait for {string} mins without loggin out and clicking on header {string}', {timeout: 20 * 60 * 1000},async function(minutesValue,headerValue){
    await assesmentsPage.waitAndClickOnHeader(this.page,minutesValue,headerValue);
});

Then('verify pop-up warning {string}', {timeout: 60 * 1000},async function(warningText){
    await assesmentsPage.popUpWarning(this.page,warningText);
});

Then('verify pop-up nhs number {string}', {timeout: 60 * 1000},async function(nhsNumber){
    let expectedValue = await utility.getJsonValue(nhsNumber);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await assesmentsPage.popUpNhsNumber(this.page,expectedValue);
});

Then('wait for pop header to change to {string}', {timeout: 60 * 1000},async function(headerTitle){
    await assesmentsPage.waitForPopUpHeaderToChange(this.page,headerTitle);
});
Then('set permissions {string} to have all permissions', {timeout: 60 * 1000},async function(headerTitle){
    await roleSettingsPage.setPermissions(this.page,headerTitle);
});

Then('set the yes-no of header {string} to {string}',  {timeout: 60 * 1000},async function(headerTitle,polarValue){
    await assesmentsPage.setInlinePolar(this.page,headerTitle,polarValue);
});

Then('save the review due time',  {timeout: 60 * 1000},async function(){
    await assesmentsPage.saveReviewDueTime(this.page);
});

Then('verify review due time with {string} mins added',  {timeout: 60 * 1000},async function(minsAdded){
    await assesmentsPage.compareMinsAdded(this.page,minsAdded);
});
Then('verify pop-up vitals summary header {string} with Value {string}',   {timeout: 60 * 1000},async function(header,value){
    await assesmentsPage.verifyHeader(this.page,header,value);
});

Then('verify no overall score is generated for the new observation',{timeout: 60 * 1000},async function(){
    await assesmentsPage.verifyNoScoreGenerateed(this.page);
});

Then('verify footer exists',{timeout: 60 * 1000},async function(){
    await navigationBar.verifyFooterExists(this.page);
});

Then('verify session time remaining exists',{timeout: 60 * 1000},async function(){
    await navigationBar.verifySessionTimeRemainingFooterExists(this.page);
});

Then('verify count of records exist on assessments page',{timeout: 60 * 1000},async function(){
    await assesmentsPage.recordsExists(this.page);
});

Then('verify header {string} exists', {timeout: 60 * 1000},async function(headerName){
    await assesmentsPage.verifyHeaderH1(this.page,headerName);
});

Then('scroll up two time and two time down with {string} for double barrel verification for header {string}', {timeout: 60 * 1000},async function(inputType,headerName){
    await assesmentsPage.scrollMouseForDoubleBarrelVerificationWithHeader(this.page,inputType,headerName);
});

Then('verify assessment {string} with Value {string}',{timeout: 60 * 1000},async function(label,value){
    await assesmentsPage.verifyAssessment(this.page,label,value);
});

Then('verify form description {string}', {timeout: 60 * 1000},async function(value){
    await announcementPage.verifyFormDescriptionTextContent(this.page,value);
});
Then('user clicks on the parameter window {string}',{timeout: 60 * 1000},async function (option) {

    await patMergePage.clickClinicalCalc(this.page,option);
});
Then('user selects {string} option from Select Clinical Calculations popUp',{timeout: 60 * 1000},async function (option) {

    await patMergePage.clickSpan(this.page,option);
});
Then('user verify {string} is available and populated',{timeout: 60 * 1000},async function (option) {

    await patMergePage.verifyHeading(this.page,option);
});
Then('user verify {string} under charts tab',{timeout: 60 * 1000},async function (option) {

    await assesmentsPage.verifyChart(this.page,option);
});

Then('verify {string} is displayed as the table header in eObservations page', {timeout: 60 * 1000},async function(tableHeader){
    await assesmentsPage.verifyTableHeader(this.page,tableHeader);
});