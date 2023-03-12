import click_utility from "../../../utilities/clicking";
import Input_utility from "../../../utilities/input";
import settingsLocators from "../../locators/settings.json"
import patientInfo from "../../../data/patientData.json"
import {expect} from "chai";
import input from "../../../utilities/input";
import announcementPage from "./announcementPage";
import assesmentsPage from "./assesmeentsPage";
import accountSettingsPage from "./accountSettingsPage";
import utility from "../../../utilities/utility";
import clinicalRecordsPage from "./clinicalRecordsPage";
import patientRecordsPage from "./patientRecordsPage";
import clicking from "../../../utilities/clicking";
import informationScreenLocators from "../../locators/informationScreen.json";
import roleSettingsPage from "./roleSettingsPage";
import navigationBar from "./navigationBar";
import systemsLocators from "../../locators/systems.json";
import navigationPage from "./navigationBar";

class informationScreenPage {
    records=0;

    async verifyLoc(page) {

        let loc = "//div[@class = 'header-title' and contains(text(),'Location List')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,loc,"textContent");
        expect(elementValue).to.be.equal("Location List");
    }

    async selectFirstLoc(page, value) {

        let firstLoc = "(//div[@class = ' table-cell' and contains(text(),'"+value+"')])[1]";
        await click_utility.clickElementByXpath(page,firstLoc);
    }

    async selectSpecialty(page, value) {

        let speciality = "//span[@class = 'selection-option-value' and contains(text(),'"+value+"')]";
        await click_utility.clickElementByXpath(page,speciality);
    }

    async verifyLocDetails(page) {

        let name = "ECC";
        let site = "Diana Princess of Wales Hospital";
        let primSpeciality = "Accident & Emergency";
        let sceSpeciality = "Accident & Emergency";

        await this.verDetails(page,name);
        await this.verDetails(page,site);
        await this.verDetails(page,primSpeciality);
        await this.verDetails(page,sceSpeciality);

    }

    async verDetails(page, value) {

        let locDet = "//div[@class='no-entry-value ' and contains(text(),'"+value+"')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,locDet,"textContent");
        expect(elementValue).to.be.equal(value);
    }

    async clickMagnifier(page) {

        let magnifier = "//div[@class='locked']";
        await click_utility.clickElementByXpath(page,magnifier);
    }

    async clickZoomIn(page) {

        let zoomIn = "//div[@class='zoom-in-enabled']";
        await click_utility.clickElementByXpath(page,zoomIn);
    }

    async selectWardPatient(page, value) {

        let ward = "//div[@class='sub-header-text' and contains(text(),'"+value+"')]";
        await click_utility.clickElementByXpath(page,ward);
    }

    async entrName(page, value) {

        let name = "//div[@class='text-entry-inline-label' and contains(text(),'"+value+"')]";
        await click_utility.clickElementByXpath(page,name);
        await Input_utility.enterTextXpath(page,name,patientInfo.LocalIndicator.Name);
    }

    async verifyIndicator(page) {

        let indName = "//div[contains(text(),'"+patientInfo.LocalIndicator.Name+"')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,indName,"textContent");
        expect(elementValue).to.be.equal(patientInfo.LocalIndicator.Name);
    }

    // async selectIndicator(page, value) {
    //
    //     let clinicalInd = "//span[@class='selection-option-value' and contains(text(),'"+value+"')]";
    //     await click_utility.clickElementByXpath(page,clinicalInd);
    // }

    async verifyReorder(page) {

    }

    async selectActive(page, value) {

        let optActive = "//span[contains(text(),'"+value+"')]";
        await click_utility.clickElementByXpath(page,optActive);
    }

    async verifyOption(page) {

        let optionCell = "(//div[@class ='color-green table-cell' and contains(text(),'Active')])[1]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,optionCell,"textContent");
        expect(elementValue).to.be.equal("Active");
    }

    async verifyPropType(page) {

        let propType = "(//div[@class =' table-cell' and contains(text(),'Date')])[1]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,propType,"textContent");
        expect(elementValue).to.be.equal("Date");
    }

    async verifyHistory(page) {

        let clinicianName = "(//div[@class ='main-text' and contains(text(),'Abourawi, F')])[1]";
        let job = "(//span[@class ='description-text color-black' and contains(text(),'Responsible Clinician')])[1]";
        let dateAdded = "(//span[@class ='description-text color-green' and contains(text(),'Added')])[1]";

        await this.verification(page,clinicianName,"Abourawi, F");
        await this.verification(page,job,"Responsible Clinician");
        await this.verification(page,dateAdded,"Added");
    }

    async verification(page,val1,val2){

        let elementValue = await Input_utility.getElementTextUsingXpath(page,val1,"textContent");
        expect(elementValue).to.be.equal(val2);
    }

    async selectTime(page, hours, minutes) {
        let hoursXpath = "//div[@id='appended-elements']//div[contains(text(),'Hours')]//following-sibling::div/span[text()='"+hours+"']";
        await clicking.clickElementByXpath(page,hoursXpath);
        let minutesInTens = Math.trunc(minutes/10)*10;
        console.log("Minutes in Tens: "+minutesInTens);
        let minutesInOnes = minutes%10;
        console.log("Minutes in Ones: "+minutesInOnes);
        let minutes10Xpath = "//div[@id='appended-elements']//div[contains(@class,'minutes-10')]//div/span[text()='"+minutesInTens+"']";
        let minutes1Xpath = "//div[@id='appended-elements']//div[contains(@class,'minutes-1')]//div/span[text()='"+minutesInOnes+"']";
        await clicking.clickElementByXpath(page,minutes10Xpath);
        if(minutesInOnes>=5){
            await clicking.clickElementByXpath(page,informationScreenLocators.xpath.timeMinutesInSecondsSelectorDown);
        }else
            try{
                await clicking.clickElementByXpath(page,informationScreenLocators.xpath.timeMinutesInSecondsSelectorUp);
            }catch{}
        await clicking.clickElementByXpath(page,minutes1Xpath);
    }

    async  maxZoom(page, zoomAmount) {
        let currentZoom = await this.getStyleInElementPropertyValue(page,informationScreenLocators.xpath.transformElement,"transform");
        while(currentZoom.trim()!=="scale("+zoomAmount+")"){
            console.log("currentZoom: "+currentZoom)
            console.log("zoomAmount : "+"scale("+zoomAmount+")")
            await clicking.clickElementByXpath(page,informationScreenLocators.xpath.zoomIn);
            currentZoom = await this.getStyleInElementPropertyValue(page,informationScreenLocators.xpath.transformElement,"transform");
        }
    }

    async minZoom(page, zoomAmount) {
        let currentZoom = await this.getStyleInElementPropertyValue(page,informationScreenLocators.xpath.transformElement,"transform");
        while(currentZoom.trim()!=="scale("+zoomAmount+")"){
            console.log("currentZoom: "+currentZoom)
            console.log("zoomAmount : "+"scale("+zoomAmount+")")
            await clicking.clickElementByXpath(page,informationScreenLocators.xpath.zoomOut);
            currentZoom = await this.getStyleInElementPropertyValue(page,informationScreenLocators.xpath.transformElement,"transform");
        }
    }

    async getStyleInElementPropertyValue(page,xpath,styleName){
        let element = await page.waitForXPath(xpath);
        let styleProperty = await page.evaluate(el => el.getAttribute("style"), element);
        console.log("Style Property Found: "+JSON.stringify(styleProperty));
        styleProperty = styleProperty.toString().split(";");
        console.log("Style Property Found as Array: "+styleProperty);
        let styleValue=-1;
        styleProperty.some(function(item){
            console.log("Item in Array: "+item);
            let itemSeperation=item.split(":");
            console.log("Item as Array: "+itemSeperation);
            console.log("Item at index 0: "+itemSeperation[0]);
            console.log("Styling: "+styleName);
            console.log(itemSeperation[0].toString().toLowerCase().trim()===styleName.toString().toLowerCase().trim());
            if(itemSeperation[0].toString().trim()===styleName||styleName.includes(itemSeperation[0].toString().trim())){
                console.log(styleName+" : "+itemSeperation[1]);
                styleValue= itemSeperation[1];
                return styleValue;
            }
        })
        return styleValue;
    }

    async clickRandomValueInTable(page, randomValueGenerated) {
        await roleSettingsPage.clickTable(page,randomValueGenerated);
    }

    async verifyBedStats(page) {

        let bedStat = "//div[@class='no-entry-value text-green']";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,bedStat,"textContent");
        expect(elementValue).to.be.equal("Available");
    }

    async verifySlotDetails(page) {

        const sltDtlVal = ["Area / Slot","Status","Updated On","Updated By"];

        for(let i=1;i<5;i++){

            let slotDetail = "(//div[@class = 'no-entry-label '])["+i+"]";
            let elementValue = await Input_utility.getElementTextUsingXpath(page,slotDetail,"textContent");
            expect(elementValue).to.be.equal(sltDtlVal[i-1]);
        }

    }

    async verifySlotOpt(page) {

        const sltDtlVal = ["populate","reserve","decommission"];

        for(let i=1;i<4;i++){

            let slotOpt = "(//div[@class = 'main-text'])["+i+"]";
            let elementValue = await Input_utility.getElementTextUsingXpath(page,slotOpt,"textContent");
            expect(elementValue).to.be.equal(sltDtlVal[i-1]);
        }
    }

    async verifySlotStatus(page) {

        let Stat = "//div[@class = 'no-entry-value text-amber']";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,Stat,"textContent");
        expect(elementValue).to.be.equal("Occupied");
    }

    async verifyIndCat(page) {

        let value = "DPoW ECC Majors";
        let indLoc = "//span[@class = 'selection-option-value' and contains(text(),'"+value+"')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,indLoc,"textContent");
        expect(elementValue).to.be.equal(value);
    }

    async verifyResStat(page) {

        let resStat = "//div[@class = 'no-entry-value text-blue']";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,resStat,"textContent");
        expect(elementValue).to.be.equal("Reserved");
    }

    async clickFlag(page) {

        let flag = "//div[@class = 'select-indicator-category']";
        await click_utility.clickElementByXpath(page,flag);
    }

    async clickCurrentTime(page, value) {

        let curTime = "//div[@class='navigation-text select-current-date-time' and contains(text(),'"+value+"')]";
        await click_utility.clickElementByXpath(page,curTime);
    }

    async manualRefresh(page) {

        let manRefresh = "//div[@class='flashback-return']";
        await click_utility.clickElementByXpath(page,manRefresh);
    }

    async verifyUpdatedInd(page) {

        let allerInd = "//div[@class = 'selection-value ' and contains(text(),'Yes')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,allerInd,"textContent");
        expect(elementValue).to.be.equal("Yes");
        let covInd = "//div[@class = 'selection-value ' and contains(text(),'Positive')]";
        let elementValue1 = await Input_utility.getElementTextUsingXpath(page,allerInd,"textContent");
        expect(elementValue1).to.be.equal("Positive");
    }

    async verifyInfoConfig(page) {

        let toCreate = "create";
        let toRemove = "remove";

        await this.addRemoveIter(page,toCreate,19);
        await this.addRemoveIter(page,toRemove,19);
     //   await this.addRemoveIter(page,toCreate,19);
    //    await this.addSpecific(page,15,toRemove);

    }

    async addRemoveIter(page, toCreate, number) {

        for(let i =1;i<number;i++){

            let crXpath = "(//span[@class = '"+toCreate+"'])["+i+"]";
            await click_utility.clickElementByXpath(page,crXpath);
        }
    }

    async addSpecific(page, number,toRemove ) {

        for(let i =1;i<number;i++){

            let crXpath = "(//span[@class = '"+toRemove+"'])['"+i+"']";
            await click_utility.clickElementByXpath(page,crXpath);
            i=i+3;
        }
    }

    async verifyPatHoldingArea(page) {

        let patNhs = "//span[contains(text(),'098 761 2345')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,patNhs,"textContent");
        expect(elementValue).to.be.equal("098 761 2345");
    }

    async selectPat(page) {
        let patNhs = "//span[contains(text(),'999 999 9492')]";
        await click_utility.clickElementByXpath(page,patNhs);
    }

    async clickCancel(page) {

        let cancel = "//div[@class = 'navigation-cancel menu-bar-container-icon']";
        await click_utility.clickElementByXpath(page,cancel);
    }

    async selectFirstSlot(page) {

        let firstSlot = "(//div[@class = 'navigation-text'])[1]";
        await click_utility.clickElementByXpath(page,firstSlot);
    }

    async verifyMixedSex(page, value) {

        let mixSex = "//div[@class='information-title-text' and contains(text(),'"+value+"')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,mixSex,"textContent");
        expect(elementValue).to.be.equal(value);
    }

    async selectSwapPat(page) {

        let swapPat = "(//div[@class='demographics-bar-component-container property-clickable'])[1]";
        await click_utility.clickElementByXpath(page,swapPat);
    }

    async verifyAbsentStat(page, value) {

        let Stat = "//div[@class = 'no-entry-value text-amber']";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,Stat,"textContent");
        expect(elementValue).to.be.equal(value);
    }

    async selectFirstOption(page) {

        let firstOpt = "(//div[@class = 'container-item container-text standard'])[1]";
        await click_utility.clickElementByXpath(page,firstOpt);
    }

    async managePersonell(page, header, value) {
        let headerXpathList = "//div[@id='appended-elements']//div[text()='"+header+"']/..//following-sibling::div//div[contains(@class,'container-complication')]//div";
        let headerXpathValues = await input.getTextOfTheElements(page,headerXpathList);
        if(headerXpathValues.length>0 && headerXpathValues.includes(value)){
            await announcementPage.clickOnActionItem(page,value);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Assigned Patients");
            await announcementPage.clickOnPopUpActionIcon(page);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Action Menu");
            await announcementPage.clickOnActionItem(page,"Edit");
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Edit Assigned Patients");
            let xpathValues = await input.getTextOfTheElements(page,settingsLocators.organisationSettingsPage.xpath.allClinicians)
            for (const item of xpathValues) {
                if(item==="Nothing Here"){
                    await announcementPage.clickonPopUpBackIcon(page);
                    await announcementPage.waitForLoading(page);
                    await announcementPage.verifyPopUpLabel(page,"Assigned Patients");
                    await announcementPage.clickonPopUpBackIcon(page);
                    await announcementPage.waitForLoading(page);
                    await announcementPage.verifyPopUpLabel(page,"Manage Personnel");
                    return;
                }
                await click_utility.clickElementByXpath(page, settingsLocators.organisationSettingsPage.xpath.allClinicians);
            }
            await announcementPage.clickonPopUpBackIcon(page);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Assigned Patients");
            await announcementPage.clickonPopUpBackIcon(page);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Manage Personnel");
            return;
        }
        await announcementPage.clickOnPopUpActionIcon(page);
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Personnel Actions");
        await announcementPage.clickOnPopUpActionIcon(page,"Edit");
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Manage Personnel");
        await announcementPage.clickOnPopUpPlusIcon(page);
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Select Role");
        await announcementPage.clickOnActionItem(page,header);
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"User Search");
        await announcementPage.clickOnActionItem(page,"Display Name");
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Display Name Search");
        await patientRecordsPage.inlineInput(page,"Display Name",value);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Personnel Search Results");
        await announcementPage.clickOnActionItem(page,value);
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Confirm Details");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Confirm Status");
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Manage Personnel");
    }

    async saveNumberOfRecords(page, header) {
        let xpath = "//div[@id='appended-elements']//div[text()='"+header+"']//../following-sibling::div//div[1]"
        let value = await input.getElementTextUsingXpath(page,xpath,"textContent");
        this.records = parseInt(value);
        return this.records;
    }

    async verifyNewRecordAdded(page, header) {
        let xpath = "//div[@id='appended-elements']//div[text()='"+header+"']//../following-sibling::div//div[1]"
        let record = await input.getElementTextUsingXpath(page,xpath,"textContent");
        expect(parseInt(record)).to.be.equal(this.records+1);
    }
    async verifyNewRecordAddedWithValue(page, header,value) {
        let xpath = "//div[@id='appended-elements']//div[text()='"+header+"']//../following-sibling::div//div[1]"
        let record = await input.getElementTextUsingXpath(page,xpath,"textContent");
        expect(record).to.be.equal(value);
    }

    async closeInfectionControlCaseIfOpen(page, patientValue) {
        await navigationBar.clickOnNavigationIcon(page,"Systems");
        await navigationBar.clickOnCard(page,"Infection Control");
        await navigationBar.verifyPage(page,"Infection Control");
        await announcementPage.clickOnParameterFilter(page);
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Case Search");
        await patientRecordsPage.inlineInput(page,"Patient Identifier",patientValue);
        await announcementPage.clickonCheckIcon(page);
        await page.waitForTimeout(5000);
        let statusValues = await input.getTextOfTheElements(page,informationScreenLocators.xpath.allStatusRows);
        for (const item of statusValues) {
            if(item==="Open"){
                await roleSettingsPage.clickTable(page,"Open");
                await announcementPage.waitForLoading(page);
                await announcementPage.verifyPopUpLabel(page,"Case Details");
                await announcementPage.clickOnPopUpActionIcon(page);
                await announcementPage.waitForLoading(page);
                await announcementPage.verifyPopUpLabel(page,"Case Menu");
                await announcementPage.clickOnActionItem(page,"Close Case");
                await announcementPage.waitForLoading(page);
                await announcementPage.verifyPopUpLabel(page,"Close Case");
                await announcementPage.clickOnActionItem(page,"Closure Criteria");
                await announcementPage.waitForLoading(page);
                await announcementPage.verifyPopUpLabel(page,"Closure Criteria");
                await announcementPage.clickOnActionItem(page,"Discharged");
                await announcementPage.clickonCheckIcon(page);
                await announcementPage.verifyPopUpLabel(page,"Submission Status");
                await announcementPage.verifyForm(page, "Success");
                await announcementPage.clickonCheckIcon(page);
                await announcementPage.waitForLoading(page);
                await announcementPage.verifyPopUpLabel(page,"Case Details");
                await announcementPage.clickonCrossIcon(page);
            }
        }
    }

    async navigateToWardScreen(page, site, location) {
        await navigationPage.verifyPage(page,"Information Screen Settings");
        let filterItem = await input.getElementTextUsingXpath(page,systemsLocators.informationScreen.ward.filterItem,"textContent");
        if(filterItem!==site){
            await announcementPage.clickFilterParameter(page,"Table Parameters");
            await announcementPage.clickOnActionItem(page,"Site");
            await announcementPage.waitForLoadingWithTitle(page,"Select Organisation");
            await announcementPage.verifyPopUpLabel(page,"Select Organisation");
            await announcementPage.clickOnActionItem(page,site);
            await announcementPage.clickonCheckIcon(page);
        }
        await navigationPage.clickOnCard(page,location);
        try {
            let elementText = await input.getElementTextUsingXpath(page, settingsLocators.announcementPage.xpath.popUpHeader, "innerText");
            if (elementText === "Overdue Assessments & Observations") {
                await announcementPage.clickonCheckIcon(page);
            }
        }catch (e) {
            console.log("no popup");
        }
        try {
            let elementText = await Input_utility.getElementTextUsingXpath(page, settingsLocators.announcementPage.xpath.popUpHeader, "innerText");
            if (elementText === "Overdue Assessments & Observations") {
                await announcementPage.clickonCheckIcon(page);
            }
        }catch (e) {
            console.log("no popup");
        }
        // await navigationPage.verifyPage(page,location);

    }

    async removePreviousCategories(page, value) {
        let subHeader = "Indicator Categories";
        let resourceListXpath = "//div[contains(@class,'sub-header')][contains(.,'"+subHeader+"')]//following-sibling::div/div[1]";
        let resourceListText = await input.getTextOfTheElements(page,resourceListXpath);
        for (const item of resourceListText) {
            if(item===value){
                let xpath = "(//div[contains(@class,'sub-header')][contains(.,'Indicator')]//following-sibling::div/div[1]//div[text()='"+value+"'])[1]";
                await click_utility.clickElementByXpath(page,xpath);
                await announcementPage.waitForLoading(page);
                await announcementPage.verifyPopUpLabel(page,"Indicator Category Details");
                await announcementPage.clickOnPopUpActionIcon(page);
                await announcementPage.waitForLoading(page);
                await announcementPage.verifyPopUpLabel(page,"Indicator Category Menu");
                try{
                    await announcementPage.clickOnActionItem(page,"Disable");
                    await announcementPage.waitForLoading(page);
                    await announcementPage.verifyPopUpLabel(page,"Disable Indicator Category");
                    await announcementPage.verifyForm(page, "Successfully Disabled");
                    await announcementPage.clickonCheckIcon(page);
                    await announcementPage.waitForLoading(page);
                    await announcementPage.verifyPopUpLabel(page,"Indicator Category Details");
                    await announcementPage.clickOnPopUpActionIcon(page);
                    await announcementPage.verifyPopUpLabel(page,"Indicator Category Menu");
                }catch (e) {

                }
                await announcementPage.clickOnActionItem(page,"Remove");
                await announcementPage.waitForLoading(page);
                await announcementPage.verifyPopUpLabel(page,"Remove Indicator Category");
                await announcementPage.verifyForm(page, "Successfully Removed");
                await announcementPage.clickonCheckIcon(page);
            }
        }
    }

    async randomlySelectValue(page) {
        let xpath = "//div[contains(@class,'sub-header')][contains(.,'Results')]//../../../following-sibling::div/div"
        let resourceListText = await input.getTextOfTheElements(page,xpath);
        let randomValue = Math.floor(Math.random() * resourceListText.length);
        await click_utility.clickElementByXpath(page,"(//div[contains(@class,'sub-header')][contains(.,'Results')]//../../../following-sibling::div/div)["+randomValue+"]")
        return resourceListText[randomValue];
    }

    async verifyPatientImage(page, patient, imgValue,indicator) {
        let imageXpaths = "//div[contains(.,'"+patient+"')][contains(@class,'demographics-bar-component')]//following-sibling::div[contains(@class,'details')]//img";
        let imageArrayElements = await page.$x(imageXpaths);
        let i=0;
        for (const item of imageArrayElements) {
            await item.hover();
            let textXpath = "(//div[@class='tippy-popper']//img//following-sibling::div)[1]";
            await page.waitForTimeout(1000);
            let textValue = await input.getElementTextUsingXpath(page,textXpath,"textContent");
            await console.log("Item: "+imgValue);
            await console.log("Text: "+textValue);
            await console.log("Item: "+await (await imageArrayElements[i].getProperty('src')).jsonValue());
            i++;
            if(textValue===indicator){
                let className = await (await item.getProperty('src')).jsonValue();
                await console.log("Item: "+className);
                expect(className).to.includes(imgValue);
                return;
            }
        }
        expect(false).to.be.true;
    }

    async scrollClinicalIndicator(page,label) {
        let header = await input.getElementTextUsingXpath(page,"//div[@id='appended-elements']//div[contains(@class,'selector-text')]","textContent");
        if(header===label){
            return;
        }
        await click_utility.clickElementByXpath(page,"//div[@id='appended-elements']//span[contains(@class,'selector-next')]")
        await this.scrollClinicalIndicator(page,label);
    }
}

export default new informationScreenPage()