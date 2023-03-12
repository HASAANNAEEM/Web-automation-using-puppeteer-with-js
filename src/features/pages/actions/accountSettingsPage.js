import click_utility from "../../../utilities/clicking";
import input_utility from "../../../utilities/input";
import accountPageLocators from "../../locators/settings.json"

class AccountSettingsPage {
    async clickNavigationSearchIcon(page) {
        await click_utility.clickElementByXpath(page,accountPageLocators.accountSettingsPage.xpath.searchIcon);
    }

    async searchInFilter(page, text) {
        await input_utility.enterTextXpath(page,accountPageLocators.accountSettingsPage.xpath.filterSearch,text);
    }

    async clickFirstFilterOptionWithValue(page, text) {
        let filterOptionXpath = "(//div[contains(text(),'"+text+"')])[1]";
        await click_utility.clickElementByXpath(page,filterOptionXpath);
    }
}

export default new AccountSettingsPage()
