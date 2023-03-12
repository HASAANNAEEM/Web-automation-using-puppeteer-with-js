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
import comorbidityPage from "../pages/actions/comorbidityPage";

Then('user verify the updated Clinical declaration values', {timeout: 120 * 1000},async function () {

    await comorbidityPage.verifyClinicDeclarartion(this.page);
});
Then('user selects {string} option from the New Comorbidity popUp list', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user selects {string} option from the popUp', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user clicks on active comorbidity in the list', {timeout: 120 * 1000},async function () {

    await comorbidityPage.clickActiveComorbidity(this.page);
});
Then('user clicks on {string} from Comorbidity Menu popUp', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user selects {string} option from Deactivate Comorbidity popUp', {timeout: 120 * 1000},async function (option) {

    await patMergePage.selectDispName(this.page,option);
});
Then('user verify the comorbidity list', {timeout: 120 * 1000},async function () {

    await comorbidityPage.verifyComorbidity(this.page);
});