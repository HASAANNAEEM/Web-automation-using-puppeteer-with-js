import settingsLocators from "../../locators/settings.json"
import {expect} from "chai";
import input_utility from "../../../utilities/input"
import click_utility from "../../../utilities/clicking"
import announcementPage from "./announcementPage";

class organisationSettingsPage {

    async verifyTableHasMultipleRows(page) {
        await page.waitForTimeout(7000);
        let items = await page.$x(settingsLocators.organisationSettingsPage.xpath.tableRows);
        expect(items.length).to.be.above(1);
    }


    async verifyTableHasMultipleRowsInPopup(page) {
        await page.waitForTimeout(7000);
        let items = await page.$x(settingsLocators.organisationSettingsPage.xpath.tableRowsPopup);
        expect(items.length).to.be.above(1);
    }

    async verifyCliniciansInSite(page, label, value) {
        let clinicianValue =await this.getNumberOfLists(page,label);
        expect(clinicianValue).to.be.equal(value);
    }

    async clickCrossIcon(page, label) {
        let crossXpath = "//div[contains(@id,'appended-element')]//div[contains(text(),'"+label+"')]/ancestor::div/div[contains(@class,'selection-delete')]";
        await click_utility.clickElementByXpath(page,crossXpath);
    }

    async verifyReference(page, label, value) {
        let xpath = "//div[@id='appended-elements']//div[contains(text(),'"+label+"')]/span"
        let xpathValue = await input_utility.getElementTextUsingXpath(page,xpath,"innerText");
        expect(xpathValue.trim()).to.be.equal(value);
    }

    async noClinicianPresent(page) {
        let clinicians=await this.getNumberOfLists(page,"Clinicians");
        if(clinicians===0) return;
        await announcementPage.clickOnActionIcon(page);
        await announcementPage.clickOnActionItem(page,"Edit");
        await announcementPage.clickOnActionItem(page,"Clinicians");
        let elements = await page.$x(settingsLocators.organisationSettingsPage.xpath.allClinicians);
        for(let element in elements){
            await click_utility.clickElementByXpath(page,settingsLocators.organisationSettingsPage.xpath.allClinicians);
            await page.waitForTimeout(3000);
        }
        await announcementPage.clickonPopUpBackIcon(page);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickonCheckIcon(page);

    }

    async getNumberOfLists(page,label){
        let clinicianValueXpath = "//div[contains(@id,'appended-elements')]//div[contains(text(),'"+label+"')]/ancestor::div[contains(@class,'container-column')]/following-sibling::div/div[1]|//div[contains(@id,'appended-elements')]//div[contains(text(),'"+label+"')]/ancestor::div[contains(@class,'container-column') or contains(@class,'navigation-text')]/following-sibling::div/span";
        return await input_utility.getElementTextUsingXpath(page, clinicianValueXpath, "innerText");
    }
}

export default new organisationSettingsPage()
