import { expect } from "chai";
import settingsLocators from "../../locators/settings.json";
import announcementPage from "./announcementPage";
import navigationPage from "./navigationBar";
import documentSettingsPage from "./documentSettingsPage";
import input_utility from "../../../utilities/input";
import Input_utility from "../../../utilities/input";
import patientSummaryLocators from "../../locators/patientSumary.json";
import systemsLocators from "../../locators/systems.json";
import patMergePage from "./patMergePage";
import informationScreenPage from "./informationScreenPage";

class DiagnosticRequestPage {
    filterXpath;

    async cancelRequests(page, location) {
        let detailItemsXpath =
            "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains("+settingsLocators.utility.xpath.textUpperCase+",'" +
            location.toUpperCase() +
            "')]";

        let elementValues = await input_utility.getTextOfTheElements(
            page,
            detailItemsXpath
        );
        console.log("fetched items : ");
        console.log(elementValues);
        console.log(elementValues.length);

        for(let i=0; i<elementValues.length; i++){
            await documentSettingsPage.clickOnTableFirstRow(page, location);
            await announcementPage.waitForLoading(page);
            await announcementPage.clickOnActionIconWithHeaderName(page,"Request Details");
            await navigationPage.clickOnPopupItem(page,"Cancel");
            await announcementPage.verifyForm(page,"Confirm Cancellation");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.verifyForm(page,"Request Updated");
            await announcementPage.clickonCheckIcon(page);
            // await announcementPage.clickonCrossIcon(page);
        }
    }

    async recentInvestigationsApprove(page) {
        try {
            let elementValue = await Input_utility.getElementTextUsingXpath(page, settingsLocators.announcementPage.xpath.verifyForm, "innerText");
            console.log(elementValue);
            if (elementValue.toLowerCase().includes("recent investigations")) {
                await announcementPage.clickonCheckIcon(page);
            }
        }catch (e) {
            console.log('no visible');
        }
    }

    async clickMagnificationGlassSearch(page, headerName){
        let xpath = "//div[text()='"+headerName+"']/preceding-sibling::div[contains(@class,'navigation-search')]";
        await click_utility.clickElementByXpath(page,xpath);
    }

    async createInvestigation(page, code, name, display, specimen, provTrust, lookbackDays, receptacles, questionsAndGuidance, trusts) {
        await announcementPage.clickOnPlusIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Create Configuration");
        await announcementPage.verifyPopUpLabel(page,"Create Configuration");
        await announcementPage.clickOnActionItem(page,"Investigation");
        await announcementPage.waitForLoadingWithTitle(page,"Create Investigation");
        await announcementPage.verifyPopUpLabel(page,"Create Investigation");
        await documentSettingsPage.inputValueInline(page,"Code",code);
        await documentSettingsPage.inputValueInline(page,"Name",name);
        await documentSettingsPage.inputValueInline(page,"Display",display);
        await announcementPage.clickOnActionItem(page,"Specimen");
        await announcementPage.waitForLoadingWithTitle(page,"Select Specimen");
        await announcementPage.verifyPopUpLabel(page,"Select Specimen");
        await announcementPage.clickOnActionItem(page,specimen);
        await announcementPage.waitForLoadingWithTitle(page,"Create Investigation");
        await announcementPage.verifyPopUpLabel(page,"Create Investigation");
        await announcementPage.clickOnActionItem(page,"Providing Trust");
        await announcementPage.waitForLoadingWithTitle(page,"Select Trust");
        await announcementPage.verifyPopUpLabel(page,"Select Trust");
        await announcementPage.clickOnActionItem(page,provTrust);
        await announcementPage.verifyPopUpLabel(page,"Create Investigation");
        await announcementPage.waitForLoadingWithTitle(page,"Create Investigation");
        await documentSettingsPage.inputValueInline(page,"Lookback Days",lookbackDays);
        await announcementPage.clickOnActionItem(page,"Receptacles");
        await announcementPage.waitForLoadingWithTitle(page,"Select Receptacles");
        await announcementPage.verifyPopUpLabel(page,"Select Receptacles");
        let receptaclesValues = receptacles.split("|");
        for (const item of receptaclesValues) {
            await announcementPage.clickOnActionItem(page,item);
        }
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Currently Selected Receptacles");
        await announcementPage.verifyPopUpLabel(page,"Currently Selected Receptacles");
        await announcementPage.clickonPopUpBackIcon(page);
        await announcementPage.verifyPopUpLabel(page,"Create Investigation");
        await announcementPage.waitForLoadingWithTitle(page,"Create Investigation");
        await announcementPage.clickOnActionItem(page,"Questions and Guidance");
        await announcementPage.waitForLoadingWithTitle(page,"Select Questions & Guidance");
        await announcementPage.verifyPopUpLabel(page,"Select Questions & Guidance");
        let questionsAndGuidanceValues = questionsAndGuidance.split("|");
        for (const item of questionsAndGuidanceValues) {
            await announcementPage.clickOnActionItem(page,item);
        }
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.verifyPopUpLabel(page,"Create Investigation");
        await announcementPage.waitForLoadingWithTitle(page,"Create Investigation");
        await announcementPage.clickOnActionItem(page,"Trusts");
        await announcementPage.verifyPopUpLabel(page,"Select Trusts");
        await announcementPage.waitForLoadingWithTitle(page,"Select Trusts");
        let trustsValues = trusts.split("|");
        for (const item of trustsValues) {
            await announcementPage.clickOnActionItem(page,item);
        }
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.verifyPopUpLabel(page,"Create Investigation");
        await announcementPage.waitForLoadingWithTitle(page,"Create Investigation");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.verifyPopUpLabel(page,"Summary");
        await announcementPage.waitForLoadingWithTitle(page,"Summary");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Submission Status");
        await announcementPage.verifyPopUpLabel(page,"Submission Status");
        try{
            await announcementPage.verifyFormDescriptionTextContent(page,"A profile with both the same code and providing trust already exists.");
            await announcementPage.clickonCheckIcon(page);
        }catch(ex){
            await announcementPage.verifyForm(page,"Success");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.verifyPopUpLabel(page,"Investigation Details");
            await announcementPage.waitForLoadingWithTitle(page,"Investigation Details");
            await announcementPage.clickonCrossIcon(page);
        }
    }

    async verifyReceptacles(page, colorText, receptacleValue) {
        let colorValueXpath = "//div[text()='Investigation Information' or text()='Receptacle Details']/../following-sibling::div//span/following-sibling::div[text()='"+colorText+"']/preceding-sibling::span";
        let colorTextValueXpath = "//div[text()='Investigation Information' or text()='Receptacle Details']/../following-sibling::div//span/following-sibling::div[text()='"+colorText+"']";
        let recptableNumberXpath = "//div[text()='Investigation Information' or text()='Receptacle Details']/../following-sibling::div//span/following-sibling::div[text()='"+colorText+"']/..//following-sibling::div/div";
        // let colorTextValue = await input_utility.getElementTextUsingXpath(page,settingsLocators.requestAdministration.xpath.receptacleColorText,"textContent");
        // let colorValue = await input_utility.getElementTextUsingXpath(page,settingsLocators.requestAdministration.xpath.receptacleColor,"textContent");
        // let receptacleNumber = await input_utility.getElementTextUsingXpath(page,settingsLocators.requestAdministration.xpath.receptacleColorNumber,"textContent");
        let colorTextValue = await input_utility.getElementTextUsingXpath(page,colorTextValueXpath,"textContent");
        let receptacleNumber = await input_utility.getElementTextUsingXpath(page,recptableNumberXpath,"textContent");
        expect(colorTextValue).to.be.equal(colorText);
        expect(receptacleNumber).to.be.equal(receptacleValue);
        let colorValue = await informationScreenPage.getStyleInElementPropertyValue(page,colorValueXpath,"background");
        // let colorValue = await informationScreenPage.getStyleInElementPropertyValue(page,settingsLocators.requestAdministration.xpath.receptacleColor,"background");
        // let element = await page.$x(settingsLocators.requestAdministration.xpath.receptacleColor);
        // let colorValue = await page.evaluate((element) => {
        //     element.focus();
        //     return window.getComputedStyle(element).getPropertyValue("background-color");
        //     },element);
        const hexValue = documentSettingsPage.getColorValue(colorText);
        let rgbValues = documentSettingsPage.hexToRgb(hexValue);
        let colorRGB ="rgb("+rgbValues[0]+", "+rgbValues[1]+", "+rgbValues[2]+")";
        expect(colorValue.trim()).to.be.equal(colorRGB.trim());
    }

    async verifyStatusTextColor(page, statusText, statusColor) {
        console.log("Color: "+statusColor);
        const hexValue = documentSettingsPage.getColorValue(statusColor);
        let rgbValues = documentSettingsPage.hexToRgb(hexValue);
        let colorRGB ="rgb("+rgbValues[0]+", "+rgbValues[1]+", "+rgbValues[2]+")";
        console.log("Color RGB: "+colorRGB);
        let elementsArray = await page.$x("//div[contains(@class,'data-set-body')]//div[contains(@class,'data-set-row')]//div[6][text()='"+statusText+"']");
        console.log("Getting Computed Style");
        if(elementsArray.length===0) return ;
        for (const item of elementsArray) {
            let colorValue = await page.evaluate((element) => {
                element.focus();
                return window.getComputedStyle(element).getPropertyValue("color");
            },item);
            expect(colorValue).to.be.equal(colorRGB);
        }
    }

    async filterTextItem(page, filterItem, filterValue) {
        await patMergePage.selectOption(page, filterItem)
        await Input_utility.enterTextXpath(page,settingsLocators.requestAdministration.xpath.filterXpath,filterValue);
        await announcementPage.clickonCheckIcon(page);
    }
}
export default new DiagnosticRequestPage();