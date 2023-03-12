import {Then} from "@cucumber/cucumber";
import navigationPage from "../pages/actions/navigationBar";
import clinicalNotingPage from "../pages/actions/clinicalNotingPage";
import clinicalRecordPage from "../pages/actions/clinicalRecordPage";

Then('user clicks on the action icon of Patient Summary', {timeout: 1800 * 1000},async function(){
    await clinicalRecordPage.ClickOnPlaceHolderAction(this.page);
});