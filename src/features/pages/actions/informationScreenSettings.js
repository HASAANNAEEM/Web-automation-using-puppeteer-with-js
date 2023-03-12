import {expect} from "chai";
import click_utility from "../../../utilities/clicking";
import announcementPage from "./announcementPage";
import navigationPage from "./navigationBar";
import Input from "../../../utilities/input";
import Input_utility from "../../../utilities/input";
import documentSettingsPage from "./documentSettingsPage";
import accountSettingsPage from "./accountSettingsPage";
import informationScreenLocators from "../../locators/informationScreen.json";
import clicking from "../../../utilities/clicking";
import input from "../../../utilities/input";
import input_utility from "../../../utilities/input";
import navigationBar from "./navigationBar";
import patMergePage from "./patMergePage";
import patientRecordsPage from "./patientRecordsPage";
import navBarLocators from "../../locators/navigationBar.json";
import settingsLocators from "../../locators/settings.json";
import clinicalLocators from "../../locators/clinicalRecords.json";
import patientSumaryLocator from "../../locators/patientSumary.json";
import roleSettingsPage from "./roleSettingsPage";
import settingLocators from "../../locators/settings.json";
import {setWorldConstructor, World} from "@cucumber/cucumber";
import puppeteer from "puppeteer-core";
import {getEdgePath} from "edge-paths";
import * as path from "path";
import url from "../../../data/url.json";
import login_utility from "../../../utilities/helper/login_utility";
const downloadPath = path.resolve(__dirname+'../../../../data/download');

class InformationScreenSettings {

    randomValueGenerated;
    translate;

    async createIndicatorsIfNotExist(page, indicatorName, propertyName) {
        // await documentSettingsPage.clickOnTableFirstRow(page, indicatorName);
        // await announcementPage.waitForLoading(page);
        // await page.waitForTimeout(3000);
        let detailItemsXpath =
            "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
            indicatorName +
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
            await documentSettingsPage.inputValueInline(page, "Name", indicatorName);
            await navigationPage.clickOnPopupItem(page, "Property");
            await announcementPage.verifyPopUpLabel(page, "Property Search");
            await navigationPage.clickOnPopupItem(page, "Use Existing Property");
            await page.waitForTimeout(3000);
            await announcementPage.clickonCheckIcon(page);
            await page.waitForTimeout(10000);
            await announcementPage.verifyPopUpLabel(
                page,
                "Existing Property Search Results"
            );
            // await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoading(page);
            await accountSettingsPage.searchInFilter(page, propertyName);
            await navigationPage.clickOnPopupItem(page, propertyName);
            await page.waitForTimeout(3000);
            await announcementPage.clickonCheckIcon(page);
            await page.waitForTimeout(3000);
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.verifyForm(page,"Success");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.clickonPopUpBackIcon(page);
        }

    }

    async addClinicalIndicatorIconIfNotExist(page,indicatorName, iconSetName, selectionValues, clinicalIndicators){

        let headerValueXpath =
            "//div[text()='"+indicatorName+"']//following-sibling::div[4]";
        let headerValue = await Input.getTextOfTheElements(
            page,
            headerValueXpath
        );
            if(headerValue==="Not Known"){
                let menuOption =
                    "(//div[contains(@class,'body')]//div[contains(@class,'cell')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" +
                    indicatorName.toUpperCase() +
                    "'])[1]";
                await clicking.clickElementByXpath(page, menuOption);
                await announcementPage.waitForLoading(page);
                await page.waitForTimeout(3000);
                await announcementPage.clickOnActionIconWithHeaderName(
                    page,
                    "Clinical Indicator Details"
                );
                await navigationPage.clickOnPopupItem(page, "Edit");
                await navigationPage.clickOnPopupItem(page, "Property Icons");
                await navigationPage.clickOnPopupItem(page, "Icon Set");
                await announcementPage.waitForLoading(page);
                await accountSettingsPage.searchInFilter(page, iconSetName);
                await navigationPage.clickOnPopupItem(page, iconSetName);
                await announcementPage.waitForLoading(page);

                const selectionValArray = selectionValues.split("|");
                const clinicalIndicatorArray = clinicalIndicators.split("|");
                for (let i = 0; i < selectionValArray.length; i++) {
                    await navigationPage.clickOnPopupItem(page, selectionValArray[i]);
                    await announcementPage.waitForLoading(page);
                    await accountSettingsPage.searchInFilter(page, clinicalIndicatorArray[i]);
                    await navigationPage.clickOnPopupItem(page, clinicalIndicatorArray[i]);
                    await announcementPage.waitForLoading(page);
                }

                await announcementPage.clickonCheckIcon(page);
                await announcementPage.clickonCheckIcon(page);
                await announcementPage.verifyForm(page,"Success");
                await announcementPage.clickonCheckIcon(page);
                await announcementPage.clickonPopUpBackIcon(page);
            }

    }

    async configGlobalIndicatorIfNotConfigured(page, globalIndicatorName, clinicalIndicatorName){
        await announcementPage.clickOnActionIconWithHeaderName(
            page,
            "Location List"
        );
        await announcementPage.waitForLoading(page);
        await navigationPage.clickOnPopupItem(page, "Configure Global Indicator Categories");

        let pageXpath =
            "//*[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+globalIndicatorName.toUpperCase()+"']/../..";
        console.log(pageXpath);
        let globalIndicationIsExist = false;
        try {
            await page.waitForXPath(pageXpath, { visible: true, timeout: 20000 });
            globalIndicationIsExist = true;
        } catch (e) {
            globalIndicationIsExist = false;
        }

        if(!globalIndicationIsExist) {
            await announcementPage.clickOnPlusIcon(page);
            await documentSettingsPage.inputValueInline(page, "Name", globalIndicatorName);
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoading(page);
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.verifyForm(page,"Submission Successful");
            await announcementPage.clickonCheckIcon(page);
            await navigationPage.clickOnPopupItem(page, globalIndicatorName);
            await announcementPage.waitForLoading(page);
            await announcementPage.clickOnActionIconWithHeaderName(
                page,
                "Indicator Category Details"
            );
            await navigationPage.clickOnPopupItem(page, "Enable");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.verifyForm(page,"Successfully Enabled");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.clickonPopUpBackIcon(page);
        }
        if(globalIndicationIsExist) {
            await navigationPage.clickOnPopupItem(page, globalIndicatorName);
            await announcementPage.waitForLoading(page);
            await navigationPage.clickOnPopupItem(page, "Clinical Indicators");

            let clinicalXpath =
                "//*[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" + clinicalIndicatorName.toUpperCase() + "']/../..";
            console.log(clinicalXpath);
            let clinicalIndicationIsExist = false;
            try {
                await page.waitForXPath(clinicalXpath, {visible: true, timeout: 20000});
                clinicalIndicationIsExist = true;
            } catch (e) {
                clinicalIndicationIsExist = false;
            }

            if (!clinicalIndicationIsExist) {
                await announcementPage.clickOnActionIconWithHeaderName(
                    page,
                    "Clinical Indicator List"
                );
                await navigationPage.clickOnPopupItem(page, "Add Clinical Indicator");
                await accountSettingsPage.searchInFilter(page, clinicalIndicatorName);
                await navigationPage.clickOnPopupItem(page, clinicalIndicatorName);
                await announcementPage.verifyForm(page, "Submission Successful");
                await announcementPage.clickonCheckIcon(page);
                await announcementPage.clickonPopUpBackIcon(page);
            }
            await announcementPage.clickonPopUpBackIcon(page);
        }
        await announcementPage.clickonPopUpBackIcon(page);
        await announcementPage.clickonPopUpBackIcon(page);
        await announcementPage.clickonPopUpBackIcon(page);
    }

    async verifyClinicalIndicatorPopover(page,bedNo, icon, indicatorName, propValue){
        let bedSlotIconXpath = "//div[contains(text(),'"+bedNo+"')]/../..//img[contains(@src,'"+icon+"')]";

        let iconEle = await page.waitForXPath(bedSlotIconXpath,{visible:true,timeout:20000});
        const className = await(await iconEle.getProperty('src')).jsonValue();
        expect(className.includes(icon)).to.be.true;
        await click_utility.hoverOverElementByXpath(page,bedSlotIconXpath);

        let foundClinicalIndicatorName = await Input_utility.getElementTextUsingXpath(page,informationScreenLocators.xpath.popoverClinicalIndicatorName,"innerText");
        let foundClinicalIndicatorValue = await Input_utility.getElementTextUsingXpath(page,informationScreenLocators.xpath.popoverClinicalIndicatorValue,"innerText");
        let foundClinicalIndicatorIcon = await Input_utility.getElementTextUsingXpath(page,informationScreenLocators.xpath.popoverClinicalIndicatorIcon,"src");

        await expect(foundClinicalIndicatorName.toUpperCase().trim()).to.be.equal(indicatorName.toUpperCase().trim());
        await expect(foundClinicalIndicatorValue.toUpperCase().trim()).to.be.equal(propValue.toUpperCase().trim());
        await expect(foundClinicalIndicatorIcon.toUpperCase().trim()).to.be.includes(icon.toUpperCase().trim());

    }

    async verifyEachRowContainsArrowIconAndEllipse(page) {
        let tableRows = await input.getTextOfTheElements(page,informationScreenLocators.xpath.tableRows);
        let index=0;
        for(let item in tableRows){
            index = parseInt(item)+1;
            console.log("Index: "+index);
            let arrowContainsXpath = "//div[@class='table-body']//div[contains(@class,'table-row')]["+index+"]//div[contains(@class,'meatballs table-cell')]";
            let ellipseContainsXpath = "//div[@class='table-body']//div[contains(@class,'table-row')]["+index+"]//div[contains(@class,'meatballs table-cell')]//div[contains(@class,'meatballs')]";
            let arrowElement = await page.waitForXPath(arrowContainsXpath);
            let ellipseElement = await page.waitForXPath(ellipseContainsXpath);
            if(arrowElement===null||ellipseElement===null){
                expect(true).to.be.false;
            }
        }
    }

    async inputRandomValueInline(page, label) {
        this.randomValueGenerated = Math.random().toString(36).substring(2,7);
        console.log(this.randomValueGenerated);
        let xpath = "//div[contains(@id,'appended-elements')]//div[text()='"+label+"']/ancestor::div[contains(@class,'container-column')]/following-sibling::div//input|//div[contains(@id,'appended-elements')]//div[text()='"+label+"']/following-sibling::div//input";
        await input_utility.removeTextByXpath(page,xpath);
        await input_utility.enterTextXpath(page,xpath,this.randomValueGenerated);
        return this.randomValueGenerated;
    }

    async verifyRandomValuePopUpWithLabel(page, label) {
        let elementXpath = "//div[contains(text(),'"+label+"')]/ancestor::div/following-sibling::div[contains(@class,'container-column')]|//div[contains(text(),'"+label+"')]/following-sibling::div[contains(@class,'no-entry-value')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,elementXpath,"innerText");
        await expect(elementValue.trim()).to.be.equal(this.randomValueGenerated);
    }

    async clickOnCard(page, label) {
        let cardXpath = "//div[@class='main-text'][text()='"+label+"']|//div/span[text()='"+label+"']";
        await click_utility.clickElementByXpath(page,cardXpath);
        await page.waitForTimeout(2000);
    }

    async clickOnWardMagnifyingGlass(page) {
        await clicking.clickElementByXpath(page,informationScreenLocators.xpath.magnifyingGlass);
    }

    async verifyForWayMouseIcon(page) {
        await page.waitForXPath(informationScreenLocators.xpath.forWayIcon);
    }

    async saveTranslate(page) {
        let translateElement = await page.waitForXPath(informationScreenLocators.xpath.translateElement);
        let className = await (await translateElement.getProperty('offsetLeft')).jsonValue();
        console.log(className);
        this.translate=className;
        return className;
    }

    async dragAndDropXpath(page,source,destination) {
        let sourceXpath = "//div[contains(text(),'"+source+"')]"
        let destinationXpath = "//div[contains(text(),'"+destination+"')]"
        await clicking.dragAndDropXpath(page,sourceXpath,destinationXpath);
    }

    async compareTranslate(page) {
        let translateElement = await page.waitForXPath(informationScreenLocators.xpath.translateElement);
        let className = await (await translateElement.getProperty('offsetLeft')).jsonValue();
        console.log(className);
        expect(className).to.not.be.equal(this.translate);
        return className;
    }


    /*
* #########################################################################
*
* ' Method Name: verifyClinicalPersonnel(Webdriver, string, string) '
* Description: This Utility method verifies clinical person name '
* Input parameters: ' Webdriver, string, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyClinicalPersonnel(page,value,option) {

        let xpath = "//div[@class='selection  false'][contains(.,\"" + value + "\")]/div[2][contains(text(),\"" + option + "\")]";
        let verifyPersonnel = await Input.getElementTextUsingXpath(page, xpath, "innerText");

        expect(verifyPersonnel).to.be.equal(option);
    }


    /*
* #########################################################################
*
* ' Method Name: preRequisiteTST882(WebDriver,string) '
* Description: This Utility method sets up the pre-requisite for TST-882 '
* Input parameters: 'WebDriver, String '
* Created By: ' Haider Ali Khan '
* Created On: ' 01/09/2022 (DD/MM/YYYY) '
* Modified By:
* Description of Modification:
*
* #########################################################################
*/
    async preRequisiteTST882(page,specialtyColour,specialityLabel,clinicanColor,clinicianLabel) {
        await navigationBar.clickOnNavigationIcon(page,"Settings");
        await navigationPage.verifyPage(page,"Settings");
        await this.clickOnCard(page,"Systems");
        await navigationPage.verifyPage(page,"Systems Settings");
        await patMergePage.selectOption(page,"Information Screens");
        await navigationPage.verifyPage(page,"Information Screen Settings");
        await navigationPage.verifyModule(page,"Location List");
        await announcementPage.clickOnActionIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Menu");
        await announcementPage.verifyPopUpLabel(page,"Menu");
        await announcementPage.clickOnActionItem(page,"Configure Specialty Colours");
        await announcementPage.waitForLoadingWithTitle(page,"Specialty");
        await announcementPage.verifyPopUpLabel(page,"Specialty");
        let accidentAndEmergencyColourElementXpath = "//div[text()='"+specialityLabel+"']/following-sibling::span[@style]";
        let accidentAndEmergencyColourElement = await page.waitForXPath(accidentAndEmergencyColourElementXpath);
        let actualAccidentAndEmergencyColourRGBValue = await this.getStyleInRGBFromXpath(page,accidentAndEmergencyColourElementXpath,"background-color");
        console.log("Actual Color: "+actualAccidentAndEmergencyColourRGBValue);
        let expectedAccidentAndEmergencyColourRGBValue = this.getColorValueInRGBFromText(specialtyColour);
        console.log("Expected Color: "+expectedAccidentAndEmergencyColourRGBValue);
        if(accidentAndEmergencyColourElement===null||actualAccidentAndEmergencyColourRGBValue.trim()!==expectedAccidentAndEmergencyColourRGBValue.trim()){
            console.log("Applying Color")
            await announcementPage.clickOnActionItem(page,specialityLabel);
            await announcementPage.waitForLoadingWithTitle(page,"Select Specialty Colour");
            await announcementPage.verifyPopUpLabel(page,"Select Specialty Colour");
            await announcementPage.clickOnActionItem(page,specialtyColour);
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoadingWithTitle(page, "Submission Status");
            await announcementPage.verifyPopUpLabel(page, "Submission Status");
            await announcementPage.verifyForm(page, "Success");
            await announcementPage.clickonCheckIcon(page);
        }else{
            console.log("Color Already Applied")
        }
        await announcementPage.clickonPopUpBackIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Menu");
        await announcementPage.verifyPopUpLabel(page,"Menu");
        await announcementPage.clickOnActionItem(page,"Configure Clinician Colours");
        await announcementPage.waitForLoadingWithTitle(page,"Clinician");
        await announcementPage.verifyPopUpLabel(page,"Clinician");
        let clinicianElementXpath = "//div[text()='"+clinicianLabel+"']/../following-sibling::div/span[@style]";
        let clinicianColourElement = await page.waitForXPath(clinicianElementXpath);
        let actualClinicianRGBValue = await this.getStyleInRGBFromXpath(page,clinicianElementXpath,"background-color");
        console.log("Actual Color: "+actualClinicianRGBValue);
        let expectedClinicianRGBValue = this.getColorValueInRGBFromText(clinicanColor);
        console.log("Expected Color: "+expectedClinicianRGBValue);
        if(clinicianColourElement===null||actualClinicianRGBValue.trim()!==expectedClinicianRGBValue.trim()){
            console.log("Applying Color")
            await announcementPage.clickOnActionItem(page,clinicianLabel);
            await announcementPage.waitForLoadingWithTitle(page,"Select Clinician Colour");
            await announcementPage.verifyPopUpLabel(page,"Select Clinician Colour");
            await announcementPage.clickOnActionItem(page,clinicanColor);
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoadingWithTitle(page, "Submission Status");
            await announcementPage.verifyPopUpLabel(page, "Submission Status");
            await announcementPage.verifyForm(page, "Success");
            await announcementPage.clickonCheckIcon(page);
        }else{
            console.log("Color Already Applied")
        }
        await announcementPage.clickonPopUpBackIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Menu");
        await announcementPage.verifyPopUpLabel(page,"Menu");
        await announcementPage.clickonPopUpBackIcon(page);
    }

    /*
* #########################################################################
*
* ' Method Name: verifyDemographicsBar(Webdriver) '
* Description: This Utility method verifies if the demographic bar exists or not '
* Input parameters: ' Webdriver '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyDemographicsBar(page) {

        try
        {
            await page.waitForXPath(informationScreenLocators.xpath.demographicBar, { visible: true });
        }
        catch (e)
        {
            expect(false).to.be.true;
        }

    }


    /*
* #########################################################################
*
* ' Method Name: verifyDemographicsDOB(Webdriver, string) '
* Description: This Utility method verifies if the date in the demographic bar exists or not '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/

    async verifyDemographicsDOB(page,value) {

        let detailItemText = await Input.getElementTextUsingXpath(page,informationScreenLocators.xpath.demographicBarDOB,"innerText");
        expect(detailItemText).to.be.equal(value);

    }


    /*
* #########################################################################
*
* ' Method Name: verifyDemographicsGender(Webdriver, string) '
* Description: This Utility method verifies if the gender in the demographic bar exists or not '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyDemographicsGender(page,value) {

        let detailItemText = await Input.getElementTextUsingXpath(page,informationScreenLocators.xpath.demographicBarGender,"innerText");
        expect(detailItemText).to.be.equal(value);

    }


    /*
* #########################################################################
*
* ' Method Name: verifyDemographicsNHS(Webdriver, string) '
* Description: This Utility method verifies if the NHS in the demographic bar exists or not '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyDemographicsNHS(page,value) {

        let detailItemText = await Input.getElementTextUsingXpath(page,informationScreenLocators.xpath.demographicBarNHS,"innerText");
        expect(detailItemText.toUpperCase()).to.be.equal(value.toUpperCase());

    }

    /*
* #########################################################################
*
* ' Method Name: verifyHistory(Webdriver, string, string, string, string) '
* Description: This Utility method verifies the history of a patient '
* Input parameters: ' Webdriver, string, string, string, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyHistory(page,ward,loc,status,date) {

        let xpath = "//div[contains(@class,'navigation-container hide-arrow')]/div[contains(@class,'navigation-text')]/div[contains(text(),\"" + ward + "\")]/../span[contains(@class,'description-text')][contains(text(),\"" + loc + "\")]/../span[contains(@class,'description-text')][contains(text(),\"" + status + "\")]/../../div[contains(@class,'navigation-value')][contains(text(),\"" + date + "\")]"
        let pageValue = await Input.getElementTextUsingXpath(page,xpath,"innerText");
        expect(date).to.be.equal(pageValue);

    }


    /*
* #########################################################################
*
* ' Method Name: verifySummaryDemographicsBar(Webdriver) '
* Description: This Utility method verifies if the demographic bar exists or not in the summary popup '
* Input parameters: ' Webdriver '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifySummaryDemographicsBar(page) {

        try
        {
            await page.waitForXPath(informationScreenLocators.xpath.SummaryDemographicBar, { visible: true });
        }
        catch (e)
        {
            expect(false).to.be.true;
        }

    }


    /*
* #########################################################################
*
* ' Method Name: verifySummaryNHS(Webdriver, string) '
* Description: This Utility method verifies if the NHS in the demographic bar exists or not in the summary popup '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifySummaryNHS(page,value) {

        let xpath = "//span[contains(.,\"" + value + "\")]"
        let pageValue = await Input.getElementTextUsingXpath(page,xpath,"innerText");
        expect(value).to.be.equal(pageValue);

    }


    /*
* #########################################################################
*
* ' Method Name: verifySummaryGender(Webdriver, string) '
* Description: This Utility method verifies if the gender in the demographic bar exists or not in the summary popup '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifySummaryGender(page,value) {

        let xpath = "//span[contains(.,\"" + value + "\")]"
        let pageValue = await Input.getElementTextUsingXpath(page,xpath,"innerText");
        expect(value).to.be.equal(pageValue);

    }


    /*
* #########################################################################
*
* ' Method Name: DecommissionStatus(Webdriver, string) '
* Description: This Utility method verifies the status of bed '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async DecommissionStatus(page,value) {

        let detailItemText = await Input.getElementTextUsingXpath(page,informationScreenLocators.xpath.DecommissionStatus,"innerText");
        expect(detailItemText.toUpperCase()).to.be.equal(value.toUpperCase());

    }


    /*
* #########################################################################
*
* ' Method Name: SlotStatus(Webdriver, string, string) '
* Description: This Utility method verifies the status of slot '
* Input parameters: ' Webdriver, string, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async SlotStatus(page,value,option) {

        let xpath = "//div[@class='slot-container default']/div[contains(.,\"" + value + "\")]/div[@class='details']/div[@class='details--full']/div[@class='info-status--unavailable'][contains(text(),\"" + option + "\")]"
        let pageValue = await Input.getElementTextUsingXpath(page,xpath,"innerText");
        expect(option).to.be.equal(pageValue);

    }


    /*
* #########################################################################
*
* ' Method Name: UnavailabilityReason(Webdriver, string, string) '
* Description: This Utility method verifies if the unavailability reason is correct '
* Input parameters: ' Webdriver, string, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async UnavailabilityReason(page,value,option) {

        let xpath = "//div[@class='slot-container default']/div[contains(.,\"" + value + "\")]/div[@class='details']/div[@class='details--full']/div[@class='info-status-details']/div[contains(text(),\"" + option + "\")]"
        let pageValue = await Input.getElementTextUsingXpath(page,xpath,"innerText");
        expect(option).to.be.equal(pageValue);

    }


    /*
* #########################################################################
*
* ' Method Name: enterClinicalPersonnel(Webdriver, string) '
* Description: This Utility method enters clinical persons name '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async enterClinicalPersonnel(page,value) {

        await Input_utility.enterTextXpath(page,informationScreenLocators.xpath.ClinicalPersonnel,value);

    }


    /*
* #########################################################################
*
* ' Method Name: verifyOptionAndValue(Webdriver, string, string) '
* Description: This Utility method verifies the option and its values '
* Input parameters: ' Webdriver, string, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyOptionAndValue(page,option,value) {

        let xpath = "//div[contains(@class,'selection')]/div[contains(text(),\"" + option + "\")]/../div[contains(@class,'selection-value ')][contains(text(),\"" + value + "\")]"
        let pageValue = await Input.getElementTextUsingXpath(page,xpath,"innerText");
        expect(value).to.be.equal(pageValue);

    }

    /*
* #########################################################################
*
* ' Method Name: verifySiteInColumn(Webdriver, string, string, string) '
* Description: This Utility method verifies the name of the selected site in the table column '
* Input parameters: ' Webdriver, string, string, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifySiteInColumn(page,column,code,value) {

        let xpath = "//div[contains(@class,'table-row clickable')]/div[contains(text(),\"" + code + "\")][1]/following-sibling::div["+column+"]"
        let pageValue = await Input.getElementTextUsingXpath(page,xpath,"innerText");
        expect(pageValue).to.be.equal(value);

    }


    /*
* #########################################################################
*
* ' Method Name: verifySiteInColumn(Webdriver, string, string, string) '
* Description: This Utility method clicks on the module back button '
* Input parameters: ' Webdriver, string, string, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async moduleBackBtn(page) {

        console.log("Click on BackIcon");
        await click_utility.clickElementByXpath(page,informationScreenLocators.xpath.moduleBackBtn);
        await page.waitForTimeout(2000);

    }

    /*
* #########################################################################
*
* ' Method Name: titleDOB(Webdriver) '
* Description: This Utility method verifies the DOB in the title '
* Input parameters: ' Webdriver '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async titleDOB(page) {

        try
        {
            await page.waitForXPath(informationScreenLocators.xpath.titleDOB, { visible: true });
        }
        catch (e)
        {
            expect(false).to.be.true;
        }

    }


    /*
* #########################################################################
*
* ' Method Name: titleNHS(Webdriver) '
* Description: This Utility method verifies the NHS in the title '
* Input parameters: ' Webdriver '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async titleNHS(page) {

        try
        {
            await page.waitForXPath(informationScreenLocators.xpath.titleNHS, { visible: true });
        }
        catch (e)
        {
            expect(false).to.be.true;
        }

    }


    /*
* #########################################################################
*
* ' Method Name: titleGender(Webdriver) '
* Description: This Utility method verifies the gender in the title '
* Input parameters: ' Webdriver '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async titleGender(page) {

        try
        {
            await page.waitForXPath(informationScreenLocators.xpath.titleGender, { visible: true });
        }
        catch (e)
        {
            expect(false).to.be.true;
        }

    }


    /*
* #########################################################################
*
* ' Method Name: specialityGreyDot(Webdriver, string) '
* Description: This Utility method verifies that the speciality dot is gey color before selection '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async specialityGreyDot(page,speciality) {

        let xpath = "//div[contains(@class,'container-column')]/div[contains(@class,'container-item container-text standard')][contains(text(),\"" + speciality + "\")]/../span[contains(@class,'list-picker-color-circle specialty-color-empty')]"

        let element = await page.waitForXPath(xpath);
        const className = await(await element.getProperty("className")).jsonValue();
        console.log(className);
        if(className.includes("specialty-color-empty")){

            expect(className).to.be.include("specialty-color-empty");
        }

    }

    /*
* #########################################################################
*
* ' Method Name: getColorValueInRGBFromText(string) '
* Description: This Utility method returns the color rgb values from colour name '
* Input parameters: ' String ' Return value: String '
* Created By: ' Haider Ali Khan '
* Created On: ' 01/09/2022 (DD/MM/YYYY) '
* Modified By:
* Description of Modification:
*
* #########################################################################
*/
    getColorValueInRGBFromText(colorName){
        console.log("Getting RGB From Text: "+colorName);
        const hexValue = documentSettingsPage.getColorValue(colorName);
        let rgbValues = documentSettingsPage.hexToRgb(hexValue);
        return "rgb(" + rgbValues[0] + ", " + rgbValues[1] + ", " + rgbValues[2] + ")";
    }

/*
* #########################################################################
*
* ' Method Name: getBackgroundColorInRGBFromXpath(WebDriver, string, string) '
* Description: This Utility method returns the style from the element '
* Input parameters: ' WebDriver, String, String ' Return value: String '
* Created By: ' Haider Ali Khan '
* Created On: ' 01/09/2022 (DD/MM/YYYY) '
* Modified By:
* Description of Modification:
*
* #########################################################################
*/
    async getStyleInRGBFromXpath(page,xpath,style){
        console.log("Getting RGB From Xpath: "+xpath);
        console.log("With Style: "+style);
        let element = await page.waitForXPath(xpath);
        if(element===null){
            throw new Error( "Element not Found:" + element )
        }
        try{
            return await page.evaluate((element) => {
                element.focus();
                return window.getComputedStyle(element).getPropertyValue(style);
            }, element);
        }
        catch (e) {
            console.log("Catch Exception: "+e);
            let styleProperty = await page.evaluate(el => el.getAttribute("style"), element);
            // let styleProperty = await(await element.getProperty("style")).jsonValue();
            console.log("Style Property Found: "+JSON.stringify(styleProperty));
            styleProperty = styleProperty.toString().split(";");
            console.log("Style Property Found as Array: "+styleProperty);
            let styleValue=-1;
             styleProperty.some(function(item){
                console.log("Item in Array: "+item);
                let itemSeperation=item.split(":");
                console.log("Item as Array: "+itemSeperation);
                console.log("Item at index 0: "+itemSeperation[0]);
                console.log("Styling: "+style);
                console.log(itemSeperation[0].toString().toLowerCase().trim()===style.toString().toLowerCase().trim());
                if(itemSeperation[0].toString().trim()===style||style.includes(itemSeperation[0].toString().trim())){
                    console.log(style+" : "+itemSeperation[1]);
                    styleValue= itemSeperation[1];
                    return styleValue;
                }
            })
            return styleValue;
        }
    }

    /*
* #########################################################################
*
* ' Method Name: verifyStatusTextColor(WebDriver, string, string) '
* Description: This Utility method verifies the color by comparing the rgb values '
* Input parameters: ' WebDriver, String, String'
* Created By: ' Haider Ali Khan '
* Created On: ' 01/09/2022 (DD/MM/YYYY) '
* Modified By:
* Description of Modification:
*
* #########################################################################
*/
    async verifyStatusTextColor(page, style,statusText, statusColor) {
        console.log("Color: "+statusColor);
        const hexValue = documentSettingsPage.getColorValue(statusColor);
        let rgbValues = documentSettingsPage.hexToRgb(hexValue);
        let colorRGB ="rgb("+rgbValues[0]+", "+rgbValues[1]+", "+rgbValues[2]+")";
        console.log("Color RGB: "+colorRGB);
        let elementsXpathToGetPropertyWithStyle = "//div[text()='"+statusText+"']/following-sibling::span[@style]|//div[text()='"+statusText+"']/../following-sibling::div/span[@style]";
        console.log("Getting Computed Style");
        let colorValue = await this.getStyleInRGBFromXpath(page,elementsXpathToGetPropertyWithStyle,style);
        expect(colorValue.trim()).to.be.equal(colorRGB.trim());

    }

    async verifyWardClinicianColor(page, wardNumber, clinicianName, clinicianColor) {
        console.log("Color: "+clinicianColor);
        const hexValue = documentSettingsPage.getColorValue(clinicianColor);
        let rgbValues = documentSettingsPage.hexToRgb(hexValue);
        let colorRGB ="rgb("+rgbValues[0]+", "+rgbValues[1]+", "+rgbValues[2]+")";
        console.log("Color RGB: "+colorRGB);
        let elementsXpathToGetPropertyWithStyle = "//div[text()='"+wardNumber+"']//..//following-sibling::div//div[@style]";
        console.log("Getting Computed Style");
        let colorValue = await this.getStyleInRGBFromXpath(page,elementsXpathToGetPropertyWithStyle,"background-color");
        expect(colorValue.trim()).to.be.equal(colorRGB.trim());
    }

    async checkIfIndicatorExistAndCreateIfItDoesnt(page, indicatorName, indicatorProperty) {
        let indicatorNames = await Input.getTextOfTheElements(page,informationScreenLocators.xpath.indicatorNameRows);
        let index=-1;
        for(let name of indicatorNames){
            index = indicatorNames.indexOf(name)+1;
            if(indicatorName===name){
                return;
            }
        }
        await announcementPage.clickOnPlusIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"New Clinical Indicator");
        await announcementPage.verifyPopUpLabel(page,"New Clinical Indicator");
        await patientRecordsPage.inlineInput(page,"Name",indicatorName);
        await announcementPage.clickOnActionItem(page,"Property");
        await announcementPage.waitForLoadingWithTitle(page,"Property Search");
        await announcementPage.verifyPopUpLabel(page,"Property Search");
        await navigationPage.clickOnPopupItem(page, "Create Property");
        await announcementPage.waitForLoadingWithTitle(page,"Create Property");
        await announcementPage.verifyPopUpLabel(page,"Create Property");
        await announcementPage.enterTextInTextArea(page, "Prop_"+indicatorProperty+"_Code");
        await announcementPage.clickonCheckIcon(page);
        await navigationPage.clickOnPopupItem(page, "Name");
        await announcementPage.enterTextInTextArea(page, "Prop_"+indicatorProperty+"_Name");
        await announcementPage.clickonCheckIcon(page);
        await navigationPage.clickOnPopupItem(page, "Description");
        await announcementPage.enterTextInTextArea(page, "Prop_"+indicatorProperty+"_Description");
        await announcementPage.clickonCheckIcon(page);
        await navigationPage.clickOnPopupItem(page, "Type");
        await announcementPage.waitForLoadingWithTitle(page,"Select Property Type");
        await announcementPage.verifyPopUpLabel(page,"Select Property Type");
        await navigationPage.clickOnPopupItem(page, "Text-Input-Inline");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Property Details Summary");
        await announcementPage.verifyPopUpLabel(page,"Property Details Summary");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Submission Status");
        await announcementPage.verifyPopUpLabel(page,"Submission Status");
        await announcementPage.verifyForm(page, "Success");
        // await announcementPage.clickonCheckIcon(page);
        await navigationPage.clickOnPopupItem(page, "Publish Property");
        await announcementPage.waitForLoadingWithTitle(page,"Publish Property");
        await announcementPage.verifyPopUpLabel(page,"Publish Property");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Submission Status");
        await announcementPage.verifyPopUpLabel(page,"Submission Status");
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"New Clinical Indicator");
        await announcementPage.verifyPopUpLabel(page,"New Clinical Indicator");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"New Clinical Indicator");
        await announcementPage.verifyPopUpLabel(page,"New Clinical Indicator");
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Clinical Indicator Details");
        await announcementPage.verifyPopUpLabel(page,"Clinical Indicator Details");
        await announcementPage.clickOnPopUpActionIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Indicator Actions");
        await announcementPage.verifyPopUpLabel(page,"Indicator Actions");
        await announcementPage.clickOnActionItem(page,"Activate");
        await announcementPage.waitForLoadingWithTitle(page,"Indicator Actions");
        await announcementPage.verifyPopUpLabel(page,"Indicator Actions");
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Clinical Indicator Details");
        await announcementPage.verifyPopUpLabel(page,"Clinical Indicator Details");
        await announcementPage.clickonPopUpBackIcon(page);
    }



    /*
* #########################################################################
*
* ' Method Name: checkDeceasedStatus(Webdriver, string ) '
* Description: This Utility method verifies that the patient is deceased or not '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async checkDeceasedStatus(page,name) {

        let xpath = "//div[contains(@class,'data-set-wrapper')]/div[contains(@class,'data-set')]/div[contains(@class,'data-set-body')]/div[contains(@class,'deceased')]/div[contains(@class,'data-set-cell')][text()=\"" + name + "\"]"

        try {
            await announcementPage.waitForLoading(page);
            await page.waitForXPath(xpath, { visible: true });
            expect(true).to.be.true;
        } catch (e) {
            expect(false).to.be.true;
        }
    }


    /*
* #########################################################################
*
* ' Method Name: verifyInformationDemographicGender(Webdriver, string) '
* Description: This Utility method verifies if the gender in the demographic bar exists or not '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyInformationDemographicGender(page,value) {

        let detailItemText = await Input.getElementTextUsingXpath(page,informationScreenLocators.xpath.gender,"innerText");
        expect(detailItemText).to.be.equal(value);

    }


    /*
* #########################################################################
*
* ' Method Name: verifyInformationDemographicDOB(Webdriver, string) '
* Description: This Utility method verifies if the DOB in the demographic bar exists or not '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyInformationDemographicDOB(page,value) {

        let detailItemText = await Input.getElementTextUsingXpath(page,informationScreenLocators.xpath.dob,"innerText");
        expect(detailItemText).to.be.equal(value);

    }


    /*
* #########################################################################
*
* ' Method Name: verifyInformationDemographicNHS(Webdriver, string) '
* Description: This Utility method verifies if the NHS in the demographic bar exists or not '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyInformationDemographicNHS(page,value) {

        let detailItemText = await Input.getElementTextUsingXpath(page,informationScreenLocators.xpath.nhs,"innerText");
        expect(detailItemText).to.be.equal(value);

    }


    /*
* #########################################################################
*
* ' Method Name: openNewTab(Webdriver) '
* Description: This Utility method verifies if the NHS in the demographic bar exists or not '
* Input parameters: ' Webdriver, string '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/10/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async openNewTab(world) {

        world.pages = await world.pages();
        world.page =  world.pages[1];


    }

    async openNewTabWithCredentials(world,label) {
        const page = await world.browser.newPage();
        await this.urlLoad(page);
        if(label.toLowerCase()==="haider")   await login_utility.loginAppHaider(page);
        else if(label.toLowerCase()==="asher") await login_utility.loginAppAshar(page);
        else if(label.toLowerCase()==="profile changing") await login_utility.loginRole(page);
        else await login_utility.loginAppEjaz(page);
        return page;
    }

    async urlLoad(page){
        try {
            let response =  await page.goto(url.urls.url, {waitUntil: 'load', timeout: 0});
            // console.log("Response: "+JSON.stringify(response)+ "=>>>>>>>"+response.toString())
        } catch (e) {
            // console.log("no response trying to reload..." + e.message)
            await this.urlLoad();
        }
    }


    async checkLocalClinicalIndicatorList(page, value) {
        let subHeader = "Clinical Indicators";
        let resourceListXpath = "//div[contains(@class,'sub-header')][contains(.,'"+subHeader+"')]//following-sibling::div/div[1]";
        let resourceListText = await input.getTextOfTheElements(page,resourceListXpath);
        for (const item of resourceListText) {
            if(item===value) {
                let xpath = "(//div[contains(@class,'sub-header')][contains(.,'Indicator')]//following-sibling::div//div[text()='"+value+"']/..//following-sibling::div//div[contains(@class,'selection-delete')])[1]";
                await click_utility.clickElementByXpath(page,xpath);
                await page.waitForTimeout(3000);
            }
        }
        await announcementPage.clickOnPopUpActionIcon(page);
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Clinical Indicator Menu");
        await announcementPage.clickOnActionItem(page,"Add Clinical Indicator");
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Select Clinical Indicator");
        await announcementPage.clickOnActionItem(page,value);
        await announcementPage.waitForLoading(page);
        await announcementPage.verifyPopUpLabel(page,"Submission Success");
        await announcementPage.verifyForm(page,"Submission Successful");
        await announcementPage.clickonCheckIcon(page);
    }

    async createResetWardIfNotExist(page, name) {
        let elements = await input.getTextOfTheElements(page,navBarLocators.xpath.tableCells);
        if(!elements.includes(name)){
            await announcementPage.clickOnActionIcon(page);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Menu");
            await announcementPage.clickOnActionItem(page,"Create Information Screen");
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Create");
            await announcementPage.clickOnActionItem(page,"Organisation");
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Select Organisation");
            await announcementPage.clickOnActionItem(page,"Organisation");
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Select Organisation");
            await announcementPage.clickOnActionItem(page,"Diana Princess of Wales Hospital");
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Create");
            await announcementPage.clickOnActionItem(page,"Location");
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Select Location");
            await announcementPage.clickOnActionItem(page,name);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Create");
            await announcementPage.clickOnActionItem(page,"Primary Specialty");
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Specialty");
            await announcementPage.clickOnActionItem(page,"Accident & Emergency");
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Create");
            await announcementPage.clickOnActionItem(page,"Secondary Specialties");
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Specialties");
            await announcementPage.clickOnActionItem(page,"Accident & Emergency");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Create");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Summary");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Created");
            await announcementPage.verifyForm(page,"Information Screen Created")
            await announcementPage.clickonCheckIcon(page);
        }
        else {
            await roleSettingsPage.clickTable(page,name);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Location Details");
            await announcementPage.clickOnPopUpActionIcon(page);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Location Menu");
            await announcementPage.clickOnActionItem(page,"Edit");
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Edit Location Details");
            await announcementPage.clickOnActionItem(page,"Primary Specialty");
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Specialty");
            await announcementPage.clickOnActionItem(page,"Accident & Emergency");
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Edit Location Details");
            await announcementPage.clickOnActionItem(page,"Secondary Specialties");
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Specialties");
            await this.deselectAllSpecialties(page);
            await announcementPage.clickOnActionItem(page,"Accident & Emergency");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Edit Location Details");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Submission Successfull");
            await announcementPage.verifyForm(page,"Success");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoading(page);
            await announcementPage.verifyPopUpLabel(page,"Location Details");
            await announcementPage.clickonPopUpBackIcon(page);
        }
    }

    async deselectAllSpecialties(page) {
        console.log("Deselect All Specialties");
        let allPermissionElements = await page.$x(settingLocators.informationScreen.specilties);
        console.log("Element List: "+allPermissionElements.length);
        for(let element of allPermissionElements){
            await console.log("Loop Value: "+allPermissionElements.indexOf(element));
            await this.LoopingDeselection(page,element);
        }
    }

    async LoopingDeselection(page,item){
        let className = await (await item.getProperty('className')).jsonValue();
        if(!className.includes('active')) {
            await console.log("Class: "+className);
            return;
        }
        await page.evaluate(item=>item.click(),item);
        await this.LoopingDeselection(page,item);
    }

}
export default new InformationScreenSettings();