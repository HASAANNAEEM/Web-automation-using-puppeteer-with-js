import clicking from "../../../utilities/clicking";
import announcementPage from "./announcementPage";
import patientRecordsPage from "./patientRecordsPage";
import Input from "../../../utilities/input";
import settingsLocators from "../../locators/settings.json";
import {expect} from "chai";
import Input_utility from "../../../utilities/input";
import documentSettingsPage from "./documentSettingsPage";
import assesmentsPage from "./assesmeentsPage";
import patMergePage from "./patMergePage";
import click_utility from "../../../utilities/clicking";
import clinicalRecordsPage from "./clinicalRecordsPage";
import patientInfo from "../../../data/patientData.json";

class PatientRequestsPage {

    async clickOnRemoveIcon(page, itemName) {
        let removeIconXpath = "//div[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+itemName.toUpperCase()+"']/../following-sibling::div[contains(@class,'selection-remove')]";
        await clicking.clickElementByXpath(page,removeIconXpath);
    }

    async createRadiologyRequest(page, location, clinician, modality, investigation, examinationArea, diagnosis, details, methodOfArrival) {
        await announcementPage.clickOnPlusIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Create Diagnostic Request");
        await announcementPage.verifyPopUpLabel(page,"Create Diagnostic Request");
        await announcementPage.clickOnActionItem(page,"Radiology & Medical Physics");
        await announcementPage.waitForLoadingWithTitle(page,"Select Location");
        await announcementPage.verifyPopUpLabel(page,"Select Location");
        await announcementPage.clickOnActionItem(page,location);
        await announcementPage.waitForLoadingWithTitle(page,"Select Clinician");
        await announcementPage.verifyPopUpLabel(page,"Select Clinician");
        await announcementPage.clickOnActionItem(page,clinician);
        await announcementPage.waitForLoadingWithTitle(page,"Create Radiology Request");
        await announcementPage.verifyPopUpLabel(page,"Create Radiology Request");
        await announcementPage.clickOnActionItem(page,"Modality");
        await announcementPage.waitForLoadingWithTitle(page,"Select Modality");
        await announcementPage.verifyPopUpLabel(page,"Select Modality");
        await announcementPage.clickOnActionItem(page,modality);
        await announcementPage.clickOnActionItem(page,"Investigations");
        await announcementPage.waitForLoadingWithTitle(page,"Select Examination Type");
        await announcementPage.verifyPopUpLabel(page,"Select Examination Type");
        await announcementPage.clickOnActionItem(page,investigation);
        await announcementPage.waitForLoadingWithTitle(page,"Select Examination Area");
        await announcementPage.verifyPopUpLabel(page,"Select Examination Area");
        let examinations = examinationArea.split("|");
        for (const item of examinations) {
            await announcementPage.clickOnActionItem(page,item);
        }
        await announcementPage.clickonCheckIcon(page);
        await documentSettingsPage.inputValueInline(page,"Provisional Diagnosis",diagnosis);
        await documentSettingsPage.inputValueInline(page,"Clinical Details",details);
        await announcementPage.clickOnActionItem(page,"Method of Arrival");
        await announcementPage.waitForLoadingWithTitle(page,"Select Arrival Method");
        await announcementPage.verifyPopUpLabel(page,"Select Arrival Method");
        await announcementPage.clickOnActionItem(page,methodOfArrival);
        await announcementPage.clickonCheckIcon(page);
        await assesmentsPage.setInlinePolar(page,"Do you know if the patient has any known communicable infection risks?","Yes");
        await this.clickQuestion(page,"Please select all items in the list that apply to the patient.");
        await announcementPage.waitForLoadingWithTitle(page,"Select A Value");
        await announcementPage.verifyPopUpLabel(page,"Select A Value");
        await announcementPage.clickOnActionItem(page,"Deaf");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Questions");
        await announcementPage.verifyPopUpLabel(page,"Questions");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Radiology Request Summary");
        await announcementPage.verifyPopUpLabel(page,"Radiology Request Summary");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.verifyForm(page,"Success");
        await announcementPage.clickonCheckIcon(page);
    }

    async clickLatestNHSCheckbox(page, nhsNumber,isActive) {
        let checkBoxXpath = "(//div[contains(@class,'body')]//div[text()='"+nhsNumber+"']/following-sibling::div[contains(@class,'row-selection-icon')])[last()]";
        let element = await page.waitForXPath(checkBoxXpath,{visible:true,timeout:30000});
        let className = await (await element.getProperty('className')).jsonValue();
        console.log(className);
        if(isActive.toUpperCase()==="ACTIVE"){
            if(className.includes("inactive")){
                await clicking.clickElementByXpath(page,checkBoxXpath);
            }
            else{
                console.log("Already Active");
            }
        }else{
            if(className.includes("active")){
                await clicking.clickElementByXpath(page,checkBoxXpath);
            }else{
                console.log("Already InActive");
            }
        }
    }

    async verifyCurrentDate(page, headerName) {
        let headerValues = await Input.getTextOfTheElements(
            page,
            settingsLocators.patientRequest.xpath.headers
        );
        for (let name of headerValues) {
            let index = headerValues.indexOf(name) + 1;
            if (name === headerName) {
                let headerValueXpath =
                    "//div[contains(@class,'table-body')]//div[contains(@class,'table-cell')][" +
                    index +
                    "]|//div[contains(@class,'data-set-body')]//div[contains(@class,'data-set-cell')][" +
                    index +
                    "]";
                let headerValue = await Input.getTextOfTheElements(
                    page,
                    headerValueXpath
                );
                for (const item of headerValue) {
                    if(headerValue.length>0){
                        let currentDate = await patientRecordsPage.customDate("dd-MMM-yyyy");
                        expect(currentDate).to.be.equal(item);
                    }
                    else
                        expect(false).to.be.true;
                }
            }
        }
    }

    async clickQuestion(page, headerName) {
        let questionXpath = "//div[contains(@id,'appended-elements')]//div[contains(@class,'question') and contains(text(),'"+headerName+"')]";
        await clicking.clickElementByXpath(page,questionXpath);
    }

    async verifyLastRequest(page, headerName, value) {
        let elementXpath = "(//div[text()='"+headerName+"']/ancestor::div/following-sibling::div[contains(@class,'container-column') or contains(@class,'navigation-value')])[last()]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,elementXpath,"textContent");
        await expect(elementValue.trim()).to.be.equal(value.trim());
    }

    async clickMinusIcon(page, headerName) {
        let questionXpath = "//div[contains(@id,'appended-elements')]//div[text()='"+headerName+"']/../following-sibling::div[contains(@class,'remove')]";
        await clicking.clickElementByXpath(page,questionXpath);
    }

    async clickMeatbalIcon(page) {
        await clicking.clickElementByXpath(page,settingsLocators.patientRequest.xpath.latestMeatballs);
    }

    async checkInvestigationALreadyExistsPopUp(page) {
        try {
            await page.waitForTimeout(5000);
            await announcementPage.verifyFormDescription(page,"A profile with both the same code and providing trust already exists.");
            console.log("Exists")
            await announcementPage.clickonCheckIcon(page);
            return;
            // await patMergePage.clickTick(page);
            // await page.waitForTimeout(5000);
        }
        catch (e) {
            console.log(e)
        }
        await announcementPage.clickonCheckIcon(page);
        await page.waitForTimeout(5000);
        await announcementPage.clickonCrossIcon(page);
    }

    async checkRecentInvestigationALreadyExistsPopUp(page) {
        try {
            await page.waitForTimeout(5000);
            await announcementPage.verifyFormDescription(page,"The following investigations selected have been carried out within the time period specified. Please choose if you would still like to request this investigation, and then click the tick to confirm.");
            console.log("Exists")
            await announcementPage.clickonCheckIcon(page);
            // await patMergePage.clickTick(page);
            // await page.waitForTimeout(5000);
        }
        catch (e) {
            console.log(e)
        }
        // await announcementPage.clickonCheckIcon(page);
        // await page.waitForTimeout(5000);
        // await announcementPage.clickonCrossIcon(page);
    }

    async verifySortingClass(page, headername, expectedSortingClass) {
        await page.waitForTimeout(3000);
        let xpath = "//div[contains(@class,'data-set-header')]//div[contains(text(),'"+headername+"') or contains(@class,'"+headername+"')]|//div[contains(text(),'"+headername+"') or contains(@class,'"+headername+"')]";
        let element = (await page.$x(xpath))[0];
        const className = await(await element.getProperty('className')).jsonValue();
        expect(className.toUpperCase()).to.includes(expectedSortingClass.toUpperCase());
    }

    async clickOnColumnHeader(page,labelName){
        let divXpath = "//div[contains(text(),'"+labelName+"')]";
        await click_utility.clickElementByXpath(page,divXpath);
    }

    async createBloodScienceRequest(page, location, clinician, investigations, clinicalDetails, patientComments, priority, requiredDate,providingOrganisation,fastingSample,infectionRisk,privatePatient,requestCopy) {
        await announcementPage.clickOnPlusIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Create Diagnostic Request");
        await announcementPage.verifyPopUpLabel(page,"Create Diagnostic Request");
        await announcementPage.clickOnActionItem(page,"Blood Science");
        await announcementPage.waitForLoadingWithTitle(page,"Select Location");
        await announcementPage.verifyPopUpLabel(page,"Select Location");
        await announcementPage.clickOnActionItem(page,location);
        await announcementPage.waitForLoadingWithTitle(page,"Select Clinician");
        await announcementPage.verifyPopUpLabel(page,"Select Clinician");
        await announcementPage.clickOnActionItem(page,clinician);
        await announcementPage.waitForLoadingWithTitle(page,"Create Radiology Request");
        await announcementPage.verifyPopUpLabel(page,"Create Radiology Request");
        await announcementPage.clickOnActionItem(page,"Investigation");
        await announcementPage.waitForLoadingWithTitle(page,"Investigation Type Select");
        await announcementPage.verifyPopUpLabel(page,"Investigation Type Select");
        await announcementPage.clickOnActionItem(page,"All Tests");
        await announcementPage.waitForLoadingWithTitle(page,"Select Investigations");
        await announcementPage.verifyPopUpLabel(page,"Select Investigations");
        let investigationValues = investigations.split("|");
        for (const item of investigationValues) {
            await announcementPage.clickOnActionItem(page,item);
        }
        await announcementPage.clickonCheckIcon(page);
        await documentSettingsPage.inputValueInline(page,"Clinical Details",clinicalDetails);
        await documentSettingsPage.inputValueInline(page,"Patient Comments",patientComments);
        await announcementPage.clickOnActionItem(page,"Priority");
        await announcementPage.waitForLoadingWithTitle(page,"Select Request Priority");
        await announcementPage.verifyPopUpLabel(page,"Select Request Priority");
        await announcementPage.clickOnActionItem(page,priority);
        let dates = requiredDate.split("|");
        await clinicalRecordsPage.selectDate(page,dates[0],dates[1],dates[2]);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickOnActionItem(page,"Providing Organisation");
        await announcementPage.waitForLoadingWithTitle(page,"Select Provider");
        await announcementPage.verifyPopUpLabel(page,"Select Provider");
        await announcementPage.clickOnActionItem(page,providingOrganisation);
        await announcementPage.clickToggleButtonToValue(page,"Fasting Sample",fastingSample);
        await announcementPage.clickToggleButtonToValue(page,"Infection Risk",infectionRisk);
        await announcementPage.clickToggleButtonToValue(page,"Private Patient",privatePatient);
        await announcementPage.clickOnActionItem(page,"Request Copy");
        await announcementPage.waitForLoadingWithTitle(page,"Select Trust");
        await announcementPage.verifyPopUpLabel(page,"Select Trust");
        let requestCopyValues = requestCopy.split("|");
        await announcementPage.clickOnActionItem(page,requestCopyValues[0]);
        await announcementPage.waitForLoadingWithTitle(page,"Select Organisation");
        await announcementPage.verifyPopUpLabel(page,"Select Organisation");
        await announcementPage.clickOnActionItem(page,requestCopyValues[1]);
        await announcementPage.waitForLoadingWithTitle(page,"Select Clinician");
        await announcementPage.verifyPopUpLabel(page,"Select Clinician");
        await announcementPage.clickOnActionItem(page,requestCopyValues[2]);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.verifyForm(page,"Success");
        await announcementPage.clickonCheckIcon(page);
    }

    async verifyPrint(page,option) {
        let print = "//div[contains(text(),'"+option+"')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,print,"textContent");
        expect(elementValue).to.be.equal(option);
    }

    async enterOrderno(page, option) {

        let orderNo = "//div[contains(text(),'"+option+"') and @class = 'container-item container-text label']";
        await clicking.clickElementByXpath(page,orderNo);
        await Input_utility.enterTextXpath(page,orderNo,"1234");
    }
}

export default new PatientRequestsPage()
