import {Given,Then} from "@cucumber/cucumber";
import documentUploadPage from "../pages/actions/documentUploadPage";
import utility from "../../utilities/utility";
import roleSettingsPage from "../pages/actions/roleSettingsPage";

Then('user enters new category {string}', {timeout: 60 * 1000},async function(name) {

    name = await utility.getJsonValue(name);
    await this.attach("elementName Value: "+name, 'text/plain');
    await documentUploadPage.enterNewCategory(this.page,name);
});

Then('verify cross exists on pop-up', {timeout: 60 * 1000},async function() {

    await documentUploadPage.verifyCrossBtnInPopUp(this.page);
});

Then('verify action menu exists on pop-up', {timeout: 60 * 1000},async function() {

    await documentUploadPage.verifyActionMenuInPopUp(this.page);
});

Then('user enters code {string}', {timeout: 60 * 1000},async function(code) {

    code = await utility.getJsonValue(code);
    await this.attach("elementName Value: "+code, 'text/plain');
    await documentUploadPage.enterCodeInDocument(this.page,code);
});

Then('user enters description {string}', {timeout: 60 * 1000},async function(description) {

    description = await utility.getJsonValue(description);
    await this.attach("elementName Value: "+description, 'text/plain');
    await documentUploadPage.enterDescriptionInDocument(this.page,description);
});

Then('click on submission tick', {timeout: 60 * 1000},async function() {

    await documentUploadPage.submissionTick(this.page);
});

Then('change old data {string} to new {string}', {timeout: 360 * 1000},async function (orignalText,updatedText) {

    await documentUploadPage.changeOldDataToNew(this.page,orignalText,updatedText);
});