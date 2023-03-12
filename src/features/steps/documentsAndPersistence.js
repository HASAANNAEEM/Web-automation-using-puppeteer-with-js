import {Then} from "@cucumber/cucumber";
import patientDocuments from "../pages/actions/patientDocumentPage";
import patientRecordsPage from "../pages/actions/patientRecordsPage";
import documentSettingsPage from "../pages/actions/documentSettingsPage";
import announcementPage from "../pages/actions/announcementPage";
import utility from "../../utilities/utility";
import navigationPage from "../pages/actions/navigationBar";
import patMergePage from "../pages/actions/patMergePage";
import wardScreenPage from "../pages/actions/wardScreenPage";
import informationScreenSettings from "../pages/actions/InformationScreenSettings";
import clinicalRecordsPage from "../pages/actions/clinicalRecordsPage";
import informationScreenPage from "../pages/actions/informationScreenPage";

Then('verify the tool {string} exists', {timeout: 120 * 1000},async function(toolName){
    await patientDocuments.verifyTool(this.page,toolName);
});

Then('user signs the signature manually',{timeout: 60 * 1000},async function(){
    await patientDocuments.signDocument(this.page);
});

Then('verify the signature',{timeout: 60 * 1000},async function(){
    await patientDocuments.verifySignature(this.page);
});

Then('verify event report {string} with value {string}', {timeout: 60 * 1000},async function (label,value) {
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await patientRecordsPage.verifyEventReport(this.page,label,value);
});

Then('verify event list report {string} with value {string}', {timeout: 60 * 1000},async function (label,value) {
    await patientRecordsPage.verifyEventListReport(this.page,label,value);
});

Then('user inputs {string} with value {string} inline', {timeout: 60 * 1000},async function (label,value) {
    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await patientRecordsPage.inlineInput(this.page,label,value);
});
Then('user clicks on the action icon for tab {string}' , {timeout: 60 * 1000},async function (label) {
    await patientRecordsPage.clickActionIconByLabel(this.page,label);
});

Then('user clicks on the action icon for property {string}' , {timeout: 60 * 1000},async function (label) {
    await documentSettingsPage.clickActionProperty(this.page,label);
});

Then('verify all the {string} are {string} as filtered result', {timeout: 60 * 1000},async function (header,value) {
    let filterText = await utility.getJsonValue(value);
    await this.attach("Filter Text: "+filterText, 'text/plain');
    await documentSettingsPage.verifyFilteredColumn(this.page,header,filterText);
});

Then('verify {string} is mandatory input in the pop-up', {timeout: 60 * 1000},async function (header) {
    await documentSettingsPage.verifyMandatory(this.page,header);
});

Then('user inputs {string} in the input section with placeholder {string}', {timeout: 60 * 1000},async function (value,placeholder) {
    await documentSettingsPage.enterInputPlaceholder(this.page,placeholder,value);
});

Then('user uploads file {string}',  {timeout: 60 * 1000},async function (fileName) {

    fileName = await utility.getJsonValue(fileName);
    await this.attach("elementName Value: "+fileName, 'text/plain');
    await documentSettingsPage.uploadFileAddFile(this.page,fileName);
});

Then('verify there are {string} number of {string} in the pop-up', {timeout: 60 * 1000},async function (value,header) {
    await documentSettingsPage.verifyCircularValues(this.page,header,value)
});

Then('create a property with Code {string} Name {string} Desc {string} and Type {string} if not exist',
    {timeout: 180 * 1000},async function(propCode,propName,propDesc,propType){
        await documentSettingsPage.createPropIfNotExist(this.page,propCode,propName,propDesc,propType);
    });

Then('create a property with Code {string} Name {string} Desc {string} Type {string} and Persistence {string} if not exist',
    {timeout: 180 * 1000},async function(propCode,propName,propDesc,propType,propPersistance){
        await documentSettingsPage.createPropertyCompleteIfNotExist(this.page,propCode,propName,propDesc,propType,propPersistance);
    });

Then('create a document with Code {string} Name {string} Desc {string} Type {string} Ammendable {string} Ability To Save Draft {string} Summarisable {string} Abandonable {string} if not exist',
    {timeout: 180 * 1000},async function(docCode,docName,docDesc,docType,docAmendable,docDraft,docSummarize,docAbandon){
        await documentSettingsPage.createDocIfNotExist(this.page,docCode,docName,docDesc,docType,docAmendable,docDraft,docSummarize,docAbandon);
    });

Then('publish {string} if it is not published', {timeout: 1800 * 1000},async function (name) {
    await documentSettingsPage.publishOption(this.page,name);
});

Then('unpublish {string} if it is not unpublished', {timeout: 180 * 1000},async function (name) {
    await documentSettingsPage.unpublishOption(this.page,name);
});

Then('configure {string} with Prop {string} if not published',  {timeout: 120 * 1000},async function(documentName,propName){
    await documentSettingsPage.configureDocument(this.page,documentName,propName);
});

Then('configure {string} with Property {string} if not published',  {timeout: 240 * 1000},async function(documentName,propName){
    await documentSettingsPage.configureDocumentWithProperty(this.page,documentName,propName);
});

Then('verify {string} is present in the document', {timeout: 60 * 1000},async function(propValue){
    await documentSettingsPage.verifyPresentInDocument(this.page,propValue);
});

Then('verify {string} is not present in the document', {timeout: 60 * 1000},async function(propValue){
    await documentSettingsPage.verifyNotPresentInDocument(this.page,propValue);
});

Then('verify {string} is present in the pop-up menu', {timeout: 60 * 1000},async function(propValue){
    await documentSettingsPage.verifyPresentInDocument(this.page,propValue);
});

Then('configure information property {string} with value {string} if not published', {timeout: 120 * 1000},async function(propName,propValue){
    await documentSettingsPage.configureInformationProperty(this.page,propName,propValue);
});

Then('configure document {string} for TST-680 pre-requisites',  {timeout: 1000 * 1000},async function(propName){
    await documentSettingsPage.configureDocumentTST680(this.page,propName);
});

Then('configure document {string} for TST-792 pre-requisites',  {timeout: 480 * 1000},async function(propName){
    await documentSettingsPage.configureDocumentTST792(this.page,propName);
});

Then('configure document {string} for TST-695 pre-requisites',  {timeout: 180 * 1000},async function(propName){
    await documentSettingsPage.configureDocumentTST695(this.page,propName);
});

Then('configure selection property {string} with selection values {string} if not published', {timeout: 120 * 1000},async function(propName,propValues){
    await documentSettingsPage.configureSelectionProperty(this.page,propName,propValues);
});

Then('verify {string} has rules applied', {timeout: 120 * 1000},async function(propName){
    await documentSettingsPage.hasRulesApplied(this.page,propName);
});

Then('verify {string} has no rules applied', {timeout: 120 * 1000},async function(propName){
    await documentSettingsPage.hasNoRulesApplied(this.page,propName);
});

Then('user clicks on the action icon pop-up', {timeout: 120 * 1000},async function(){
    await announcementPage.clickOnPopUpActionIcon(this.page);
});

Then('wait for the page to load',{timeout: 1000 * 1000},async function(){
    await announcementPage.waitForPageToLoad(this.page);
});


Then('configure document {string} for TST-1003 pre-requisites',  {timeout: 180 * 1000},async function(propName){
    await documentSettingsPage.configureDocumentTST1003(this.page,propName);
});

Then('add filter {string} on {string}', {timeout: 180 * 1000},async function(propName,parameter){
    await documentSettingsPage.addFilter(this.page,propName,parameter);
});

Then('remove filter {string}', {timeout: 180 * 1000},async function(propName){
    await documentSettingsPage.removeFilter(this.page,propName);
});

Then('choose filter {string} on {string}', {timeout: 180 * 1000},async function(propName,parameter){
    await documentSettingsPage.chooseFilter(this.page,propName,parameter);
});

Then('verify linked document {string}', {timeout: 60 * 1000},async function(propName){
    await documentSettingsPage.verifyLinkedDocument(this.page,propName);
});

Then('verify image is shown in pop-up details and saved as dataurl', {timeout: 60 * 1000},async function(){
    await documentSettingsPage.verifyImageShownAndSaved(this.page);
});

Then('verify image in images pop-up detail',{timeout: 60 * 1000},async function(){
    await documentSettingsPage.verifyImage(this.page);
});

Then('verify search results displayed {string}', {timeout: 180 * 1000},async function (isExist) {
    await documentSettingsPage.verifyIsSearchResultsExist(this.page,isExist);
});

Then('user verify search result {string} is selectable {string}', {timeout: 180 * 1000},async function (item,isSelectable) {
    await documentSettingsPage.verifyItemSelectable(this.page,item,isSelectable);
});

Then('user verify detail {string} exists {string}', {timeout: 60 * 1000},async function(headerName,isExist){
    await documentSettingsPage.verifyIsItemExists(this.page,headerName,isExist);
});

Then('user verify detail {string} not exists {string}', {timeout: 60 * 1000},async function(headerName,isExist){
    await documentSettingsPage.verifyIsItemNotExists(this.page,headerName,isExist);
});
Then('user select {string} with value {string} while creating outbreak', {timeout: 60 * 1000},async function(label,value){
    await announcementPage.verifyPopUpWithLabelAndValueDetails(this.page,label,value);
});

Then('user verify remove icon {string} exists {string}', {timeout: 60 * 1000},async function(headerName,isExist){
    await documentSettingsPage.verifyIsRemoveIconExists(this.page,headerName,isExist);
});

Then('user verify item {string} counter with value {string}', {timeout: 60 * 1000},async function(header,value){
    await documentSettingsPage.verifyItemCounter(this.page,header,value);
});

Then ('user verify items order of {string} with values {string}',{timeout : 60 * 1000}, async function (header,value) {

    await documentSettingsPage.verifyItemList(this.page,header,value);
});


Then('user moves item down {string}', {timeout: 60 * 1000},async function(headerName){
    await documentSettingsPage.clickItemDown(this.page,headerName);
});

Then('user moves item up {string}', {timeout: 60 * 1000},async function(headerName){
    await documentSettingsPage.clickItemUp(this.page,headerName);
});

Then('user clicks on Table first row {string}', {timeout: 60 * 1000},async function(headerName){
    let expectedValue = await utility.getJsonValue(headerName);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await documentSettingsPage.clickOnTableFirstRow(this.page,expectedValue);
});

Then('change all {string} named properties status to {string} from {string}', {timeout: 1800 * 1000},async function(propName,to_status,from_status){
    await documentSettingsPage.changePropertyStatus(this.page,propName,to_status,from_status);
});

Then('change all {string} named Document status to {string} from {string}', {timeout: 1800 * 1000},async function(propName,to_status,from_status){
    await documentSettingsPage.changeDocumentStatus(this.page,propName,to_status,from_status);
});

Then('user verify {string} Rules Available Icon {string}', {timeout: 60 * 1000},async function(header,value){
    await documentSettingsPage.verifyRulesIconVisibility(this.page,header,value);
});

Then('user verify table header {string} exists {string}', {timeout: 60 * 1000},async function(headerName,isExist){
    await documentSettingsPage.verifyIsTableHeaderExists(this.page,headerName,isExist);
});

Then('verify column {string} contains {string} value', {timeout: 60 * 1000},async function(headerName,value){
    await documentSettingsPage.verifyFilteredColumnWithContains(this.page,headerName,value);
});

Then('verify column {string} equals {string} value', {timeout: 60 * 1000},async function(headerName,value){
    await documentSettingsPage.verifyFilteredColumn(this.page,headerName,value);
});

Then('create a Package with Code {string} Name {string} Desc {string} and Origin {string} if not exist',
    {timeout: 180 * 1000},async function(packCode, packName, packDesc, packOrigin){
        await documentSettingsPage.createPackageIfNotExist(this.page,packCode, packName, packDesc, packOrigin);
    });

Then('create a Package with Code {string} Name {string} Desc {string} Category {string} Specialty {string} and Origin {string} if not exist',
    {timeout: 180 * 1000},async function(packCode, packName, packDesc,packCategory,packSpeciality, packOrigin){
        await documentSettingsPage.createPackageCompleteIfNotExist(this.page,packCode, packName, packDesc,packCategory,packSpeciality, packOrigin);
    });

Then('User Associates Document {string} to Package {string}', {timeout: 120 * 1000},async function(documentName,packName){
    await documentSettingsPage.associateDocumentToPackage(this.page, packName,documentName);
});

Then('User Associates Documents {string} to Package {string}', {timeout: 120 * 1000},async function(documentsName,packName){
    await documentSettingsPage.associateDocumentsToPackage(this.page, packName,documentsName);
});

Then('user verify table header with icon {string} exists {string}', {timeout: 60 * 1000},async function(headerName,isExist){
    await documentSettingsPage.verifyIsTableHeaderExists_UsingClass(this.page,headerName,isExist);
});

Then ('configure a document {string} with sec name {string} code {string} and existing property {string} if not published',
    {timeout: 1800 * 1000}, async function (docName, secName, secCode, propertyName) {
        await documentSettingsPage.configureUnPublishedDoc(this.page,docName,secName,secCode,propertyName);
    });

Then('filter item {string} with value {string}', {timeout: 120 * 1000},async function (itemName, filterValue) {
    await documentSettingsPage.filterTextItem(this.page,itemName, filterValue);
});

Then('clear filtered item {string}', {timeout: 120 * 1000},async function (filterValue) {
    await documentSettingsPage.clearFilteredTextItem(this.page, filterValue);
});

Then('wait for popup loading', {timeout: 60 * 1000},async function(){
    await announcementPage.waitForLoading(this.page);
});

Then('user input {string} with value {string} document properties',  {timeout: 60 * 1000},async function(label,value){
    await documentSettingsPage.inputValueInlineDocumentProperties(this.page, label, value);
});

Then('user clicks on input {string} document properties',  {timeout: 60 * 1000},async function(label){
    await documentSettingsPage.clickInputValueInline(this.page, label);
});

Then('edit property {string} persistance to {string}', {timeout: 60 * 1000},async function (propName, persistenseType) {
    await documentSettingsPage.changePropertyType(this.page,propName, persistenseType);
});

Then('verify persistent property {string} with value {string}',  {timeout: 60 * 1000},async function(label,value){
    await documentSettingsPage.verifyPersistentPropertyValue(this.page, label, value);
});
Then('linked document {string} status is {string}',{timeout: 60 * 1000},async function(docName,status){
    await documentSettingsPage.verifyLinkedDocumentStatus(this.page,docName,status);
});
Then('reload page' , {timeout: 60 * 1000},async function(){
    await this.page.reload();
});
Then('verify panel {string} exists',  {timeout: 60 * 1000},async function(panelName){
    await documentSettingsPage.verifyPanel(this.page,panelName);
});
Then('verify patients demographics exist', {timeout: 60 * 1000},async function(){
    await documentSettingsPage.verifyPatientDemographics(this.page);
});
Then('verify pop-up patients demographics exist', {timeout: 60 * 1000},async function(){
    await documentSettingsPage.verifyPopUpPatientDemographics(this.page);
});
Then('verify table header with current date exists',{timeout: 60 * 1000},async function(){
    await patientRecordsPage.verifyCurrentDateExists(this.page)
});
Then('user clicks on the first option {string}',{timeout: 60 * 1000},async function(label){
    await patientRecordsPage.clickFirstOption(this.page,label);
});
Then('verify package name in event report value {string}',{timeout: 60 * 1000},async function(label){
    await patientRecordsPage.verifyEventReportPackage(this.page,label);
});
Then('verify {string} exists in that specific order in event report',{timeout: 60 * 1000},async function(documentsName){
    await patientRecordsPage.verifyDocumentsName(this.page,documentsName);
});

Then('verify document {string} label {string} value is {string}',{timeout: 60 * 1000},async function(docName,docStatus,docStatusValue){
    docStatusValue = await utility.getJsonValue(docStatusValue);
    await this.attach("Expected Value: "+docStatusValue, 'text/plain');
    await patientRecordsPage.verifyDocumentStatus(this.page,docName,docStatus,docStatusValue);
});

Then('verify document {string} label {string} value is {string} in local file',{timeout: 60 * 1000},async function(docName,docStatus,docStatusValue){
    await patientRecordsPage.verifyDocumentStatusLocalFile(this.page,docName,docStatus,docStatusValue);
});

Then("verify document {string} has a section {string} with property {string} has a value {string}",async function (docName,docSection,docProp,docPropValue) {
    await patientRecordsPage.verifyEventReportDocumentStatusPropertyValue(this.page,docName,docSection,docProp,docPropValue)
});

Then("verify document {string} has a section {string} with property {string} has a value {string} in local file",async function (docName,docSection,docProp,docPropValue) {
    await patientRecordsPage.verifyEventReportDocumentStatusPropertyValueLocalFile(this.page,docName,docSection,docProp,docPropValue)
});

Then("verify document {string} has a section {string} with properties in order {string}",async function (docName,docSection,docProps) {
    await patientRecordsPage.verifyEventReportDocumentSectionPropertiesOrder(this.page,docName,docSection,docProps);
});
Then('remove all sections in the document', {timeout: 60 * 1000},async function(){
    await documentSettingsPage.removeAllSections(this.page);
});
Then('create a new section with Code {string} Name {string} Description {string}',async function(sectionCode,sectionName,sectionDescription){
    await documentSettingsPage.createNewDocumentSection(this.page,sectionCode,sectionName,sectionDescription);
});
Then('user creates a table with row {string} and columns {string}', {timeout: 60 * 1000},async function(row,columns){
    await documentSettingsPage.createTableInQlEditor(this.page,row,columns);
});
Then('user enters text {string} with text styling option {string}', {timeout: 60 * 1000},async function(text,option){
    await documentSettingsPage.enterTextWithTextFormat(this.page,text,option);
});

Then('user appends table with {string}', {timeout: 180 * 1000},async function(appendOption){
    await documentSettingsPage.appendTable(this.page,appendOption);
});
Then('user enters text {string} with text styling option link', {timeout: 180 * 1000},async function(text){
    await documentSettingsPage.enterTextWithLink(this.page,text);
});

Then('user enters text {string} with text aligning option {string}',  {timeout: 180 * 1000},async function(text,allign){
    await documentSettingsPage.enterTextWithTextAllignment(this.page,text,allign);
});

Then('user enters text {string} with text ordering {string}',{timeout: 180 * 1000},async function(text,listType){
    await documentSettingsPage.enterTextWithTextList(this.page,text,listType);
});

Then('user enters text {string} with text font color {string}', {timeout: 180 * 1000},async function(text,color){
    await documentSettingsPage.enterTextWithTextFont(this.page,text,color);
});

Then('user enters text {string} with text background color {string}', {timeout: 180 * 1000},async function(text,color){
    await documentSettingsPage.enterTextWithTextBackground(this.page,text,color);
});
Then('user enters text {string} with text size {string}', {timeout: 180 * 1000},async function (text,sizeType) {
    await documentSettingsPage.enterTextWithTextSize(this.page,text,sizeType);
});
Then('verify a new column has been added',{timeout: 180 * 1000},async function () {
    await documentSettingsPage.verifyNewColumnExists(this.page);
});
Then('verify text {string} with styling {string}',{timeout: 180 * 1000},async function (text,styling) {
    await documentSettingsPage.verifyTextStyle(this.page,text,styling);
});

Then('create an image with code {string} name {string} desc {string} anatomical site {string} orientation {string} image {string} if not exist',
    {timeout: 300 * 1000},async function(code,name,desc,anatomical,orientation,imagePath){
    await documentSettingsPage.createImageIfNotExist(this.page,code,name,desc,anatomical,orientation,imagePath);
});

Then('user verify Popup Adjacent Item {string} with value {string}', {timeout: 60 * 1000},async function(header,value){
    let expectedValue = await utility.getJsonValue(value);
    await this.attach("Expected Value: "+expectedValue, 'text/plain');
    await documentSettingsPage.verifyPopupAdjacentValue(this.page,header,expectedValue);
});

Then('verify textArea maxlength {string}', {timeout: 60 * 1000},async function(text){
    await announcementPage.verifyTextAreaMaxlength(this.page,text);
});

Then('verify textArea Characters length {string}', {timeout: 60 * 1000},async function(text){
    await announcementPage.verifyTextAreaCharLength(this.page,text);
});

Then('verify {string} found {string} is Exist {string}', {timeout: 60 * 1000},async function(header,value,isExist){
    await documentSettingsPage.verifySectionBody(this.page,header,value,isExist);
});

Then('user verify {string} thumbnail exist {string}', {timeout: 60 * 1000},async function(headerName,isExist){
    await documentSettingsPage.verifyPopupThumbnailIsExists(this.page,headerName,isExist);
});

Then('verify {string} with {string} date', {timeout: 60 * 1000},async function(label,expectedDate){

    if(expectedDate==="current"){
       let currentDate = await utility.customDate("dd-MMM-yyyy");
        await documentSettingsPage.verifyDetailContains(this.page,label,currentDate);
    }else{
        await documentSettingsPage.verifyDetail(this.page,label,expectedDate);
    }

});

Then('user verify Document Info {string} Status {string}', {timeout: 60 * 1000},async function(header,value){
    await documentSettingsPage.verifyDocInfoAdjacentValue(this.page,header,value);
});

Then('wait for loading in {string} section', {timeout: 60 * 1000},async function(header){
    await announcementPage.waitForLoadingWithTitle(this.page,header);
});

Then('Delete All {string} Document', {timeout: 180 * 1000},async function(docName){
    await documentSettingsPage.deleteAllDocument(this.page,docName);
});

Then('user clicks on {string} on popup with respect to {string}', {timeout: 60 * 1000},async function(elementName,status){
    await navigationPage.clickOnPopupItemWRT_Status(this.page,elementName,status);
});

Then('user clear input {string} document properties',  {timeout: 60 * 1000},async function(label){
    await documentSettingsPage.clearInputValueInlineDocumentProperties(this.page, label);
});

Then('user clicks on the back icon',  {timeout: 60 * 1000},async function () {
    await documentSettingsPage.clickBackIcon(this.page);
});

Then('user selects first document in the filtered rows',  {timeout: 60 * 1000},async function () {
    await documentSettingsPage.selectFirstDoc(this.page);
});

Then('navigate to information screen in Site {string} with Location {string}',{timeout: 240 * 1000},async function (site,location) {
    location = await utility.getJsonValue(location);
    await this.attach("Location: "+location, 'text/plain');
    await navigationPage.navigateToWardScreen(this.page,site,location);
});

Then('discharge patient in bed {string} on the basis of method {string} and discharge location to be {string}',{timeout: 240 * 1000},async function (bedNumber,dischargeMethod,dischargeLocation) {
    await wardScreenPage.dischargePatient(this.page,bedNumber,dischargeMethod,dischargeLocation);
});
Then('add patient with NHS number {string} in bed {string}', {timeout: 360 * 1000},async function (nhsNumber,bedNumber) {
    let patientIdentifierSearch = await utility.getJsonValue(nhsNumber);
    await this.attach("Patient Identifier Search: "+patientIdentifierSearch, 'text/plain');
    await wardScreenPage.addPatient(this.page,patientIdentifierSearch,bedNumber);
});

Then('user sets up the pre-requisites for TST-694',  {timeout: 360 * 1000},async function () {
    await documentSettingsPage.preReqTST694(this.page);
});

Then('check if Document Information has documents with Status Not Started or In-Progress', {timeout: 120 * 1000},async function () {
    await documentSettingsPage.checkDocumentsExistWithNSorIP(this.page);
});

Then('edit the package {string} with emails {string}', {timeout: 120 * 1000},async function (packName,emails) {
    await documentSettingsPage.editPackWithEmails(this.page,packName,emails);
});

Then('verify document received in email', {timeout: 120 * 1000},async function () {
    await documentSettingsPage.receivedEmail(this.page);
});

Then('verify image in Event Report', {timeout: 120 * 1000},async function () {
    await documentSettingsPage.verifyImageInEventReport(this.page);
});

Then('verify property {string} with image in Event Report', {timeout: 120 * 1000},async function (propertyName) {
    await documentSettingsPage.verifyPropertyWithImageInEventReport(this.page,propertyName);
});

Then('verify the signature in Event Report',{timeout: 120 * 1000},async function () {
    await documentSettingsPage.verifySignatureInEventReport(this.page);
});

Then('user clicks on the plus icon of {string}', {timeout: 60 * 1000},async function(label){
    await documentSettingsPage.clickOnPlusIcon_WRT_Label(this.page,label);
});

Then('Add a value in property {string} with Display Name {string} Value {string} ICD10 Code {string} Read Code {string} Snommed Code {string} and isEnabled {string} if not exist',
    {timeout: 180 * 1000},async function(propName, displayName, value, icd10code, readcode, snomedcode, isEnabled){
        await documentSettingsPage.createPropValueIfNotExist(this.page,propName, displayName, value, icd10code, readcode, snomedcode, isEnabled);
    });

Then('user clicks on {string} span', {timeout: 60 * 1000},async function (option) {

    option = await utility.getJsonValue(option);
    await this.attach("Value: "+option, 'text/plain');
    await patMergePage.clickSpan(this.page,option);
});

Then('click favourite icon document {string} and make it {string} and verify', {timeout: 120 * 1000},async function (docName, isActive) {
    await documentSettingsPage.documentFavouritesIcon(this.page,docName, isActive);
});
Then('user clicks on {string} in New Assessments popUp', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user verify the tabs displayed or not', {timeout: 120 * 1000},async function () {

    await documentSettingsPage.verifyTab(this.page,'Overview');
    await documentSettingsPage.verifyTab(this.page,'Fluids');
    await documentSettingsPage.verifyTab(this.page,'Screening');
    await documentSettingsPage.verifyActiveTab(this.page,'Vitals');

});
Then('user clicks on {string} tab under Vital tab', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});
Then('user clicks on {string} tab', {timeout: 120 * 1000},async function (option) {

    await documentSettingsPage.clickTab(this.page,option);
});
Then('user clicks on menu icon on Observation Details popUp', {timeout: 120 * 1000},async function () {

    await patMergePage.clickMenuObsDet(this.page);
});

Then('user clicks on menu icon', {timeout: 120 * 1000},async function () {

    await patMergePage.clickMenu(this.page);
});

Then('user clicks on {string} option in Observation Action menu', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user clicks on {string} in Suppress Vital popUp', {timeout: 120 * 1000},async function (option) {

    await patMergePage.clickType(this.page,option);
});
Then('user selects {string} option from Suppression reasons popUp', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user clicks on {string} card in Systems', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectOption(this.page,option);
});

Then('user clicks on first Item {string} with respect to {string}', {timeout: 60 * 1000},async function(elementName,status){
    await navigationPage.clickOnItemWRT_Status(this.page,elementName,status);
});

Then('Synchronize Property {string} to Document {string}', {timeout: 1800 * 1000},async function(propName,docName){
    await documentSettingsPage.synchronizePropertyToDoc(this.page,docName,propName);
});

Then('Synchronize Document {string} to Package {string}', {timeout: 1800 * 1000},async function(docName,packageName){
    await documentSettingsPage.synchronizeDocToPackage(this.page,docName,packageName);
});

Then('Remove All Patient Documents with name {string}', {timeout: 1800 * 1000},async function(docName){
    await documentSettingsPage.removeAllPatientDocuments(this.page,docName);
});

Then('verify Electronic Signature property {string}', {timeout: 60 * 1000},async function (propertyName) {

    await documentSettingsPage.verifyElectronicSignature(this.page,propertyName);
});

Then('verify Username {string} Job Title exist {string} and Current Date of property {string}', {timeout: 60 * 1000},async function (userName, isRoleExist, propertyName) {

    await documentSettingsPage.verifyESignatureValues(this.page,propertyName, userName, isRoleExist);
});
Then('switch to iframe {string}',{timeout:60*1000}, async function (iframeId) {
    try {
        const elementHandle = await this.page.waitForXPath("//*[@id='"+iframeId+"' or @class='"+iframeId+"']",{visible:true});
        const frame = await elementHandle.contentFrame();
        this.page = frame;
    }
    catch (errorMessage) {
        throw new Error(`errorMessage: ${errorMessage}, errorStack: ${errorMessage.stack}`);
    }
});

Then('switch to main context',{timeout:60*1000}, async function () {
    this.pages = await this.browser.pages();
    this.page = this.pages[0];
});

Then('create clinical indicators {string} with existing Property {string}', {timeout: 1800 * 1000},async function (indicatorName, propertyName) {
    await informationScreenSettings.createIndicatorsIfNotExist(this.page,indicatorName, propertyName);
});

Then('Add clinical indicators {string} Icon set {string} with clinical indication icon {string} with respect to selectors {string}', {timeout: 1800 * 1000},async function (indicatorName,iconSetName, clinicalIndicators, selectionValues) {
    await informationScreenSettings.addClinicalIndicatorIconIfNotExist(this.page,indicatorName,iconSetName, selectionValues, clinicalIndicators);
});

Then('Configure Global Indicator {string} with clinical indicator {string} if not configured', {timeout: 1800 * 1000},async function (globalIndicatorName, clinicalIndicatorName) {
    await informationScreenSettings.configGlobalIndicatorIfNotConfigured(this.page,globalIndicatorName, clinicalIndicatorName);
});

Then('verify bed {string} indicators property {string} with icon {string} and value {string}', {timeout: 60 * 1000},async function (bedNo,indicatorName, iconName, propVal) {
    await informationScreenSettings.verifyClinicalIndicatorPopover(this.page,bedNo,iconName,indicatorName,propVal);
});

Then('verify {string} is present in the table {string}', {timeout: 120 * 1000},async function(value, isExist){
    await clinicalRecordsPage.verifyTableValueExist(this.page,value, isExist)
});

Then('user verify detail {string} with value {string} contains', {timeout: 60 * 1000},async function(header,value){
    await documentSettingsPage.verifyDetailContains(this.page,header,value);
});

Then('user clicks document {string} with Status {string}', {timeout: 60 * 1000},async function(header,value){
    await documentSettingsPage.clickDocAdjacentToStatus(this.page,header,value);
});
Then('user clicks on {string} in New Vitals Assessment popUp', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});

Then('user clicks on {string} in Vitals list', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user {string} for selected option', {timeout: 120 * 1000},async function (option) {

    await patMergePage.clickType(this.page,option);
    await documentSettingsPage.enterVals(this.page,option);

});
Then('user clicks on {string} in Value list', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user clicks on {string} and enter values', {timeout: 120 * 1000},async function (option) {

    await patMergePage.clickType(this.page,option);
    await documentSettingsPage.enterVals(this.page,option);
});
Then('user verify the records of patient', {timeout: 120 * 1000},async function () {


});
Then('user clicks on Input Method {string} to turn to Inline', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user verify the Vitals summary from Patient Assessments page', {timeout: 120 * 1000},async function () {

    await documentSettingsPage.verifyVitals(this.page);
});
Then('user clicks on {string} in Comorbidities list menu popUp', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user clicks on meatballs icon in document list table', {timeout: 120 * 1000},async function () {

    await documentSettingsPage.clickMeatball(this.page);
});
Then('user verify the Package details popUp is visible with all details', {timeout: 120 * 1000},async function () {

    await documentSettingsPage.verifyPackageDetails(this.page);
});
Then('user clicks on {string} in Document Menu popUp', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user clicks on {string} in Save Document popUp', {timeout: 120 * 1000},async function (option) {

    await patMergePage.clickSystemCard(this.page,option);
});
Then('user clicks on {string} in Complete Document popUp', {timeout: 120 * 1000},async function (option) {

    await patMergePage.clickSystemCard(this.page,option);
});

Then('start the interface', {timeout: 120 * 1000},async function () {

    await documentSettingsPage.startInterface(this.page);
});

Then('stop the interface', {timeout: 120 * 1000},async function () {

    await documentSettingsPage.stopInterface(this.page);
});
Then('user verify the date in patient Documents', {timeout: 120 * 1000},async function () {

    await documentSettingsPage.verifyDate(this.page);
});
Then('user selects first document in Document list', {timeout: 120 * 1000},async function () {

    await documentSettingsPage.selectFirstDocument(this.page);
});
Then('user verify {string} image and verify list', {timeout: 120 * 1000},async function (value) {

    await documentSettingsPage.verifyImg(this.page,value);
});
Then('user verify the status {string} in Document Details popUp', {timeout: 120 * 1000},async function (value) {

    await documentSettingsPage.verifyStatus(this.page,value);
});
Then('user clicks on the first option in the form list', {timeout: 120 * 1000},async function () {

    await documentSettingsPage.clickFormOpt(this.page);
});
Then('user clicks on plus icon in Document list', {timeout: 120 * 1000},async function () {

    await patMergePage.clickPlus(this.page);
});
Then('user selects report {string} in result section in event report', {timeout: 120 * 1000},async function (value) {

    await documentSettingsPage.selctReport(this.page,value);
});
Then('user verify the properties in event report', {timeout: 120 * 1000},async function () {

    await documentSettingsPage.verifyProps(this.page);
});
Then('user verify the status of first document in the filtered rows', {timeout: 120 * 1000},async function () {

    await documentSettingsPage.verfyStat(this.page);
});
Then('user verify the status of document in event report section', {timeout: 120 * 1000},async function () {

    await documentSettingsPage.verifyStat(this.page);
});
Then('user clicks on option {string} in select specialty', {timeout: 120 * 1000},async function (value) {

    await informationScreenPage.selectSpecialty(this.page,value);
});
Then('configure document {string} for TST-808 pre-requisites', {timeout: 120 * 1000},async function (propName) {

    await documentSettingsPage.configureDocumentTST808(this.page,propName);
});
Then('configure document {string} for TST-672 pre-requisites', {timeout: 120 * 1000},async function (propName) {

    await documentSettingsPage.configureDocumentTST672(this.page,propName);
});