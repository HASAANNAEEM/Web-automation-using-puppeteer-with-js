class Input{

     // Gets Text from element of any type
    async getElementText(page, element) {
        try {
            await page.waitForSelector( element,{ visible: true,timeout :3000 } )
            return await page.$eval( element, element => element.textContent )
        } catch (errorMessage) {
            throw new Error( 'Unable to get the text of element ' + errorMessage )
        }
    }

    // Gets Text from element of any type
    async getElementTextUsingValue(page, element) {
        try {
            await page.waitForSelector( element,{ visible: true,timeout :3000 } )
            return await page.$eval( element, element => element.value )
        } catch (errorMessage) {
            throw new Error( 'Unable to get the text of element ' + errorMessage )
        }
    }

    //This function is used to get the text of the elements
    async getTextOfTheElements(page,elementLocator){
        // await page.waitForXPath(elementLocator);
       // await page.waitForXPath(elementLocator,{visible:true,timeout: 50000});
        let totalElementNames = await page.$x(elementLocator);
        let textOfElement =[];
        for(let i=0;i<totalElementNames.length;i++){
            textOfElement[i] = await totalElementNames[i].evaluate(el => el.textContent);
            await console.log("Value:"+textOfElement[i]);
        }
        return textOfElement;
    }

    //return the text of the element
    async getElementTextUsingXpath(page, xpath,property) {
        try {
            await console.log("Getting Value of Xpath"+xpath);
            let element = await page.waitForXPath( xpath,{ visible: true,timeout :50000 } );
            const textObject = await element.getProperty(property);
            const text = textObject._remoteObject.value;
            console.log("Value: "+text)
            return await text;
            // return await page.evaluate(el => el.textContent, element)
        } catch (errorMessage) {
            throw new Error( 'Unable to get the text of element ' + errorMessage )
        }
    }

    //return true or false depending upon the element exists or not
    async getElementPresent(page, xpath) {
        let existence=false;
        let elementChecker=await page.$x(xpath,{ visible:true,timeout :20000 });
        await console.log("Existance: "+elementChecker);
        if(elementChecker!==null){
            await console.log("Element Found");
            existence= true;
        }
        return existence;
    }

    // enters text to input field
    async enterTextBySelector(page, element, value) {
        try {
            await page.waitForSelector(element, {waitUntil: 'load', timeout: 0});
            await page.type(element, value );
        }
        catch (errorMessage) {
            throw new Error(`Unable to enter ${value}, Inside locator: ${element}, errorMessage: ${errorMessage}, errorStack: ${errorMessage.stack}`);
        }
    }

    async enterTextIframe(page, iframes, element, value) {
        try {
            await page.waitForSelector('iframe');
            const elementHandle = await page.$(iframes);
            const frame = await elementHandle.contentFrame();
            await frame.type(element, value,{waitUntil: 'load', timeout: 0});
        }
        catch (errorMessage) {
            throw new Error(`Unable to enter ${value}, Inside locator: ${element}, errorMessage: ${errorMessage}, errorStack: ${errorMessage.stack}`);
        }
    }

    async getFloatValue(page, selector) {
        const element = await page.$(selector);
        const text = await page.evaluate(element => element.parentElement, element);
        return parseFloat(text.replace(/,/g,'').replace('$', ''))
    }

                        //page,xpath,textvalue
    async enterTextXpath(page, element, value){
        try {

            const elements = await page.waitForXPath(element,{visible:true,timeout: 50000});
            await elements.click();
            await elements.type(value);
            // await page.evaluate((el,data)=> el.value=data,elements[0],value);
        }
        catch (errorMessage) {
            throw new Error( `Unable to enter ${value}, Inside locator: ${element}, errorMessage: ${errorMessage}, errorStack: ${errorMessage.stack}`);
        }
    }

    //this function is used to remove test by using xpath expression
    async removeTextByXpath(page, xpath)
    {
        try {
            const element = await page.waitForXPath(xpath, {visible: true, timeout: 10000});
            await element.click();
            // await page.keyboard.press('Backspace');
            await page.keyboard.down('Control');
            await page.keyboard.press('A');
            await page.keyboard.up('Control');
            await page.keyboard.press('Backspace');
            await element.click();
        } catch (e) {
            throw new Error( `Unable to click element with xpath ${xpath} , ${e}`)
        }
    }

    async getSelectorIDFromXpath(page,xpath){
        try {
            await page.waitForXPath(xpath);
            let xpathElements = await page.$x(xpath);
            let xpathElement = await (await xpathElements[0].getProperty('id')).jsonValue();
            xpathElement = "#"+xpathElement;
            console.log("Selector: "+xpathElement);
            return xpathElement;
            // return await page.evaluate(el => el.textContent, element)
        } catch (errorMessage) {
            throw new Error( 'Unable to get the id of element xpath:' + xpath )
        }
    }

    async getSelectorNameFromXpath(page,xpath){
        try {
            await page.waitForXPath(xpath);
            let xpathElements = await page.$x(xpath);
            let xpathElement = await (await xpathElements[0].getProperty('name')).jsonValue();
            console.log("Selector: "+xpathElement);
            return xpathElement;
            // return await page.evaluate(el => el.textContent, element)
        } catch (errorMessage) {
            throw new Error( 'Unable to get the id of element xpath:' + xpath )
        }
    }

    async uploadFile(page,xpath,pathToFile){

        const input = await page.$x(xpath);
        await input[0].uploadFile(pathToFile);

    }

    async getElementExist(page,xpath){
        try{
            await page.$x(xpath);
            return true;
        }catch(e){
            return false;
        }
    }
}

// module.exports.Input = new Input;
export default new Input();
