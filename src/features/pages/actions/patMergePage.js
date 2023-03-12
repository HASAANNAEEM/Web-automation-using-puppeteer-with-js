import click_utility from "../../../utilities/clicking";
import Input_utility from "../../../utilities/input";
//import settingsLocators from "../../locators/settings.json"
import patientInfo from "../../../data/patientData.json"
import {expect} from "chai";

class patMergePagePage {


    async selectOption(page, option) {
        console.log("Selecting Option: "+option);
        let utilityOption = "//div[contains(text(),'"+option+"')]";
        await click_utility.clickElementByXpath(page,utilityOption);
    }

    async selectPatient(page) {
        let patientSlct = "//div[@class='patient-merge-patient-wrapper -with-icon'][1]"
        await click_utility.clickElementByXpath(page,patientSlct);
    }

    async verifyPatInfo() {

        let patientInfo = "//div[contains(text(),'Patient Information')]";
        let nextIcon = "//span[@class='selector-next']";


    }

    async enterNHS(page) {

        let patIdentifierInput = "//div[@id='patient-identifier-search-input']";
        await Input_utility.enterTextXpath(page,patIdentifierInput,patientInfo.patient1.nhs);

        //enter the nhs value from json data

    }

    // async clickContinue(page,option) {
    //
    //     let contOption = "//div[contains(text(),'"+option+"')]";
    //     await click_utility.clickElementByXpath(page,contOption);
    // }

    async clickMagnifierpatList(page) {

        let magnifier = "//div[@class='navigation-search navigation-back menu-bar-container-icon']";
        await click_utility.clickElementByXpath(page,magnifier);
    }

    async verifyPatRecord() {

        let patRecord = "//div[@class =' table-cell'][1]";
        //get the text and verify it with json data
    }

    async clickMagnifierLeft(page) {

        let magnifierLeft = "//div[@id='patientMergeA']//div[@class='navigation-search navigation-back menu-bar-container-icon']";
        await click_utility.clickElementByXpath(page,magnifierLeft);
    }

    async enterPatName(page) {

        let patNameInput = "//div[@class='filter-input-container']";
        //enter pat name from json
        await Input_utility.enterTextXpath(page,patNameInput,patientInfo.patient1.displayName);
    }

    async clickMagnifierRight(page) {

        let magnifierRight = "//div[@id='patientMergeB']//div[@class='navigation-search navigation-back menu-bar-container-icon']";
        await click_utility.clickElementByXpath(page,magnifierRight);
    }

    // async clickMergeDirection(page) {
    //
    //     let mergeDirection = "//div[contains(text(),'Right into Left')]";
    //     await click_utility.clickElementByXpath(page,mergeDirection);
    // }
    async clickSpan(page, option) {

        let SpanOption = "//span[contains(text(),'"+option+"')]";
        await click_utility.clickElementByXpath(page,SpanOption);
    }

    // async clicktickPopup(page) {
    //
    //     let tickPopup = ""
    // }
    async verifySearch(page) {

        let verfSearch = "//div[@class='information-message noresults']//div[contains(text(),'Nothing Here')]";
        //get text and verify it through json
    }

    async clickNationalCode(page) {

        let natCode = "//div[@class='container-item container-complication standard']//div[contains(text(),'National Code')][1]"
        await click_utility.clickElementByXpath(page,natCode);
    }

    async enterNatCode(page) {

        let enNatCode = "//div[@class = 'container-column']//input[@placeholder='Enter a Value']";
        //input nat code from json file
        await Input_utility.enterTextXpath(page,enNatCode,patientInfo.patient1.nationalCode);

    }

    async clickFilter(page) {

        let filter = "//div[contains(@class,'parameters-container') or contains(@class,'parameters-filter') or contains(@class,'container-item container-text label') or contains(@class,'breadcrumb-parameters') ]";
        await click_utility.clickElementByXpath(page,filter);
    }
    async clickFilterLocation(page) {

        let filter = "//div[contains(@class,'component-container --clickable')]//div[@class='container-item container-text lozenge active'][2]";
        await click_utility.clickElementByXpath(page,filter);
    }

    async clickType(page,option) {

        let type = "//div[contains(text(),'"+option+"') and @class = 'container-item container-text label']";
        await click_utility.clickElementByXpath(page,type);
    }

    async clickMenu(page) {

        let menu = "(//div[contains(@class,'navigation-menu-hamburger menu-bar-container-icon')])[2]|(//div[contains(@class,'navigation-menu-hamburger menu-bar-container-icon')])";
        await click_utility.clickElementByXpath(page,menu);
    }

    async selectActionMenu(page) {

        let ActMenu = "//div[contains(text(),'Event Report')]/following-sibling::div[@class='navigation-menu-hamburger menu-bar-container-icon']";
        await click_utility.clickElementByXpath(page,ActMenu);
    }

    async enterFilterVals(page,val,option) {

        if(option===1){

            let filterVals = "//div[contains(text(),'"+val+"') and @class='container-item container-text label']";
          //  await click_utility.clickElementByXpath(page,filterVals);
            //enter display name from json file
            await Input_utility.enterTextXpath(page,filterVals,patientInfo.patient1.displayName);

        }
        else if(option===2){

            let filterVals = "//div[contains(text(),'"+val+"') and @class='container-item container-text label']";
          //  await click_utility.clickElementByXpath(page,filterVals);
            //enter post code frm json file
            await Input_utility.enterTextXpath(page,filterVals,patientInfo.patient1.postCode);
        }
        else if(option===3){

            let filterVals = "//div[contains(text(),'"+val+"') and @class='container-item container-text label']";
            //select status
            await click_utility.clickElementByXpath(page,filterVals);
            let statType = "//div[contains(text(),'Active') and @class='container-item container-text standard']";
            await click_utility.clickElementByXpath(page,statType);
        }
    }

    async selectLocation(page) {

        let loc = "//div[contains(text(),'1B Womens Health')]";
        await click_utility.clickElementByXpath(page,loc);
    }

    async selectDispName(page, option) {

        let DisName = "(//div[contains(text(),'"+option+"') and @class = 'container-item container-text standard'])[1]";
        await click_utility.clickElementByXpath(page,DisName);
    }

    async selectManager(page) {

        let manager = "//div[text()='Abbie Smith' and @class='container-item container-text standard']";
        await click_utility.clickElementByXpath(page,manager);
    }

    async selectNatCode(page, number) {

        let natCode = "//*[@id='appended-elements']/div/div/div/div/div[2]/div/div[3]/div/div[2]/div['"+number+"']/div[1]/div";
        await click_utility.clickElementByXpath(page,natCode);
    }

    async clickPlus(page) {

        let plusIcon = "//div[@class = 'navigation-plus menu-bar-container-icon']";
        await click_utility.clickElementByXpath(page,plusIcon);
    }

    // async selectAdvisory(page, option) {
    //
    //     let advisory = "//div[contains(text(),'"+option+"') and @class='container-item container-text standard']";
    //     await click_utility.clickElementByXpath(page,advisory);
    // }

    async clickTick(page) {

        let tick = "//div[contains(@class,'navigation-check menu-bar-container-icon')]";
        await click_utility.clickElementByXpath(page,tick);
    }

    async clickSystemCard(page, option) {

        let sysCard = "//div[contains(text(),'"+option+"') and @class='main-text']";
        await click_utility.clickElementByXpath(page,sysCard);
    }

    async selectCode(page, option) {

        let code = "//div[contains(text(),'"+option+"') and @class = 'selection-label ']";
        await click_utility.clickElementByXpath(page,code);
    }

    async enterCode(page) {

        let txtArea = "//textarea[@placeholder = 'Enter a Value']";
        await Input_utility.enterTextXpath(page,txtArea,patientInfo.patientDocument.Code);
    }

    async selectDoc(page) {

        let docRow = "//div[contains(@class,'data-set-body')]/div[1]/div[2]";
        await click_utility.clickElementByXpath(page,docRow);
    }

    async verifyDoc(page,option) {

        let Summarise = "//div[contains(text(),'Summarisable')]/following-sibling::div[contains(text(),'"+option+"') and @class='no-entry-value ']";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,Summarise,"textContent");
        expect(elementValue).to.be.equal(option);
    }

    async enterVal(page) {

        let codeVal = "//input[@placeholder = 'Enter Value']";
        await Input_utility.enterTextXpath(page,codeVal,patientInfo.patientDocument.Code);
    }

    async enterName(page) {

        let txtArea = "//textarea[@placeholder = 'Enter a Value']";
        await Input_utility.enterTextXpath(page,txtArea,patientInfo.patientDocument.Name);
    }

    async enterImgName(page) {
        let txtArea = "//textarea[@placeholder = 'Enter a Value']";
        await Input_utility.enterTextXpath(page,txtArea,patientInfo.ImageData.Name);
    }

    async clickFirstRow(page) {

        let Img = "//div[@class = 'selection-option-text tick extra']//div[contains(text(),'Back body diagram')]";
        await click_utility.clickElementByXpath(page,Img);
    }

    // async clickPublish(page, option) {
    //
    //     let publishImg = "//div[contains(text(),'"+option+"') and @class='main-text']";
    //     await click_utility.clickElementByXpath(page,publishImg);
    // }

    async verifyPublish(page, option2) {

        let verifyPub = "//div[@class='table-row clickable'][1]//div[contains(text(),'"+option2+"')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,verifyPub,"textContent");
        expect(elementValue).to.be.equal(option2);
    }

    async clickStart(page) {

        let strt = "(//div[contains(text(),'Start')])[6]";
        await click_utility.clickElementByXpath(page,strt);
    }

    async enterDocName(page) {

        let docName = "//input[@placeholder = 'Enter a Value']";
        await Input_utility.enterTextXpath(page,docName,patientInfo.patientDocument.Name);
    }

    async clickStatus(page, headerName) {

        let stat = "//div[contains(text(),'"+headerName+"') and contains(@class,'data-set-cell sortable')]";
        await click_utility.clickElementByXpath(page,stat);
        await click_utility.clickElementByXpath(page,stat);
    }

    async selectFirstOpt(page) {
        let optDoc = "//div[contains(@class,'data-set-body')]/div[1]/div[1]";
        await page.waitForTimeout(1000);
        await click_utility.clickElementByXpath(page,optDoc);
        await page.waitForTimeout(1000);
    }

    async enterPkgCode(page) {

        let txtArea = "//textarea[@placeholder = 'Enter a Value']";
        await Input_utility.enterTextXpath(page,txtArea,patientInfo.packageCreation.Code);
    }

    async selectfirstPkg(page) {

        let firstPkg = "//div[contains(@class,'table-body')]/div[1]/div[1]";
        await click_utility.clickElementByXpath(page,firstPkg);
    }

    async clickLinkDoc(page) {

        let linkDoc = "//div[contains(@class,'navigation-text')]";
        await click_utility.clickElementByXpath(page,linkDoc);
    }

    async clickMeatballMenu(page) {

        let menu = "(//div[contains(@class,'selection-option-meatballs')])[3]";
        await click_utility.clickElementByXpath(page,menu);
    }

    async clickUpdated(page, option) {

        let updated = "//div[contains(@class,'"+option+"') or contains(text(),'"+option+"') and @class = 'data-set-cell sortable']";
        await click_utility.clickElementByXpath(page,updated);
        await click_utility.clickElementByXpath(page,updated);
    }

    async clickClinicalCalc(page, option) {

        let ClinicalCalc = "//div[contains(text(),'"+option+"') and @class='container-item container-text lozenge ']";
        await click_utility.clickElementByXpath(page,ClinicalCalc);
    }

    async verifyHeading(page, option) {

        let newsHeading = "//h1[contains(text(),'"+option+"')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,newsHeading,"textContent");
        expect(elementValue).to.be.equal(option);
    }

    async enterDispName(page) {

        let dispName = "//input[@placeholder='Enter a Value']";
        await Input_utility.enterTextXpath(page,dispName,patientInfo.patientDocument.Name);
    }

    async verifyAudit(page, value) {

        let auditData = "//div[contains(text(),'"+value+"') and @class = 'container-item container-text standard']";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,auditData,"textContent");
        expect(elementValue).to.be.equal(value);

    }

    async selectParam(page) {

        let param = "//div[@class='container-item container-icon parameters-filter']|//div[contains(text(),'All Names')]";
        await click_utility.clickElementByXpath(page,param);
    }

    async selectParamWithParameter(page, headerName) {

        let param = "//div[@class='container-item container-icon parameters-filter']|//div[contains(text(),'"+headerName+"')]";
        await click_utility.clickElementByXpath(page,param);
    }

    async clickClear(page, value) {

        let clear = "//div[contains(text(),'"+value+"')]";
        await click_utility.clickElementByXpath(page,clear);
    }

    async verifyOpt(page, value) {

        let firstOpt = "//div[contains(@class,'data-set-body')]/div[1]/div[1]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,firstOpt,"textContent");
        expect(elementValue).to.be.equal(value);
    }

    async clickMenuObsDet(page) {
        let menu = "(//div[contains(@class,'navigation-menu-hamburger menu-bar-container-icon')])[2]";
        await click_utility.clickElementByXpath(page,menu);
    }

    async enterNationalCode(page,option) {

        let type = "//div[contains(text(),'"+option+"') and @class = 'container-item container-text label']";
        await Input_utility.enterTextXpath(page,type,patientInfo.patient1.nationalCode);
    }
}

export default new patMergePagePage()
