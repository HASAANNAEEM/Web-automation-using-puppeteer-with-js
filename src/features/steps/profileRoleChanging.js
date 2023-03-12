import { Then } from "@cucumber/cucumber";
import utility from "../../utilities/utility";
import profilePage from "../pages/actions/profilePage";


Then('verify populating holding area option {string} is disabled', {timeout: 60 * 1000},async function(value) {

    await profilePage.verifyHoldingAreaOptions(this.page,value);
});