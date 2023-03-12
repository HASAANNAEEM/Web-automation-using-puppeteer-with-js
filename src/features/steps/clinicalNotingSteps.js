import {Then} from "@cucumber/cucumber";
import navigationPage from "../pages/actions/navigationBar";
import clinicalNotingPage from "../pages/actions/clinicalNotingPage";

Then('take notes from start', {timeout: 1800 * 1000},async function(){
    await clinicalNotingPage.takeNotesFromStart(this.page);
});

Then ('verify patient notes container',{timeout: 180 * 1000}, async function () {
    await clinicalNotingPage.patientNotesContainerExist(this.page);
})
Then('verify {string} filter in Patient Notes',{timeout: 120 * 1000} ,async function (filterVal) {
    await clinicalNotingPage.verifyFilterInPatientNotes(this.page, filterVal);
});
Then('verify Patient Notes Comments {string}',{timeout: 120 * 1000} ,async function (patNotes) {
    await clinicalNotingPage.verifyPatientNotesComments(this.page, patNotes);
});

Then('verify popup Designation list',{timeout: 120 * 1000} ,async function () {
    await clinicalNotingPage.verifyDesignationList(this.page);
});

Then('create Category {string} and if not exist',{timeout: 120 * 1000} ,async function (categoryName) {
    await clinicalNotingPage.createCategoryIfNotExist(this.page, categoryName);
});

Then('Add Event Type to {string} in Default Category {string} if not added',{timeout: 120 * 1000} ,async function (eventType, categoryName) {
    await clinicalNotingPage.addEventTypeToDefault(this.page, categoryName, eventType);
});

Then('verify Item {string} with respect to status {string} is Exist {string}',{timeout: 120 * 1000} ,async function (item, status, isExist) {
    await navigationPage.verifyItemWRTStatusIsExist(this.page, item, status, isExist);
});

Then('check {string} role permissions to {string}', {timeout: 60 * 1000},async function(headerTitle, active_InActive){
    await clinicalNotingPage.makeRolePermissionsActiveInActive(this.page,headerTitle,active_InActive);
});

// Then('check {string} role permissions', {timeout: 60 * 1000},async function(headerTitle){
//     await clinicalNotingPage.selectRolePermissionsActiveInActive(this.page,headerTitle);
// });