import {expect} from 'chai';
import navBarLocator from "../../locators/navigationBar.json"
import systemsLocators from "../../locators/systems.json"
import Input from "../../../utilities/input"
import click_utility from "../../../utilities/clicking";
import announcementPage from "./announcementPage";
import Input_utility from "../../../utilities/input";
import settingsLocators from "../../locators/settings.json";
import input from "../../../utilities/input";
import utility from "../../../utilities/utility";

class NavigationBar {
    async verifyPage(page,pageHeaderName){
        console.log("Verifying Page: "+ pageHeaderName);
        let pageName = await Input.getElementTextUsingXpath(page,navBarLocator.xpath.navBar_Header,"innerText");
        if(pageName==="System Announcement"){
            await click_utility.clickElementByXpath(page,navBarLocator.xpath.announcementTick)
            return;
        }
        if(pageName!=="Loading..."){
            await expect(pageName).to.includes(pageHeaderName);
            return;
        }
        await page.waitForTimeout(5000);
        await this.verifyPage(page,pageHeaderName);
    }

    async clickOnNavigationIcon(page,labelName){
        console.log("Clicking on Navigation Icon: "+ labelName);
        let navIconXpath = "//div[contains(@title,'"+labelName+"')]";
        await click_utility.clickElementByXpath(page,navIconXpath);
        await page.waitForTimeout(2000);
    }

    async clickOnDiv(page,labelName){
        let divXpath = "//div[contains(text(),\"" +labelName+ "\")]";
        await click_utility.clickElementByXpath(page,divXpath);
    }

    async clickOnInput(page,labelName){
        let inputXpath = "//Input[contains(text(),'"+labelName+"')]";
        await click_utility.clickElementByXpath(page,inputXpath);
    }

    async clickOnButton(page,labelName){
        let buttonXpath = "//button[contains(text(),'"+labelName+"')]";
        await click_utility.clickElementByXpath(page,buttonXpath);
    }

    async clickOnCard(page, label) {
        let cardXpath = "//div[contains(text(),'"+label+"')]|//div/span[contains(text(),'"+label+"')]";
        await click_utility.clickElementByXpath(page,cardXpath);
        await page.waitForTimeout(2000);
    }

    async verifyAccess(page, text) {
        let xpath = "//div[contains(@class,'menu-bar-container-icon') and contains(@title,'"+text+"')]";
        let element = (await page.$x(xpath))[0];
        const className = await(await element.getProperty('className')).jsonValue();
        expect(className).to.not.include("disable");
    }

    async verifyNoAccess(page, text) {
        let xpath = "//div[contains(@class,'menu-bar-container-icon') and contains(@title,'"+text+"')]";
        let element = (await page.$x(xpath))[0];
        const className = await(await element.getProperty('className')).jsonValue();
        expect(className).to.include("disable");
    }

    async clickOnMainMenu(page){
        await click_utility.clickElementByXpath(page,navBarLocator.xpath.navBar_MainMenu);
    }

    async clickOnProfileFromMainMenu(page){
        await click_utility.clickElementByXpath(page, navBarLocator.xpath.navBar_Profile);
    }

    async verifyModule(page,pageHeaderName){
        await page.waitForTimeout(5000);
        await announcementPage.waitForLoading(page);
        let pageName = await Input.getElementTextUsingXpath(page,navBarLocator.xpath.modules_Header,"innerText");
        if(pageName!=="Loading..."){
            await expect(pageName).to.equal(pageHeaderName);
            return;
        }
        await page.waitForTimeout(5000);
        await this.verifyPage(page,pageHeaderName);
    }

    async clickOnPopupItem(page, labelName){
        let divXpath = "//*[@id='appended-elements']//*[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')=\"" + labelName.toUpperCase() + "\"]";
        await click_utility.clickElementByXpath(page,divXpath);
    }


    async verifyIsModuleExists(page,pageHeaderName,isExist){
        let pageXpath = navBarLocator.xpath.modules_Header + "[text()='"+pageHeaderName+"']";
        console.log(pageXpath)
        try {
            await page.waitForXPath(pageXpath,{visible:true,timeout:20000});
            let pageName = await Input.getElementTextUsingXpath(page,pageXpath,"innerText");
            if (pageName !== "Loading...") {
                await expect(pageName.toString()===pageHeaderName.toString()).to.equal(Boolean(isExist));
                return;
            }
            await page.waitForTimeout(5000);
            await this.verifyPage(page, pageHeaderName);
        }catch (e) {
            // throw new Error( `error , ${e.stack}`)
            await expect('false').to.equal(isExist);

        }
    }

    async clickMeatBalls(page, labelName){
        let divXpath = "//span[text()='"+labelName+"']/..//following-sibling::div[@class='selection-option-meatballs']";
        await click_utility.clickElementByXpath(page,divXpath);
    }

    async clickOnPopupItemWRT_Status(page, labelName,status){
        let divXpath = "//*[@id='appended-elements']//*[text()='"+status+"']/../..//preceding-sibling::div//*[text()='"+labelName+"']";
        await click_utility.clickElementByXpath(page,divXpath);
    }

    async navigateToWardScreen(page, site, location) {
        await this.clickOnNavigationIcon(page,"Systems");
        await this.clickOnCard(page,"Information Screens");
        await this.verifyPage(page,"Information Screens");
        let filterItem = await input.getElementTextUsingXpath(page,systemsLocators.informationScreen.ward.filterItem,"textContent");
        if(filterItem!==site){
            await announcementPage.clickFilterParameter(page,"Table Parameters");
            await announcementPage.clickOnActionItem(page,"Site");
            await announcementPage.waitForLoadingWithTitle(page,"Select Organisation");
            await announcementPage.verifyPopUpLabel(page,"Select Organisation");
            await announcementPage.clickOnActionItem(page,site);
            await announcementPage.clickonCheckIcon(page);
        }
        await this.clickOnCard(page,location);
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
        await this.verifyPage(page,location);

    }

    async clickOnItemWRT_Status(page, labelName,status){
        let divXpath = "=(//*[text()='"+status+"']/../..//preceding-sibling::div//*[text()='"+labelName+"'])[1]";
        await click_utility.clickElementByXpath(page,divXpath);
    }

    async verifyFooterExists(page) {
        let footerExistHandle = await page.waitForXPath(settingsLocators.assessmentPage.footer);
        expect(footerExistHandle).to.not.be.null;
    }

    async verifySessionTimeRemainingFooterExists(page) {
        let sessionElementText = await input.getElementTextUsingXpath(page,settingsLocators.assessmentPage.sessionTimeRemaining,"textContent");
        expect(sessionElementText).to.includes("Session Time Remaining");
    }

    async verifyItemWRTStatusIsExist(page, labelName,status, isExist){
        let divXpath = "//*[text()='"+status+"']/../..//preceding-sibling::div//*[text()='"+labelName+"']";
        await utility.verifyExistence(page,divXpath,isExist);
    }
}

export default new NavigationBar()
