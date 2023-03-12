import input from "../../../utilities/input";
import navigationLocator from "../../locators/navigationBar.json";
import {expect} from "chai";
import clicking from "../../../utilities/clicking";
import clinicalLocators from "../../locators/clinicalRecords.json";
import announcementPage from "./announcementPage";

class PatientRecordsPage {

    async enterTextInInputField(page, label, value) {
        let inputXpath = "//input[contains(@placeholder,'"+label+"')]"
        await input.enterTextXpath(page,inputXpath,value);
    }

    async verifyEventListTable(page, value) {
        let emptyText = await input.getElementTextUsingXpath(page,navigationLocator.xpath.eventListTable,"textContent");
        if(emptyText!=="Loading"){
            await expect(emptyText).to.includes(value);
            return;
        }
        await page.waitForTimeout(5000);
        await this.verifyEventListTable(page,value);
    }

    async verifyEventReport(page, label, value) {
        let eventXpath = "//div[contains(text(),'"+label+"')]/following-sibling::div|//span[contains(text(),'"+label+"')]/../following-sibling::div";
        // let iframeXpath = "//div[contains(@class,'iframe-container')]/iframe";
        let iframeElement = await page.frames();
        for (const item of iframeElement) {
            await console.log("Name: "+item.name());
        }
        await announcementPage.waitForLoading(iframeElement[1]);
        let eventValue = await input.getElementTextUsingXpath(iframeElement[1],eventXpath,"innerText");
        expect(eventValue).to.be.equal(value);
    }

    async verifyEventListReport(page, label, value) {
        let eventXpath = "//div[contains(text(),'"+label+"')]/following-sibling::div|//span[contains(text(),'"+label+"')]/../following-sibling::div";
        // let iframeXpath = "//div[contains(@class,'iframe-container')]/iframe";
        let eventValue = await input.getElementTextUsingXpath(page,eventXpath,"innerText");
        expect(eventValue).to.be.equal(value);
    }

    async inlineInput(page, label, value) {
        let xpathInline = "//span[contains(text(),'"+label+"')]/../following-sibling::div//input|//div[contains(text(),'"+label+"')]/../following-sibling::div//input|//div[contains(text(),'"+label+"')]/following-sibling::div//input";
        await input.removeTextByXpath(page,xpathInline);
        await input.enterTextXpath(page,xpathInline,value);
    }

    async clickActionIconByLabel(page, label) {
        let xpath = "//div[contains(text(),'"+label+"')]//following-sibling::div[contains(@class,'navigation-menu-hamburger')]"
        await clicking.clickElementByXpath(page,xpath);
    }

    async verifyCurrentDateExists(page) {
        let value = await input.getTextOfTheElements(page,navigationLocator.xpath.tableHeaderCells);
        if(value.length>0){
            let currentDate = await this.customDate("dd-MMM-yyyy");
            expect(currentDate).to.be.equal(value[0]);
        }
        else
            expect(false).to.be.true;
    }

    async customDate(format){
        // let format = "dd-MMM-YYYY HH:MM";
        const date = new Date();
        const map = {
            // mm: date.getMonth() + 1,
            MMM: date.toLocaleString('default', { month: 'short' }),
            dd: date.getDate(),
            // yy: date.getFullYear().toString().slice(-2),
            yyyy: date.getFullYear(),
            HH: ((date.getHours()<10?'0':'') + date.getHours()),
            MM: ((date.getMinutes()<10?'0':'') + date.getMinutes())
        }
        // console.log(ex);
        return format.replace(/MMM|dd|yyyy|HH|MM/gi, matched => map[matched]);
    }

    async clickFirstOption(page,label) {
        let firstOption = "(//div[contains(text(),'"+label+"')])[1]";
        await clicking.clickElementByXpath(page,firstOption);
    }

    async verifyEventReportPackage(page, label) {
        let iframeElement = await page.frames();
        let eventValue = await input.getElementTextUsingXpath(iframeElement[1],navigationLocator.xpath.eventReportPackageName,"innerText");
        expect(eventValue).to.be.equal(label);
    }

    async verifyDocumentsName(page, documentsName) {
        let iframeElement = await page.frames();
        let documentName = await input.getTextOfTheElements(iframeElement[1],navigationLocator.xpath.eventReportDocumentNames);
        let documents = documentsName.split(",");
        console.log(documents);
        console.log(documentName);
        expect(documents).to.be.eql(documentName);
    }

    async verifyDocumentStatus(page, docName, docStatus, docStatusValue) {
        let iframeElement = await page.frames();
        let docStatusXpath = "//div[contains(@id,'page')]//div[contains(text(),'"+docName+"')]/ancestor::div[contains(@class,'group group__standard')]/following-sibling::div[1]//div[contains(text(),'"+docStatus+"')]/following-sibling::div[contains(@class,'property-value')]"
        let docValue = await input.getElementTextUsingXpath(iframeElement[1],docStatusXpath,"innerText");
        expect(docStatusValue).to.be.equal(docValue);
    }

    async verifyDocumentStatusLocalFile(page, docName, docStatus, docStatusValue) {
        let docStatusXpath = "//div[contains(@id,'page')]//div[contains(text(),'"+docName+"')]/ancestor::div[contains(@class,'group group__standard')]/following-sibling::div[1]//div[contains(text(),'"+docStatus+"')]/following-sibling::div[contains(@class,'property-value')]"
        let docValue = await input.getElementTextUsingXpath(page,docStatusXpath,"innerText");
        expect(docStatusValue).to.be.equal(docValue);
    }

    async verifyEventReportDocumentStatusPropertyValue(page, docName, docSection, docProp, docPropValue) {
        let iframeElement = await page.frames();
        let docSectionPropValue = "(//div[contains(@id,'page')]//div[contains(text(),'"+docName+"')]/ancestor::div[contains(@class,'group group__standard')]/following-sibling::div//div[contains(text(),'"+docSection+"')]/..//following-sibling::div)[2]//span[contains(text(),'"+docProp+"')]/..//following-sibling::div"
        let docValue = await input.getElementTextUsingXpath(iframeElement[1],docSectionPropValue,"innerText");
        expect(docPropValue).to.be.equal(docValue);
    }

    async verifyEventReportDocumentStatusPropertyValueLocalFile(page, docName, docSection, docProp, docPropValue) {
        let docSectionPropValue = "(//div[contains(@id,'page')]//div[contains(text(),'"+docName+"')]/ancestor::div[contains(@class,'group group__standard')]/following-sibling::div//div[contains(text(),'"+docSection+"')]/..//following-sibling::div)[2]//span[contains(text(),'"+docProp+"')]/..//following-sibling::div"
        let docValue = await input.getElementTextUsingXpath(page,docSectionPropValue,"innerText");
        expect(docPropValue).to.be.equal(docValue);
    }

    async verifyEventReportDocumentSectionPropertiesOrder(page, docName, docSection, docProps) {
        let iframeElement = await page.frames();
        let docSectionProperties = "(//div[contains(@id,'page')]//div[contains(text(),'"+docName+"')]/ancestor::div[contains(@class,'group group__standard')]/following-sibling::div//div[contains(text(),'"+docSection+"')]/..//following-sibling::div)[2]//div[contains(@class,'property-value')]/span[1]";
        let propOrder = await input.getTextOfTheElements(iframeElement[1],docSectionProperties);
        expect(docProps.split(",")).to.be.eql(propOrder);
    }

    async verifyPatientDeceased(page,isDead) {
        let element = await page.waitForXPath(clinicalLocators.patientIdentifier.xpath.demoGraphicsGenderColor)
        let className = await (await element.getProperty('className')).jsonValue();
        if(className.includes("deceased")){
            expect(isDead).to.be.equal("true");
        }
        else
            expect(isDead).to.be.equal("false");
    }
}

export default new PatientRecordsPage()
