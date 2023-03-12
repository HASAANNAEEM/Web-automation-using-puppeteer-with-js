class Wait{

    static async waitForElement(page, element){
        await page.waitForSelector( element, {hidden: true} )
    }

    static async elementNotExist (page, element) {
        try {
            await page.waitForSelector( element, {hidden: true} )
        } catch (errorMessage) {
            throw new Error( "Element is not visible on the website with locator" + element )
        }
    }
    // Search for an element that exists
    static async elementExist (page, element) {
        try {
            await page.waitForSelector( element, {visible: true} )
        } catch (errorMessage) {
            throw new Error( "Element is visible on the website with locator" + element )
        }
    }

    static async elementExistXpath(page, element){
        try {
            await page.waitForXPath(element, {visible: true})
            return true;
        } catch (errorMessage) {
            return false;

        }
    }
}

export default new Wait();