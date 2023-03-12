import { expect } from "chai";
import click_utility from "../../../utilities/clicking";
import announcementPage from "./announcementPage";
import navigationPage from "./navigationBar";
import Input from "../../../utilities/input";
import documentSettingsPage from "./documentSettingsPage";
import accountSettingsPage from "./accountSettingsPage";
import Input_utility from "../../../utilities/input";
import ReasonToReside from "../../locators/reasonToReside.json";
import clicking from "../../../utilities/clicking";
import input from "../../../utilities/input";
import input_utility from "../../../utilities/input";
import settingsLocators from "../../locators/settings.json";

class reasonToReside {


    /*
* #########################################################################
*
* ' Method Name: verifyDemographicsBarInPopUp(Webdriver) '
* Description: This Utility method verifies the existance of the demographics bar in the pop up '
* Input parameters: ' Webdriver '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyDemographicsBarInPopUp(page) {

        try
        {
            await page.waitForXPath(ReasonToReside.xpath.DemographicBarPopUP, { visible: true });
        }
        catch (e)
        {
            expect(false).to.be.true;
        }

    }


    /*
* #########################################################################
*
* ' Method Name: enterTextInActionAndResponsibility(Webdriver, string) '
* Description: This Utility method verifies the existance of the demographics bar in the pop up '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async enterTextInActionAndResponsibility(page,text){
        await Input_utility.enterTextXpath(page,ReasonToReside.xpath.textField,text);
    }

}
export default new reasonToReside();