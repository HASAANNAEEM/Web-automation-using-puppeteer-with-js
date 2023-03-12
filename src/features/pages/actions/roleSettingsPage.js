import {expect} from "chai";
import click_utility from "../../../utilities/clicking";
import input_utility from "../../../utilities/input";
import settingLocators from "../../locators/settings.json"
import Input from "../../../utilities/input";
import announcementPage from "./announcementPage";
import Input_utility from "../../../utilities/input";
import navigationBar from "./navigationBar";
import profilePage from "./profilePage";
import profilePageLocator from "../../locators/profilePage.json"
import navigationPage from "./navigationBar";
import patMergePage from "./patMergePage";
import accountSettingsPage from "./accountSettingsPage";
import resultsAcknowledgementPage from "./resultsAcknowledgementPage";
import clicking from "../../../utilities/clicking";
import settingsLocators from "../../locators/settings.json";

class RoleSettingsPage {

    randomValueGenerated="None";
    async verifyExist(page, value) {
        try{
            let xpath = "//div[contains(text(),'"+value+"')]";
            await page.waitForXPath(xpath,{visible:true});
            expect(true).to.be.true;
        }catch (e) {
            expect(false).to.be.true;
        }
    }

    async inputValueInline(page, label, value) {
        console.log("On Header: "+label+" Input Value: "+value)
        await page.waitForTimeout(1000);
        let xpath = "(//div[contains(@id,'appended-elements')]//div[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']/ancestor::div[contains(@class,'container-column')]/following-sibling::div//input)[last()]|//div[contains(@id,'appended-elements')]//div[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']/following-sibling::div//input";
        await input_utility.removeTextByXpath(page,xpath);
        await page.waitForTimeout(2000);
        await input_utility.enterTextXpath(page,xpath,value);
    }

    async inputRandomValueInline(page, label) {
        this.randomValueGenerated = Math.random().toString(36).substring(2,7);
        console.log(this.randomValueGenerated);
        let xpath = "//div[contains(@id,'appended-elements')]//div[text()='"+label+"']/ancestor::div[contains(@class,'container-column')]/following-sibling::div//input|//div[contains(@id,'appended-elements')]//div[text()='"+label+"']/following-sibling::div//input";
        await input_utility.removeTextByXpath(page,xpath);
        await input_utility.enterTextXpath(page,xpath,this.randomValueGenerated);
        return this.randomValueGenerated;
    }

    async removeValueInline(page, label) {
        let xpath = "//div[contains(@id,'appended-elements')]//div[text()='"+label+"']/ancestor::div[contains(@class,'container-column')]/following-sibling::div//input|//span[text()='"+label+"']/ancestor::div[contains(@class,'label')]/following-sibling::div//input";
        await input_utility.removeTextByXpath(page,xpath);
    }

    async inputValueInlineEdit(page, label, value) {
        let xpath = "//div[contains(@id,'appended-elements')]//div[text()='"+label+"']/following-sibling::div/input";
        await input_utility.removeTextByXpath(page,xpath);
        await input_utility.enterTextXpath(page,xpath,value);
    }

    async clickTable(page, label) {
        try {
            let xpath = "(//div[contains(@class,'data-set-row') or contains(@class,'table-body') or contains(@class,'table-row')]/div[text()[contains(.,'"+label+"')]])[1]";
            await page.waitForTimeout(1000);
            await click_utility.clickElementByXpath(page, xpath);
            await page.waitForTimeout(1000);
            await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.popUpHeader,"innerText");
        }catch (e) {
            let xpath = "(//div[contains(@class,'data-set-row') or contains(@class,'table-body') or contains(@class,'table-row')]/div[text()[contains(.,'"+label+"')]])[1]";
            await page.waitForTimeout(1000);
            await click_utility.clickElementByXpath(page, xpath);
            await page.waitForTimeout(1000);
            await Input_utility.getElementTextUsingXpath(page,settingsLocators.announcementPage.xpath.popUpHeader,"innerText");
        }
    }

    async clickLastTable(page, label) {
        let xpath = "(//div[contains(@class,'data-set-row') or contains(@class,'table-body') or contains(@class,'table-row')]/div[text()[contains(.,'"+label+"')]])[last()]";
        await click_utility.clickElementByXpath(page,xpath);
    }

    async clickLastRecord(page) {
        let xpath = "(//div[contains(@class,'data-set-body')]//div[@class='data-set-cell meatballs'])[last()]|(//div[contains(@class,'data-set-body')]//div[@class='data-set-cell outbreak-inactive'])[last()]";
        await click_utility.clickElementByXpath(page,xpath);
    }

    async clickLastRecordPopUp(page) {
        let xpath = "(//div[contains(@id,'appended-elements')]//div[contains(@class,'component-container --clickable')])[last()]|(//div[contains(@id,'appended-elements')]//div[contains(@class,'demographics-bar-component-container property-clickable')])[last()]";
        await click_utility.clickElementByXpath(page,xpath);
    }

    async selectAllPermission(page) {
        let allPermissionElements = await page.$x(settingLocators.roleSettingsPage.xpath.permissions);
        console.log("Element List: "+allPermissionElements.length);
        for(let element of allPermissionElements){
            await console.log("Loop Value: "+allPermissionElements.indexOf(element));
            await this.LoopingSelection(page,element);
        }
    }

    async LoopingSelection(page,item){
        let className = await (await item.getProperty('className')).jsonValue();
        if(className.includes('left-click-active')||className.includes('selection-square-active')) {
            await console.log("Class: "+className);
            return;
        }
        await page.evaluate(item=>item.click(),item);
        await this.LoopingSelection(page,item);
    }


    async deselectAllPermission(page) {
        console.log("Deselect All Permissions");
        let allPermissionElements = await page.$x(settingLocators.roleSettingsPage.xpath.permissions);
        console.log("Element List: "+allPermissionElements.length);
        for(let element of allPermissionElements){
            await console.log("Loop Value: "+allPermissionElements.indexOf(element));
            await this.LoopingDeselection(page,element);
        }
    }

    async LoopingDeselection(page,item){
        let className = await (await item.getProperty('className')).jsonValue();
        if(className.includes('left-click-inactive')||className.includes('selection-square-inactive')) {
            await console.log("Class: "+className);
            return;
        }
        await page.evaluate(item=>item.click(),item);
        await this.LoopingDeselection(page,item);
    }

    async changeAllExistingRoles(page, originalText, updatedText) {
        let rolesName = await Input.getTextOfTheElements(page,settingLocators.roleSettingsPage.xpath.rolesListsName);
        for(let name of rolesName){
            let index = rolesName.indexOf(name)+1;
            if(name===originalText){
                let rolesListNameXpath = "(//div[contains(@class,'data-set-body')]/div/div[1])["+index+"]";
                await click_utility.clickElementByXpath(page,rolesListNameXpath);
                await announcementPage.clickOnActionIcon(page);
                await announcementPage.clickOnActionItem(page,"Edit");
                await this.inputValueInline(page,"Name",updatedText);
                await this.inputValueInline(page,"Display Name",updatedText);
                await announcementPage.clickonCheckIcon(page);
                await announcementPage.verifyForm(page,"Submission Successful");
                await announcementPage.clickonCheckIcon(page);
                await announcementPage.clickonPopUpBackIcon(page);
            }
        }
    }

    async verifyRandomValuePopUpWithLabel(page, label) {
        let elementXpath = "//div[contains(text(),'"+label+"')]/ancestor::div/following-sibling::div[contains(@class,'container-column')]|//div[contains(text(),'"+label+"')]/following-sibling::div[contains(@class,'no-entry-value')]";
        let elementValue = await Input_utility.getElementTextUsingXpath(page,elementXpath,"innerText");
        await expect(elementValue.trim()).to.be.equal(this.randomValueGenerated);
    }

    async setPermissions(page, headerTitle) {
        let roleHeaderXpath = "//div[@id='appended-elements']//div[contains(text(),'"+headerTitle+"')]/../..//div[2]";
        let element = await page.waitForXPath(roleHeaderXpath,{visible:true,timeout:30000});
        let className = await (await element.getProperty('className')).jsonValue();
        if(className.includes("left-click-active")){
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.verifyForm(page,"Submission Successful");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.clickonPopUpBackIcon(page);
            return;
        }
        await click_utility.clickElementByXpath(page, roleHeaderXpath);
        await this.setPermissions(page,headerTitle);
    }

    async verifyAndChangeExistingRole(page, roleValue) {
        await navigationBar.clickOnProfileFromMainMenu(page);
        await navigationPage.verifyPage(page,"Profile");
        let detailItemText = await Input.getElementTextUsingXpath(page,profilePageLocator.xpath.role,"textContent");
        let displayNameText = await Input.getElementTextUsingXpath(page,profilePageLocator.xpath.userName,"textContent");
        if(detailItemText===roleValue){
            return;
        }
        await announcementPage.clickOnActionIcon(page);
        await click_utility.clickElementByXpath(page,profilePageLocator.xpath.changeProfile);
        await announcementPage.waitForLoadingWithTitle(page,"Select Profile");
        await announcementPage.verifyPopUpLabel(page,"Select Profile");
        let xpath = "//div[@id='appended-elements']//div[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+roleValue.toUpperCase()+"']";
        try {
            await click_utility.clickElementByXpath(page, xpath);
        }catch (e) {
            await announcementPage.clickonCrossIcon(page);
            await navigationBar.clickOnNavigationIcon(page,"Settings");
            await navigationPage.verifyPage(page,"Settings");
            await patMergePage.selectOption(page,"Accounts");
            await navigationPage.verifyPage(page,"Account Settings");
            await navigationPage.verifyModule(page,"Users List");
            await accountSettingsPage.clickNavigationSearchIcon(page);
            await announcementPage.waitForLoadingWithTitle(page,"User Search");
            await announcementPage.verifyPopUpLabel(page,"User Search");
            await announcementPage.clickOnActionItem(page,"Display Name");
            await announcementPage.waitForLoadingWithTitle(page,"Display Name Search");
            await announcementPage.verifyPopUpLabel(page,"Display Name Search");
            await this.inputValueInline(page,"Display Name",displayNameText);
            await announcementPage.clickonCheckIcon(page);
            await page.waitForTimeout(5000);
            await this.clickLastTable(page,displayNameText);
            await announcementPage.waitForLoadingWithTitle(page,"Account Details");
            await announcementPage.verifyPopUpLabel(page,"Account Details");
            await announcementPage.clickOnActionItem(page,"Profiles");
            await announcementPage.waitForLoadingWithTitle(page,"Profiles List");
            await announcementPage.verifyPopUpLabel(page,"Profiles List");
            await announcementPage.clickOnPopUpPlusIcon(page);
            await announcementPage.waitForLoadingWithTitle(page,"Create Profile");
            await announcementPage.verifyPopUpLabel(page,"Create Profile");
            await announcementPage.clickOnActionItem(page,"Role");
            await announcementPage.waitForLoadingWithTitle(page,"Select Role");
            await announcementPage.verifyPopUpLabel(page,"Select Role");
            await accountSettingsPage.searchInFilter(page,roleValue);
            await accountSettingsPage.clickFirstFilterOptionWithValue(page,roleValue);
            await announcementPage.waitForLoadingWithTitle(page,"Create Profile");
            await announcementPage.verifyPopUpLabel(page,"Create Profile");
            await this.inputValueInline(page,"Job Title","Kualitatem Tester");
            await this.inputValueInline(page,"Department","Kualitatem");
            await this.inputValueInline(page,"Email","paul.stewart15@nhs.net");
            await announcementPage.clickOnActionItem(page,"Site")
            await announcementPage.waitForLoadingWithTitle(page,"Select Site");
            await announcementPage.verifyPopUpLabel(page,"Select Site");
            await announcementPage.clickOnActionItem(page,"Goole and District Hospital");
            await announcementPage.waitForLoadingWithTitle(page,"Create Profile");
            await announcementPage.verifyPopUpLabel(page,"Create Profile");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoadingWithTitle(page,"Submission Status");
            await announcementPage.verifyPopUpLabel(page,"Submission Status");
            await announcementPage.verifyForm(page,"Success");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoadingWithTitle(page,"Profiles List");
            await announcementPage.verifyPopUpLabel(page,"Profiles List");
            await announcementPage.clickonPopUpBackIcon(page);
            await announcementPage.waitForLoadingWithTitle(page,"Account Details");
            await announcementPage.verifyPopUpLabel(page,"Account Details");
            await announcementPage.clickonCrossIcon(page);
            await navigationBar.clickOnProfileFromMainMenu(page);
            await navigationPage.verifyPage(page,"Profile");
            await announcementPage.clickOnActionIcon(page);
            await click_utility.clickElementByXpath(page,profilePageLocator.xpath.changeProfile);
            await announcementPage.waitForLoadingWithTitle(page,"Select Profile");
            await announcementPage.verifyPopUpLabel(page,"Select Profile");
            let xpath = "//div[@id='appended-elements']//div[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+roleValue.toUpperCase()+"']";
            await click_utility.clickElementByXpath(page, xpath);
        }
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
    }

    async checkPreRequisiteTST1274(page) {
        await navigationBar.clickOnNavigationIcon(page, "Settings");
        await navigationPage.verifyPage(page, "Settings");
        await patMergePage.selectOption(page, "Roles");
        await navigationPage.verifyPage(page, "Role Settings");
        await navigationPage.verifyModule(page, "Role List");
        let rolesName = await Input.getTextOfTheElements(page, settingLocators.roleSettingsPage.xpath.rolesListsName);
        if (!rolesName.includes("TST1274")) {
            await resultsAcknowledgementPage.createRole(page,"TST1274");
            rolesName = await Input.getTextOfTheElements(page, settingLocators.roleSettingsPage.xpath.rolesListsName);
        }
        let index = rolesName.indexOf("TST1274") + 1;
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
        await this.deselectAllPermission(page);
        await this.selectAllPermission(page);
        await announcementPage.clickOnActionItem(page,"Systems");
        await announcementPage.waitForLoadingWithTitle(page, "Role Permissions");
        await announcementPage.verifyPopUpLabel(page, "Role Permissions");
        await announcementPage.clickOnActionItem(page,"Third Party Systems");
        await announcementPage.waitForLoadingWithTitle(page, "Role Permissions");
        await announcementPage.verifyPopUpLabel(page, "Role Permissions");
        await this.verifyCheckboxActiveInactive(page,"Yorkshire & Humber Care Record (YHCR)","active");
        await announcementPage.clickonPopUpBackIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Role Permissions");
        await announcementPage.verifyPopUpLabel(page, "Role Permissions");
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
        await this.deselectAllPermission(page);
        await this.selectAllPermission(page);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Submission Status");
        await announcementPage.verifyPopUpLabel(page, "Submission Status");
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickonPopUpBackIcon(page);
        await navigationBar.clickOnNavigationIcon(page, "Systems");
        await navigationPage.verifyPage(page, "Systems");
    }

    async verifyCheckboxActiveInactive(page, headerTitle, isActive) {
        console.log("Verify Specific Role Permission: "+headerTitle+" with status: "+isActive);
        let roleHeaderXpath = "//div[@id='appended-elements']//div[contains(text(),'" + headerTitle + "')]/../..//div[2]";
        let element = await page.waitForXPath(roleHeaderXpath, {visible: true, timeout: 30000});
        let className = await (await element.getProperty('className')).jsonValue();
        console.log(className);
        expect(className).to.includes(isActive);
    }

    async verifyAndChangeExistingSite(page, siteValue) {
        await navigationBar.clickOnProfileFromMainMenu(page);
        await navigationPage.verifyPage(page,"Profile");
        let detailItemText = await Input.getElementTextUsingXpath(page,profilePageLocator.xpath.site,"textContent");
        if(detailItemText===siteValue){
            return;
        }
        await announcementPage.clickOnActionIcon(page);
        await click_utility.clickElementByXpath(page,profilePageLocator.xpath.changeSite);
        await announcementPage.waitForLoadingWithTitle(page,"Select Site");
        await announcementPage.verifyPopUpLabel(page,"Select Site");
        let xpath = "//div[@id='appended-elements']//div[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+siteValue.toUpperCase()+"']";
        await click_utility.clickElementByXpath(page, xpath);
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
    }

    async createRoleIfNotExist(page, value) {
        await navigationBar.clickOnNavigationIcon(page, "Settings");
        await navigationPage.verifyPage(page, "Settings");
        await patMergePage.selectOption(page, "Roles");
        await navigationPage.verifyPage(page, "Role Settings");
        await navigationPage.verifyModule(page, "Role List");
        let rolesName = await Input.getTextOfTheElements(page, settingLocators.roleSettingsPage.xpath.rolesListsName);
        if (!rolesName.includes(value)) {
            await resultsAcknowledgementPage.createRole(page,value);
            rolesName = await Input.getTextOfTheElements(page, settingLocators.roleSettingsPage.xpath.rolesListsName);
        }
        let index = rolesName.indexOf(value) + 1;
        let roleXpath = "(//div[contains(@class,'data-set-body')]/div/div[1])[" + index + "]";
        await click_utility.clickElementByXpath(page, roleXpath);
        await announcementPage.waitForLoadingWithTitle(page, "Role Details");
        await announcementPage.verifyPopUpLabel(page, "Role Details");
        await announcementPage.clickOnActionIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Menu");
        await announcementPage.verifyPopUpLabel(page, "Menu");
        await announcementPage.clickOnActionItem(page, "Configure Permissions");
        await announcementPage.waitForLoadingWithTitle(page, "Role Permissions");
        await announcementPage.verifyPopUpLabel(page, "Role Permissions");
        await this.deselectAllPermission(page);
        await this.selectAllPermission(page);
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
        await this.deselectAllPermission(page);
        await this.selectAllPermission(page);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoadingWithTitle(page, "Submission Status");
        await announcementPage.verifyPopUpLabel(page, "Submission Status");
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickonPopUpBackIcon(page);
        await navigationBar.clickOnNavigationIcon(page, "Systems");
        await navigationPage.verifyPage(page, "Systems");
    }

    async removeRoleIfExists(page, value) {
        await navigationBar.clickOnProfileFromMainMenu(page);
        await navigationPage.verifyPage(page,"Profile");
        let displayNameText = await Input.getElementTextUsingXpath(page,profilePageLocator.xpath.userName,"textContent");
        await navigationBar.clickOnNavigationIcon(page,"Settings");
        await navigationPage.verifyPage(page,"Settings");
        await patMergePage.selectOption(page,"Accounts");
        await navigationPage.verifyPage(page,"Account Settings");
        await navigationPage.verifyModule(page,"Users List");
        await accountSettingsPage.clickNavigationSearchIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"User Search");
        await announcementPage.verifyPopUpLabel(page,"User Search");
        await announcementPage.clickOnActionItem(page,"Display Name");
        await announcementPage.waitForLoadingWithTitle(page,"Display Name Search");
        await announcementPage.verifyPopUpLabel(page,"Display Name Search");
        await this.inputValueInline(page,"Display Name",displayNameText);
        await announcementPage.clickonCheckIcon(page);
        await page.waitForTimeout(5000);
        await this.clickTable(page,displayNameText);
        await announcementPage.waitForLoadingWithTitle(page,"Account Details");
        await announcementPage.verifyPopUpLabel(page,"Account Details");
        await announcementPage.clickOnActionItem(page,"Profiles");
        await announcementPage.waitForLoadingWithTitle(page,"Profiles List");
        await announcementPage.verifyPopUpLabel(page,"Profiles List");
        let profileXpath = "//div[@id='appended-elements']//div[text()='"+value+"']";
        let profilesList = await Input.getTextOfTheElements(page,profileXpath);
        if(profilesList.length===0){
            await announcementPage.clickonPopUpBackIcon(page);
            await announcementPage.waitForLoadingWithTitle(page,"Account Details");
            await announcementPage.verifyPopUpLabel(page,"Account Details");
            await announcementPage.clickonCrossIcon(page);
            return;
        }
        for (const item of profilesList) {
            let profileXpath = "(//div[@id='appended-elements']//div[text()='"+value+"'])[1]";
            await clicking.clickElementByXpath(page,profileXpath);
            await announcementPage.waitForLoadingWithTitle(page,"Profile Details");
            await announcementPage.verifyPopUpLabel(page,"Profile Details");
            await announcementPage.clickOnActionIcon(page);
            await announcementPage.waitForLoadingWithTitle(page,"Menu");
            await announcementPage.verifyPopUpLabel(page,"Menu");
            await announcementPage.clickOnActionItem(page,"Remove");
            await announcementPage.waitForLoadingWithTitle(page,"Remove Profile");
            await announcementPage.verifyPopUpLabel(page,"Remove Profile");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.waitForLoadingWithTitle(page, "Submission Status");
            await announcementPage.verifyPopUpLabel(page, "Submission Status");
            await announcementPage.verifyForm(page, "Success");
            await announcementPage.clickonCheckIcon(page);
        }
        await announcementPage.clickonPopUpBackIcon(page);
        await announcementPage.waitForLoadingWithTitle(page,"Account Details");
        await announcementPage.verifyPopUpLabel(page,"Account Details");
        await announcementPage.clickonCrossIcon(page);
    }
}

export default new RoleSettingsPage()
