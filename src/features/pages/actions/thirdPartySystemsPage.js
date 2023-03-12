import input from "../../../utilities/input";
import settingsLocators from "../../locators/settings.json";
import patientSumaryLocator from "../../locators/patientSumary.json";
import {expect} from "chai";
import clinicalLocators from "../../locators/clinicalRecords.json";
import patientSummaryLocators from "../../locators/patientSumary.json";
import thirdPartyData from "../../../data/thirdPartySystemData.json";
import documentSettingsPage from "./documentSettingsPage";

class ThirdPartySystemsPage {

    resourceWarning=-1;

    async verifySubHeaderWithOptions(page, subHeader, options) {
        console.log("Verify Sub-Header: "+subHeader+" with options: "+options);
        let resourceListXpath = "//div[contains(@class,'sub-header')][contains(.,'"+subHeader+"')]//following-sibling::div/div[1]";
        let resourceListText = await input.getTextOfTheElements(page,resourceListXpath);
        resourceListText=resourceListText.map(item=>item.trim().toLowerCase());
        options = options.split("|");
        options.forEach(item=>{
            expect(resourceListText).to.include(item.toLowerCase());
        })
    }

    async verifySubHeaderWithOptionsList(page, subHeader, options) {
        console.log("Verify Sub-Header: "+subHeader+" with options: "+options);
        let resourceListXpath = "//div[contains(@class,'sub-header')][contains(.,'"+subHeader+"')]//following-sibling::div/div";
        let resourceListText = await input.getTextOfTheElements(page,resourceListXpath);
        resourceListText=resourceListText.map(item=>item.trim().toLowerCase());
        options = options.split("|");
        options.forEach(item=>{
            expect(resourceListText).to.include(item.toLowerCase());
        })
    }

    async verifyBackIcon(page) {
        await page.waitForXPath(settingsLocators.announcementPage.xpath.backIcon);
    }

    async saveResourceWarning(world){
        this.resourceWarning=parseInt(await input.getElementTextUsingXpath(world.page,patientSumaryLocator.thirdPartySystems.yhcr.resourceWarning,"textContent"));
        console.log("Resource Warnings: "+this.resourceWarning)
        await world.attach("Resource Warnings: "+this.resourceWarning, 'text/plain');
    }

    async verifyPopUpResourceWarning(world){
        let texts = await input.getTextOfTheElements(world.page,patientSumaryLocator.thirdPartySystems.yhcr.resourceWarningPopUp);
        let totalWarning=0;
        let textVal = await world.page.$x(patientSumaryLocator.thirdPartySystems.yhcr.resourceWarningPopUpValues);
        if(texts.length!==textVal.length){
            totalWarning+=(textVal.length-texts.length);
        }
        texts.forEach(item=>{
            totalWarning+=parseInt(item);
        });
        console.log("Resource Warnings PopUp: "+totalWarning)
        await world.attach("Resource Warnings PopUp: "+totalWarning, 'text/plain');
        expect(this.resourceWarning).to.be.equal(totalWarning);
    }

    async verifyTableEmptyDescription(page,value) {
        let emptyText = await input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.informationDescriptionText,"textContent");
        if(emptyText!=="Loading"){
            await expect(emptyText).to.includes(value);
            return;
        }
        await page.waitForTimeout(5000);
        await this.verifyTableEmptyDescription(page,value);
    }

    async verifyWarning(page, warningText) {
        let warningElementText = await input.getElementTextUsingXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.warning,"textContent");
        expect(warningElementText).to.be.equal(warningText);
    }

    async verifyWarningWithColor(page, warningText) {
        let warningElementText = await input.getElementTextUsingXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.warning,"textContent");
        expect(warningElementText).to.be.equal(warningText);
        await this.verifyColorProperty(page,patientSummaryLocators.patientSummaryPage.patientAssessments.warning,"red","color")
    }

    async verifyColorProperty(page,elementXpath,color,fontColorType){
        const hexValue = documentSettingsPage.getColorValue(color);
        let rgbValues = documentSettingsPage.hexToRgb(hexValue);
        let colorRGB ="rgb("+rgbValues[0]+", "+rgbValues[1]+", "+rgbValues[2]+")";
        let element = await page.waitForXPath(elementXpath);
        let colorValue = await element.evaluate((node,fontColorType) => {
            return window.getComputedStyle(node).getPropertyValue(fontColorType);
            },fontColorType);
        console.log("Color Value: "+colorValue);
        expect(colorRGB).to.be.equal(colorValue);
    }

    async verifySubHeaderAndAddReport(world, subHeader,subHeaderOptions) {
        console.log("Verify Sub-Header: "+subHeader+" with options: "+subHeaderOptions);
        let resourceListXpath = "//div[@class='sub-header'][contains(.,'"+subHeader+"')]//following-sibling::div";
        let resourceListText = await input.getTextOfTheElements(world.page,resourceListXpath);
        await world.attach("Header: "+subHeader+" Options: "+resourceListText, 'text/plain');
        resourceListText=resourceListText.map(item=>item.trim().toLowerCase());
        subHeaderOptions = subHeaderOptions.split("|");
        for (const item of subHeaderOptions) {
            try {
                expect(resourceListText).to.include(item.toLowerCase());
                await world.attach("Sub-Header Found: "+item, 'text/plain');
            }catch (e) {
            }
        }
    }

    async verifySubHeaderWithDate(page, subHeader, isDateActive) {
        console.log("Verify Subheader: "+subHeader+" with Date isActive: "+isDateActive);
        let dateBannerXpath = "//h1[contains(text(),'"+subHeader+"')]/following-sibling::div[contains(@class,'date-banner')]|//h2[contains(text(),'"+subHeader+"')]/following-sibling::div[contains(@class,'date-banner')]";
        let dateBannerElementText = await input.getElementTextUsingXpath(page,dateBannerXpath,"textContent");
        if(isDateActive.toLowerCase()==="active"){
            dateBannerElementText = dateBannerElementText.split("'").join("");
            let expectedDateString = "For the period "+thirdPartyData.patientIdentifiers.patient1.startDate+" to "+thirdPartyData.patientIdentifiers.patient1.endDate+"";
            expect(dateBannerElementText).to.be.equal(expectedDateString);
        }else if(isDateActive.toLowerCase()==="inactive"){
            let expectedDateString = "Date filter not applied";
            expect(dateBannerElementText).to.be.equal(expectedDateString);
        }else{
            expect("true").to.be.false;
        }
    }

    async verifySubHeaderWithDateAndColor(page, subHeader, isDateActive,color) {
        console.log("Verify Subheader: "+subHeader+" with Date isActive: "+isDateActive);
        let dateBannerXpath = "//h1[contains(text(),'"+subHeader+"')]/following-sibling::div[contains(@class,'date-banner')]|//h2[contains(text(),'"+subHeader+"')]/following-sibling::div[contains(@class,'date-banner')]";
        let dateBannerElementText = await input.getElementTextUsingXpath(page,dateBannerXpath,"textContent");
        if(isDateActive.toLowerCase()==="active"){
            dateBannerElementText = dateBannerElementText.split("'").join("");
            let expectedDateString = "For the period "+thirdPartyData.patientIdentifiers.patient1.startDate+" to "+thirdPartyData.patientIdentifiers.patient1.endDate+"";
            expect(dateBannerElementText).to.be.equal(expectedDateString);
            await this.verifyColorProperty(page,dateBannerXpath,color,"color");
        }else if(isDateActive.toLowerCase()==="inactive"){
            let expectedDateString = "Date filter not applied";
            expect(dateBannerElementText).to.be.equal(expectedDateString);
            await this.verifyColorProperty(page,dateBannerXpath,color,"color");
        }else{
            expect("true").to.be.false;
        }
    }

    async verifySubHeaderWithData(page, subHeader, isDataActive) {
        console.log("Verify Subheader: "+subHeader+" with Data isActive: "+isDataActive);
        if(isDataActive.toLowerCase()==="active"){
            let dataTableXpath = "//h1[contains(text(),'"+subHeader+"')]/following-sibling::div//table|//h2[contains(text(),'"+subHeader+"')]/following-sibling::table";
            await page.waitForXPath(dataTableXpath);
        }else if(isDataActive.toLowerCase()==="inactive"){
            let dataTableXpath = "(//h1[contains(text(),'"+subHeader+"')]/following-sibling::p)[last()]|(//h2[contains(text(),'"+subHeader+"')]/following-sibling::p)[last()]";
            let dataNotPresentElementText = await input.getElementTextUsingXpath(page,dataTableXpath,"textContent");
            let expectedDataNotPresentString = "No '"+subHeader+"' data is recorded for this patient."
            expect(dataNotPresentElementText).to.be.equal(expectedDataNotPresentString);
        }else{
            expect("true").to.be.false;
        }
    }
}

export default new ThirdPartySystemsPage()
