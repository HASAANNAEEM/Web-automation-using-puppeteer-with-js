class Select{

    // Gets Text from element of any type
    async select_from_drop_down(page, locator, value) {
        // const selectElem = await page.$(locator);
        // await selectElem.type(value);
        await page.waitFor(3000);
        await page.select(locator,value);
        console.log(value)
    }

}

export default new Select()