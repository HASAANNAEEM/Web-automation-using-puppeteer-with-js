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

class comorbidityPage {


    async verifyClinicDeclarartion(page) {

        let signedName = "Ashar Javed";
        let signedByXpath = "//div[contains(text(),'Ashar Javed') and @class = 'container-item container-text standard']";
        let elementText = await Input_utility.getElementTextUsingXpath(page,signedByXpath,"innerText");
        await expect(elementText).to.includes(signedName);
    }

    async clickActiveComorbidity(page) {

        let activeComorbdty = "//div[contains(text(),'Hypertensive renal disease without renal failure') and @class = 'data-set-cell']/following-sibling::div[contains(text(),'Active')]";
        await click_utility.clickElementByXpath(page,activeComorbdty);
    }

    async verifyComorbidity(page) {

        let comorbColVals = ["Cardiovascular","Hypertensive renal disease with renal failure","I120"];

        for (let i = 1; i < 4; i++) {
            let comorbidityRow = "//div[@class='data-set-row --clickable no-navigation '][2]/div[@class='data-set-cell']["+i+"]";
            let elementText = await Input_utility.getElementTextUsingXpath(page,comorbidityRow,"innerText");
            await expect(elementText).to.includes(comorbColVals[i-1]);

        }
    }

    async verifyClosedSatus(page) {

        let comorbColVals = ["Closed"];

        for (let i = 1; i < 4; i++) {
            let comorbidityRow = "//div[contains(@class,'data-set-row --clickable ')]//div[contains(text(),'Closed')]";
            let elementText = await Input_utility.getElementTextUsingXpath(page,comorbidityRow,"innerText");
            await expect(elementText).to.includes(comorbColVals[i-1]);

        }
    }

}

export default new comorbidityPage()
