import announcementPage from "./announcementPage";
import documentSettingsPage from "./documentSettingsPage";
import clinicalRecordsPage from "./clinicalRecordsPage";
import wardScreenLocators from "../../locators/systems.json"
import input from "../../../utilities/input";
import navigationBar from "./navigationBar";
import Input from "../../../utilities/input";
import settingsLocators from "../../locators/settings.json";
import profilePage from "./profilePage";
import {expect} from "chai";

class WardScreenPage {

    async dischargePatient(page, bedNumber,dischargeMethod,dischargeLocation) {
        await navigationBar.clickOnDiv(page,bedNumber);
        await announcementPage.waitForLoading(page);
        //await announcementPage.waitForLoadingWithTitle(page,"Slot Details");
        await announcementPage.verifyPopUpLabel(page,"Slot Details");
        await documentSettingsPage.verifyDetail(page,"AREA / SLOT",bedNumber);

        let detailItemText = await Input.getElementTextUsingXpath(
            page,
            settingsLocators.documentSettings.xpath.popupStatusXpath,
            "innerText"
        );

        if (detailItemText === "Occupied") {
            await announcementPage.clickOnPopUpActionIcon(page);
            await announcementPage.clickOnActionItem(page, "residency management");
            //await announcementPage.waitForLoadingWithTitle(page, "Residency Management");
            await announcementPage.verifyPopUpLabel(page, "Residency Management");
            await announcementPage.clickOnActionItem(page, "discharge");
            //await announcementPage.waitForLoadingWithTitle(page, "Discharge Options");
            await announcementPage.verifyPopUpLabel(page, "Discharge Options");
            await announcementPage.clickOnActionItem(page, "Destination");
            await announcementPage.clickOnActionItem(page, dischargeLocation);
            await announcementPage.clickOnActionItem(page, "Method");
            await announcementPage.clickOnActionItem(page, dischargeMethod);
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.clickonCheckIcon(page);
            // await announcementPage.verifyForm(page, "Discharge Successful");
            // await announcementPage.verifyFormDescription(page, "The patient has been discharged successfully.");
            await announcementPage.clickonCheckIcon(page);
            return;
        }
        await announcementPage.clickonPopUpBackIcon(page);
    }

    async addPatient(page, nhsNumber, bedNumber) {
        try {
            await announcementPage.waitForLoading(page);
            let elementText = await input.getElementTextUsingXpath(page, settingsLocators.announcementPage.xpath.popUpHeader, "innerText");
            if (elementText === "Overdue Assessments & Observations") {
                await announcementPage.clickonCheckIcon(page);
            }
        }catch (e) {
            console.log("no popup");
        }
        await navigationBar.clickOnDiv(page,bedNumber);
        // //await announcementPage.waitForLoadingWithTitle(page,"Slot Details");
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Slot Details");
        await documentSettingsPage.verifyDetail(page,"AREA / SLOT",bedNumber);
        let status = await input.getElementTextUsingXpath(page,wardScreenLocators.informationScreen.ward.status,"textContent");
        console.log("Status: "+status);
        if(status==="Occupied"){
            let existingNhsNumber = await input.getElementTextUsingXpath(page,wardScreenLocators.informationScreen.ward.nhsNumber,"textContent");
            existingNhsNumber = existingNhsNumber.split(" ").join("");
            await console.log("Exist: "+existingNhsNumber);
            await console.log("Expected: "+nhsNumber);
            if(existingNhsNumber.trim()===nhsNumber)
            {
                await announcementPage.clickonPopUpBackIcon(page);
                return;
            }
            else{
                await announcementPage.clickOnPopUpActionIcon(page);
                await announcementPage.clickOnActionItem(page,"residency management");
                await announcementPage.clickOnActionItem(page,"discharge");
                await announcementPage.clickOnActionItem(page,"Destination");
                await announcementPage.clickOnActionItem(page,"Usual Place Of Residence");
                await announcementPage.clickOnActionItem(page,"Method");
                await announcementPage.clickOnActionItem(page,"On Clinical Advice Or With Consent");
                await announcementPage.clickonCheckIcon(page);
                await announcementPage.clickonCheckIcon(page);
                // await announcementPage.verifyForm(page,"Discharge Successful");
                // await announcementPage.verifyFormDescription(page,"The patient has been discharged successfully.");
                await announcementPage.clickonCheckIcon(page);
            }
        }
        await announcementPage.clickOnActionItem(page,"populate");
        //await announcementPage.waitForLoadingWithTitle(page,"Populate Slot");
        await announcementPage.verifyPopUpLabel(page,"Populate Slot");
        await announcementPage.clickOnActionItem(page,"patient identifier");
        //await announcementPage.waitForLoadingWithTitle(page,"Patient Identifier Search");
        await announcementPage.verifyPopUpLabel(page,"Patient Identifier Search");
        await clinicalRecordsPage.enterPatientIndentifierSearch(page, nhsNumber);
        await announcementPage.clickonCheckIcon(page);
        //await announcementPage.waitForLoadingWithTitle(page,"Confirmation Required");
        await announcementPage.verifyPopUpLabel(page,"Confirmation Required");
        await announcementPage.clickOnActionItem(page,"Continue");
        try {
            //await announcementPage.waitForLoadingWithTitle(page, "Populate Summary");
            await announcementPage.verifyPopUpLabel(page, "Populate Summary");
            await announcementPage.clickonCheckIcon(page);
        }catch (e) {
            console.log("Another PopUp Existed")
            //await announcementPage.waitForLoadingWithTitle(page, "Populate Information");
            await announcementPage.verifyPopUpLabel(page, "Populate Information");
            await announcementPage.clickonCheckIcon(page);
            //await announcementPage.waitForLoadingWithTitle(page, "Populate Summary");
            await announcementPage.verifyPopUpLabel(page, "Populate Summary");
            await announcementPage.clickonCheckIcon(page);
        }
        //await announcementPage.waitForLoadingWithTitle(page, "Population Status");
        await announcementPage.verifyPopUpLabel(page, "Population Status");
        await announcementPage.verifyForm(page,"Population Successful");
        await announcementPage.verifyFormDescription(page,"The slot has been populated successfully.");
        await announcementPage.clickonCheckIcon(page);
        await documentSettingsPage.verifyDetail(page,"STATUS","Occupied");
        await announcementPage.clickonPopUpBackIcon(page);
    }

    async addPatientInHoldingArea(page, patientIdentifierSearch,reason,bed) {
        await announcementPage.clickOnActionIcon(page);
        await profilePage.clickProfileMenu(page,"Holding Area");
        let listsXpath = "//div[contains(@class,'sub-header')][contains(.,'"+reason+"')]//following-sibling::div/div[1]";
        let patientList = await input.getTextOfTheElements(page,listsXpath);
        for (const item of patientList) {
            let val =item.split(".");
            if(val.includes(patientIdentifierSearch)){
                await announcementPage.clickonCrossIcon(page);
            }
        }
            await announcementPage.clickOnPopUpPlusIcon(page);
            //await announcementPage.waitForLoadingWithTitle(page, "Population Holding Area");
            await announcementPage.verifyPopUpLabel(page, "Populate Holding Area");
            await announcementPage.clickOnActionItem(page, "Patient Identifier");
            //await announcementPage.waitForLoadingWithTitle(page, "Patient Identifier Search");
            await announcementPage.verifyPopUpLabel(page, "Patient Identifier Search");
            await clinicalRecordsPage.enterPatientIndentifierSearch(page, patientIdentifierSearch);
            await announcementPage.clickonCheckIcon(page);
            //await announcementPage.waitForLoadingWithTitle(page,"Confirmation Required");
            await announcementPage.verifyPopUpLabel(page, "Confirmation Required");
            await announcementPage.clickOnActionItem(page, "Continue");
            await announcementPage.clickonCheckIcon(page);
            try {
                //await announcementPage.waitForLoadingWithTitle(page,"Populate Information");
                await announcementPage.verifyPopUpLabel(page, "Populate Information");
                await announcementPage.verifyForm(page, "Existing Resident");
                await announcementPage.clickonCheckIcon(page);
            } catch (e) {
                //await announcementPage.waitForLoadingWithTitle(page,"Holding Area Reason");

            }
        await announcementPage.verifyPopUpLabel(page, "Holding Area Reason");
        await announcementPage.clickOnActionItem(page, reason);
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Select An Intended Slot");
        await announcementPage.clickOnActionItem(page,bed);
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Populate Summary");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Population Status");
        await announcementPage.verifyForm(page, "Population Successful");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Holding Area");
        await announcementPage.clickonCrossIcon(page);
    }

}

export default new WardScreenPage()
