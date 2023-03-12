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
import infectionControl from "../pages/actions/infectionControl";
import utility from "../../utilities/utility";

Then('user clicks on {string} in menu bar section', {timeout: 60 * 1000},async function(headerName){
    let expectedValue = await utility.getJsonValue(headerName);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await navigationPage.clickOnNavigationIcon(this.page,expectedValue);
});

Given('user lands on {string} page', {timeout: 60 * 1000},async function(headerName){
    let expectedValue = await utility.getJsonValue(headerName);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await navigationPage.verifyPage(this.page,expectedValue);
});

Then('user clicks on {string} icon', {timeout: 60 * 1000},async function(labelName){
    await settingsPage.clickOnIcon(this.page,labelName);
});

Then('user clicks on the plus icon', {timeout: 60 * 1000},async function(){
    await announcementPage.clickOnPlusIcon(this.page);
});

Then('verify pop-up {string}', {timeout: 240 * 1000},async function(labelName){
    // await this.page.waitForTimeout(2000);
    await announcementPage.waitForLoading(this.page);
    // await announcementPage.waitForLoadingWithTitle(this.page,labelName);
    await announcementPage.verifyPopUpLabel(this.page,labelName);
});

Then('choose {string} in {string}', {timeout: 60 * 1000},async function(item,selector){
    await announcementPage.verifyPopUpWithLabel(this.page,item,selector);
});

Then('verify {string} is displayed as the table header', {timeout: 60 * 1000},async function(tableHeader){
    await announcementPage.verifyTableHeader(this.page,tableHeader);
});

Then('verify {string} & {string} is displayed as SubMenu', {timeout: 60 * 1000},async function(SubMenu,Label){
    await announcementPage.verifySubMenu(this.page,SubMenu);
    await announcementPage.verifySubMenu(this.page,Label);
});

Then('verify {string} is not displayed as the table header', {timeout: 60 * 1000},async function(tableHeader){
    await announcementPage.verifyTableHeaderNotPresent(this.page,tableHeader);
});

Then('verify {string} is displayed as the table header with no visual text', {timeout: 60 * 1000},async function(tableHeader){
    await announcementPage.verifyTableHeaderWithNoVisualText(this.page,tableHeader);
});

Then('user clicks on {string}', {timeout: 60 * 1000},async function(elementName){

    elementName = await utility.getJsonValue(elementName);
    await this.attach("elementName Value: "+elementName, 'text/plain');

    await navigationPage.clickOnDiv(this.page,elementName);
});

Then('user enter value {string} in the text-area', {timeout: 60 * 1000},async function(text){
    await announcementPage.enterValueInTextArea(this.page,text);
});

Then('user clears the text-area', {timeout: 60 * 1000},async function(){
    await announcementPage.clearTextInTextArea(this.page);
});

Then('user clicks on tick-checkbox', {timeout: 60 * 1000},async function(){
    await announcementPage.clickonCheckIcon(this.page);
});

Then('user clicks on back icon', {timeout: 60 * 1000},async function(){
    await announcementPage.clickonBackIcon(this.page);
});

Then('user clicks on cross icon', {timeout: 60 * 1000},async function(){
    await announcementPage.clickonCrossIcon(this.page);
});

Then('user enters {string} in text box with link {string}', {timeout: 60 * 1000},async function(text,link){
    await announcementPage.enterTextInDiv(this.page,text,link);
});

Then('user input the end current date and time', {timeout: 60 * 1000},async function(){
    await navigationPage.clickOnDiv(this.page,"Ends");
    await announcementPage.verifyPopUpLabel(this.page,"Configure End");
    await clicking.clickElementByXpath(this.page,settingsLocators.announcementPage.xpath.popUpDateTime);
    await announcementPage.clickonCheckIcon(this.page);
    await clicking.clickElementByXpath(this.page,settingsLocators.announcementPage.xpath.popUpDateTime);
    await announcementPage.clickonCheckIcon(this.page);
    await announcementPage.saveEndDate(this.page);
    await this.attach("End Date: "+announcementPage.startDate);
});

Then('user input the start current date and time', {timeout: 60 * 1000},async function(){
    await navigationPage.clickOnDiv(this.page,"Start");
    await announcementPage.verifyPopUpLabel(this.page,"Configure Start");
    await clicking.clickElementByXpath(this.page,settingsLocators.announcementPage.xpath.popUpDateTime);
    await announcementPage.clickonCheckIcon(this.page);
    await clicking.clickElementByXpath(this.page,settingsLocators.announcementPage.xpath.popUpDateTime);
    await announcementPage.clickonCheckIcon(this.page);
    await announcementPage.saveStartDate(this.page);
    await this.attach("Start Date: "+announcementPage.endDate);
});

Then('verify {string} with value {string} in the pop-up', {timeout: 60 * 1000},async function(label,value){
    let expectedValue = await utility.getJsonValue(value);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await announcementPage.verifyPopUpWithLabel(this.page,label,expectedValue);
});

Then('verify {string} with value {string}', {timeout: 60 * 1000},async function(label,value){
    let expectedValue = await utility.getJsonValue(value);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await announcementPage.verifyWithLabel(this.page,label,expectedValue);
});

Then('verify {string} with random value in the pop-up', {timeout: 60 * 1000},async function(label){
    await roleSettingsPage.verifyRandomValuePopUpWithLabel(this.page,label);
});

Then('verify {string} with value {string} in the pop-up in {string}', {timeout: 60 * 1000},async function(label,value,color){
    await announcementPage.verifyPopUpWithLabelColor(this.page,label,value,color);
});

Then('verify {string} with value {string} in the pop-up details', {timeout: 60 * 1000},async function(label,value){
    let expectedValue = await utility.getJsonValue(value);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await announcementPage.verifyPopUpWithLabelDetails(this.page,label,expectedValue);
});

Then('verify {string} with Label value {string} in the pop-up details', {timeout: 60 * 1000},async function(label,value){
    await announcementPage.verifyPopUpWithLabelvalue(this.page,label,value);
});

Then('verify the message with value {string}', {timeout: 60 * 1000},async function(value){
    await announcementPage.verifyMessage(this.page,value);
});

Then('verify the starting date', {timeout: 60 * 1000},async function(){
    await announcementPage.verifyStartingDate(this.page);
});

Then('verify the ending date', {timeout: 60 * 1000},async function(){
    await announcementPage.verifyEndingDate(this.page);
});

Then('verify {string} after completing the form', {timeout: 180 * 1000},async function(value){
    await announcementPage.verifyForm(this.page,value);
});

Then('verify {string} after completing', {timeout: 180 * 1000},async function(value){
    await announcementPage.verifyFormStatus(this.page,value);
});

Then('verify {string} after completing the form description', {timeout: 60 * 1000},async function(value){
    await announcementPage.verifyFormDescription(this.page,value);
});

Then('verify the newly created announcement header {string} with value {string}', {timeout: 60 * 1000},async function(header,value){
    await announcementPage.tableVerification(this.page,header,value);
});

Then('user clicks on the newly created announcement', {timeout: 60 * 1000},async function(){
    await announcementPage.clickFirstElementOnTable(this.page);
    await announcementPage.saveFullCreatedDate(this.page);
});

Then('user clicks on the ellipse of the newly created item', {timeout: 60 * 1000},async function(){
    await announcementPage.clickFirstElementsEllipse(this.page);
});

Then('user clicks on the action icon', {timeout: 60 * 1000},async function(){
    await announcementPage.clickOnActionIcon(this.page);
});

Then('user clicks on the action {string}', {timeout: 180 * 1000},async function(label){
    let actionItem = await utility.getJsonValue(label);
    await this.attach("Action: "+actionItem, 'text/plain');
    await announcementPage.clickOnActionItem(this.page,actionItem);
});

Then('user clicks on the selection label {string}', {timeout: 60 * 1000},async function(label){
    await announcementPage.clickOnSelectionLabel(this.page,label);
});

Then('user select {string} from organization on outbreakpopup', {timeout: 60 * 1000},async function(label){
    await announcementPage.clickOnSelectionLabel(this.page,label);
});

Then('user verify action {string} is available', {timeout: 60 * 1000},async function(value){
    await announcementPage.verifyActionItem(this.page,value);
});

Then('user verify option {string} is available', {timeout: 60 * 1000},async function(value){
    await announcementPage.verifyOptionItem(this.page,value);
});

Then('user verify action {string} is unavailable', {timeout: 60 * 1000},async function(value){
    await announcementPage.verifyActionItemUnavailable(this.page,value);
});

Then('user logs out', {timeout: 60 * 1000},async function(){
    await login_utility.logOutApp(this.page);
});

Then('user logs in using credentials {string}', {timeout: 60 * 1000},async function(label){
    if(label.toLowerCase()==="haider")   await login_utility.loginAppHaider(this.page);
    else if(label.toLowerCase()==="asher") await login_utility.loginAppAshar(this.page);
    else if(label.toLowerCase()==="profile changing") await login_utility.loginRole(this.page);
    else await login_utility.loginAppEjaz(this.page);
});

Then('verify page {string}', {timeout: 60 * 1000},async function(value){
    await navigationPage.verifyPage(this.page,value);
});

Then('verify announcement {string} with value {string}', {timeout: 60 * 1000},async function(type,value){
    let expectedValue = await utility.getJsonValue(value);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    if(type === "Created Date")  await this.attach("Start Date: "+dates.createdDate);
    await announcementPage.verifyAnnouncement(this.page,type,expectedValue);
});


Then('verify announcement the link {string} opening in a new page and then close that page', {timeout: 60 * 1000},async function(link){
    await announcementPage.openingNewLinkAndClosingPage(this.page,link,this.browser);
});

Then('user clicks on the sub-navigation in profile menu {string}', {timeout: 60 * 1000},async function(label){
    await profilePage.clickProfileMenu(this.page,label);
});

Then('user clicks on the toggle button {string}',{timeout: 60 * 1000},async function(label){
    await announcementPage.clickToggleButton(this.page,label);
});

Then('user clicks on the toggle button {string} to {string}',{timeout: 60 * 1000},async function(label,value){
    await announcementPage.clickToggleButtonToValue(this.page,label,value);
});

Then('user clicks on the option {string}', {timeout: 60 * 1000},async function(label){
    let expectedValue = await utility.getJsonValue(label);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await navigationPage.clickOnCard(this.page,expectedValue);
});

Then('user clicks on the pop-up option {string}', {timeout: 60 * 1000},async function(label){
    await navigationPage.clickOnPopupItem(this.page,label);
});

Then('verify the first row Patient Gender is {string}', {timeout: 60 * 1000},async function(value){
    let expectedValue = await utility.getJsonValue(value);
    await this.attach("Table Value: "+expectedValue, 'text/plain');
    await clinicalRecordsPage.verifyTableGender(this.page,expectedValue);
});

Then('verify {string} Roles Exist', {timeout: 60 * 1000},async function(value){
    await roleSettingsPage.verifyExist(this.page,value);
});

Then('user inputs {string} with value {string}',  {timeout: 60 * 1000},async function(label,value){
    let expectedValue = await utility.getJsonValue(value);
    await this.attach("Table Value: "+expectedValue, 'text/plain');
    await roleSettingsPage.inputValueInline(this.page,label,expectedValue);
});

Then('user inputs {string} with random value',  {timeout: 60 * 1000},async function(label){
    await roleSettingsPage.inputRandomValueInline(this.page,label);
    await this.attach("Random Value: "+roleSettingsPage.randomValueGenerated, 'text/plain');
});

Then('user clear inputs {string}',  {timeout: 60 * 1000},async function(label){
    await roleSettingsPage.removeValueInline(this.page,label);
});

Then('user inputs {string} with value {string} in edit',  {timeout: 60 * 1000},async function(label,value){
    await roleSettingsPage.inputValueInlineEdit(this.page,label,value);
});

Then('user clicks on {string} in the table',  {timeout: 120 * 1000},async function(label){
    let expectedValue = await utility.getJsonValue(label);
    await this.attach("Table Value: "+expectedValue, 'text/plain');
    await roleSettingsPage.clickTable(this.page,expectedValue);
});

Then('user clicks on the last {string} in the table',  {timeout: 60 * 1000},async function(label){
    await roleSettingsPage.clickLastTable(this.page,label);
});

Then('user selects all the permissions', {timeout: 60 * 1000},async function(){
    await roleSettingsPage.selectAllPermission(this.page);
});

Then('user deselects all the permissions', {timeout: 60 * 1000},async function(){
    await roleSettingsPage.deselectAllPermission(this.page);
});

Then('user clicks on navigation search icon', {timeout: 60 * 1000},async function(){
    await this.page.waitForTimeout(3000);
    await accountSettingsPage.clickNavigationSearchIcon(this.page);
});

Then('user inputs {string} in the filter option', {timeout: 60 * 1000},async function(text){
    let filterText = await utility.getJsonValue(text);
    await this.attach("Filter Text: "+filterText, 'text/plain');
    await accountSettingsPage.searchInFilter(this.page,filterText);
});

Then('user selects the first option in filter with value {string}', {timeout: 60 * 1000},async function(text){
    await accountSettingsPage.clickFirstFilterOptionWithValue(this.page,text)
});

Then('verify {string} in menu-bar is accessible', {timeout: 60 * 1000},async function(text){
    await navigationPage.verifyAccess(this.page,text)
});

Then('verify {string} in menu-bar is in-accessible', {timeout: 60 * 1000},async function(text){
    await navigationPage.verifyNoAccess(this.page,text)
});

Then('user verify that all reports are unselectable', {timeout: 60 * 1000},async function(){
    await reportsPage.reportsUnavailable(this.page);
});

Then('verify {string} is displayed as the filter parameters',{timeout: 60 * 1000},async function(tableHeader){
    let filterText = await utility.getJsonValue(tableHeader);
    await this.attach("Filter Text: "+filterText, 'text/plain');
    await announcementPage.verifyFilterParameter(this.page,filterText);
});

Then('user clicks on filter parameter {string}',{timeout: 60 * 1000},async function(tableHeader){
    await announcementPage.clickFilterParameter(this.page,tableHeader);
});

Then('verify the table is populated',{timeout: 60 * 1000},async function(){
    await organisationSettingsPage.verifyTableHasMultipleRows(this.page)
});

Then('verify the table is populated in popup',{timeout: 60 * 1000},async function(){
    await infectionControl.verifyTableHasMultipleRowsInPopup(this.page)
});

Then('verify there are {string} number of {string}', {timeout: 60 * 1000},async function(value,label){
    await organisationSettingsPage.verifyCliniciansInSite(this.page,label,value)
});

Then('user clicks on the pop-up plus icon', {timeout: 60 * 1000},async function(){
    await announcementPage.clickOnPopUpPlusIcon(this.page);
});

Then('user clicks on the x icon of {string} in the pop-up',{timeout: 60 * 1000},async function(label){
    let expectedValue = await utility.getJsonValue(label);
    await this.attach("Value: "+expectedValue, 'text/plain');
    await organisationSettingsPage.clickCrossIcon(this.page,expectedValue)
});

Then('user inputs {string} sub-header with value {string}', {timeout: 60 * 1000},async function(value,label){
    await clinicalRecordsPage.enterTextSubHeader(this.page,label,value);
});

Then('verify the gender is {string} in the first row',{timeout: 60 * 1000},async function(value){
    await clinicalRecordsPage.verifyTableGender(this.page,value)
});

Then('user selects date {string} of {string} of {string}',{timeout: 60 * 1000},async function(date,month,year){
    await clinicalRecordsPage.selectDate(this.page,date,month,year);
});

Then('verify {string} is present in the table', {timeout: 120 * 1000},async function(value){
    await clinicalRecordsPage.verifyTableEmpty(this.page,value)
});


Then('verify value {string} is present in the table', {timeout: 120 * 1000},async function(value){

    value = await utility.getJsonValue(value);
    await this.attach("elementName Value: "+value, 'text/plain');
    await clinicalRecordsPage.verifyElementInTable(this.page,value)
});

Then('verify {string} is present in the event list table', {timeout: 120 * 1000},async function(value){
    await patientRecordsPage.verifyEventListTable(this.page,value)
});

Then('verify {string} is present in the pop-up table', {timeout: 60 * 1000},async function(value){
    await clinicalRecordsPage.verifyPopUpTableEmpty(this.page,value)
});

Then('verify {string} description is present in the pop-up table', {timeout: 60 * 1000},async function(value){
    await clinicalRecordsPage.verifyPopUpTableDescription(this.page,value)
});

Then('user enters {string} in {string} input', {timeout: 60 * 1000},async function(value,label){
    await patientRecordsPage.enterTextInInputField(this.page,label,value);
});


Then('user clicks on pop-up back icon', {timeout: 60 * 1000},async function(){
    await announcementPage.clickonPopUpBackIcon(this.page);
});

Then('user verify profile detail {string} with value {string}', {timeout: 60 * 1000},async function(header,value){
    await profilePage.verifyProfileDetail(this.page,header,value);
});

Then('user verify profile status {string}', {timeout: 60 * 1000},async function(value){
    await profilePage.verifyUserStatus(this.page,value);
});

Then('user verify Profile Name {string}', {timeout: 60 * 1000},async function(value){
    let expectedValue = await utility.getJsonValue(value);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await profilePage.verifyUserName(this.page,expectedValue);
});

Then('user clicks on Main Menu', {timeout: 60*1000}, async () => await navigationBar.clickOnMainMenu(page))

Then('user enters password', {timeout: 60 * 1000},async function(){
    await login_utility.EnterPassword(this.page, loginData.credentials4.password);
});

Then('user clicks on profile from main menu', {timeout: 60*1000}, async function(){
    await navigationBar.clickOnProfileFromMainMenu(this.page);
});

Then('user enters Patient Identifier Search {string}', {timeout: 120 * 1000},async function(value){
    let patientIdentifierSearch = await utility.getJsonValue(value);
    await this.attach("Patient Identifier Search: "+patientIdentifierSearch, 'text/plain');
    await clinicalRecordsPage.enterPatientIndentifierSearch(this.page, patientIdentifierSearch);
});

Then('verify the first row {string} is {string}', {timeout: 60 * 1000},async function(label,value){
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await announcementPage.tableVerification(this.page,label,value);
});

Then('user lands on {string} module', {timeout: 60 * 1000},async function(headerName){
    await navigationPage.verifyModule(this.page,headerName);
});

Then('user verify patient detail {string} with value {string}', {timeout: 60 * 1000},async function(header,value){
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await clinicalRecordsPage.verifyPatientDetail(this.page,header,value);
});

Then('user verify {string} {string} with value {string}', {timeout: 60 * 1000},async function(header,label,value){
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await clinicalRecordsPage.verifyPatientDetail2(this.page,header,label,value);
});

Then('user verify admission information detail {string} with value {string}', {timeout: 60 * 1000},async function(header,value){
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await clinicalRecordsPage.verifyAdmissionInformationDetail(this.page,header,value);
});

Then('user verify {string} detail {string} with value {string}', {timeout: 60 * 1000},async function(header,label,value){
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await clinicalRecordsPage.verifyInformationWithRespectToHeader(this.page,header,label,value);
});

Then('verify the first row patient name {string}', {timeout: 60 * 1000},async function(value){
    let expectedValue = await utility.getJsonValue(value);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await clinicalRecordsPage.verifyFirstPatientName(this.page,expectedValue);
});

Then('verify the first row patient age, dob {string}', {timeout: 60 * 1000},async function(value){
    let expectedValue = await utility.getJsonValue(value);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await clinicalRecordsPage.verifyFirstPatientAgeDOB(this.page,expectedValue);
});

Then('verify the first row patient NHS number {string}', {timeout: 60 * 1000},async function(value){
    let expectedValue = await utility.getJsonValue(value);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await clinicalRecordsPage.verifyFirstPatientNHSNumber(this.page,expectedValue);
});

Then('user clicks patient record {string}', {timeout: 60 * 1000},async function(label){
    label = await utility.getJsonValue(label);
    await this.attach("Value: "+label, 'text/plain');
    await clinicalRecordsPage.clickOnPatientUsingNHSNumber(this.page,label);
});

Then('user verify Black header shows up with patient gender color {string}', {timeout: 60 * 1000},async function(value){
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await clinicalRecordsPage.verifyDemoGraphicsAndGenderColor(this.page,value);
});

Then('user verify Black header shows up with patient name {string}', {timeout: 60 * 1000},async function(value){
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await clinicalRecordsPage.verifyDemoGraphicsDisplayName(this.page,value);
});

Then('user verify Black header shows up with patient DOB {string}', {timeout: 60 * 1000},async function(value){
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await clinicalRecordsPage.verifyDemoGraphicsDOB(this.page,value);
});

Then('user verify Black header shows up with patient gender {string}', {timeout: 60 * 1000},async function(value){
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await clinicalRecordsPage.verifyDemoGraphicsGender(this.page,value);
});

Then('user verify Black header shows up with patient NHS Number {string}', {timeout: 60 * 1000},async function(value){
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await clinicalRecordsPage.verifyDemoGraphicsNHSNo(this.page,value);
});

Then('user verify {string} List Size should not greater then {string} and in {string} order', {timeout: 60 * 1000},async function(header,size,order){
    await clinicalRecordsPage.verifyListOfValues(this.page,header,size,order);
});
Then('user clicks on {string} in Select Utility popup', {timeout: 60 * 1000},async function(option){
    await patMergePage.selectOption(this.page,option);
});
Then('user selects first patient in searched rows', {timeout: 60 * 1000},async function() {

    await patMergePage.selectPatient(this.page);
});
Then('user clicks on magnifying glass on the left patient card', {timeout: 60 * 1000},async function() {

    await patMergePage.clickMagnifierLeft(this.page);
});
Then('user selects {string}', {timeout: 60 * 1000},async function(option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user enters patient name in search bar', {timeout: 60 * 1000},async function() {

    await patMergePage.enterNHS(this.page);
});

Then('user verify Patient information, Admission information, GP information, Medication Information by navigating through them', {timeout: 60 * 1000},async function() {

    await patMergePage.verifyPatInfo(this.page);
});
Then('user verify the patient information in the left hand card', {timeout: 60 * 1000},async function() {

});
Then('user enters Patient Identifier NHS in search bar', {timeout: 60 * 1000},async function() {

    await patMergePage.enterNHS(this.page);
});
Then('user clicks {string} to navigate to Patient Summary page', {timeout: 60 * 1000},async function(option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on {string} card in Systems page', {timeout: 60 * 1000},async function(option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on {string} in Clinical Records Patient search popup', {timeout: 60 * 1000},async function(option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on {string} in Predefined criteria search popup', {timeout: 60 * 1000},async function(option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on magnifying glass on the patient list', {timeout: 60 * 1000},async function() {

    await patMergePage.clickMagnifierpatList(this.page);
});
Then('user clicks on {string} in Patient search popup', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user verify the patient record is present in recently viewed patients', {timeout: 60 * 1000},async function () {

    await patMergePage.verifyPatRecord(this.page);
});
Then('user enters patient name in the search bar', {timeout: 60 * 1000},async function () {

    await patMergePage.enterPatName(this.page);
});
Then('user clicks on magnifying glass on the right patient card', {timeout: 60 * 1000},async function () {

    await patMergePage.clickMagnifierRight(this.page);
});
Then('user clicks the merge direction {string} to change it on middle card', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);

});
Then('user clicks on {string} at the bottom of the middle card', {timeout: 60 * 1000},async function (option) {

    await patMergePage.clickSpan(this.page,option);
});
// Then('user clicks on tick-checkbox on popup', {timeout: 60 * 1000},async function () {
//
//     await patMergePage.clicktickPopup(this.page);
// });
Then('user verify whether patient exists in the search or not', {timeout: 60 * 1000},async function () {

    await patMergePage.verifySearch(this.page);
});


Then('user clicks on {string} card in Settings section', {timeout: 60 * 1000},async function(option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on National code in personnel search', {timeout: 60 * 1000},async function() {

    await patMergePage.clickNationalCode(this.page);
});
Then('user enters National code in search bar',  {timeout: 60 * 1000},async function () {

    await patMergePage.enterNatCode(this.page);
});
Then('user clicks on filter Parameter',  {timeout: 60 * 1000},async function () {

    await patMergePage.clickFilter(this.page);
});

Then('user clicks on Location filter Parameter of Outbreak',  {timeout: 60 * 1000},async function () {

    await patMergePage.clickFilterLocation(this.page);
});


Then('user clicks on outbreak',  {timeout: 60 * 1000},async function () {

    await patMergePage.clickFilter(this.page);
});
Then('user clicks on {string} to select option',  {timeout: 60 * 1000},async function (option) {

    await patMergePage.clickType(this.page,option);
});
Then('user selects {string} option', {timeout: 60 * 1000},async function (option) {

    await patMergePage.clickSpan(this.page,option);
});
Then('user clicks on patient menu in top right corner of the page', {timeout: 60 * 1000},async function () {

    await patMergePage.clickMenu(this.page);
});
Then('user selects {string} option from the dropdown', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user click on the result {string} within the event list', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on action menu on Event Report bar', {timeout: 60 * 1000},async function () {

    await patMergePage.selectActionMenu(this.page);
});
Then('user selects {string} option from Action popup', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on {string} radio bar', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on {string} filter', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectParam(this.page);
});

Then('user clicks on breadcrumb {string} filter', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectParamWithParameter(this.page, option);
});
Then('user enters {string} , {string} and selects {string} type from filters popup', {timeout: 60 * 1000},async function (dpName,pstCode,Stats) {

    await patMergePage.enterFilterVals(this.page,dpName,1);
    await patMergePage.enterFilterVals(this.page,pstCode,2);
    await patMergePage.enterFilterVals(this.page,Stats,3);
});
Then('user selects location from the filtered results', {timeout: 60 * 1000},async function () {

    await patMergePage.selectLocation(this.page);
});
Then('user clicks on action menu on Location details popup', {timeout: 60 * 1000},async function () {

    await patMergePage.clickMenu(this.page);
});

Then('user clicks on action menu on popup', {timeout: 60 * 1000},async function () {

    await patMergePage.clickMenu(this.page);
});

Then('user clicks on action menu on outbreak details popup', {timeout: 60 * 1000},async function () {

    await patMergePage.clickMenu(this.page);
});

Then('user clicks on {string} in Location Actions', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user selects {string} from Edit Location popup', {timeout: 60 * 1000},async function (option) {

    await patMergePage.clickType(this.page,option);
});
Then('user selects {string} from User search option and enter value', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
    await patMergePage.enterFilterVals(this.page,"Display",1);
});
Then('user selects Manager from the filtered results', {timeout: 60 * 1000},async function () {

    await patMergePage.selectManager(this.page);
});
Then('user clicks on magnifying glass on Users list', {timeout: 60 * 1000},async function () {

    await patMergePage.clickMagnifierpatList(this.page);
});
Then('user selects {string} from User search option and enter value in {string} input', {timeout: 60 * 1000},async function (opt1,opt2) {

    await patMergePage.selectDispName(this.page,opt1);
    await patMergePage.enterFilterVals(this.page,opt2,1);
});
Then('user selects {string} and {string} option', {timeout: 60 * 1000},async function (opt1,opt2) {

    await patMergePage.clickSpan(this.page,opt1);
    await patMergePage.clickSpan(this.page,opt2);
});
Then(/^user selects three national code options$/, {timeout: 60 * 1000},async function () {

    await patMergePage.selectNatCode(this.page,2);
    await patMergePage.selectNatCode(this.page,3);
    await patMergePage.selectNatCode(this.page,4);
});
Then('user clicks on {string} button at the bottom of popup', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on plus icon on top right corner of the page', {timeout: 60 * 1000},async function () {

    await patMergePage.clickPlus(this.page);
});
Then('user selects {string} option in Types popup', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user clicks on {string} to enter', {timeout: 60 * 1000},async function (value) {

    await patMergePage.clickType(this.page,value);
    await patMergePage.enterFilterVals(this.page,value,1);
});
Then('user selects {string} option in Employment popup', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user enters {string}', {timeout: 60 * 1000},async function (option) {

    await patMergePage.clickType(this.page,option);
    await patMergePage.enterNationalCode(this.page,option);
});
Then('user selects {string} option from dropdown', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user verify the patient summary', {timeout: 60 * 1000},async function () {

});
Then('user clicks on the tick-checkbox', {timeout: 60 * 1000},async function () {

    await patMergePage.clickTick(this.page);
});
Then('user clicks on the {string} card in Settings section', {timeout: 60 * 1000},async function (option) {

    await patMergePage.clickSystemCard(this.page,option);
});
Then('user clicks on {string} card', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on {string} radio icon on top of page', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on {string} option and enter code', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectCode(this.page,option);
    await patMergePage.enterCode(this.page);
});
Then('user selects first document in filtered rows', {timeout: 60 * 1000},async function () {

    await patMergePage.selectDoc(this.page);
});
Then('user verify that Document is Summarised as {string}', {timeout: 60 * 1000},async function (option) {

    await patMergePage.verifyDoc(this.page,option);
});
Then('user enter Code value', {timeout: 60 * 1000},async function () {

    await patMergePage.enterVal(this.page);
});
Then('user clicks on {string} option and enter name', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectCode(this.page,option);
    await patMergePage.enterName(this.page);
});


Then('user clicks on the {string}', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectCode(this.page,option);
});
Then('user selects {string} from the options', {timeout: 60 * 1000},async function (option) {

    await patMergePage.clickSpan(this.page,option);
});

Then('user select {string} with value {string}', {timeout: 60 * 1000},async function (label,value) {

    await documentSettingsPage.inputValueInline(this.page, label, value);
});

Then('user click on {string} from Image Information', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on {string} option in parameter list and enter name', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectCode(this.page,option);
    await patMergePage.enterImgName(this.page);
});
Then('user clicks on first row of filtered result', {timeout: 60 * 1000},async function () {

    await patMergePage.clickFirstRow(this.page);
});
Then('user clicks on {string} to publish the image', {timeout: 60 * 1000},async function (option) {

    await patMergePage.clickSystemCard(this.page,option);
});
Then('user clicks on {string} to verify the Image is being {string} or not', {timeout: 60 * 1000},async function (option1,option2) {

    await patMergePage.selectOption(this.page,option1);
    await patMergePage.selectOption(this.page,option1);
    await patMergePage.verifyPublish(this.page,option2);
});
Then('user clicks on document {string} in Document Information', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on Start option in the Document menu', {timeout: 60 * 1000},async function () {

    await patMergePage.clickStart(this.page);
});
Then('user clicks on {string} property', {timeout: 60 * 1000},async function (option) {

    await patMergePage.clickSpan(this.page,option);
});
Then('user clicks on {string} option and verify {string} working or not', {timeout: 60 * 1000},async function (option1,option2) {

    await patMergePage.selectCode(this.page,option1);
    await patMergePage.clickSpan(this.page,"Infection Control");
    await patMergePage.selectOption(this.page,option2);
});
Then('user clicks on {string} to link document with property', {timeout: 60 * 1000},async function (option1) {

    await patMergePage.selectOption(this.page,option1);
});
Then('user clicks on {string} in Search Documents popup', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user enters Document Name to search', {timeout: 60 * 1000},async function () {

    await patMergePage.enterDocName(this.page);
});
Then('user selects the first option in filtered result with value {string}', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});

Then('user clicks on Document Settings Menu Option {string}', {timeout: 60 * 1000},async function(menuOption){
    await documentSettingsPage.clickOnDocumetSettingsMenuOption(this.page,menuOption);
});

Then('user input {string} with value {string}',  {timeout: 180 * 1000},async function(label,value){
    await documentSettingsPage.inputValueInline(this.page, label, value);
});

Then('user clicks on {string} on popup', {timeout: 60 * 1000},async function(elementName){
        elementName = await utility.getJsonValue(elementName);
        await this.attach("Patient Identifier Search: " + elementName, 'text/plain');
        await navigationPage.clickOnPopupItem(this.page, elementName);

});


Then('verify popup option {string} is visible', {timeout: 60 * 1000},async function(value){

    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await documentSettingsPage.verifyPopupOptionIsVisible(this.page,value);
});

Then('user verify detail {string} with value {string}', {timeout: 60 * 1000},async function(header,value){
    await documentSettingsPage.verifyDetail(this.page,header,value);
});

Then('user verify the detail {string} with value {string}', {timeout: 60 * 1000},async function(header,value){
    await documentSettingsPage.verifyDetailPage(this.page,header,value);
});

Then('verify {string} after completing the form Description', {timeout: 60 * 1000},async function(value){
    await announcementPage.verifyFormDescription(this.page,value);
});

Then('user verify action icon is {string}', {timeout: 60 * 1000},async function(value){
    await announcementPage.verifyIsActionIconAvailable(this.page,value==="Available");
});

Then('wait for {string} seconds', {timeout: 60 * 1000},async function(value){
    await this.page.waitForTimeout(parseInt(value) * 1000);
});

Then('user change {string} toggle {string}', {timeout: 60 * 1000},async function(lable, value){
    await documentSettingsPage.changeToggle(this.page,lable,value);
});

Then('user verify {string} toggle {string}',{timeout: 60 * 1000}, async function (lable, value) {
    await documentSettingsPage.verifyToggle(this.page,lable,value);
});

Then('verify {string} module exists {string}', {timeout: 60 * 1000},async function(headerName,isExist){
    await navigationPage.verifyIsModuleExists(this.page,headerName,isExist);
});

Then('user clicks on the action icon of {string}', {timeout: 60 * 1000},async function(headerName){
    await announcementPage.clickOnActionIconWithHeaderName(this.page,headerName);
});

Then('user clicks on meatballs icon {string}', {timeout: 60 * 1000},async function(headerName){
    await navigationPage.clickMeatBalls(this.page,headerName);
});

Then('user clears the text-input {string}', {timeout: 60 * 1000},async function(label){
    await announcementPage.clearTextInTextInput(this.page,label);
});

Then('user verify {string} Visibility Icon {string}', {timeout: 60 * 1000},async function(header,value){
    await documentSettingsPage.verifySectionVisibility(this.page,header,value);
});

Then('wait for 10 seconds', {timeout: 60 * 1000},async function () {
    await this.page.waitForTimeout(10000);
});

Then('wait for 20 seconds', {timeout: 60 * 1000},async function () {
    await this.page.waitForTimeout(20000);
});

Then('wait for 40 seconds', {timeout: 60 * 1000},async function () {
    await this.page.waitForTimeout(40000);
});

Then('verify reference {string} with value {string}', {timeout: 60 * 1000},async function (label,value) {
    let expectedValue = await utility.getJsonValue(value);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await organisationSettingsPage.verifyReference(this.page,label,expectedValue);
});

Then('verify there are no clinicians added', {timeout: 60 * 1000},async function () {
    await organisationSettingsPage.noClinicianPresent(this.page);
});

Then('user saves the number of sub-categories for {string}',{timeout: 60 * 1000},async function (label) {
    await clinicalRecordsPage.saveSubCategoryValue(this.page,label);
});

Then('verify the number of sub-categories',{timeout: 60 * 1000},async function () {
    await clinicalRecordsPage.verifySubCategoryValue(this.page);
});

Then('verify the number of new sub-categories',{timeout: 60 * 1000},async function () {
    await clinicalRecordsPage.verifyNewSubCategoryValue(this.page);
});

Then('verify {string} doesnt exist and if does revert it back', {timeout: 180 * 1000},async function (label) {
    await clinicalRecordsPage.revertDataIfItExists(this.page,label);
});

Then('user clicks on Table row {string}', {timeout: 60 * 1000},async function(headerName){
    await documentSettingsPage.clickOnTableRow(this.page,headerName);
});
Then('user clicks on header {string} on table', {timeout: 60 * 1000},async function(headerName) {

    await patMergePage.clickStatus(this.page,headerName);
});
Then('user clicks on the header {string}', {timeout: 60 * 1000},async function(headerName) {

    await announcementPage.clickStatus(this.page,headerName);
});
Then('user selects first filtered result from the table', {timeout: 60 * 1000},async function () {
    await patMergePage.selectFirstOpt(this.page);
});
Then('user clicks {string} from Document menu', {timeout: 60 * 1000},async function (option) {

    await patMergePage.clickSystemCard(this.page,option);
});
Then('user clicks on {string} in Publish Document popup', {timeout: 60 * 1000},async function (option) {

    await patMergePage.clickSystemCard(this.page,option);
});
Then('user clicks on {string} option in Package filter', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectCode(this.page,option);
});
Then('user enters Code in textarea', {timeout: 60 * 1000},async function () {

    await patMergePage.enterPkgCode(this.page);
});
Then('user selects first package in filtered rows', {timeout: 60 * 1000},async function () {

    await patMergePage.selectfirstPkg(this.page);
});
Then('user clicks on {string} in Package details', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on linked document in linked document list', {timeout: 60 * 1000},async function () {

    await patMergePage.clickLinkDoc(this.page);
});
Then('user clicks on meatball menu in Document section', {timeout: 60 * 1000},async function () {

    await patMergePage.clickMeatballMenu(this.page);
});
Then('user clicks on {string} in section details popup', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on header {string} on the table', {timeout: 60 * 1000},async function (option) {

    await patMergePage.clickUpdated(this.page,option);
});
Then('user clicks on {string} in the document menu', {timeout: 60 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});

Then('change all roles with name {string} to {string}', {timeout: 360 * 1000},async function (orignalText,updatedText) {

    await roleSettingsPage.changeAllExistingRoles(this.page,orignalText,updatedText);
});

Then('user verify Black header shows up with patient gender color {string} in popup', {timeout: 60 * 1000},async function(value){
    await clinicalRecordsPage.verifyDemoGraphicsAndGenderColorInPopup(this.page,value);
});

Then('user verify Black header shows up with patient name {string} in popup', {timeout: 60 * 1000},async function(value){
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await clinicalRecordsPage.verifyDemoGraphicsDisplayNameInPopup(this.page,value);
});

Then('user verify Black header shows up with patient DOB {string} in popup', {timeout: 60 * 1000},async function(value){
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await clinicalRecordsPage.verifyDemoGraphicsDOBInPopup(this.page,value);
});

Then('user verify Black header shows up with patient gender {string} in popup', {timeout: 60 * 1000},async function(value){
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await clinicalRecordsPage.verifyDemoGraphicsGenderInPopup(this.page,value);
});

Then('user verify Black header shows up with patient NHS Number {string} in popup', {timeout: 60 * 1000},async function(value){
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await clinicalRecordsPage.verifyDemoGraphicsNHSNoInPopup(this.page,value);
});
Then('user clicks on {string} in Personnel search popUp', {timeout: 60 * 1000},async function(value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('user enters Display name in Display search popUp', {timeout: 60 * 1000},async function() {

    await patMergePage.enterDispName(this.page);
});
Then('user verify {string} in Audit Data popUp', {timeout: 60 * 1000},async function(value) {

    await patMergePage.verifyAudit(this.page,value);
});
Then('check if role {string} exists and if not then create it', {timeout: 360 * 1000},async function(value) {

    await roleSettingsPage.createRoleIfNotExist(this.page,value);
});

Then('check if the current user has the role of {string} associated and if they are then remove them',{timeout: 360 * 1000},async function(value) {
    await roleSettingsPage.removeRoleIfExists(this.page,value);
});


Then('verify {string} with input value {string} in the pop-up', {timeout: 360 * 1000},async function(label,value) {
    await clinicalRecordsPage.verifyPopUpInputValue(this.page,label,value);
});
Then('user selects first Application in the list', {timeout: 60 * 1000},async function () {

    await patMergePage.selectFirstOpt(this.page);
});
Then('user clicks on {string} option', {timeout: 60 * 1000},async function (value) {

    await patMergePage.clickClear(this.page,value);
});
Then('user selects first Advisory in the list', {timeout: 60 * 1000},async function () {

    await patMergePage.selectFirstOpt(this.page);
});
Then('user clicks on {string} option in Advisory Action popUp', {timeout: 60 * 1000},async function (value) {

    await patMergePage.selectDispName(this.page,value);
});
Then('user verify {string} option in list', {timeout: 60 * 1000},async function (value) {

    await patMergePage.verifyOpt(this.page,value);
});
Then('user clicks on magnifying glass on the Personnel list', {timeout: 60 * 1000},async function () {

    await patMergePage.clickMagnifierpatList(this.page);
});
Then('user selects National code from the list {string}', {timeout: 60 * 1000},async function (value) {

    let nationalCode = await utility.getJsonValue(value);
    await this.attach("National Code: "+nationalCode, 'text/plain');
    await patMergePage.clickSpan(this.page,nationalCode);
});
Then('user selects first Personnel in the list', {timeout: 60 * 1000},async function () {

    await patMergePage.selectFirstOpt(this.page);
});
Then('user clicks on the {string} and enter value', {timeout: 60 * 1000},async function (value) {

    await patMergePage.enterFilterVals(this.page,value,2);
});
