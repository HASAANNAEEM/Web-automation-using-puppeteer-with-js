import click_utility from "../../../utilities/clicking";
import Input_utility from "../../../utilities/input";
import input from "../../../utilities/input";
import Input from "../../../utilities/input";
import systemsLocators from "../../locators/systems.json";
import {expect} from "chai";
import announcementPage from "./announcementPage";
import assesmentsPage from "./assesmeentsPage";
import accountSettingsPage from "./accountSettingsPage";
import utility from "../../../utilities/utility";
import clinicalRecordsPage from "./clinicalRecordsPage";
import patientRecordsPage from "./patientRecordsPage";
import patientSummaryLocators from "../../locators/patientSumary.json";
import navigationBar from "./navigationBar";
import navigationPage from "./navigationBar";
import patMergePage from "./patMergePage";
import settingLocators from "../../locators/settings.json";
import clinicalNotingPage from "./clinicalNotingPage";
import roleSettingsPage from "./roleSettingsPage";
import settingsLocators from "../../locators/settings.json";

class resultsAcknowledgementPage {
    acknowledgedBy;
    acknowledgedOn;
    saveRows;
    patientReportDisciple;
    patientReportDiscipleTime;


    async selectReport(page, value) {
        let report = "(//div[@class='container-item container-text full-width' and contains(text(),'" + value + "')])[1]";
        await click_utility.clickElementByXpath(page, report);
    }

    async verifyReport(page,value) {
       // let value = "Radiology System - MRI";
        let report = "//td[contains(text(),'"+value+"')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page, report, "textContent");
        expect(elementValue).to.be.equal(value);
    }

    async verifyReportStatus(page, labelName) {

        let value = "//div[contains(text(),'Status')]/following-sibling::div";
        let statusText = await Input.getElementTextUsingXpath(page, value, "textContent");

        expect(labelName).not.to.be.equal(statusText);

    }

    async verifyReportName(page, labelName) {

        await page.waitForTimeout(2000);
        let value = "//div[contains(@class,'filter-children ')]//div[text()='" + labelName + "']";

        try {

            let elementValue = await Input_utility.getElementTextUsingXpath(page, value, "textContent");
            expect(labelName).to.be.equal(elementValue);

        } catch (e) {
            throw new Error(`Unable to find element with xpath ${value} , ${e.stack}`)
        }

    }

    async verifyAckReport(page, value) {
    }

    async selectLoc(page, value) {

        let loc = "//div[@class='container-item container-text --capitalize' and contains(text(),'" + value + "')]";
        await click_utility.clickElementByXpath(page, loc);
    }

    async clickFirstActiveLozengeFilterParameter(page) {
        await click_utility.clickElementByXpath(page, systemsLocators.results.xpath.activeLozenge);
    }

    async verifyPatientNameAndNumberInHeading(page, patientNameValue, patientNHSNumberValue,headerValue) {
        let patientNameXpath = "//div[@class='sub-header-text' and contains(text(),'"+headerValue+"')]/..//../following-sibling::div//div[@class='main-data']//div[@class='display-name']";
        let actualPatientName = await input.getElementTextUsingXpath(page,patientNameXpath,"textContent");
        expect(actualPatientName.trim()).to.be.equal(patientNameValue.trim());
        let patientNHSNumberXpath = "//div[@class='sub-header-text' and contains(text(),'"+headerValue+"')]/..//../following-sibling::div//div[@class='main-data']//div[@class='patient-identifier']/span[2]";
        let actualPatientNHSNumber = await input.getElementTextUsingXpath(page,patientNHSNumberXpath,"textContent");
        actualPatientNHSNumber = actualPatientNHSNumber.split(" ").join("");
        expect(actualPatientNHSNumber.trim()).to.be.equal(patientNHSNumberValue.trim());
    }

    async findIndexForReport(page, patientReportNameValue, patientReportTimeValue) {
        await page.waitForTimeout(5000);
        console.log("Patient Report Name: " + patientReportNameValue);
        console.log("Patient Report Time: " + patientReportTimeValue);
        await page.waitForTimeout(5000);
        let reportRows = await page.$x(systemsLocators.results.xpath.patientReportRows);
        console.log("Rows: " + reportRows.length);
        let index = 0;
        if (reportRows.length > 0) {
            for (let reportRow in reportRows) {
                reportRow++;
                let reportNameXpath = "(//div[@class='event-item']/div/following-sibling::div//div[2]//div[contains(@class,'container-text')][1])[" + reportRow + "]";
                let reportName = await input.getElementTextUsingXpath(page, reportNameXpath, "textContent");
                let reportTimeXpath = "(//div[@class='event-item']/div/following-sibling::div//div[contains(@class,'description')][1])[" + reportRow + "]";
                let reportTime = await input.getElementTextUsingXpath(page, reportTimeXpath, "textContent");
                console.log("Report Index: " + reportRow);
                console.log("Report Name: " + reportName);
                console.log("Report Time: " + reportTime);
                if (reportName === patientReportNameValue && reportTime === patientReportTimeValue) {
                    console.log("Report Found at index: " + reportRow);
                    index = reportRow;
                    break;
                } else console.log("No Report Found at index: " + reportRow);
            }
        }
        return index;
    }

    async checkIfPatientReportExistsToBeAcknowledged(page, patientReportNameValue, patientReportTimeValue, patientNumberValue) {
        await assesmentsPage.clickModuleNavigator(page, "To Acknowledge");
        await this.verifyModuleNavigatorSelected(page, "To Acknowledge");
        await announcementPage.waitForPageToLoad(page);
        let index = await this.findIndexForReport(page, patientReportNameValue, patientReportTimeValue);
        try {
            let reportXpath = "//div[@class='event-item']/div/following-sibling::div[" + index + "]";
            await click_utility.clickElementByXpath(page, reportXpath);
            await page.waitForTimeout(10000);
        } catch (e) {
            await assesmentsPage.clickModuleNavigator(page, "To Action");
            await this.verifyModuleNavigatorSelected(page, "To Action");
            await announcementPage.waitForPageToLoad(page);
            await this.searchPatient(page, patientNumberValue);
            index = await this.findIndexForReport(page, patientReportNameValue, patientReportTimeValue);
            try {
                let reportXpath = "//div[@class='event-item']/div/following-sibling::div[" + index + "]";
                await click_utility.clickElementByXpath(page, reportXpath);
                await page.waitForTimeout(5000);
            } catch (e) {
                try {
                    console.log("No Report Found");
                    await assesmentsPage.clickModuleNavigator(page, "To Review");
                    await this.verifyModuleNavigatorSelected(page, "To Review");
                    await announcementPage.waitForPageToLoad(page);
                    await this.searchPatient(page, patientNumberValue);
                    // await this.verifyPatientNameAndNumberInHeading(page, "resultsAcknowledgementData|patientIdentifiers.patient1.patientName", "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner", "Results");
                    index = await this.findIndexForReport(page, patientReportNameValue, patientReportTimeValue);
                    let reportXpath = "//div[@class='event-item']/div/following-sibling::div[" + index + "]";
                    await click_utility.clickElementByXpath(page, reportXpath);
                    await page.waitForTimeout(5000);
                    await announcementPage.clickOnActionIcon(page);
                    await announcementPage.waitForLoadingWithTitle(page, "Actions");
                    await announcementPage.verifyPopUpLabel(page, "Actions");
                    await announcementPage.clickOnActionItem(page, "Unacknowledge");
                    await announcementPage.waitForLoadingWithTitle(page, "Confirm Actions");
                    await announcementPage.verifyPopUpLabel(page, "Confirm Actions");
                    await announcementPage.clickonCheckIcon(page);
                    await announcementPage.waitForLoadingWithTitle(page, "Submission");
                    await announcementPage.verifyPopUpLabel(page, "Submission");
                    await announcementPage.verifyForm(page, "Success");
                    await announcementPage.clickonCheckIcon(page);
                    await assesmentsPage.clickModuleNavigator(page, "To Acknowledge");
                    await this.verifyModuleNavigatorSelected(page, "To Acknowledge");
                    await announcementPage.waitForLoading(page);
                    await click_utility.clickElementByXpath(page, "//div[@class='event-item']/div/following-sibling::div[" + index + "]");
                    await announcementPage.waitForLoading(page);
                    await announcementPage.clickOnActionIcon(page);
                    await announcementPage.waitForLoadingWithTitle(page, "Actions");
                    await announcementPage.verifyPopUpLabel(page, "Actions");
                    await announcementPage.clickOnActionItem(page, "Acknowledge");
                    await announcementPage.waitForLoadingWithTitle(page, "Confirm Actions");
                    await announcementPage.verifyPopUpLabel(page, "Confirm Actions");
                    await announcementPage.clickOnActionItem(page, "Follow-Up Actions");
                    await announcementPage.waitForLoadingWithTitle(page, "Select Follow Up Actions");
                    await announcementPage.verifyPopUpLabel(page, "Select Follow Up Actions");
                    await announcementPage.clickOnActionItem(page, "Action Taken - See Notes");
                    await announcementPage.clickOnActionItem(page, "Results Noted But No Further Action Required");
                    await announcementPage.clickonCheckIcon(page);
                    await announcementPage.waitForLoadingWithTitle(page, "Confirm Actions");
                    await announcementPage.verifyPopUpLabel(page, "Confirm Actions");
                    await announcementPage.clickonCheckIcon(page);
                    await announcementPage.waitForLoadingWithTitle(page, "Submission");
                    await announcementPage.verifyPopUpLabel(page, "Submission");
                    await announcementPage.verifyForm(page, "Success");
                    await announcementPage.clickonCheckIcon(page);
                    return;
                } catch (e) {
                    throw Error(e);
                }
            }
            let iframeElement = await page.frames();
            await announcementPage.waitForLoading(iframeElement[1]);
            await announcementPage.waitForLoading(page);
            await announcementPage.waitForPageToLoad(page);
            await announcementPage.waitForPageToLoad(iframeElement[1]);
            await announcementPage.clickOnActionIcon(page);
            await announcementPage.waitForLoadingWithTitle(page, "Actions");
            await announcementPage.verifyPopUpLabel(page, "Actions");
            await announcementPage.clickOnActionItem(page, "Unacknowledge");
            await announcementPage.waitForLoadingWithTitle(page, "Confirm Actions");
            await announcementPage.verifyPopUpLabel(page, "Confirm Actions");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoadingWithTitle(page, "Submission");
            await announcementPage.verifyPopUpLabel(page, "Submission");
            await announcementPage.verifyForm(page, "Success");
            await announcementPage.clickonCheckIcon(page);
            await assesmentsPage.clickModuleNavigator(page, "To Acknowledge");
            await this.verifyModuleNavigatorSelected(page, "To Acknowledge");
            await announcementPage.waitForLoading(page);
            index = await this.findIndexForReport(page, patientReportNameValue, patientReportTimeValue);
            await click_utility.clickElementByXpath(page, "//div[@class='event-item']/div/following-sibling::div[" + index + "]");
        }
        await announcementPage.waitForLoading(page);
        await announcementPage.clickOnActionIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Actions");
        await announcementPage.verifyPopUpLabel(page, "Actions");
        await announcementPage.clickOnActionItem(page, "Acknowledge");
        await announcementPage.waitForLoadingWithTitle(page, "Confirm Actions");
        await announcementPage.verifyPopUpLabel(page, "Confirm Actions");
        await announcementPage.clickOnActionItem(page, "Follow-Up Actions");
        await announcementPage.waitForLoadingWithTitle(page, "Select Follow Up Actions");
        await announcementPage.verifyPopUpLabel(page, "Select Follow Up Actions");
        await announcementPage.clickOnActionItem(page, "Action Taken - See Notes");
        await announcementPage.clickOnActionItem(page, "Results Noted But No Further Action Required");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Confirm Actions");
        await announcementPage.verifyPopUpLabel(page, "Confirm Actions");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Submission");
        await announcementPage.verifyPopUpLabel(page, "Submission");
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
    }

    async checkIfPatientReportExistsToBeUnacknowledged(page, patientReportNameValue, patientReportTimeValue, patientNumberValue) {
        await assesmentsPage.clickModuleNavigator(page, "To Acknowledge");
        await this.verifyModuleNavigatorSelected(page, "To Acknowledge");
        await announcementPage.waitForPageToLoad(page);
        await this.searchPatient(page, patientNumberValue)
        console.log("Patient Report Name: " + patientReportNameValue);
        console.log("Patient Report Time: " + patientReportTimeValue);
        let index = await this.findIndexForReport(page, patientReportNameValue, patientReportTimeValue);
        try {
            let reportXpath = "//div[@class='event-item']/div/following-sibling::div[" + index + "]"
            await click_utility.clickElementByXpath(page, reportXpath);
            await page.waitForTimeout(10000);
        } catch (e) {
            await assesmentsPage.clickModuleNavigator(page, "To Action");
            await this.verifyModuleNavigatorSelected(page, "To Action");
            await page.waitForTimeout(10000);
            await this.searchPatient(page, patientNumberValue);
            console.log("Patient Report Name: " + patientReportNameValue);
            console.log("Patient Report Time: " + patientReportTimeValue);
            index = await this.findIndexForReport(page, patientReportNameValue, patientReportTimeValue);
            try {
                let reportXpath = "//div[@class='event-item']/div/following-sibling::div[" + index + "]"
                await click_utility.clickElementByXpath(page, reportXpath);
                await page.waitForTimeout(5000);
            } catch (e) {
                try {
                    console.log("No Report Found");
                    await assesmentsPage.clickModuleNavigator(page, "To Review");
                    await this.verifyModuleNavigatorSelected(page, "To Review");
                    await page.waitForTimeout(10000);
                    await this.searchPatient(page, patientNumberValue)
                    // await this.verifyPatientNameAndNumberInHeading(page, "resultsAcknowledgementData|patientIdentifiers.patient1.patientName", "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner", "Results");
                    index = await this.findIndexForReport(page, patientReportNameValue, patientReportTimeValue);
                    let reportXpath = "//div[@class='event-item']/div/following-sibling::div[" + index + "]"
                    await click_utility.clickElementByXpath(page, reportXpath);
                } catch (e) {
                    throw Error(e);
                }
            }
            let iframeElement = await page.frames();
            await announcementPage.waitForLoading(iframeElement[1]);
            await announcementPage.waitForLoading(page);
            await announcementPage.waitForPageToLoad(page);
            await announcementPage.waitForPageToLoad(iframeElement[1]);
            await announcementPage.clickOnActionIcon(page);
            await announcementPage.waitForLoadingWithTitle(page, "Actions");
            await announcementPage.verifyPopUpLabel(page, "Actions");
            await announcementPage.clickOnActionItem(page, "Unacknowledge");
            await announcementPage.waitForLoadingWithTitle(page, "Confirm Actions");
            await announcementPage.verifyPopUpLabel(page, "Confirm Actions");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoadingWithTitle(page, "Submission");
            await announcementPage.verifyPopUpLabel(page, "Submission");
            await announcementPage.verifyForm(page, "Success");
            await announcementPage.clickonCheckIcon(page);
            await assesmentsPage.clickModuleNavigator(page, "To Acknowledge");
            await this.verifyModuleNavigatorSelected(page, "To Acknowledge");
        }
    }

    async searchPatient(page, patientJson) {
        await accountSettingsPage.clickNavigationSearchIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Reports Search");
        await announcementPage.verifyPopUpLabel(page, "Reports Search");
        await announcementPage.clickOnActionItem(page, "Patient Identifier");
        await announcementPage.waitForLoadingWithTitle(page, "Patient Identifier Search");
        await announcementPage.verifyPopUpLabel(page, "Patient Identifier Search");
        let patientIdentifierSearch = await utility.getJsonValue(patientJson);
        await clinicalRecordsPage.enterPatientIndentifierSearch(page, patientIdentifierSearch);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoading(page);
        await announcementPage.waitForLoadingWithTitle(page, "Confirmation Required");
        await announcementPage.verifyPopUpLabel(page, "Confirmation Required");
        await announcementPage.clickOnActionItem(page, "Continue");
        await page.waitForTimeout(10000);
    }

    async selectAcknowledgedReport(page, patientReportNameValue, patientReportTimeValue) {
        await page.waitForTimeout(5000);
        console.log("Patient Report Name: " + patientReportNameValue);
        console.log("Patient Report Time: " + patientReportTimeValue);
        await page.waitForTimeout(5000);
        let reportRows = await page.$x(systemsLocators.results.xpath.patientReportRows);
        let index = 0;
        console.log("All Rows: "+reportRows.length);
        for(let reportRow in reportRows){
            console.log("In Loop");
            reportRow++;
            let reportNameXpath = "(//div[@class='event-item']/div/following-sibling::div//div[2]//div[contains(@class,'container-text')][1])["+reportRow+"]";
            let reportName = await input.getElementTextUsingXpath(page,reportNameXpath,'textContent');
            let reportTimeXpath = "(//div[@class='event-item']/div/following-sibling::div//div[contains(@class,'description')][1])["+reportRow+"]";
            let reportTime = await input.getElementTextUsingXpath(page,reportTimeXpath,'textContent');
            console.log("Report Name: "+reportName);
            console.log("Report Name Json: "+patientReportNameValue);
            console.log("Report Time: "+reportTime);
            console.log("Report Time Json: "+patientReportTimeValue);
            console.log("index: "+reportRow);
            if(reportName===patientReportNameValue && reportTime===patientReportTimeValue){
                console.log("Report Found at index: "+reportRow);
                index=reportRow;
                break;
            }
            console.log("Report Not Found at index: "+reportRow);
        }
        let reportXpath = "((//div[@class='event-item']/div/following-sibling::div)["+index+"]//div[contains(@class,'event-acknowledged')])[1]";
        await page.waitForXPath(reportXpath,{visible:true});
        await click_utility.clickElementByXpath(page, "(//div[@class='event-item']/div/following-sibling::div)["+index+"]");
    }

    async selectAcknowledgedReportWithoutTag(page, patientReportNameValue, patientReportTimeValue) {
        await page.waitForTimeout(5000);
        console.log("Patient Report Name: " + patientReportNameValue);
        console.log("Patient Report Time: " + patientReportTimeValue);
        await page.waitForTimeout(5000);
        let reportRows = await page.$x(systemsLocators.results.xpath.patientReportRows);
        console.log("All Rows: "+reportRows.length);
        let index = 0;
        for(let reportRow in reportRows){
            reportRow++;
            let reportNameXpath = "(//div[@class='event-item']/div/following-sibling::div//div[2]//div[contains(@class,'container-text')][1])["+reportRow+"]"
            let reportName = await input.getElementTextUsingXpath(page,reportNameXpath,'textContent');
            let reportTimeXpath = "(//div[@class='event-item']/div/following-sibling::div//div[contains(@class,'description')][1])["+reportRow+"]"
            let reportTime = await input.getElementTextUsingXpath(page,reportTimeXpath,'textContent');
            console.log("Report Name: "+reportName);
            console.log("Report Name Json: "+patientReportNameValue);
            console.log("Report Time: "+reportTime);
            console.log("Report Time Json: "+patientReportTimeValue);
            console.log("index: "+reportRow);
            if(reportName===patientReportNameValue && reportTime===patientReportTimeValue){
                console.log("Report Found at index: "+reportRow);
                index=reportRow;
                break;
            }
            console.log("Report Not Found at index: "+reportRow);
        }
        await click_utility.clickElementByXpath(page, "(//div[@class='event-item']/div/following-sibling::div)["+index+"]");
    }

    async saveAcknowledgeInformation(page, attachment) {
        this.acknowledgedBy = await input.getElementTextUsingXpath(page,systemsLocators.results.xpath.eventReportAcknowledgedBy,"textContent");
        this.acknowledgedOn = await input.getElementTextUsingXpath(page,systemsLocators.results.xpath.eventReportAcknowledgedTime,"textContent");
        await attachment.attach("Acknowledged By: "+this.acknowledgedBy, 'text/plain');
        await attachment.attach("Acknowledged On: "+this.acknowledgedOn, 'text/plain');
    }

    async verifySubHeader(page, subHeaderName) {
        let subHeaderValues = await input.getTextOfTheElements(page,systemsLocators.results.xpath.popUpSubHeader);
        for(let subHeaderValue of subHeaderValues){
            if(subHeaderValue.trim()===subHeaderName.trim()){
                expect(true).to.be.true;
                return;
            }
        }
        expect(true).to.be.false;
    }

    async verifyValueAlreadyExists(page, label, value) {
        let elementXpath = "//div[@id='appended-elements']//div[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']/../following-sibling::div/div[contains(@class,'container-text')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,elementXpath,"textContent");
        await expect(elementValue.trim().toUpperCase()).to.be.equal(value.trim().toUpperCase());
    }

    async verifyEventReportEventIcon(page, patientReportNameValue, patientReportTimeValue) {
        let reportTimeXpath = "//div[@class='table-body']//div[contains(@title,'"+patientReportNameValue+"')]/div[1][text()='"+patientReportTimeValue+"']/span"
        const element = await page.waitForXPath(reportTimeXpath,{visible:true});
        const className = await (await element.getProperty('className')).jsonValue();
        expect(className).to.include("event-note");
    }

    async verifyAllReportsStatus(page, label, value) {
        let reportRows = await page.$x(systemsLocators.results.xpath.patientReportRows);
        for(let reportRow of reportRows){
            await reportRow.click();
            try {
                await announcementPage.clickOnActionItem(page, "Do Not Acknowledge")
            } catch (e) {
                console.log("Pop-Up Found");
            }
            await page.waitForTimeout(10000);
            // await announcementPage.waitForLoadingWithTitle(page,"Event Report");
            // const elementHandle = await page.waitForXPath("//*[@id='event-list-iframe']",{visible:true});
            // const frame = await elementHandle.contentFrame();
            await patientRecordsPage.verifyEventReport(page,label,value);
        }
    }

    async clickParam(page, value) {

        let Param = "//div[@class = 'container-item container-icon parameters-filter']";
        await click_utility.clickElementByXpath(page,Param);
    }

    async verifyModuleNavigatorSelected(page, label) {
        console.log("Verifying Current Module: " + label);
        await page.waitForTimeout(5000);
        let elementsText = await input.getTextOfTheElements(page, patientSummaryLocators.patientSummaryPage.patientAssessments.moduleNavigator);
        console.log("items: "+elementsText);
        let index = 0;
        for (let item of elementsText) {
            index++;
            if (item === label) {
                console.log("Module Found: "+label+" at index: " + index);
                break;
            } else{
                console.log("Module Not Found at index: " + index);
            }
            console.log("Index Value: "+index);
        }
        let moduleXpath = "(//div[contains(@class,'module-navigator-items')]//div)[" + index + "]";
        let element = await page.waitForXPath(moduleXpath, {visible: true, timeout: 30000});
        let className = await (await element.getProperty('className')).jsonValue();
        console.log(className);
        expect(className).to.includes("active")
    }

    async checkPreRequisiteTST859(page, reportToKeepActive) {
        await navigationBar.clickOnNavigationIcon(page, "Settings");
        await navigationPage.verifyPage(page, "Settings");
        await patMergePage.selectOption(page, "Roles");
        await navigationPage.verifyPage(page, "Role Settings");
        await navigationPage.verifyModule(page, "Role List");
        let rolesName = await Input.getTextOfTheElements(page, settingLocators.roleSettingsPage.xpath.rolesListsName);
        if (!rolesName.includes("TST859")) {
            await announcementPage.clickOnPlusIcon(page);
            await announcementPage.waitForLoadingWithTitle(page, "Create New Role");
            await announcementPage.verifyPopUpLabel(page, "Create New Role");
            await roleSettingsPage.inputValueInline(page, "Name", "TST859");
            await roleSettingsPage.inputValueInline(page, "Display Name", "TST859");
            await announcementPage.clickToggleButton(page, "Active");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoadingWithTitle(page, "Create New Role Summary");
            await announcementPage.verifyPopUpLabel(page, "Create New Role Summary");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoadingWithTitle(page, "Submission Status");
            await announcementPage.verifyPopUpLabel(page, "Submission Status");
            await announcementPage.verifyForm(page, "Success");
            await announcementPage.clickonCheckIcon(page);
            await page.reload();
            await navigationPage.verifyPage(page, "Role Settings");
            await navigationPage.verifyModule(page, "Role List");
            rolesName = await Input.getTextOfTheElements(page, settingLocators.roleSettingsPage.xpath.rolesListsName);
        }
        let index = rolesName.indexOf("TST859") + 1;
        let tst859Xpath = "(//div[contains(@class,'data-set-body')]/div/div[1])[" + index + "]";
        await click_utility.clickElementByXpath(page, tst859Xpath);
        await announcementPage.waitForLoadingWithTitle(page, "Role Details");
        await announcementPage.verifyPopUpLabel(page, "Role Details");
        await announcementPage.clickOnActionIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Menu");
        await announcementPage.verifyPopUpLabel(page, "Menu");
        await announcementPage.clickOnActionItem(page, "Configure Permissions");
        await announcementPage.waitForLoadingWithTitle(page, "Role Permissions");
        await announcementPage.verifyPopUpLabel(page, "Role Permissions");
        await roleSettingsPage.deselectAllPermission(page);
        await announcementPage.clickOnActionItem(page, "Systems");
        await announcementPage.waitForLoadingWithTitle(page, "Role Permissions");
        await announcementPage.verifyPopUpLabel(page, "Role Permissions");
        await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Reports", "active");
        await announcementPage.clickonPopUpBackIcon(page);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Submission Status");
        await announcementPage.verifyPopUpLabel(page, "Submission Status");
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickOnActionIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Menu");
        await announcementPage.verifyPopUpLabel(page, "Menu");
        await announcementPage.clickOnActionItem(page, "Configure Report Permissions");
        await announcementPage.waitForLoadingWithTitle(page, "Role Permissions");
        await announcementPage.verifyPopUpLabel(page, "Role Permissions");
        await roleSettingsPage.deselectAllPermission(page);
        await page.waitForTimeout(1000);
        await clinicalNotingPage.makeReportPermissionsActiveInActive(page, reportToKeepActive, "active");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Submission Status");
        await announcementPage.verifyPopUpLabel(page, "Submission Status");
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickonPopUpBackIcon(page);
        await navigationBar.clickOnNavigationIcon(page, "Systems");
        await navigationPage.verifyPage(page, "Systems");
    }

    async verifyEventReportLast(page, label, value) {
        console.log("Verifying Last Event Report with Label:" + label + " has Value: " + value);
        let eventXpath = "(//div[text()='" + label + "']/following-sibling::div)[last()]|(//span[text()='" + label + "']/../following-sibling::div)[last()]";
        // let iframeXpath = "//div[contains(@class,'iframe-container')]/iframe";
        let iframeElement = await page.frames();
        for (const item of iframeElement) {
            await console.log("Name: " + item.name());
        }
        let eventValue = await input.getElementTextUsingXpath(iframeElement[1], eventXpath, "innerText");
        expect(eventValue).to.be.equal(value);
    }

    async verifyModuleDisable(page, label) {
        console.log("Verifying Module Disabled: " + label);
        let moduleXpath = "//div[contains(@class,'grid-cell')][translate(.,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" + label.toUpperCase() + "']";
        let element = await page.waitForXPath(moduleXpath);
        const className = await (await element.getProperty("className")).jsonValue();
        expect(className).to.includes("disabled");
    }

    async verifyModuleEnabled(page, label) {
        console.log("Verifying Module Enabled: " + label);
        let moduleXpath = "//div[contains(@class,'grid-cell')][translate(.,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" + label.toUpperCase() + "']";
        let element = await page.waitForXPath(moduleXpath);
        const className = await (await element.getProperty("className")).jsonValue();
        expect(className).to.not.includes("disabled");
    }

    async verifyReportsNames(page, reportsName) {
        console.log("Verifying All Available Reports are: " + reportsName);
        let reportRows = await page.$x(systemsLocators.results.xpath.patientReportRows);
        console.log("Rows: " + reportRows.length);
        if (reportRows.length > 0) {
            for (let reportRow in reportRows) {
                let reportMainElement = reportRows[reportRow];
                let className = await (await reportMainElement.getProperty("className")).jsonValue();
                console.log("ClassName: " + className);
                reportRow++;
                if (!className.includes("disabled")) {
                    let reportNameXpath = "(//div[@class='event-item']/div/following-sibling::div//div[2]//div[contains(@class,'container-text')][1])[" + reportRow + "]";
                    let reportName = await input.getElementTextUsingXpath(page,reportNameXpath,"textContent");
                    expect(reportName).to.equal(reportsName);
                }
            }
        }
    }

    async checkPopUpAppearsAndClose(page) {
        try {
            await page.waitForTimeout(5000);
            await page.waitForXPath(settingsLocators.announcementPage.xpath.verifyPopUp);
            try{
                await announcementPage.clickonPopUpBackIcon(page);
                console.log("Clicked on Popup Back Icon");
            }catch (e) {
                await announcementPage.clickonCrossIcon(page);
                console.log("Clicked on Popup Cross Icon");
            }

        }
        catch (e) {
            console.log("No PopUp Found");
        }
    }

    async verifyTableHasMultipleRows(page) {
        let items = await page.$x(systemsLocators.results.xpath.patientReportRows);
        console.log("Rows: "+items)
        expect(items.length).to.be.above(0);
    }

    async verifyTableHasDefinedRows(page,numberOfRows) {
        let items = await page.$x(systemsLocators.results.xpath.patientReportRows);
        console.log("Rows: "+items.length)
        expect(items.length).to.be.equal(parseInt(numberOfRows));
    }

    async verifyCharacterLimit(page,textArea) {
        let element = await page.waitForXPath(settingsLocators.announcementPage.xpath.popUpTextArea);
        let maxLength = await (await element.getProperty("maxlength")).jsonValue();
        expect(maxLength).to.be.equal(textArea);
    }

    async selectFirstReportInEventListOfReportPage(page) {
        await click_utility.clickElementByXpath(page,systemsLocators.results.xpath.firstPatientReport);
    }

    async saveNumberOfRowsAvailable(world) {
        this.saveRows=0;
        let items = await world.page.$x(systemsLocators.results.xpath.patientReportRows);
        this.saveRows=items.length;
        console.log("Rows: "+items.length)
        await world.attach("Rows: "+items.length, 'text/plain');
    }

    async compareRowsAndEqual(page) {
        let items = await page.$x(systemsLocators.results.xpath.patientReportRows);
        expect(items.length).to.be.equal(this.saveRows);
    }

    async verifyEventReportLastHeaderValue(page, header, value) {
        let eventXpath = "(//tr[@class='sub-header'][contains(.,'"+header+"')]//following-sibling::tr[1]//div)[last()]";
        // let iframeXpath = "//div[contains(@class,'iframe-container')]/iframe";
        let iframeElement = await page.frames();
        for (const item of iframeElement) {
            await console.log("Name: " + item.name());
        }
        let eventValue = await input.getElementTextUsingXpath(iframeElement[1], eventXpath, "innerText");
        expect(eventValue).to.be.equal(value);
    }

    async createRole(page,roleName){
        await announcementPage.clickOnPlusIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Create New Role");
        await announcementPage.verifyPopUpLabel(page, "Create New Role");
        await roleSettingsPage.inputValueInline(page, "Name", roleName);
        await roleSettingsPage.inputValueInline(page, "Display Name", roleName);
        await announcementPage.clickToggleButton(page, "Active");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Create New Role Summary");
        await announcementPage.verifyPopUpLabel(page, "Create New Role Summary");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Submission Status");
        await announcementPage.verifyPopUpLabel(page, "Submission Status");
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
        await page.reload();
        await navigationPage.verifyPage(page, "Role Settings");
        await navigationPage.verifyModule(page, "Role List");

    }

    async checkPreRequisiteTST866(page) {
        await navigationBar.clickOnNavigationIcon(page, "Settings");
        await navigationPage.verifyPage(page, "Settings");
        await patMergePage.selectOption(page, "Roles");
        await navigationPage.verifyPage(page, "Role Settings");
        await navigationPage.verifyModule(page, "Role List");
        let rolesName = await Input.getTextOfTheElements(page, settingLocators.roleSettingsPage.xpath.rolesListsName);
        if (!rolesName.includes("TST866")) {
            await this.createRole(page,"TST866");
            rolesName = await Input.getTextOfTheElements(page, settingLocators.roleSettingsPage.xpath.rolesListsName);
        }
        let index = rolesName.indexOf("TST866") + 1;
        let tst859Xpath = "(//div[contains(@class,'data-set-body')]/div/div[1])[" + index + "]";
        await click_utility.clickElementByXpath(page, tst859Xpath);
        await announcementPage.waitForLoadingWithTitle(page, "Role Details");
        await announcementPage.verifyPopUpLabel(page, "Role Details");
        await announcementPage.clickOnActionIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Menu");
        await announcementPage.verifyPopUpLabel(page, "Menu");
        await announcementPage.clickOnActionItem(page, "Configure Permissions");
        await announcementPage.waitForLoadingWithTitle(page, "Role Permissions");
        await announcementPage.verifyPopUpLabel(page, "Role Permissions");
        await roleSettingsPage.deselectAllPermission(page);
        await roleSettingsPage.selectAllPermission(page);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Submission Status");
        await announcementPage.verifyPopUpLabel(page, "Submission Status");
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickOnActionIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Menu");
        await announcementPage.verifyPopUpLabel(page, "Menu");
        await announcementPage.clickOnActionItem(page, "Configure Report Permissions");
        await announcementPage.waitForLoadingWithTitle(page, "Role Permissions");
        await announcementPage.verifyPopUpLabel(page, "Role Permissions");
        await roleSettingsPage.deselectAllPermission(page);
        await roleSettingsPage.selectAllPermission(page);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Submission Status");
        await announcementPage.verifyPopUpLabel(page, "Submission Status");
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickonPopUpBackIcon(page);
        await navigationBar.clickOnNavigationIcon(page, "Systems");
        await navigationPage.verifyPage(page, "Systems");
    }

    async saveFirstRowDataOfReportsAcknowledgementInPatientSummaryPage(world) {
        this.patientReportDisciple = await input.getElementTextUsingXpath(world.page,systemsLocators.results.xpath.firstDisciple,"textContent");
        this.patientReportDiscipleTime = await input.getElementTextUsingXpath(world.page,systemsLocators.results.xpath.firstDiscipleTime,"textContent");
        await world.attach("First Row Report Acknowledge Disciple Name: "+this.patientReportDisciple , 'text/plain');
        await world.attach("First Row Report Acknowledge Disciple Time: "+this.patientReportDiscipleTime , 'text/plain');
    }

    async clickFirstRowOnHeader(page, header) {
        await click_utility.clickElementByXpath(page,"(//div[text()='"+header+"']/../..//following-sibling::div//div[contains(@class,'full')])[1]")
    }

    async verifyReportDescipleNameAndTime(page) {
        let discipleName = await input.getElementTextUsingXpath(page,systemsLocators.results.xpath.procedureDiscipleName,"textContent");
        expect(discipleName).to.be.equal(this.patientReportDisciple);
        let discipleTime = await input.getElementTextUsingXpath(page,systemsLocators.results.xpath.procedureDiscipleNameTime,"textContent");
        expect(discipleTime).to.be.equal(this.patientReportDiscipleTime);
    }

    async verifyReportDescipleNameAndTimeInEventListTable(page) {
        let discipleName = await input.getElementTextUsingXpath(page,systemsLocators.results.xpath.eventListSelectedEventName,"textContent");
        expect(discipleName).to.be.equal(this.patientReportDisciple);
        let discipleTime = await input.getElementTextUsingXpath(page,systemsLocators.results.xpath.eventListSelectedEventDateTime,"textContent");
        this.patientReportDiscipleTime=this.patientReportDiscipleTime.split(" ");
        expect(discipleTime).to.be.equal(this.patientReportDiscipleTime[1]);
        let dateXpath = "//div[contains(@class,'hover')][contains(.,'"+discipleName+"')][contains(.,'"+discipleTime+"')]//div[contains(@class,'table-header-cell')][1]";
        let discipleDateTime = await input.getElementTextUsingXpath(page,dateXpath,"textContent");
        expect(discipleDateTime).to.be.equal(this.patientReportDiscipleTime[0]);
    }

    async checkIfPatientReportExistsToBeAuthorised(page, patientReportNameValue, patientReportTimeValue, patientNumberValue) {
        await assesmentsPage.clickModuleNavigator(page, "To Acknowledge");
        await this.verifyModuleNavigatorSelected(page, "To Acknowledge");
        await this.checkPopUpAppearsAndClose(page);
        await announcementPage.waitForPageToLoad(page);
        await this.searchPatient(page, patientNumberValue)
        console.log("Patient Report Name: " + patientReportNameValue);
        console.log("Patient Report Time: " + patientReportTimeValue);
        let index = await this.findIndexForReport(page, patientReportNameValue, patientReportTimeValue);
        try {
            let reportXpath = "//div[@class='event-item']/div/following-sibling::div[" + index + "]"
            await click_utility.clickElementByXpath(page, reportXpath);
            await page.waitForTimeout(5000);
        } catch (e) {
            console.log("No Report Found in To Acknowledge");
            await assesmentsPage.clickModuleNavigator(page, "To Action");
            await this.verifyModuleNavigatorSelected(page, "To Action");
            await this.checkPopUpAppearsAndClose(page);
            await page.waitForTimeout(10000);
            await this.searchPatient(page, patientNumberValue);
            console.log("Patient Report Name: " + patientReportNameValue);
            console.log("Patient Report Time: " + patientReportTimeValue);
            index = await this.findIndexForReport(page, patientReportNameValue, patientReportTimeValue);
            try {
                let reportXpath = "//div[@class='event-item']/div/following-sibling::div[" + index + "]"
                await click_utility.clickElementByXpath(page, reportXpath);
                await page.waitForTimeout(5000);
            } catch (e) {
                try {
                    console.log("No Report Found in To Action");
                    await assesmentsPage.clickModuleNavigator(page, "To Review");
                    await this.verifyModuleNavigatorSelected(page, "To Review");
                    await this.checkPopUpAppearsAndClose(page);
                    await page.waitForTimeout(10000);
                    await this.searchPatient(page, patientNumberValue)
                    // await this.verifyPatientNameAndNumberInHeading(page, "resultsAcknowledgementData|patientIdentifiers.patient1.patientName", "resultsAcknowledgementData|patientIdentifiers.patient1.nhsNumner", "Results");
                    index = await this.findIndexForReport(page, patientReportNameValue, patientReportTimeValue);
                    let reportXpath = "//div[@class='event-item']/div/following-sibling::div[" + index + "]"
                    await click_utility.clickElementByXpath(page, reportXpath);
                } catch (e) {
                    throw Error(e);
                }
                let iframeElement = await page.frames();
                await announcementPage.waitForLoading(iframeElement[1]);
                await announcementPage.waitForLoading(page);
                await announcementPage.waitForPageToLoad(page);
                await announcementPage.waitForPageToLoad(iframeElement[1]);
                await announcementPage.waitForLoadingWithTitle(page, "Actions");
                await announcementPage.verifyPopUpLabel(page, "Actions");
                await announcementPage.clickOnActionItem(page, "Unacknowledge");
                await announcementPage.waitForLoadingWithTitle(page, "Confirm Actions");
                await announcementPage.verifyPopUpLabel(page, "Confirm Actions");
                await announcementPage.clickonCheckIcon(page);
                await announcementPage.waitForLoadingWithTitle(page, "Submission");
                await announcementPage.verifyPopUpLabel(page, "Submission");
                await announcementPage.verifyForm(page, "Success");
                await announcementPage.clickonCheckIcon(page);
                await assesmentsPage.clickModuleNavigator(page, "To Acknowledge");
                await this.verifyModuleNavigatorSelected(page, "To Acknowledge");
                // index = await this.findIndexForReport(page, patientReportNameValue, patientReportTimeValue);
                // let reportXpath = "//div[@class='event-item']/div/following-sibling::div[" + index + "]"
                // await click_utility.clickElementByXpath(page, reportXpath);
            }
        }
        let iframeElement = await page.frames();
        await announcementPage.waitForLoading(iframeElement[1]);
        await announcementPage.waitForLoading(page);
        await announcementPage.waitForPageToLoad(page);
        await announcementPage.waitForPageToLoad(iframeElement[1]);
        await announcementPage.clickOnActionIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Actions");
        await announcementPage.verifyPopUpLabel(page, "Actions");
        try {
            await announcementPage.clickOnActionItem(page, "Authorise");
            await announcementPage.waitForLoadingWithTitle(page, "Confirm Actions");
            await announcementPage.verifyPopUpLabel(page, "Confirm Actions");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoadingWithTitle(page, "Submission");
            await announcementPage.verifyPopUpLabel(page, "Submission");
            await announcementPage.verifyForm(page, "Success");
            await announcementPage.clickonCheckIcon(page);
        }catch (e) {
            await announcementPage.clickonPopUpBackIcon(page);
            console.log("Already Authorised");
        }
    }

    async verifyReportInList(page) {

        let report = "(//div[@class='container-item container-text full-width' and contains(text(),'MRI')])[1]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page, report, "textContent");
        expect(elementValue).to.be.equal("MRI");
    }

    async noAcknowledgedTickReportExists(page) {
        try {
            await page.waitForXPath("//div[contains(@class,'event-acknowledged')]");
            expect(true).to.be.false;
        }catch (e) {
            expect(true).to.be.true;
        }
    }

    async verifyReportCR(page, value) {


    }
}

export default new resultsAcknowledgementPage()