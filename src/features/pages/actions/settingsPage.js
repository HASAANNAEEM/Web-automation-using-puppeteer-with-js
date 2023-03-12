import click_utility from "../../../utilities/clicking";
import settingsLocators from "../../locators/settings.json";
import {expect} from "chai";

class SettingsPage {

    async clickOnIcon(page,labelName){
        let navIconXpath = "//div[contains(@id,'"+labelName.toLowerCase()+"')]";
        await click_utility.clickElementByXpath(page,navIconXpath);
    }

    async verifyPlusButtonExists(page) {
        let elementArray = await page.$x(settingsLocators.announcementPage.xpath.plusIcon);
        if(elementArray.length===0){
            expect(true).to.be.false;
        }
        else  expect(true).to.be.true;
    }

    async verifyBackButtonExists(page) {
        let elementArray = await page.$x(settingsLocators.announcementPage.xpath.backIcon);
        if(elementArray.length===0){
            expect(true).to.be.false;
        }
        else  expect(true).to.be.true;
    }
}

export default new SettingsPage()
