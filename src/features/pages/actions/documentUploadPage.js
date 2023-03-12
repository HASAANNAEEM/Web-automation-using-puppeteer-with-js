import { expect } from "chai";
import click_utility from "../../../utilities/clicking";
import navigationPage from "./navigationBar";
import Input from "../../../utilities/input";
import Input_utility from "../../../utilities/input";
import clicking from "../../../utilities/clicking";
import input from "../../../utilities/input";
import input_utility from "../../../utilities/input";
import documentUploadLocators from "../../locators/documentUpload.json";
import settingsLocators from "../../locators/settings.json";
import settingLocators from "../../locators/settings.json";
import announcementPage from "./announcementPage";
import roleSettingsPage from "./roleSettingsPage";


class documentUploadPage {


    /*
* #########################################################################
*
* ' Method Name: enterNewCategory(Webdriver, string) '
* Description: This Utility method enters a new category '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async enterNewCategory(page, name) {

        await Input_utility.enterTextXpath(page, documentUploadLocators.xpath.newCategoryTextField, name);

    }


    /*
* #########################################################################
*
* ' Method Name: verifyCrossBtnInPopUp(Webdriver) '
* Description: This Utility method verifies that the cross button is present '
* Input parameters: ' Webdriver '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyCrossBtnInPopUp(page) {

        try {
            await page.waitForXPath(documentUploadLocators.xpath.crossInPopUp, {visible: true});
        } catch (e) {
            expect(false).to.be.true;
        }

    }


    /*
* #########################################################################
*
* ' Method Name: verifyActionMenuInPopUp(Webdriver) '
* Description: This Utility method verifies that the action menu is present '
* Input parameters: ' Webdriver '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyActionMenuInPopUp(page) {

        try {
            await page.waitForXPath(documentUploadLocators.xpath.actionMenu, {visible: true});
        } catch (e) {
            expect(false).to.be.true;
        }

    }


    /*
* #########################################################################
*
* ' Method Name: enterCodeInDocument(Webdriver, string) '
* Description: This Utility method enters code in the document '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async enterCodeInDocument(page, code) {

        await Input_utility.enterTextXpath(page,documentUploadLocators.xpath.code,code);

    }


    /*
* #########################################################################
*
* ' Method Name: enterDescriptionInDocument(Webdriver, string) '
* Description: This Utility method enters description in the document '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async enterDescriptionInDocument(page, description) {

        await Input_utility.enterTextXpath(page,documentUploadLocators.xpath.description,description);

    }


    /*
* #########################################################################
*
* ' Method Name: submissionTick(Webdriver) '
* Description: This Utility method clicks on the submission pop up '
* Input parameters: ' Webdriver '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async submissionTick(page) {

        console.log("Click on CheckIcon");
        await page.waitForTimeout(2000);
        await click_utility.clickElementByXpath(page,documentUploadLocators.xpath.tick);
        await page.waitForTimeout(2000);

    }

    /*
* #########################################################################
*
* ' Method Name: changeOldDataToNew(Webdriver, string, string) '
* Description: This Utility method clicks on the submission pop up '
* Input parameters: ' Webdriver, string, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/

    async changeOldDataToNew(page, originalText, updatedText) {
        let list = await Input.getTextOfTheElements(page,settingLocators.roleSettingsPage.xpath.rolesListsName);
        for(let name of list){
            let index = list.indexOf(name)+1;
            if(name===originalText){
                let rolesListNameXpath = "(//div[contains(@class,'data-set-body')]/div/div[1])["+index+"]";
                await click_utility.clickElementByXpath(page,rolesListNameXpath);
                await announcementPage.clickOnActionIcon(page);
                await announcementPage.clickOnActionItem(page,"Edit");
                await roleSettingsPage.inputValueInline(page,"Name",updatedText);
                // await roleSettingsPage.inputValueInline(page,"Display Name",updatedText);
                await announcementPage.clickonCheckIcon(page);
                // await announcementPage.verifyForm(page,"Submission Successful");
                await announcementPage.clickonCheckIcon(page);
                // await announcementPage.clickonPopUpBackIcon(page);
            }
        }
    }

}

export default new documentUploadPage();