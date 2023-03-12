import {assert, expect} from "chai";
import path from "path";
import fs from "fs";
import click_utility from "./clicking";
import announcementPage from "../features/pages/actions/announcementPage";

class Utility{

    async customAssert(expected, acctual,message, isContinueExecution) {
       if(isContinueExecution){
            try {
                assert.strictEqual(acctual,expected,message);
            } catch (errorMessage) {
               console.log(errorMessage.message);
            }
       }else{
           assert.strictEqual(acctual,expected,message);
       }
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

    async verifyExistence(page, pageXpath, isExist){
        try {
            await page.waitForXPath(pageXpath, { visible: true, timeout: 20000 });
            await expect("true").to.equal(isExist);
        } catch (e) {
            // throw new Error( `error , ${e.stack}`)
            await expect("false").to.equal(isExist);
        }
    }

    //outbreak.json => patentNumber:one
    //outbreak|patientNumber
    //outbreak.json => patients => patient1 => name
    //outbreak|patients.patient1.name
    async getJsonValue(key){
        try {
            let keys = key.split("|");
            let importName = keys[0];
            keys.forEach(item => console.log(item));
            keys = keys[1].split(".");
            const setupPath = path.resolve(__dirname + '/../data/' + importName + ".json");
            let bufferData = fs.readFileSync(setupPath);
            let stData = bufferData.toString();
            let keyValue = JSON.parse(stData);
            keys.forEach(item => {
                keyValue = keyValue[item];
            });
            return keyValue;
        }
        catch(e){
            return key
        }
    }

    async clickOnSelectionOnMonth(page) {
        let actionItemXpath = "//div[@class='selector-container'][1]";
        await click_utility.clickElementByXpath(page,actionItemXpath);
    }

    async clickOnSelectionOnDay(page,value) {
        await page.waitForTimeout(2000);
        let current = new Date();
        if(value == current.getDate() )
        {
            console.log(current.getDate())
            let actionItemXpath = "//div[contains(@class,'days-of-months')]//div[@class='date-cell active todays-date']//span[text()='" + value + "']";
            await click_utility.clickElementByXpath(page, actionItemXpath);
        }
        else {
            let actionItemXpath = "//div[contains(@class,'days-of-months')]//div[@class='date-cell']//span[text()='" + value + "']";
            await click_utility.clickElementByXpath(page, actionItemXpath);
        }
        await announcementPage.clickonCheckIcon(page);
    }
    async clickOnSelectionOnHour(page,hour) {
        await page.waitForTimeout(2000);
        let actionItemXpathHour = "//div[contains(@class,'hours')]//div[@class='date-cell']//span[text()='"+hour+"']";
        await click_utility.clickElementByXpath(page, actionItemXpathHour);
    }
    async clickOnSelectionOnMin(page,minutes) {
        await page.waitForTimeout(2000);
        let actionItemXpathMin = "//div[contains(@class,'minutes-10')]//div[@class='date-cell']//span[text()='" + minutes + "']";
        await click_utility.clickElementByXpath(page, actionItemXpathMin);
    }
    async clickOnSelectionOnSec(page,second) {
        await page.waitForTimeout(2000);
        let actionItemXpathSec = "//div[@class='minutes-1']//span[text()='" + second + "']";
        await click_utility.clickElementByXpath(page, actionItemXpathSec);
    }



}

export default new Utility()