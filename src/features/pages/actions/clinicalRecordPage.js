import click_utility from "../../../utilities/clicking";


class clinicalRecordPage {

    async ClickOnPlaceHolderAction(page, value) {

        let xpath = "//div[@class='male table-cell placeholder-text']"
        await click_utility.clickElementByXpath(page, xpath);
    }
}

export default new clinicalRecordPage()