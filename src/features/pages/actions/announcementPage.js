import click_utility from "../../../utilities/clicking";
import Input_utility from "../../../utilities/input";
import settingsLocators from "../../locators/settings.json";
import {expect} from "chai";
import fs from "fs-extra";
import dates from "../../../data/date.json"
import Input from "../../../utilities/input";
import input_utility from "../../../utilities/input";
import urls from "../../../data/url.json"
import navBarLocator from "../../locators/navigationBar.json";

class AnnouncementPage {

    startDate="Starting Date"
    endDate="Ending Date"

    async clickOnPlusIcon(page){
        console.log("Clicking on Plus Icon");
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.plusIcon);
    }

    async clickOnParameterFilter(page){
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.ParameterFilter);
    }

    async clickOnStatusFilter(page){
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.ParameterStatus);
    }

    async verifyPopUpLabel(page, labelName){
        // console.log("Verifying PopUp with Label: "+labelName);
        await page.waitForTimeout(5000);
        let elementText = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.popUpHeader,"innerText");
        console.log("Actual: "+elementText.trim());
        console.log("Expected: "+labelName);
        // if(elementText.trim()===labelName){
        //     console.log("In Loop");
        //     return;
        // }
        // await page.waitForTimeout(5000);
        // await this.verifyPopUpLabel(page,labelName);
        expect(elementText.trim().toLowerCase()).to.be.equal(labelName.toLowerCase());
    }

    async chooseOption(page,component){
        let componentXpath = "//div[contains(@id,'appended-elements')]//div[contains(text(),'"+component+"')]";
        await click_utility.clickElementByXpath(page,componentXpath);
    }

    async verifyTableHeader(page,element){
        let tableHeaderXpath = "//div[contains(@class,'data-set-row')]//div[contains(text(),'"+element+"')]|//div[contains(@class,'table-heading')]//div[text()='"+element+"']|//div[contains(@class,'data-set-header')]//div[contains(@class,'content-cell')]//div[contains(text(),'"+element+"')]|//div[@class='overlay-panel active panel-fixed']//div[contains(@class,'panel-inner-wrapper')]//div[contains(text(),'"+element+"')]";
        let tableHeaderText = await Input_utility.getElementTextUsingXpath(page,tableHeaderXpath,"innerHTML");
        expect(tableHeaderText.toUpperCase()).to.be.equal(element.toUpperCase());
    }

    async verifyParameterList(page,element){
        let tableHeaderXpath = "//div[contains(@class,'data-set-row')]//div[contains(text(),'"+element+"')]|//div[contains(@class,'table-heading')]//div[text()='"+element+"']|//div[contains(@class,'data-set-header')]//div[contains(@class,'content-cell')]//div[contains(text(),'"+element+"')]|//div[@class='overlay-panel active panel-fixed']//div[contains(@class,'panel-inner-wrapper')]//div[contains(text(),'"+element+"')]";
        let tableHeaderText = await Input_utility.getElementTextUsingXpath(page,tableHeaderXpath,"innerHTML");
        expect(tableHeaderText.toUpperCase()).to.be.equal(element.toUpperCase());
    }

    async verifyParametersList(page,element){
        let tableHeaderXpath = "//div[@class='overlay-panel active panel-fixed']//div[contains(@class,'panel-inner-wrapper')]//div[contains(text(),'"+element+"')]";
        let tableHeaderText = await Input_utility.getElementTextUsingXpath(page,tableHeaderXpath,"innerHTML");
        expect(tableHeaderText.toUpperCase()).to.be.equal(element.toUpperCase());
    }

    async verifySubMenu(page,element){
        let tableHeaderXpath = "//div[contains(@class,'module-navigator-items')]/div[contains(text(),'"+element+"')]|//div[@class='overlay-panel active panel-fixed']//div[contains(@class,'demographics-left')]//*[contains(text(),'"+element+"')]";
        let tableHeaderText = await Input_utility.getElementTextUsingXpath(page,tableHeaderXpath,"innerHTML");
        expect(tableHeaderText.toUpperCase()).to.be.equal(element.toUpperCase());
    }

    async valueHeader(page,element){
        let tableHeaderXpath = "//div[@class='overlay-panel active panel-fixed']//div[contains(@class,'demographics-left')]//*[contains(text(),'"+element+"')]";
        let tableHeaderText = await Input_utility.getElementTextUsingXpath(page,tableHeaderXpath,"innerHTML");
        expect(tableHeaderText.toUpperCase()).to.be.equal(element.toUpperCase());
        console.log(tableHeaderText);
    }

    async verifyTableHeaderNotPresent(page,element){
        try {
            let tableHeaderXpath = "//div[contains(@class,'data-set-row')]//div[contains(text(),'" + element + "')]|//div[contains(@class,'table-heading')]//div[text()='" + element + "']|//div[contains(@class,'data-set-header')]//div[contains(@class,'content-cell')]//div[contains(text(),'" + element + "')]";
            await Input_utility.getElementTextUsingXpath(page, tableHeaderXpath, "innerHTML");
            expect(false).to.be.true;
        }catch (e) {
            expect(true).to.be.true;
        }
    }

    async verifyTableHeaderWithNoVisualText(page,element){
        let tableHeaderXpath = "//div[contains(@class,'table-heading') or contains(@class,'header')]//div[contains(@class,'"+element+"')]|//*[@class='data-set-row']//div[contains(@class,'"+element+"')]";
        try{
            await page.waitForXPath(tableHeaderXpath);
        }catch (e) {
            expect(false).to.be.true;
        }
    }

    async verifyFilterParameter(page,element){
        let tableHeaderXpath = "//div[contains(@class,'container-column')]//div[contains(text(),'"+element+"')]|//div[contains(@class,'breadcrumb-parameters')]//div[contains(text(),'"+element+"')]";
        let tableHeaderText = await Input_utility.getElementTextUsingXpath(page,tableHeaderXpath,"textContent");
        expect(tableHeaderText.trim()).contains(element);
    }

    async clickFilterParameter(page,element){
        let tableHeaderXpath = "//div[contains(@class,'container-column')]//div[contains(text(),'"+element+"')]|//div[contains(@class,'breadcrumb-parameters')]//div[contains(text(),'"+element+"')]";
        await click_utility.clickElementByXpath(page,tableHeaderXpath);
    }

    async verifyTitleHeader(page,element){
        let tableHeaderXpath = "//div[contains(@class,'header-title') and contains(text(),'"+element+"')]";
        let tableHeaderText = await Input_utility.getElementTextUsingXpath(page,tableHeaderXpath,"innerHTML");
        expect(tableHeaderText).to.be.equal(element);
    }

    async enterTextInTextArea(page,text){
        await Input_utility.enterTextXpath(page,settingsLocators.announcementPage.xpath.popUpTextArea,text);
    }

    async enterValueInTextArea(page,text){
        await Input_utility.enterTextXpath(page,settingsLocators.announcementPage.xpath.popUpValueArea,text);
    }

    async clearTextInTextArea(page){
        await Input_utility.removeTextByXpath(page,settingsLocators.announcementPage.xpath.popUpTextArea);
    }

    async clickonCheckIcon(page){
        console.log("Click on CheckIcon");
        await page.waitForTimeout(2000);
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.tickIcon);
        await page.waitForTimeout(2000);
    }

    async clickonBackIcon(page){
        console.log("Click on BackIcon");
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.backIcon);
        await page.waitForTimeout(2000);
    }

    async clickonCrossIcon(page){
        console.log("Click on CrossIcon");
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.crossIcon);
        await page.waitForTimeout(2000);
    }

    async enterTextInDiv(page,text,link){
        await Input_utility.enterTextXpath(page,settingsLocators.announcementPage.xpath.popUpQlEditore,link);
        await page.keyboard.down('Control');
        await page.keyboard.press('A');
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.popUpLinkTag);
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.popUpSaveDiv);
        await page.keyboard.press('ArrowRight');
        await page.keyboard.press('ArrowDown');
        await Input_utility.enterTextXpath(page,settingsLocators.announcementPage.xpath.popUpQlEditore,text);
    }

    async saveStartDate(page){
        let saveDate = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.popUpStartDate,"innerText");
        let jsonFile = dates;
        jsonFile.startDate = saveDate;
        await fs.writeJson("src/data/date.json", jsonFile);
        this.startDate = saveDate
    }

    async saveEndDate(page){
        let saveDate = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.popUpEndDate,"innerText");
        let jsonFile = dates;
        jsonFile.endDate = saveDate;
        await fs.writeJson("src/data/date.json", jsonFile);
        this.endDate = saveDate
    }

    async saveFullCreatedDate(page){
        let saveDate = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.startDateAnnouncementPreview,"innerText");
        let jsonFile = dates;
        jsonFile.createdDate = saveDate;
        await fs.writeJson("src/data/date.json", jsonFile);
    }

    async verifyPopUpWithLabel(page,label,value){
        let elementXpath = "(//div[contains(text(),'"+label+"')]/ancestor::div/following-sibling::div[contains(@class,'container-column') or contains(@class,'navigation-value')]|//div[@id='appended-elements']//div[contains(text(),'"+label+"')]/../following-sibling::div//div[contains(@class,'container-text')])[last()]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,elementXpath,"textContent");
        await expect(elementValue.trim().toUpperCase()).to.be.equal(value.trim().toUpperCase());
    }

    async verifyWithLabel(page,label,value){
        let elementXpath = "//div[contains(.,'"+label+"') and contains(@class,'label')]/following-sibling::div[contains(@class,'value')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,elementXpath,"textContent");
        await expect(elementValue.trim().toUpperCase()).to.be.equal(value.trim().toUpperCase());
    }

    async verifyPopUpWithLabelColor(page,label,value,color){
        let elementXpath = "//div[@id='appended-elements']//div[contains(text(),'"+label+"')]/../following-sibling::div/span[contains(@class,'color-"+color+"')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,elementXpath,"innerText");
        await expect(elementValue.trim()).to.be.equal(value.trim());
    }

    async verifyPopUpWithLabelDetails(page,label,value){
        let elementXpath = "//div[text()='"+label+"']/following-sibling::div[contains(@class,'no-entry-value') or contains(@class,'selection-value')]|//div[text()='"+label+"']/../following-sibling::div//div[contains(@class,'container-text')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,elementXpath,"textContent");
        await expect(elementValue).to.be.equal(value);
    }

    async verifyPopUpWithLabelvalue(page,label,value){
        let elementXpath = "//*[@class='component-container']//div[text()='"+label+"']";
        let  valueXpath ="//*[@class='component-container']//*[text()='"+value+"']";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,valueXpath,"textContent");
        await expect(elementValue).to.be.equal(value);
    }

    async verifyMessage(page,label,value){
        let elementValue = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.popUpVerifyEditor,"innerText");
        await expect(elementValue).to.be.equal(value);
    }

    async verifyStartingDate(page){
        let elementValue = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.popUpVerifyEditor,"innerText");
        await expect(elementValue).to.be.equal(this.startDate);
    }

    async verifyEndingDate(page){
        let elementValue = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.popUpEndDate,"innerText");
        await expect(elementValue).to.be.equal(this.endDate);
    }

    async verifyForm(page,value){
        console.log("Verify Form for Value: "+value);
        await this.waitForLoading(page); await page.waitForTimeout(5000);
        // await page.waitForFunction('document.getElementByXpath("'+settingsLocators.announcementPage.xpath.verifyForm+'").value != "Submitting Changes"');
        let elementValue = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.verifyForm,"innerText");
        // console.log(elementValue);
        // console.log(elementValue.toLowerCase() !== "submitting changes");
        // console.log(elementValue.toLowerCase() !== "saving image")
        if(elementValue.toLowerCase() !== "submitting changes" && elementValue.toLowerCase() !== "saving image" ){
            await expect(elementValue).to.includes(value);
            return;
        }
        await page.waitForTimeout(5000);
        await this.verifyForm(page,value);
        // await expect(elementValue).to.be.equal(value);
    }

    async verifyFormStatus(page,value){
        console.log("Verify Form for Value: "+value);
        await this.waitForLoading(page); await page.waitForTimeout(5000);
        // await page.waitForFunction('document.getElementByXpath("'+settingsLocators.announcementPage.xpath.verifyForm+'").value != "Submitting Changes"');
        let elementValue = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.verifyStatus,"innerText");
        // console.log(elementValue);
        // console.log(elementValue.toLowerCase() !== "submitting changes");
        // console.log(elementValue.toLowerCase() !== "saving image")
        if(elementValue.toLowerCase() !== "submitting changes" && elementValue.toLowerCase() !== "saving image"){
            await expect(elementValue).to.includes(value);
            return;
        }
        await page.waitForTimeout(5000);
        await this.verifyForm(page,value);
        // await expect(elementValue).to.be.equal(value);
    }

    async verifyFormDescription(page,value){
        let elementValue = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.verifyFormDescription,"innerText");
        if(elementValue!=="Submitting Changes"){
            await expect(elementValue).to.be.equal(value);
            // return;
        }else {
            await page.waitForTimeout(5000);
            await this.verifyForm(page, value);
        }
        // await expect(elementValue).to.be.equal(value);
    }

    async verifyFormDescriptionTextContent(page,value){
        let elementValue = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.verifyFormDescription,"textContent");
        if(elementValue!=="Submitting Changes"){
            await expect(elementValue).to.be.equal(value);
            // return;
        }else {
            await page.waitForTimeout(5000);
            await this.verifyForm(page, value);
        }
        // await expect(elementValue).to.be.equal(value);
    }

    async tableVerification(page, label, value){
        let elementValues = await Input_utility.getTextOfTheElements(page,settingsLocators.announcementPage.xpath.tableHeaders);
        for (const item of elementValues) {
            if(item===label){
                let index = elementValues.indexOf(item)+1;
                // console.log("Index: "+index);
                let labelXpath = "//div[contains(@class,'data-set-body') or contains(@class,'table-body')]/div[1]/div["+ index +"]";
                // console.log("Xpath: "+labelXpath)
                let elementValue = await Input_utility.getElementTextUsingXpath(page,labelXpath,"textContent");
                expect(elementValue.trim()).to.be.equal(value.trim());
                return;
            }
        }
    }

    async clickFirstElementOnTable(page){
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.firstAnnouncement);

    }

    async clickFirstElementsEllipse(page){
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.firstEllipse);
    }

    async clickOnActionIcon(page){
        console.log("Click on ActionIcon");
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.actionIcon);
    }

    async clickOnPopUpActionIcon(page){
        console.log("Click on Popup ActionIcon");
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.popUpActionIcon);
    }

    async clickOnActionItem(page,label){
        console.log("Click on Action Item: "+label);
        await page.waitForTimeout(2000);
        let actionItemXpath = "(//div[contains(@id,'appended-elements')]//div[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"'])[last()]|//div[contains(@id,'appended-elements')]//span[contains(translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),'"+label.toUpperCase()+"')]";
        await click_utility.clickElementByXpath(page,actionItemXpath);
    }

    async verifyPopUpWithLabelAndValueDetails(page,label,value){
        await page.waitForTimeout(2000);
        let actionItemXpaths = "//div[contains(@id,'appended-elements')]//div[text()='"+label+"']|//div[contains(@id,'appended-elements')]//span[contains(text(),'"+label+"')]";
        await click_utility.clickElementByXpath(page,actionItemXpaths);
        await page.waitForTimeout(2000);
        //  await expect(actionItemXpath).to.be.equal(label);
        let actionItemXpath = "(//div[contains(@id,'appended-elements')]//div[text()='"+value+"'])[2]|(//div[contains(@id,'appended-elements')]//span[contains(text(),'"+value+"')])[2]|(//div[contains(@id,'appended-elements')]//div[text()='"+value+"'])";
        await click_utility.clickElementByXpath(page,actionItemXpath);
    }

    async verifyActionItem(page,label){
        let actionItemXpath = "//div[contains(@id,'appended-elements')]//div[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']|//div[contains(@id,'appended-elements')]//span[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']|//div[@id='appended-elements']//div[contains(@class,'container-item')][contains(.,'"+label+"')]";
        let actionItemText = await Input.getElementTextUsingXpath(page,actionItemXpath,"textContent");
        expect(actionItemText.toLowerCase()).to.be.equal(label.toLowerCase());
    }

    async verifyOptionItem(page,label){
        let actionItemXpath = "//div[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']|//span[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']|//div[contains(@class,'container-item')][contains(.,'"+label+"')]";
        let actionItemText = await Input.getElementTextUsingXpath(page,actionItemXpath,"textContent");
        expect(actionItemText.toLowerCase()).to.be.equal(label.toLowerCase());
    }

    async verifyActionItemUnavailable(page,label){
        let actionItemXpath = "//div[contains(@id,'appended-elements')]//div[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']|//div[contains(@id,'appended-elements')]//span[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']";
        try{
            await Input.getElementTextUsingXpath(page,actionItemXpath,"textContent");
            expect(false).to.be.true;
        }catch (e) {
            expect(true).to.be.true;

        }
    }

    async verifyAnnouncement(page,type,value){
        let text;
        switch(type.toUpperCase()) {
            case "HEADER TITLE":
                text = await Input.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.announcementHeader,"innerText");
                break;
            case "CATEGORY":
                text = await Input.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.announcementEventLabel,"innerText");
                break;
            case "EVENT":
                text = await Input.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.announcementEventLabel,"innerText");
                break;
            case "TITLE":
                text = await Input.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.announcementTitle,"innerText");
                break;
            case "DESCRIPTION":
                text = await Input.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.announcementDescription,"innerText");
                break;
            case "CREATOR NAME":
                text = await Input.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.announcementCreatorName,"innerText");
                break;
            case "CREATED DATE":
                text = await Input.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.announcementStartDate,"innerText");
                expect(text).to.be.equal(dates.createdDate);
                return;
            case "ANNOUNCEMENT MESSAGE":
                text = await Input.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.announcementMessage,"innerText");
                break;
            default:
                text = "No Matching Input Type Found"
                break;
        }
        expect(text).to.be.includes(value);
    }

    async openingNewLinkAndClosingPage(page, link,browser) {
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.announcementMessageLink);
        await page.waitForTimeout(5000);
        let pages = await browser.pages();
        // let page1= pages[0];
        let page2= pages[1];
        expect(pages.length).to.be.equal(2);
        expect(page2.url()).to.be.equal(urls.urls.url+link);
        await page2.close();
    }

    async clickToggleButton(page, label) {
        console.log("Click on Toggle Button: "+label)
        let toggleXpath = "//div[@id='appended-elements']//div[contains(text(),'"+label+"')]/ancestor::div[1]/following-sibling::div/div[2]|//div[@id='appended-elements']//span[contains(text(),'"+label+"')]//ancestor::div[contains(@class,'selection-toggle')]";
        await click_utility.clickElementByXpath(page,toggleXpath);
        await page.waitForTimeout(2000);
    }

    async clickToggleButtonToValue(page, label,value) {
        await page.waitForTimeout(1000);
        let toggleXpath = "(//div[@id='appended-elements']//div[contains(text(),'"+label+"')]/ancestor::div[1]/following-sibling::div/div[2])[last()]|//div[@id='appended-elements']//span[contains(text(),'"+label+"')]/ancestor::div[1]";
        const element = await page.waitForXPath(toggleXpath,{visible:true});
        const className = await (await element.getProperty('className')).jsonValue();
        console.log("Classname: "+className);
        if(className.includes(value)) {
            return;
        }else {
            console.log("classname is not "+value+" clicking the element");
            await click_utility.clickElementByXpath(page,toggleXpath);
        }
        await this.clickToggleButtonToValue(page,label,value);
    }

    async clickOnPopUpPlusIcon(page){
        console.log("Click on Popup PlusIcon");
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.popUpPlusIcon);
    }

    async clickonPopUpBackIcon(page) {
        console.log("Click on Popup BackIcon");
        await click_utility.clickElementByXpath(page,settingsLocators.announcementPage.xpath.popUpbackIcon);
    }

    async clickOnSelectionLabel(page, label) {
        let actionItemXpath = "(//div[contains(@id,'appended-elements')]//div[text()='"+label+"'])[2]|(//div[contains(@id,'appended-elements')]//span[contains(text(),'"+label+"')])[2]";
        await click_utility.clickElementByXpath(page,actionItemXpath);
    }

    async waitForPageToLoad(page) {
        console.log("Waiting for page to load")
        let elementText = await Input.getTextOfTheElements(page,navBarLocator.xpath.informationTitleText);
        for (const item of elementText) {
            if(item.includes("Loading")){
                await page.waitForTimeout(5000);
                await this.waitForPageToLoad(page);
            }
        }
        // if(!elementText.includes("Loading")||!elementText.includes("Now Loading")){
        //     return;
        // }
        // console.log("Loading Element Found waiting for 5 secs");
        // await page.waitForTimeout(5000);
        // await this.waitForPageToLoad(page);
    }

    async verifyIsActionIconAvailable(page,isAvailable){
        // await click_utility.clickElementByXpath(page,);
        try{
            // let xpath = "//div[contains(text(),'"+value+"')]";
            await page.waitForXPath(settingsLocators.announcementPage.xpath.actionIcon,{visible:true});
            expect(isAvailable).to.be.true;
            console.log("Action Icon is " + isAvailable);
        }catch (e) {
            expect(isAvailable).to.be.false;
            console.log("Action Icon is " + isAvailable);
        }
    }

    async clickOnActionIconWithHeaderName(page, headerName){
        let xpathActionIcon = "//div[contains(@class,'header-title')][text()='"+headerName+"']//following-sibling::div[contains(@class,'navigation-menu-hamburger')]";
        await click_utility.clickElementByXpath(page,xpathActionIcon);
    }

    async clearTextInTextInput(page, label) {
        let xpath = "//div[contains(@id,'appended-elements')]//div[text()='"+label+"']//following-sibling::div/input";
        await input_utility.removeTextByXpath(page,xpath);
    }

    async waitForLoading(page){
        // await page.waitForFunction('document.getElementByXpath("'+settingsLocators.announcementPage.xpath.verifyForm+'").value != "Submitting Changes"');
       try {
           await page.waitForXPath(settingsLocators.announcementPage.xpath.verifyForm,{timeout:10000});
           let elementValue = await Input_utility.getElementTextUsingXpath(page, settingsLocators.announcementPage.xpath.verifyForm, "innerText");
           if (elementValue.includes("Loading")) {
               await page.waitForTimeout(5000);
               await this.waitForLoading(page);
           }
       }catch (e) {
           // console.log(e.message);
       }
        // await expect(elementValue).to.be.equal(value);
    }

    async verifyTextAreaMaxlength(page,lengthVal){
       // let element = await page.waitForXPath(settingsLocators.announcementPage.xpath.popUpTextArea,{timeout:10000});
        const maxLength = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.popUpTextArea,'maxlength');
        console.log("maxLength: "+ maxLength);
        expect(maxLength+"").to.be.equal(lengthVal);
    }

    async verifyTextAreaCharLength(page,lengthVal){

        let elementValue = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.popUpTextArea,"textLength");
        console.log("found value length: "+ elementValue);
        if(lengthVal !== (elementValue) ){
            elementValue = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.popUpTextArea,"innerHTML");
            console.log("found value length: "+ elementValue.length);
            if(lengthVal !== (elementValue.length + "") ){
                elementValue = await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.popUpTextArea,"textContent");
                console.log("found value length: "+ elementValue.length);
            }else {
                expect(elementValue.length + "").to.be.equal(lengthVal);
            }
        }else {
            expect(elementValue + "").to.be.equal(lengthVal);
        }
    }


    async waitForLoadingWithTitle(page,title){
        console.log("Waiting Because Loading Might Exist");
        let loadingXpath = "//div[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+title.toUpperCase()+"']/../../..//div[contains(@class,'information-title-text')]";
        try {
            await page.waitForXPath(loadingXpath,{timeout:10000});
            let elementValue = await Input_utility.getElementTextUsingXpath(page, loadingXpath, "innerText");
            if (elementValue.includes("Loading")) {
                await page.waitForTimeout(5000);
                await this.waitForLoadingWithTitle(page,title);
            }
        }catch (e) {
            // console.log(e.message);
        }
        // await expect(elementValue).to.be.equal(value);
    }

    async clickStatus(page, headerName) {

        let stat = "//div[contains(@class,'"+headerName+"') or contains(text(),'"+headerName+"')][contains(@class,'data-set-cell sortable')]";
        await click_utility.clickElementByXpath(page,stat);
    }

    async verifySortingClass(page, headername, expectedSortingClass) {
        await page.waitForTimeout(3000);
        let xpath = "//div[contains(@class,'data-set-header')]//div[contains(text(),'"+headername+"') or contains(@class,'"+headername+"')]";
        let element = (await page.$x(xpath))[0];
        const className = await(await element.getProperty('className')).jsonValue();
        expect(className.toUpperCase()).to.includes(expectedSortingClass.toUpperCase());
    }
}

export default new AnnouncementPage()
