import click_utility from "../../../utilities/clicking";
import Input_utility from "../../../utilities/input";
import Input from "../../../utilities/input";
import {expect} from "chai";
import navBarLocator from "../../locators/navigationBar.json";
import input from "../../../utilities/input";
import navigationLocator from "../../locators/navigationBar.json";
import outPatientsClinics from "../../locators/outPatientsClinic.json";
import clicking from "../../../utilities/clicking";
import systemsLocators from "../../locators/systems.json";
import announcementPage from "./announcementPage";

class outpatientsPage {
    appointmentType;


    /*
* #########################################################################
*
* ' Method Name: verifyTableColumns(WebDriver, String, String, String) '
* Description: This Utility method verifies the data in the table column '
* Input parameters: ' WebDriver, String, String, String'
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyTableColumns(page, column, code, value) {

        let xpath = "(//div[contains(@class,'data-set-row')]/div[text()=\"" + code + "\"])[1]/following-sibling::div[" + column + "]"

        let pageValue = await Input.getElementTextUsingXpath(page, xpath, "innerText");

        expect(pageValue).to.be.equal(value);

    }


    /*
* #########################################################################
*
* ' Method Name: meatballOptions(WebDriver, String) '
* Description: This Utility method clicks on the meatball option in the table '
* Input parameters: ' WebDriver, String'
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async meatballOptions(page,value) {

        let xpath = "//div[contains(@class,'data-set-body')]//div[contains(.,\"" + value + "\")]//div[contains(@class,'data-set-cell meatballs')]"
        await click_utility.clickElementByXpath(page,xpath);
    }


    /*
* #########################################################################
*
* ' Method Name: appointmentStatus(WebDriver, String) '
* Description: This Utility method verifies the appointment status '
* Input parameters: ' WebDriver, String'
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async appointmentStatus(page,value) {

        let xpath = "//div[@class='container-column'][contains(.,'"+value+"')]";
        let Status = await Input.getElementTextUsingXpath(page,xpath,"textContent");
        expect(value).to.be.equal(Status);
    }


    /*
* #########################################################################
*
* ' Method Name: verifyParamDate(WebDriver) '
* Description: This Utility method verifies date in parameters field '
* Input parameters: ' WebDriver '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyParamDate(page) {

        let value = await input.getTextOfTheElements(page,outPatientsClinics.xpath.param_date);
        let currentDate = await this.todaysDate("dd-MMM-yyyy");
        let Date = value[0].replace(/\b0/g, '');

        console.log("***************************************************");
        console.log("value:" +value);
        console.log("currentDate: " +currentDate);
        console.log("Date: " +Date);
        console.log("***************************************************");

        expect(currentDate).to.be.equal(Date);

    }


    /*
* #########################################################################
*
* ' Method Name: todaysDate(format) '
* Description: This Utility method creates todays date using javascript date method '
* Input parameters: ' format '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async todaysDate(format){
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


    /*
* #########################################################################
*
* ' Method Name: verifyHeaderName(WebDriver, String) '
* Description: This Utility method verifies header name '
* Input parameters: ' WebDriver, String '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyHeaderName(page,value) {

        let foundNameText = await Input.getElementTextUsingXpath(page, outPatientsClinics.xpath.header_Name, "innerText");
        expect(foundNameText).to.be.equal(value);
    }


    /*
* #########################################################################
*
* ' Method Name: verifyHeaderCode(WebDriver, String) '
* Description: This Utility method verifies header code '
* Input parameters: ' WebDriver, String '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyHeaderCode(page,value) {

        let xpath = "//span[@class='system-bar-extra-content-display'][contains(.,\"" + value + "\")]";
        let foundCodeText = await Input.getElementTextUsingXpath(page, xpath, "innerText");
        expect(foundCodeText).to.be.equal(value);
    }


    /*
* #########################################################################
*
* ' Method Name: verifyHeaderSpeciality(WebDriver, String) '
* Description: This Utility method verifies header speciality '
* Input parameters: ' WebDriver, String '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyHeaderSpeciality(page,value) {

        let xpath = "//span[@class='system-bar-extra-content-display'][contains(.,\"" + value + "\")]";
        let foundSpecialityText = await Input.getElementTextUsingXpath(page, xpath, "innerText");
        expect(foundSpecialityText).to.be.equal(value);
    }


    /*
* #########################################################################
*
* ' Method Name: verifyHeaderStart(WebDriver, String) '
* Description: This Utility method verifies header start '
* Input parameters: ' WebDriver, String '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyHeaderStart(page,value) {

        let xpath = "//span[@class='system-bar-extra-content-display'][contains(.,\"" + value + "\")]";
        let foundStartText = await Input.getElementTextUsingXpath(page, xpath, "innerText");
        expect(foundStartText).to.be.equal(value);
    }


    /*
* #########################################################################
*
* ' Method Name: verifyHeaderCapacity(WebDriver, String) '
* Description: This Utility method verifies header capacity '
* Input parameters: ' WebDriver, String '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyHeaderCapacity(page,value) {

        let xpath = "//div[@class='color-green'][contains(.,\"" + value + "\")]";
        let foundCapacityText = await Input.getElementTextUsingXpath(page, xpath, "innerText");
        expect(foundCapacityText).to.be.equal(value);
    }


    /*
* #########################################################################
*
* ' Method Name: verifyHeaderStatus(WebDriver, String) '
* Description: This Utility method verifies header status '
* Input parameters: ' WebDriver, String '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyHeaderStatus(page,value) {

        let foundStatusText = await Input.getElementTextUsingXpath(page, outPatientsClinics.xpath.header_Status, "innerText");
        expect(foundStatusText).to.be.equal(value);
    }


    /*
* #########################################################################
*
* ' Method Name: verifyRttStatusNumbers(WebDriver, String, String) '
* Description: This Utility method verifies RTT status numbers '
* Input parameters: ' WebDriver, String, String '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyRttStatusNumbers(page,status,value) {

        let xpath = "//div[@class='component-container --clickable']//div[@class='container-column']//div[text()=\"" + status + "\"]/../following-sibling::div[@class='container-column']//div[@class='container-item container-complication standard']//div[contains(text(),\"" + value + "\")]";
        let RttStatusNumbers = await Input.getElementTextUsingXpath(page, xpath, "innerText");

        expect(RttStatusNumbers).to.be.equal(value);

    }


    /*
* #########################################################################
*
* ' Method Name: clinicsFavouritesIcon(WebDriver, String, String) '
* Description: This Utility method verifies that clinics favourite button is selected if not then select it '
* Input parameters: ' WebDriver, String, String '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async clinicsFavouritesIcon(page,docName, isActive){

        let mandatoryXpath = "//div[text()=\"" + docName + "\"]//preceding-sibling::div[contains(@class,'data-set-cell favourite')]";
        let element = await page.waitForXPath(mandatoryXpath,{visible:true});
        const className = await(await element.getProperty('className')).jsonValue();

        if(className.toUpperCase().includes("-"+isActive.toUpperCase())){

        }else{

            await clicking.clickElementByXpath(page, mandatoryXpath);
        }

        element = await page.waitForXPath(mandatoryXpath,{visible:true});
        const classNameAfterUpdate = await(await element.getProperty('className')).jsonValue();

        expect(classNameAfterUpdate.toUpperCase()).includes(isActive.toUpperCase());
    }


    /*
* #########################################################################
*
* ' Method Name: eventReportHeader(WebDriver, String) '
* Description: This Utility method verifies event reports header value '
* Input parameters: ' WebDriver, String '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async eventReportHeader(page,value){

        let xpath = "//div[@class='container__item'][text()=\"" + value + "\"]";
        let Header = await Input.getElementTextUsingXpath(page, xpath, "innerText");

        expect(Header).to.be.equal(value);

    }


    /*
* #########################################################################
*
* ' Method Name: verifyProcedure(WebDriver, String, String, String) '
* Description: This Utility method verifies procedure are selected '
* Input parameters: ' WebDriver, String, String, String '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyProcedure(page,header,option,value){

        let xpath = "//div[@class='group group__no-line-gap']//div[contains(text(),\"" + header + "\")]/../../div[@class='container container__type_property']//div[@class='container__item']//div[text()=\"" + option + "\"]/..//div[2][text()=\"" + value + "\"]";
        let Header = await Input.getElementTextUsingXpath(page, xpath, "innerText");

        expect(Header).to.be.equal(value);

    }


    /*
* #########################################################################
*
* ' Method Name: verifyOptions(WebDriver, String) '
* Description: This Utility method verifies options '
* Input parameters: ' WebDriver, String '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyOptions(page,value){

        let xpath = "//*[@class='component-container --clickable']//*[text()=\"" + value + "\"]";
        let Header = await Input.getElementTextUsingXpath(page, xpath, "innerText");

        expect(Header).to.be.equal(value);

    }


    /*
* #########################################################################
*
* ' Method Name: CmpltBtnStatus(WebDriver, String, String) '
* Description: This Utility method verifies the complete button status '
* Input parameters: ' WebDriver, String, String '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async CmpltBtnStatus(page,btn,status){

        await page.waitForTimeout(8000);

       if(status === "active")
       {
           let mandatoryXpath = "//div[@class='component-container --clickable'][contains(.,\"" + btn + "\")]";
           let element = await page.waitForXPath(mandatoryXpath,{visible:true});
           const className = await(await element.getProperty('className')).jsonValue();

           expect(className).to.be.equal("component-container --clickable");
       }
       else if(status === "inactive")
       {
           let mandatoryXpath = "//div[@class='component-container --clickable --disabled --no-click'][contains(.,\"" + btn + "\")]";
           let element = await page.waitForXPath(mandatoryXpath,{visible:true});
           const className = await(await element.getProperty('className')).jsonValue();

           expect(className).to.be.equal("component-container --clickable --disabled --no-click");
       }

    }


    /*
* #########################################################################
*
* ' Method Name: verifyAppointmentOptions(WebDriver, String, String) '
* Description: This Utility method verifies the options in appointments '
* Input parameters: ' WebDriver, String, String '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyAppointmentOptions(page,option,value){

        await page.waitForTimeout(8000);

        let xpath = "//div[@class='sub-header']/following-sibling::div["+ option +"][@title=\"" + value + "\"]";
        let optn = await Input.getElementTextUsingXpath(page, xpath, "title");

        expect(optn).to.be.equal(value);

    }


    /*
* #########################################################################
*
* ' Method Name: verifyDocumentOptions(WebDriver, String, String) '
* Description: This Utility method verifies the options in documents '
* Input parameters: ' WebDriver, String, String '
* Created By: ' Hamza Ahmad '
* Created On: ' 30/09/2022 (DD/MM/YYYY) '
* Modified By: N/A
* Description of Modification:
* N/A
* #########################################################################
*/
    async verifyDocumentOptions(page,option,value){

        let xpath = "//div[@class='container container__type_property']/div[@class='container__item property__type__text-input']/div[@class='container__item__column property-value']/span[@class='property-description_black'][text()=\"" + option + "\"]/../../div[@class='container__item__column property-value'][text()=\"" + value + "\"]";
        let optn = await Input.getElementTextUsingXpath(page, xpath, "innerText");

        expect(optn).to.be.equal(value);

    }

    async verifyFirstRowAppointmentType(world) {
        let appointmentTypeElement = await world.page.waitForXPath(outPatientsClinics.xpath.firstRowAppointmentType);
        let className = await (await appointmentTypeElement.getProperty('className')).jsonValue();
        className = className.split(" ");
        console.log("Class: "+className);
        for(let item of className){
            console.log("Item: "+item);
            if(item.includes("appointment")){
                console.log("Appointment Found: "+item);
                this.appointmentType=item;
            }
        }
        await world.attach("Appointment Type: "+this.appointmentType, 'text/plain');
    }

    async firstMeatballOptions(page) {
        await click_utility.clickElementByXpath(page,outPatientsClinics.xpath.firstMeatball);
    }

    async lastMeatballOptions(page) {
        await click_utility.clickElementByXpath(page,outPatientsClinics.xpath.lastMeatball);
    }

    async verifyPopUpAppointmentType(page) {
        await announcementPage.verifyPopUpWithLabelDetails(page,"Appointment Type",this.appointmentType);
    }
}

export default new outpatientsPage()