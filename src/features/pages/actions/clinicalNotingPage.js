
import { expect } from "chai";
import announcementPage from "./announcementPage";
import navigationPage from "./navigationBar";
import patientSumaryLocator from "../../locators/patientSumary.json"
import input from "../../../utilities/input";
import clinicalNotingData from "../../../data/clinicalNotingData.json"
import Input_utility from "../../../utilities/input";
import Input from "../../../utilities/input";
import documentSettingsPage from "./documentSettingsPage";
import clicking from "../../../utilities/clicking";

class ClinicalNotingPage {

    async takeNotesFromStart(page) {

        let xpathValue = await input.getElementTextUsingXpath(
            page,
            patientSumaryLocator.clinicalNoting.activeProgress,
            "innerText"
        );

        for(let i=1; i<xpathValue; i++){
            await announcementPage.clickonPopUpBackIcon(page);
        }
    }

    async patientNotesContainerExist(page){
        try {
            await announcementPage.waitForLoading(page);
            await page.waitForXPath(
                patientSumaryLocator.clinicalNoting.patientNotesContainer,
                { visible: true }
            );
            expect(true).to.be.true;
        } catch (e) {
            expect(false).to.be.true;
        }
    }

    async verifyFilterInPatientNotes(page, filterVal){
            let lozengeXpath = "//div[contains(@class,'lozenge-active')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+filterVal.toUpperCase()+"']";
        let values = await input.getTextOfTheElements(
            page,
            lozengeXpath
        );
        expect(values.length).to.be.greaterThan(0);
    }

    async verifyPatientNotesComments(page, patNotes){
        let notesXpath = "(//*[@id='notePartial']//span[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+patNotes.toUpperCase()+"'])[1]";
        let values = await input.getElementTextUsingXpath(
            page,
            notesXpath,
            "innerText"
        );
        expect(values.toUpperCase()).to.be.equal(patNotes.toUpperCase());
    }

    async verifyDesignationList(page){
        console.log(clinicalNotingData.DesignationList);
        let elementValues = await Input_utility.getTextOfTheElements(page,patientSumaryLocator.clinicalNoting.designationListXpath);
        console.log(elementValues);
        expect(clinicalNotingData.DesignationList).to.eql(elementValues);
    }

    async createCategoryIfNotExist(page, categoryName){
        let detailItemsXpath =
            "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
            categoryName +
            "')]";

        let elementValues = await Input.getTextOfTheElements(
            page,
            detailItemsXpath
        );
        console.log("fetched items : ");
        console.log(elementValues);
        console.log(elementValues.length);

        if (elementValues.length < 1) {
            await announcementPage.clickOnPlusIcon(page);
            await documentSettingsPage.inputValueInline(page, "Name", categoryName);
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyForm(page, "Success");
            await announcementPage.clickonCheckIcon(page);
        }
    }

    async addEventTypeToDefault(page, categoryName, eventType){
        await documentSettingsPage.clickOnTableFirstRow(page, categoryName);
        await announcementPage.waitForLoading(page);
        await navigationPage.clickOnPopupItem(page, "Category Details");
        await navigationPage.clickOnPopupItem(page, "Sub-Categories");
        await navigationPage.clickOnPopupItem(page, "Default");
        await announcementPage.waitForLoading(page);

        let eventXpath = "//*[@id='appended-elements']//div[contains(text(),'"+eventType+"')]/following-sibling::div|//span[contains(text(),'"+eventType+"')]/../following-sibling::div/div";
        let eventValue = await Input.getTextOfTheElements(
            page,
            eventXpath
        );
        if(eventValue==="Select a Value"){
            await navigationPage.clickOnPopupItem(page, "Default");
            await announcementPage.waitForLoading(page);
            await navigationPage.clickOnPopupItem(page, eventType);
            await announcementPage.waitForLoading(page);
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.verifyForm(page, "Success");
            await announcementPage.clickonCheckIcon(page);
        }
        await announcementPage.clickonPopUpBackIcon(page);
        await announcementPage.clickonPopUpBackIcon(page);
        await announcementPage.clickonPopUpBackIcon(page);
    }

    async makeRolePermissionsActiveInActive(page, headerTitle, isActive) {
        console.log("Make Specific Role Permission: "+headerTitle+" to status: "+isActive);
        let roleHeaderXpath = "//div[@id='appended-elements']//div[contains(text(),'" + headerTitle + "')]/../..//div[2]";
        let element = await page.waitForXPath(roleHeaderXpath, {visible: true, timeout: 30000});
        let className = await (await element.getProperty('className')).jsonValue();
        console.log(className);
        if(isActive.toUpperCase()==="ACTIVE"){
            if(className.includes("left-click-inactive") || className.includes("selection-square-inactive")){
                await clicking.clickElementByXpath(page,roleHeaderXpath);
            }
            else if(className.includes("left-click-partial")){
                await clicking.clickElementByXpath(page,roleHeaderXpath);
                await clicking.clickElementByXpath(page,roleHeaderXpath);
            }else{
                console.log("Already Active");
            }
        }else{
            if(className.includes("left-click-active") || className.includes("selection-square-active")){
                await clicking.clickElementByXpath(page,roleHeaderXpath);
            }else{
                console.log("Already InActive");
            }
        }
    }

    async makeReportPermissionsActiveInActive(page, headerTitle, isActive) {
        console.log("Make Specific Configure Report Permission: "+headerTitle+" to status: "+isActive);
        let roleHeaderXpath = "//div[@id='appended-elements']//div[contains(text(),'" + headerTitle + "')]/../div[1]";
        let element = await page.waitForXPath(roleHeaderXpath, {visible: true, timeout: 30000});
        let className = await (await element.getProperty('className')).jsonValue();
        console.log(className);
        if(isActive.toUpperCase()==="ACTIVE"){
            if(className.includes("inactive")){
                await clicking.clickElementByXpath(page,roleHeaderXpath);
            }
            else if(className.includes("partial")){
                await clicking.clickElementByXpath(page,roleHeaderXpath);
                await clicking.clickElementByXpath(page,roleHeaderXpath);
            }else{
                console.log("Already Active");
            }
        }else if(isActive.toUpperCase()==="INACTIVE"){
            if(className.includes("active")||className.includes("partial")){
                await clicking.clickElementByXpath(page,roleHeaderXpath);
            }else{
                console.log("Already InActive");
            }
        }
        else
            console.log("isActive Value is not set Correct: "+isActive);
    }
}

export default new ClinicalNotingPage();