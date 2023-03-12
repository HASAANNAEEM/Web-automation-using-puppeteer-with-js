import {expect} from "chai";
import clicking from "../../../utilities/clicking";
import clinicalLocators from "../../locators/clinicalRecords.json"
import input from "../../../utilities/input";
import Input_utility from "../../../utilities/input";
import Input from "../../../utilities/input";
import click_utility from "../../../utilities/clicking";
import clinicalData from "../../../data/clinicalRecordData.json"
import fs from "fs-extra";
import settingsLocators from "../../locators/settings.json";
import organisationSettingsPage from "./organisationSettingsPage";
import announcementPage from "./announcementPage";
import roleSettingsPage from "./roleSettingsPage";

class ClinicalRecordsPage {

    subCategories = "None";
    async verifyTableGender(page, value) {
        let element = await page.waitForXPath(clinicalLocators.patientIdentifier.xpath.genderValue);
        const className = await(await element.getProperty("className")).jsonValue();
        console.log(className);
        if(className.includes("loading")){
            await this.verifyTableGender(page,value);
        }else {
            // let genderValue = (className.split(" "))[0];
            expect(className).to.be.include(value.toLowerCase());
        }
    }

    async enterTextSubHeader(page, label, value) {
        let subHeaderInputXpath = "//div[contains(@id,'appended-element')]//div[contains(text(),'"+value+"')]/ancestor::div//input"
        await input.enterTextXpath(page,subHeaderInputXpath,value);
    }

    async selectDate(page, date, month, year) {
        await clicking.clickElementByXpath(page,clinicalLocators.patientIdentifier.xpath.year);
        let allYears = await input.getTextOfTheElements(page,clinicalLocators.patientIdentifier.xpath.listOfYears);
        for(const years of allYears){
            let index = allYears.indexOf(years)+1;
            await console.log("Year: "+years);
            let startingYear = (years.split(" "))[0];
            await console.log("Starting Year: "+startingYear);
            let endingYear = (years.split(" "))[2];
            await console.log("Ending Year: "+endingYear);
            if (year >= startingYear && year <= endingYear) {
                await console.log("Year Selected: "+year);
                let yearSelectionXpath = "(//div[@id='appended-elements']//div[contains(@class,'list-option')]//span)["+index+"]";
                await clicking.clickElementByXpath(page,yearSelectionXpath);
                yearSelectionXpath = "//div[@id='appended-elements']//div[contains(@class,'list-option')]//span[contains(text(),'"+year+"')]";
                await clicking.clickElementByXpath(page,yearSelectionXpath);
                break;
            }
        }
        await clicking.clickElementByXpath(page,clinicalLocators.patientIdentifier.xpath.month);
        let monthSelectionXpath = "//div[contains(@class,'list-option')]//span[contains(text(),'"+month+"')]";
        await clicking.clickElementByXpath(page,monthSelectionXpath);
        let dateSelectionXpath = "//div[@class='date-cell' or contains(@class,'active todays-date')]/span[text()='"+date+"']";
        await clicking.clickElementByXpath(page,dateSelectionXpath);
    }

    async verifyTableEmpty(page,value) {
        let emptyText = await input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.nothingFound,"textContent");
        if(emptyText!=="Loading"){
            await expect(emptyText).to.includes(value);
            return;
        }
        await page.waitForTimeout(5000);
        await this.verifyTableEmpty(page,value);
    }

    async verifyElementInTable(page,value) {
        let emptyText = await input.getTextOfTheElements(page,clinicalLocators.patientIdentifier.xpath.nothingFound);
        if(emptyText.length===0){
            let text = await input.getTextOfTheElements(page,clinicalLocators.patientIdentifier.xpath.listOfValues);
            await expect(text).to.includes(value);
            return;
        }
        await page.waitForTimeout(5000);
        await this.verifyTableEmpty(page,value);
    }



    async verifyPopUpTableEmpty(page,value) {
        let emptyText = await input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.NothingHere,"textContent");
        if(emptyText!=="Loading"){
            await expect(emptyText).to.includes(value);
            return;
        }
        await page.waitForTimeout(5000);
        await this.verifyPopUpTableEmpty(page,value);
    }

    async verifyPopUpTableDescription(page,value) {
        let emptyText = await input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.popUpDescriptionText,"textContent");
        if(emptyText!=="Loading"){
            await expect(emptyText).to.includes(value);
            return;
        }
        await page.waitForTimeout(5000);
        await this.verifyPopUpTableDescription(page,value);
    }

    async enterPatientIndentifierSearch(page,pat_id){
        await Input_utility.enterTextXpath(page,clinicalLocators.patientIdentifier.xpath.pat_identifier_search_input,pat_id);
    }

    async verifyPatientDetail(page,label,value){
        let detailItemXpath = "//div[contains(@class,'label')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']//following-sibling::div";
        console.log(detailItemXpath);
        let detailItemText = await Input.getElementTextUsingXpath(page,detailItemXpath,"innerText");
        expect(detailItemText).to.be.equal(value);
    }

    async verifyPatientDetail2(page,sectionHeader,label,value){
        let detailItemXpath = "(//div[text()='"+sectionHeader+"']/../following-sibling::div//div[contains(@class,'label')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']//following-sibling::div)[1]";

        let detailItemText = await Input.getElementTextUsingXpath(page,detailItemXpath,"innerText");
        expect(detailItemText).to.be.equal(value);
    }

    async verifyAdmissionInformationDetail(page,label,value){
        let detailItemXpath = "//div[contains(@class,'label')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']/..//following-sibling::div//div[contains(@class,'container-text')]";
        let detailItemText = await Input.getElementTextUsingXpath(page,detailItemXpath,"innerText");
        expect(detailItemText).to.be.equal(value);
    }

    async verifyInformationWithRespectToHeader(page,header,label,value){
        let detailItemXpath = "//div[text()='"+header+"']/../../..//div[contains(@class,'label')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']//following-sibling::div";
        let detailItemText = await Input.getElementTextUsingXpath(page,detailItemXpath,"innerText");

            expect(detailItemText).to.be.include(value);
    }

    async verifyFirstPatientName(page,value){
        let detailItemText = await Input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.firstPatientName,"innerText");
        expect(detailItemText).to.be.equal(value);
    }

    async verifyFirstPatientAgeDOB(page,value){
        let detailItemText = await Input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.firstPatientAgeDOB,"innerText");
        expect(detailItemText).to.be.equal(value);
    }

    async verifyFirstPatientNHSNumber(page,value){
        let detailItemText = await Input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.firstPatientNHSNumber,"innerText");
        expect(detailItemText).to.be.equal(value);
    }

    async clickOnPatientUsingNHSNumber(page, label) {
        let cardXpath = "//div[@class='table-body']//div[contains(@class,'table-cell')][text()='"+label+"']";
        await click_utility.clickElementByXpath(page,cardXpath);
    }

    async verifyDemoGraphicsAndGenderColor(page, value) {
        let element = await page.waitForXPath(clinicalLocators.patientIdentifier.xpath.demoGraphicsGenderColor);
        const className = await(await element.getProperty("className")).jsonValue();
        console.log(className);
        let headerValue = (className.split(" "))[0];
        let genderValue = (className.split(" "))[1];
        expect(headerValue).to.be.equal("demographics-bar-component");
        expect(genderValue.toUpperCase()).to.be.equal(value.toUpperCase());
    }

    async verifyDemoGraphicsDisplayName(page,value){
        let detailItemText = await Input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.demoGraphicsDisplayName,"innerText");
        expect(detailItemText.toUpperCase()).to.be.includes(value.toUpperCase());
    }
    async verifyDemoGraphicsDOB(page,value){
        let detailItemText = await Input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.demoGraphicsDOB,"innerText");
        expect(detailItemText.toUpperCase()).to.be.equal(value.toUpperCase());
    }
    async verifyDemoGraphicsGender(page,value){
        let detailItemText = await Input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.demoGraphicsGender,"innerText");
        expect(detailItemText.toUpperCase()).to.be.equal(value.toUpperCase());
    }
    async verifyDemoGraphicsNHSNo(page,value){
        let detailItemText = await Input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.demoGraphicsNHSNo,"innerText");
        expect(detailItemText.toUpperCase()).to.be.equal(value.toUpperCase());
    }

    async verifyListOfValues(page,header,size,asc_desc){
        let detailItemXpath = "//div[text()='"+header+"']/../..//following-sibling::div//div[contains(@class,'description')]";
        let detailItemTexts = await Input.getTextOfTheElements(page,detailItemXpath);
        console.log(detailItemTexts);
        console.log(detailItemTexts.length);
        expect(detailItemTexts.length).to.be.lessThanOrEqual(parseInt(size));
        if(asc_desc==="asc"){
            let isAscending = a => a.slice(1)
                .every((e,i) => e > a[i]);

            console.log(isAscending(detailItemTexts));

            // expect(isAscending(detailItemTexts)).to.be.equal(true);

        }else if(asc_desc==="desc"){
            let isDescending = a => a.slice(1)
                .every((e,i) => e < a[i]);

            expect(isDescending(detailItemTexts)).to.be.equal(true);
        }
    }

    async saveSubCategoryValue(page, label) {
        let nameElements = await Input.getTextOfTheElements(page,clinicalLocators.clinicalRecordSettings.xpath.categoryListName);
        // await console.log("Label: "+label);
        for(let name of nameElements){
            let index = nameElements.indexOf(name)+2;
            // await console.log("Name: "+name);
            // await console.log("Index: "+index);
            if(name===label){
                let subCategoryXpath = "//div[contains(@class,'data-set-body')]/div/div["+index+"]";
                this.subCategories = await input.getElementTextUsingXpath(page,subCategoryXpath,"textContent");
                clinicalData.subCategories = this.subCategories;
                await fs.writeJson("src/data/clinicalRecordData.json", clinicalData);
                // await console.log("Sub-Categories: "+clinicalData.subCategories);
            }
        }
    }

    async verifySubCategoryValue(page) {
        await organisationSettingsPage.verifyCliniciansInSite(page,"Sub-Categories",clinicalData.subCategories);
    }

    async verifyNewSubCategoryValue(page) {
        clinicalData.subCategories=(parseInt(clinicalData.subCategories)+1).toString();
        await organisationSettingsPage.verifyCliniciansInSite(page,"Sub-Categories",clinicalData.subCategories);
        await fs.writeJson("src/data/clinicalRecordData.json", clinicalData);
    }

    async revertDataIfItExists(page, label) {
        let headerElements = await Input.getTextOfTheElements(page,settingsLocators.announcementPage.xpath.firstHeaderList);
        for(let headerName of headerElements){
            if(headerName===label){
                let jessXpath = "//div[contains(text(),'"+label+"')]";
                await click_utility.clickElementByXpath(page,jessXpath);
                await announcementPage.clickOnActionIcon(page);
                await announcementPage.clickOnActionItem(page,"Edit Category");
                await page.waitForTimeout(2000);
                await roleSettingsPage.inputValueInline(page,"Name","jess test");
                await page.waitForTimeout(2000);
                await announcementPage.clickToggleButtonToValue(page,"Active","active");
                await announcementPage.clickonCheckIcon(page);
                await announcementPage.clickonCheckIcon(page);
                await announcementPage.clickonCheckIcon(page);
            }
        }
    }

    async verifyTableValueExist(page,label,isExist) {
        let xpath = "(//div[contains(@class,'data-set-row')]/div[contains(text(),'"+label+"')])[1]|(//div[contains(@class,'table-body')]/div[contains(text(),'"+label+"')])[1]|(//div[contains(@class,'table-row')]/div[contains(text(),'"+label+"')])[1]";
        try {
            await announcementPage.waitForLoading(page);
            await page.waitForXPath(
                xpath,
                { visible: true }
            );
            await expect("true").to.equal(isExist);
        } catch (e) {
            await expect("false").to.equal(isExist);
        }

    }

    async verifyDemoGraphicsAndGenderColorInPopup(page, value) {
        let element = await page.waitForXPath(clinicalLocators.patientIdentifier.xpath.demoGraphicsGenderColorInPopup);
        const className = await(await element.getProperty("className")).jsonValue();
        console.log(className);
        let headerValue = (className.split(" "))[0];
        let genderValue = (className.split(" "))[1];
        expect(headerValue).to.be.equal("demographics-bar-component");
        expect(genderValue).to.be.equal(value);
    }

    async verifyDemoGraphicsDisplayNameInPopup(page,value){
        let detailItemText = await Input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.demoGraphicsDisplayNameInPopup,"innerText");
        expect(detailItemText).to.be.equal(value);
    }
    async verifyDemoGraphicsDOBInPopup(page,value){
        let detailItemText = await Input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.demoGraphicsDOBInPopup,"innerText");
        expect(detailItemText).to.be.equal(value);
    }
    async verifyDemoGraphicsGenderInPopup(page,value){
        let detailItemText = await Input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.demoGraphicsGenderInPopup,"innerText");
        expect(detailItemText.toLowerCase()).to.be.equal(value.toLowerCase());
    }
    async verifyDemoGraphicsNHSNoInPopup(page,value){
        let detailItemText = await Input.getElementTextUsingXpath(page,clinicalLocators.patientIdentifier.xpath.demoGraphicsNHSNoInPopup,"innerText");
        expect(detailItemText).to.be.equal(value);
    }

    async verifyPopUpInputValue(page, label, value) {
        let xpath = "//div[@id='appended-elements']//div[text()='"+label+"']/following-sibling::div//input";
        let element = await page.waitForXPath(xpath);
        let actualValue = await page.evaluate(el => el.value, element);
        expect(value.trim()).to.be.equal(actualValue.trim());

    }
}

export default new ClinicalRecordsPage()
