import input from "../../../utilities/input";
import patientSummaryLocators from "../../locators/patientSumary.json"
import {expect} from "chai";
import documentSettingsPage from "./documentSettingsPage";
import clicking from "../../../utilities/clicking";
import Input_utility from "../../../utilities/input";
import announcementPage from "./announcementPage";
import roleSettingsPage from "./roleSettingsPage";

class ProfilePage {
    patientOneRecords;
    patientTwoRecords;
    reviewDueTime;

    async verifyModuleNavigator(page, label) {
        let elementsText = await input.getTextOfTheElements(page,patientSummaryLocators.patientSummaryPage.patientAssessments.moduleNavigator);
        expect(elementsText).to.include(label);
    }

    async clickModuleNavigator(page, label) {
        console.log("Navigating to Module: "+label);
        let elementsText = await input.getTextOfTheElements(page,patientSummaryLocators.patientSummaryPage.patientAssessments.moduleNavigator);
        for (const item in elementsText) {
            if(elementsText[item]===label){
                let valItem = parseInt(item)+1;
                let moduleXpath = "(//div[contains(@class,'module-navigator-items')]//div)["+valItem+"]";
                await clicking.clickElementByXpath(page,moduleXpath);
            }
        }
    }

    async verifyColorThresholds(page, colorArray) {
        let colorArrayValue=[];
        console.log("Color String: "+colorArray);
        colorArray = colorArray.split("|");
        console.log("Color Array: "+colorArray);
        colorArray.forEach(item=>{
            console.log("Color: "+item);
            const hexValue = documentSettingsPage.getColorValue(item);
            let rgbValues = documentSettingsPage.hexToRgb(hexValue);
            let colorRGB ="rgb("+rgbValues[0]+", "+rgbValues[1]+", "+rgbValues[2]+")";
            console.log("Color RGB: "+colorRGB);
            colorArrayValue.push(colorRGB);
        });
        console.log("Getting Computed Style");
        let elementsArray = await page.$x(patientSummaryLocators.patientSummaryPage.patientAssessments.colorThresholdsScale);
        for (const item of elementsArray) {
            let colorValue = await page.evaluate((element) => {
                element.focus();
                return window.getComputedStyle(element).getPropertyValue("background-color");
            },item);
            expect(colorArrayValue).to.include(colorValue);
        }
    }

    async verifyFirstColorThresholds(page, colorArray) {
        console.log("Color: "+colorArray);
        const hexValue = documentSettingsPage.getColorValue(colorArray);
        let rgbValues = documentSettingsPage.hexToRgb(hexValue);
        let colorRGB ="rgb("+rgbValues[0]+", "+rgbValues[1]+", "+rgbValues[2]+")";
        console.log("Color RGB: "+colorRGB);
        console.log("Getting Computed Style");
        let element = await page.waitForXPath(patientSummaryLocators.patientSummaryPage.patientAssessments.firstColorThresholdsScale);
        let colorValue = await page.evaluate((element) => {
                element.focus();
                return window.getComputedStyle(element).getPropertyValue("background-color");
            },element);
        expect(colorValue).to.equal(colorRGB);

    }

    async verifyDescendingOrder(page) {
        let originalDates = await input.getTextOfTheElements(page,patientSummaryLocators.patientSummaryPage.patientAssessments.datesEvent);
        originalDates=originalDates.map(item=>{
            return new Date(item).getTime();
        })
        let sortedDates = [...originalDates].sort((a, b) => b - a);
        expect(sortedDates).to.be.eql(originalDates);
    }

    async verifyAscendingOrder(page) {
        let originalDates = await input.getTextOfTheElements(page,patientSummaryLocators.patientSummaryPage.patientAssessments.datesEvent);
        originalDates=originalDates.map(item=>{
            return new Date(item).getTime();
        })
        let sortedDates = [...originalDates].sort((a, b) => a - b);
        expect(sortedDates).to.be.eql(originalDates);
    }

    async verifyDateDifference(page, days) {
        let dateValues = await input.getElementTextUsingXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.dateFilterValue,"textContent");
        dateValues=dateValues.split(" - ");
        console.log("Date Values: "+dateValues);
        let diffValue = this.dateDifferenceCalculator(dateValues[0].trim(),dateValues[1].trim())
        expect(diffValue >= days || diffValue<=(parseInt(days)+2)).to.be.true;
    }

    dateDifferenceCalculator(date1,date2){
        const date3= new Date(date1);
        const date4= new Date(date2);
        const diffTime = Math.abs(date4 - date3);
        return Math.ceil(diffTime / (1000 * 60 * 60 * 24));
    }

    async clickOnTable(page, label) {
        let xpath = "//div[contains(@class,'cell')]//div[contains(text(),'"+label+"')]";
        await clicking.clickElementByXpath(page,xpath);
    }

    async verifyPopUpWithLabelAndColor(page, label, value, color,fontColorType) {
        let elementXpath = "//div[@id='appended-elements']//div[contains(text(),'"+label+"')]/ancestor::div/following-sibling::div[contains(@class,'container-column') or contains(@class,'navigation-value')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,elementXpath,"innerText");
        await expect(elementValue.trim()).to.be.equal(value.trim());
        // const hexValue = documentSettingsPage.getColorValue(color);
        // let rgbValues = documentSettingsPage.hexToRgb(hexValue);
        // let colorRGB ="rgb("+rgbValues[0]+", "+rgbValues[1]+", "+rgbValues[2]+")";
        // let element = await page.waitForXPath(elementXpath);
        // let colorValue = await element.evaluate((node,fontColorType) => {
        //     return window.getComputedStyle(node).getPropertyValue(fontColorType);
        //     },fontColorType);
        // console.log("Color Value: "+colorValue);
        // expect(colorRGB).to.be.equal(colorValue);
    }

    async verifyPopUpWithLabel(page,label,value){
        let elementXpath = "//div[@id='appended-elements']//div[text()='"+label+"']//..//following-sibling::div//div[contains(@class,'container-text')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,elementXpath,"textContent");
        if(elementValue===""){
            elementXpath = "//div[@id='appended-elements']//div[contains(text(),'"+label+"')]//..//following-sibling::div//div[contains(@class,'container-text')]/span";
            elementValue = await Input_utility.getElementTextUsingXpath(page,elementXpath,"textContent");
        }
        await expect(elementValue.trim()).to.be.equal(value.trim());
    }

    async changeInputMethodType(page, label,value) {
        let inputTypeXpath = "//div[@id='appended-elements']//div[contains(text(),'"+label+"')]//..//following-sibling::div//div[1]";
        let inputTypeValue = await input.getElementTextUsingXpath(page,inputTypeXpath,"textContent");
        if(inputTypeValue===value){
            return;
        }
        let changingTypeIconXpath = "//div[@id='appended-elements']//div[contains(text(),'"+label+"')]//..//following-sibling::div//div[contains(@class,'navigation-cycle')]"
        await clicking.clickElementByXpath(page,changingTypeIconXpath);
        await this.changeInputMethodType(page,label,value);
    }

    async verifyDoubleBarrelValue(page, value) {
        let doubleBarrelValue = await input.getElementTextUsingXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.doubleBarrelSelectedValue,"textContent");
        expect(doubleBarrelValue).to.be.equal(value);
    }

    async scrollMouseForDoubleBarrelVerification(page,inputType) {
        let element = await page.waitForXPath(patientSummaryLocators.patientSummaryPage.patientAssessments.doubleBarrelSelectedValue);
        await element.focus();
        if(inputType.toLowerCase()==="mouse") {
            await page.waitForTimeout(5000);
            await page.mouse.wheel({deltaY: 100});
            await page.waitForTimeout(5000);
            await page.mouse.wheel({deltaY: 100});
            // await page.mouse.wheel({deltaY: -100});
            // await page.mouse.wheel({deltaY: -100});
        }
        else if(inputType.toLowerCase()==="keyboard") {
            await page.keyboard.press("ArrowUp");
            await page.keyboard.press("ArrowUp");
            await page.keyboard.press("ArrowDown");
            await page.keyboard.press("ArrowDown");
        }
        else{
            expect(["mouse","keyboard"]).to.include(inputType);
        }
    }

    async scrollMouseForDoubleBarrelVerificationWithHeader(page,inputType,headerName) {
        let xpathElement = "//div[contains(@id,'appended-elements')]//div[contains(text(),'"+headerName+"')]//following-sibling::div//div[contains(@class,'spinner-cells')]/div[2]"
        let element = await page.waitForXPath(xpathElement);
        await element.hover();
        if(inputType.toLowerCase()==="mouse") {
            await page.waitForTimeout(5000);
            await page.mouse.wheel({deltaY: 100});
            await page.waitForTimeout(5000);
            await page.mouse.wheel({deltaY: 100});
            // await page.mouse.wheel({deltaY: -100});
        }
        else if(inputType.toLowerCase()==="keyboard") {
            await page.keyboard.press("ArrowDown");
            await page.keyboard.press("ArrowDown");
            await page.keyboard.press("ArrowUp");
            await page.keyboard.press("ArrowUp");
        }
        else{
            expect(["mouse","keyboard"]).to.include(inputType);
        }
    }

    async addRequiredVitalInformation(page,respirationValue,oxygenValue,scaleValue,bloodPressureValue,pulseValue,consciousnessValue,temperatureValue) {
        await announcementPage.waitForLoadingWithTitle(page,"New Vitals Assessment");
        await announcementPage.verifyPopUpLabel(page,"New Vitals Assessment");
        await announcementPage.clickOnActionItem(page,"Respiration");
        await this.changeInputMethodType(page,"Input Method","Inline");
        await roleSettingsPage.inputValueInline(page,"Enter Value",respirationValue);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickOnActionItem(page,"SPO2 Scale 1 ");
        await this.changeInputMethodType(page,"Input Method","Inline");
        await roleSettingsPage.inputValueInline(page,"Enter Value",scaleValue);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickOnActionItem(page,"Air or Oxygen");
        await announcementPage.verifyPopUpLabel(page,"Air Or Oxygen")
        await announcementPage.clickOnActionItem(page,"Air");
        await announcementPage.verifyPopUpLabel(page,"Select Air Or Oxygen")
        await announcementPage.clickOnActionItem(page,oxygenValue);
        await announcementPage.clickOnActionItem(page,"Blood Pressure");
        await this.changeInputMethodType(page,"Input Method","Inline");
        await roleSettingsPage.inputValueInline(page,"Systolic",bloodPressureValue.split("|")[0]);
        await roleSettingsPage.inputValueInline(page,"Diastolic",bloodPressureValue.split("|")[1]);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickOnActionItem(page,"Pulse");
        await this.changeInputMethodType(page,"Input Method","Inline");
        await roleSettingsPage.inputValueInline(page,"Enter Value",pulseValue);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickOnActionItem(page,"Consciousness");
        await announcementPage.clickOnActionItem(page,consciousnessValue);
        await announcementPage.clickOnActionItem(page,"Temperature");
        await this.changeInputMethodType(page,"Input Method","Inline");
        await roleSettingsPage.inputValueInline(page,"Enter Value",temperatureValue);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickonCheckIcon(page);
        console.log("Changing To Vital")
        await this.waitForPopUpHeaderToChange(page,"Vitals Assessment Summary")
        console.log("Change To Vital Completed")
        await announcementPage.clickonCheckIcon(page);
        await this.waitForPopUpHeaderToChange(page,"Submission Status")
        await announcementPage.waitForLoadingWithTitle(page, "SUCCESS");
        await announcementPage.clickonCheckIcon(page);
        await this.waitForPopUpHeaderToChange(page,"Clinical Information");
        await announcementPage.waitForLoadingWithTitle(page, "Clinical Response Required");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Clinical Response Actions");
        await announcementPage.clickonCheckIcon(page);
    }

    async completeRequiredVitalInformation(page,respirationValue,oxygenValue,scaleValue,bloodPressureValue,pulseValue,consciousnessValue,temperatureValue) {
        await announcementPage.clickOnPlusIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"New Assessments");
        await announcementPage.verifyPopUpLabel(page,"New Assessments");
        await announcementPage.clickOnActionItem(page,"Vitals");
        await announcementPage.waitForLoadingWithTitle(page,"New Vitals Assessment");
        await announcementPage.verifyPopUpLabel(page,"New Vitals Assessment");
        await announcementPage.clickOnActionItem(page,"National Early Warning Score (Scale 1)");
        await this.alreadyAssessmentCheckUpPopUp(page);
        await this.addRequiredVitalInformation(page,respirationValue,oxygenValue,scaleValue,bloodPressureValue,pulseValue,consciousnessValue,temperatureValue);
    }

    async alreadyAssessmentCheckUpPopUp(page) {
        try {
            // await announcementPage.waitForLoadingWithTitle(page, "Confirmation Required");
            // await announcementPage.verifyPopUpLabel(page, "Confirmation Required");
            await announcementPage.verifyForm(page, "Patient Identity Check");
            await announcementPage.clickOnActionItem(page, "Continue");
        }
        catch (e) {

        }

    }

    async waitForPopUpHeaderToChange(page, headerValue) {
        await announcementPage.waitForLoading(page);
        let headerText = await input.getElementTextUsingXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.popUpHeader,"textContent");
        if(headerText.trim().toLowerCase()===headerValue.trim().toLowerCase()){
            return;
        }
        await this.waitForPopUpHeaderToChange(page,headerValue);
    }

    async shortenAndVerifyDates(page,filterType) {
        await clicking.clickElementByXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.filterDate);
        await announcementPage.verifyPopUpLabel(page, "Select Start Date");
        let allAvailableDates=await page.$x(patientSummaryLocators.patientSummaryPage.patientAssessments.allDates);
        let startingDate=0;
        let cuurentDate=0;
        console.log("All Available Dates: "+allAvailableDates.length);
        for(let item in allAvailableDates){
            console.log("Current Date: "+item +"==> "+allAvailableDates[item]);
            let parentNode =  allAvailableDates[item];
            // console.log("Node: "+parentNode)
            const className = await (await parentNode.getProperty('className')).jsonValue();
            console.log("Parent Node Class: "+className)
            if(className.includes("active") && filterType==="shortening"){
                cuurentDate=item;
                startingDate = item-1;
                await allAvailableDates[startingDate].click();
                break;
            }else if(className.includes("active") && filterType==="widening"){
                cuurentDate=item;
                startingDate = item-2;
                await allAvailableDates[startingDate].click();
                break;
            }
        }
        await announcementPage.clickonCheckIcon(page);
        await clicking.clickElementByXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.currentDateAndTimeButton);
        await announcementPage.clickonCheckIcon(page);
        await page.waitForTimeout(10000);
        let dateValues = await input.getElementTextUsingXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.dateFilterValue,"textContent");
        dateValues=dateValues.split(" - ");
        console.log("Date Values: "+dateValues);

        let allEventDates = await input.getTextOfTheElements(page,patientSummaryLocators.patientSummaryPage.patientAssessments.datesEvent);

        let firstDateText = allEventDates[0].split(" ")[0];
        const firstDate = new Date(firstDateText);

        let lastDateText = allEventDates[allEventDates.length-1].split(" ")[0];
        const lastDate = new Date(lastDateText);

        const startedDate = new Date(dateValues[0].trim());
        const endedDate = new Date(dateValues[1].trim());
        if((allEventDates.length-1)===1){
            console.log("First Date: "+firstDate.getTime() +" Less Than Equal To: "+endedDate.getTime());
            expect(firstDate.getTime()<=endedDate);
            return;
        }
        console.log("First Date: "+firstDate.getTime() +" Less Than Equal To: "+endedDate.getTime());
        console.log(firstDate.getTime()<=endedDate.getTime());
        console.log("Last Date: "+lastDate.getTime() +" Greater Than Equal To: "+endedDate.getTime());
        console.log(lastDate.getTime() >= startedDate.getTime());
        expect(firstDate.getTime()<=endedDate.getTime() && lastDate.getTime() >= startedDate.getTime()).to.be.true;
    }

    async savePatientOneNumberOfRecords(page) {
        try{
            await page.$x(patientSummaryLocators.patientSummaryPage.patientAssessments.noRecords);
            this.patientOneRecords = 0;
        }catch (e) {
            let allEvents = await page.$x(patientSummaryLocators.patientSummaryPage.patientAssessments.allRecords);
            this.patientOneRecords = allEvents.length;
        }
    }

    async savePatientTwoNumberOfRecordsAndCompare(page) {
        try{
            await page.$x(patientSummaryLocators.patientSummaryPage.patientAssessments.noRecords);
            this.patientTwoRecords = 0;
        }catch (e) {
            let allEvents = await page.$x(patientSummaryLocators.patientSummaryPage.patientAssessments.allRecords);
            this.patientOneRecords = allEvents.length;
        }
        if(this.patientOneRecords===0&&this.patientTwoRecords===0){
            return
        }
        expect(this.patientOneRecords).to.not.equal(this.patientTwoRecords);
    }

    async waitAndClickOnHeader(page, minutesValue, headerValue) {
        let headerXpath = "//div[contains(@class,'header-title') and contains(text(),'"+headerValue+"')]";
        let minVal1,minVal2;
        if(minutesValue>15){
            minVal1=minutesValue/2;
            minVal2=minutesValue-minVal1;
        }else{
            minVal1=minutesValue-5;
            minVal2=minutesValue-minVal1;
        }
        await page.waitForTimeout(minVal1 * 60 * 1000);
        await clicking.clickElementByXpath(page,headerXpath);
        await page.waitForTimeout(minVal2 * 60 * 1000);
    }

    async popUpWarning(page, warningText) {
        let warningElementText = await input.getElementTextUsingXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.popUpWarning,"textContent");
        expect(warningElementText).to.be.equal(warningText);
    }

    async popUpNhsNumber(page, nhsNumber) {
        let nhmElementText = await input.getElementTextUsingXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.popUpNHSNumber,"textContent");
        expect(nhmElementText).to.be.equal(nhsNumber);
    }

    async setInlinePolar(page, headerTitle, polarValue) {
        let inlinePolarXpath = "//div[contains(text(),'"+headerTitle+"')]/../following-sibling::*//div[contains(@class,'inline-polar')]//div[contains(text(),'"+polarValue+"')]";
        let element = await page.waitForXPath(inlinePolarXpath,{visible:true,timeout:30000});
        let className = await (await element.getProperty('className')).jsonValue();
        if(className.includes("--active")){
            return;
        }
        await element.click();
    }

    async saveReviewDueTime(page) {
        let reviewTimeText = await input.getElementTextUsingXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.recordedOn,"textContent");
        this.reviewDueTime = new Date(reviewTimeText);
    }

    async compareMinsAdded(page, minsAdded) {
        let savedTime = this.reviewDueTime.getTime()/60000;
        let newTime = savedTime+parseInt(minsAdded);
        newTime = new Date(newTime*60000);
        let newReviewTimeText = await input.getElementTextUsingXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.reviewDueTime,"textContent");
        let newReviewTime = new Date(newReviewTimeText);
        console.log("Before Time: "+this.reviewDueTime);
        console.log("Before But 30 Mins Added Date: "+newTime);
        console.log("After Time: "+newReviewTime);
        expect(newReviewTime.getTime()).to.be.equal(newTime.getTime());
    }

    async verifyHeader(page, header, value) {
        let headerXpath = "//div[@id='appended-elements']//div[contains(text(),'"+header+"')]/..//following-sibling::div";
        let valueText = await input.getElementTextUsingXpath(page,headerXpath,"textContent");
        expect(valueText).to.be.equal(value);
    }

    async verifyNoScoreGenerateed(page) {
        let valueText = await input.getElementTextUsingXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.firstValueOverAll,"textContent");
        expect(valueText).to.be.equal("-")
    }

    async recordsExists(page) {
        let valueText = await input.getElementTextUsingXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.numberOfRecords,"textContent");
        expect(valueText).to.includes("Records");
    }

    async verifyHeaderH1(page,headerName) {
        let elementsText = await input.getTextOfTheElements(page,patientSummaryLocators.patientSummaryPage.patientAssessments.headersH1);
        expect(elementsText).to.includes(headerName);
    }

    async verifyAssessment(page, label, value) {
        let assessmentLabelText = await input.getTextOfTheElements(page,patientSummaryLocators.patientSummaryPage.patientAssessments.labelAssessments);
        expect(assessmentLabelText).to.includes(label);
        for(let item in assessmentLabelText){
            if(assessmentLabelText[item]===label){
                let index= parseInt(item)+1;
                let valueXpath = "//div[contains(@class,'data-set-body')]//div[contains(@class,'data-set-row')][1]//div[contains(@class,'header-seperator-cell')][2]//following-sibling::div["+index+"]";
                console.log("Item Value Xpath: "+valueXpath);
                let valueText = await input.getElementTextUsingXpath(page,valueXpath,"textContent");
                expect(valueText).to.be.equal(value);
            }
        }
    }

    async verifyChart(page, option) {

        let chart = "//h1[contains(text(),'"+option+"')]";
        let valueText = await input.getElementTextUsingXpath(page,chart,"textContent");
        expect(valueText).to.be.equal(option);
    }
    async verifyTableHeader(page,element){
        let tableHeaderText = await Input_utility.getElementTextUsingXpath(page,patientSummaryLocators.patientSummaryPage.patientAssessments.tableHeader,"innerHTML");
        expect(tableHeaderText.toUpperCase()).to.be.equal(element.toUpperCase());
    }

}

export default new ProfilePage()
