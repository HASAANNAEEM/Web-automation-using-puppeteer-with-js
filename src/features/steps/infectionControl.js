import {Then} from "@cucumber/cucumber";
import utility from "../../utilities/utility";
import announcementPage from "../pages/actions/announcementPage";
import clinicalNotingPage from "../pages/actions/clinicalNotingPage";
import navigationBar from "../pages/actions/navigationBar";
import infectionControl from "../pages/actions/infectionControl";
import clinicalRecordsPage from "../pages/actions/clinicalRecordsPage";
import documentSettingsPage from "../pages/actions/documentSettingsPage";
import roleSettingsPage from "../pages/actions/roleSettingsPage";
import patientRecordsPage from "../pages/actions/patientRecordsPage";
import patMergePage from "../pages/actions/patMergePage";

Then('user reads {string}', {timeout: 1800 * 1000},async function(key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    console.log(x);
});

Then('verify user displayed from table header as {string}', {timeout: 1800 * 1000},async function(key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await infectionControl.verifyPopUpWithLabelDetailsWithoutValue(this.page,x)

});

Then('verify user able to see the parameter list as {string}', {timeout: 1800 * 1000},async function(key){
    let paramList = await utility.getJsonValue(key);
    await this.attach("Value: "+paramList, 'text/plain');
    await announcementPage.verifyParameterList(this.page,paramList)

});

Then('verify user able to see the parameters list as {string}', {timeout: 1800 * 1000},async function(key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await announcementPage.verifyParametersList(this.page,x)

});

Then('verify user able to see the label on popup as {string}', {timeout: 1800 * 1000},async function(key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await announcementPage.verifyParameterList(this.page,x)

});

Then('user selects date DD as {string} Month as {string} and year as {string}',{timeout: 90 * 1000},async function(date_key,month_key,year_key){
    let date = await utility.getJsonValue(date_key);
    await this.attach("Value: "+date, 'text/plain');
    let month = await utility.getJsonValue(month_key);
    await this.attach("Value: "+month, 'text/plain');
    let year = await utility.getJsonValue(year_key);
    await this.attach("Value: "+year, 'text/plain');
    await clinicalRecordsPage.selectDate(this.page,date,month,year);
});


Then('user selects Hours HH as {string} Minutes MM as {string} and Seconds SS as {string}',{timeout: 60 * 1000},async function(hour_key,minute_key,second_key){
    let hour = await utility.getJsonValue(hour_key);
    await this.attach("Value: "+hour, 'text/plain');
    let minute = await utility.getJsonValue(minute_key);
    await this.attach("Value: "+minute, 'text/plain');
    let second = await utility.getJsonValue(second_key);
    await this.attach("Value: "+second, 'text/plain');
    await infectionControl.selectTime(this.page,hour,minute,second)
});

Then('verify user displayed from table header as {string} with no visual text', {timeout: 1800 * 1000},async function(key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await announcementPage.verifyTableHeaderWithNoVisualText(this.page,x)
});

Then('verify case detail is displayed as {string}', {timeout: 1800 * 1000},async function(key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await announcementPage.verifySubMenu(this.page,x)

});

Then('verify case detail is displayed value header as {string}', {timeout: 1800 * 1000},async function(key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await announcementPage.valueHeader(this.page,x)

});

Then('user selects {string} with value {string} while creating outbreak', {timeout: 1800 * 1000},async function(label,key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await announcementPage.verifyPopUpWithLabelAndValueDetails(this.page,label,x);

});

Then('user selects {string} with the value {string}', {timeout: 1800 * 1000},async function(label,key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await announcementPage.verifyPopUpWithLabelAndValueDetails(this.page,label,x);

});

Then('user selects {string} with value {string}', {timeout: 1800 * 1000},async function(label,key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await infectionControl.verifyPopUpWithLabelAndValueDetails(this.page,label,x);

});

Then('user selects the Month as {string}', {timeout: 1800 * 1000},async function(key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await utility.clickOnSelectionOnMonth(this.page)
    await announcementPage.clickOnActionItem(this.page,x);

});

Then('user enters {string} in text-area', {timeout: 1800 * 1000},async function(key){
    let TextArea = await utility.getJsonValue(key);
    await this.attach("Value: "+TextArea, 'text/plain');
    await announcementPage.enterTextInTextArea(this.page,TextArea);
});

Then('user check {string} in Organization Parameter', {timeout: 1800 * 1000},async function(key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await infectionControl.checkParameterSelection(this.page,x);

});

Then('verify {string} with Label value {string} in pop-up details', {timeout: 1800 * 1000},async function(value,key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await announcementPage.verifyPopUpWithLabel(this.page,value, x);

});


Then('user clicks on {string} selecting Yes or No', {timeout: 1800 * 1000},async function(key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await navigationBar.clickOnPopupItem(this.page,x);

});

Then('verify {string} fields in pop-up details', {timeout: 1800 * 1000},async function(key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await infectionControl.verifyPopUpWithLabelDetailsWithoutValue(this.page,x);

});

Then('verify {string} is displayed as SubMenu', {timeout: 1800 * 1000},async function(SubMenuHeader){
    let SubMenu = await utility.getJsonValue(SubMenuHeader);
    await this.attach("Value: "+SubMenu, 'text/plain');
    await infectionControl.verifySubMenu(this.page,SubMenu);
});

Then('user click on last record in the table',  {timeout: 100 * 1000},async function(){
    await infectionControl.clickLastRecord(this.page);
});

Then('verify {string} in pop-up details', {timeout: 60 * 1000},async function(label){
    await infectionControl.verifyPopUpWithLabelDetailsWithoutValue(this.page,label);
});

Then('verify {string} with count {string} in pop-up details', {timeout: 60 * 1000},async function(text,key){
    let viscount = await utility.getJsonValue(key);
    await this.attach("Value: "+viscount, 'text/plain');
    await infectionControl.verifyPopUpWithLabelvalue(this.page,text,viscount);
});

Then('user enters {string} in the text-area', {timeout: 60 * 1000},async function(key){
    let TextArea = await utility.getJsonValue(key);
    await this.attach("Value: "+TextArea, 'text/plain');
    await infectionControl.enterTextInTextArea(this.page,TextArea);
});

Then('verify case detail is displayed', {timeout: 60 * 1000},async function(){
    await infectionControl.verifyDataDisplayed(this.page);
});

Then('verify surname as {string} and forename as {string}', {timeout: 60 * 1000},async function(value,label){
    await infectionControl.verifySurnameAndForename(this.page,value,label);
});


Then('user verify patients DOB as {string} and year as {string}', {timeout: 60 * 1000},async function(label,value){
    await infectionControl.verifyDOBAndDate(this.page,label,value);
});

Then('verify NHS no as {string}', {timeout: 60 * 1000},async function(value){
    await infectionControl.verifyNHS(this.page,value);
});

Then('user click on First record in the table',  {timeout: 60 * 1000},async function(){
    await infectionControl.clickFirstRecord(this.page);
});

Then('verify {string} in pop-up detail', {timeout: 60 * 1000},async function(key){
    let PopupString = await utility.getJsonValue(key);
    await this.attach("Value: "+PopupString, 'text/plain');
    await infectionControl.verifyPopUpWithLabelDetailsWithoutValue(this.page,PopupString);
});

Then('verify Organism as same as selected {string}', {timeout: 60 * 1000},async function(key){
    let OrganismName = await utility.getJsonValue(key);
    await this.attach("Value: "+OrganismName, 'text/plain');
    await infectionControl.eventName(this.page,OrganismName);
});

Then('verify {string} is mandatory Field in the pop-up', {timeout: 60 * 1000},async function (header) {
    await infectionControl.verifyMandatoryField(this.page,header);
});

Then('user inputs with random Number',  {timeout: 60 * 1000},async function(){
    await infectionControl.inputRandomValue(this.page);
   await this.attach("Test"+infectionControl.randomValueGenerated, 'text/plain');
});

Then('user inputs with random Number upto 10 digits',  {timeout: 60 * 1000},async function(){
    await infectionControl.inputRandomNumber(this.page);
    await this.attach("Test"+infectionControl.randomValueGenerated, 'text/plain');
});

Then('user selects {string} with value {string} while creating Case', {timeout: 1800 * 1000},async function(label,key){
    let x = await utility.getJsonValue(key);
    await this.attach("Value: "+x, 'text/plain');
    await announcementPage.verifyPopUpWithLabelAndValueDetails(this.page,label,x);
});

Then('user inputs {string} with value {string} clickable', {timeout: 60 * 1000},async function (label,key) {
    let clickableValue = await utility.getJsonValue(key);
    await this.attach("Value: "+clickableValue, 'text/plain');
    await patientRecordsPage.inlineInput(this.page,label,clickableValue);
});

Then('user inputs with random alphabet',  {timeout: 60 * 1000},async function(){
    await infectionControl.inputRandomAlphabet(this.page);
    await this.attach("Test"+infectionControl.randomValueGenerated, 'text/plain');
});

Then('verify {string} is in {string} Color in the pop-up with count', {timeout: 60 * 1000},async function (header,color) {
    await infectionControl.verifyColorFieldValue(this.page,header,color);
});

Then('user clicks on the Substantial as {string}', {timeout: 60 * 1000},async function(label){
    await infectionControl.clickOnYesNoOption(this.page,label);
});

Then('verify {string} displayed as the filter parameters',{timeout: 60 * 1000},async function(key){
    let DateFilter = await utility.getJsonValue(key);
    await this.attach("Value: "+DateFilter, 'text/plain');
    await announcementPage.verifyFilterParameter(this.page,DateFilter);
});

Then('verify {string} is in {string} Color in the pop-up', {timeout: 60 * 1000},async function (header,color) {
    await infectionControl.verifyColorFieldValue(this.page,header,color);
});

Then('verify Review as {string}', {timeout: 60 * 1000},async function(key){
    let ReviewText = await utility.getJsonValue(key);
    await this.attach("Value: "+ReviewText, 'text/plain');
    await infectionControl.verifyReview(this.page,ReviewText);
});

Then('verify {string} is displayed as Case parameter list', {timeout: 60 * 3000},async function(ParameterText){
    await infectionControl.verifyCaseParameter(this.page,ParameterText);
});

Then('user selects first Linked Case in the filtered rows',  {timeout: 60 * 1000},async function () {
    await infectionControl.selectFirstCase(this.page);
});

Then('verify header {string} of case list', {timeout: 1800 * 1000},async function(key){
    let headerValue = await utility.getJsonValue(key);
    await this.attach("Value: "+headerValue, 'text/plain');
    await infectionControl.verifyPopUpWithLabelDetailsWithoutValue(this.page,headerValue)

});

Then('verify header {string} of case list with no visual text', {timeout: 1800 * 1000},async function(key){
    let headerValue = await utility.getJsonValue(key);
    await this.attach("Value: "+headerValue, 'text/plain');
    await infectionControl.verifyCaseHeader(this.page,headerValue)

});

Then('user check {string} in Organ Site Parameter', {timeout: 1800 * 1000},async function(header){
    await infectionControl.checkParamSelection(this.page,header);
});

Then('verify {string} is displayed as Case list', {timeout: 60 * 3000},async function(key){
    let ParameterText = await utility.getJsonValue(key);
    await this.attach("Value: "+ParameterText, 'text/plain');
    await infectionControl.verifyCaseList(this.page,ParameterText);
});


Then('verify {string} is displayed as Popup Case Search', {timeout: 60 * 3000},async function(key){
    let CaseSearch = await utility.getJsonValue(key);
    await this.attach("Value: "+CaseSearch, 'text/plain');
    await infectionControl.popupLabel(this.page,CaseSearch);
});

Then('user check {string} in a Parameter', {timeout: 1800 * 1000},async function(key){
    let CaseParameter = await utility.getJsonValue(key);
    await this.attach("Value: "+CaseParameter, 'text/plain');
    await infectionControl.checkParamSelection(this.page,CaseParameter);
});

Then('user check {string} in Bed Management Parameter', {timeout: 1800 * 1000},async function(header){
    await infectionControl.checkParamSelection(this.page,header);
});

Then('user check {string} in Assignee Parameter', {timeout: 1800 * 1000},async function(header){
    await infectionControl.checkParamSelection(this.page,header);
});

Then('verify Case List appear after selecting BedManagement', {timeout: 60 * 3000},async function(){
    await infectionControl.verifyCaseListBedManagement(this.page);
});

Then('user uncheck {string} Parameter', {timeout: 1800 * 1000},async function(header){
    await infectionControl.UncheckParam(this.page,header);
});

Then('verify {string} & {string} is displayed as Case list', {timeout: 60 * 3000},async function(ParameterText1, ParameterText2){
    await infectionControl.verifyCaseListWithTwoParameter(this.page,ParameterText1,ParameterText2);
});

Then('verify {string} & {string} is displayed under result', {timeout: 1800 * 1000},async function(key,param){
    let headerValue = await utility.getJsonValue(key);
    let headerValue1 = await utility.getJsonValue(param);
    await this.attach("Value: "+headerValue, 'text/plain');
    await this.attach("Value: "+headerValue1, 'text/plain');
    await infectionControl.verifyResult(this.page,headerValue,headerValue1);

});

Then('user check {string} in Parameter', {timeout: 1800 * 1000},async function(header){
    await infectionControl.checkParamSelection(this.page,header);
});

Then('user clicks on the table with patient name {string}', {timeout: 120 * 1000},async function (name) {
    await infectionControl.SelectTableWithSpecficName(this.page,name);
});

Then('verify data is populated on popup',{timeout: 60 * 1000},async function(){
    await infectionControl.verifyTableData(this.page);
});

Then('user check {string} associated showing count',{timeout: 60 * 1000},async function (parameter) {
    await infectionControl.AssociatedCases(this.page,parameter);
});
