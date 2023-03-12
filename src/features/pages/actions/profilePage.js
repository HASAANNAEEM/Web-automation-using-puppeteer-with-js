import click_utility from "../../../utilities/clicking";
import Input from "../../../utilities/input";
import {expect} from "chai";
import profileLocators from "../../locators/profilePage.json";

class ProfilePage {

    async clickProfileMenu(page, label) {
        let profileMenuXpath = "(//div[contains(@class,'navigation-list')]//div[contains(text(),'"+label+"')])[last()]";
        await click_utility.clickElementByXpath(page,profileMenuXpath);
    }

    async clickProfileMenuExact(page, label) {
        let profileMenuXpath = "(//div[contains(@class,'navigation-list')]//div[text()='"+label+"'])[last()]";
        await click_utility.clickElementByXpath(page,profileMenuXpath);
    }

    /*
        Created by  : Muhammad Haider Ejaz
        Dated       : 03/25/2022
        Description : This method is for verification of Profile Detail with reference to its label.
     */
    async verifyProfileDetail(page,label,value){
        let detailItemXpath = "//span[contains(@class,'label')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']//following-sibling::span";
        let detailItemText = await Input.getElementTextUsingXpath(page,detailItemXpath,"innerText");
        expect(detailItemText.toUpperCase()).to.be.equal(value.toUpperCase());
    }

    async verifyUserStatus(page, value){
        let foundStatusText = await Input.getElementTextUsingXpath(page, profileLocators.xpath.userStatus, "innerText");
        expect(foundStatusText).to.be.equal(value);
    }

    async verifyUserName(page, value){
        let foundProfileName = await Input.getElementTextUsingXpath(page, profileLocators.xpath.userName, "innerText");
        expect(foundProfileName).to.be.equal(value);
    }

    async verifyHoldingAreaOptions(page, value){

        let xpath = "//div[contains(text(),\"" +value+ "\")]/../../div[contains(@class,'container-item container-icon navigation-disabled')]";
        let element = (await page.$x(xpath))[0];
        const className = await(await element.getProperty('className')).jsonValue();
        expect(className).to.include("disabled");

    }
}

export default new ProfilePage()
