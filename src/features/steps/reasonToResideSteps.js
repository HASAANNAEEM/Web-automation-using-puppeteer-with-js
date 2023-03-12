import {Then} from "@cucumber/cucumber";
import ReasonToReside from "../pages/actions/reasonToResidePage";
import utility from "../../utilities/utility";


Then('verify demographic bar is visible in operational note details pop-up', {timeout: 60 * 1000},async function(){
    await ReasonToReside.verifyDemographicsBarInPopUp(this.page);
});

Then('user enters {string} in text-area in action and responsibility', {timeout: 60 * 1000},async function(value){

    value = await utility.getJsonValue(value);
    await this.attach("Value: "+value, 'text/plain');
    await ReasonToReside.enterTextInActionAndResponsibility(this.page,value);
});