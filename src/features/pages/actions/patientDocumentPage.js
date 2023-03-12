import input from "../../../utilities/input";
import patientLocators from "../../locators/patientValues.json";
import {expect} from "chai";

class PatientDocumentsPage {
    canvasElement=null;
    async verifyTool(page, toolName) {
        let toolXpath = "//div[contains(@id,'toolGroup') and contains(text(),'"+toolName+"')]";
        let nameOfTool = await input.getElementTextUsingXpath(page,toolXpath,"innerText");
        expect(nameOfTool).to.be.equal(toolName.toUpperCase());
    }

    async signDocument(page) {
        let canvasElement = await page.waitForXPath(patientLocators.patientDocuments.xpath.canvasStore,{visible:true});
        // await canvasElement.click();
        this.canvasElement = await page.evaluate(el => {
            let context = el.getContext("2d");
            context.fillText("Hello World", 10, 50);
            el.click();
            return el.toDataURL();
        }, canvasElement);
        // let boundingBox =await page.evaluate(el => {
        //     const {x, y,width,length} = el.getBoundingClientRect();
        //     return {x, y,width,length};
        // }, canvasElement);
        // await page.waitForTimeout(5000);
        // await page.mouse.move(boundingBox.x+boundingBox.width/2,boundingBox.y+boundingBox.length/2);
        // await page.mouse.down();
        // await page.mouse.move(boundingBox.x+10,boundingBox.y+10);
        // await page.mouse.up();
        const bounding_box = await canvasElement.boundingBox();
        await page.mouse.move(bounding_box.x + bounding_box.width / 2, bounding_box.y + bounding_box.height / 2);
        await page.mouse.down();
        await page.mouse.move(bounding_box.x+10, bounding_box.y+10);
        await page.mouse.up();
    }

    async verifySignature(page) {
        await page.waitForXPath(patientLocators.patientDocuments.xpath.signatureImage,{visible:true});
        // let imageSrc = await (await image.getProperty("src")).jsonValue();
        // await console.log("Before: "+this.canvasElement);
        // await console.log("After: "+imageSrc);
        // expect(imageSrc).to.equal(this.canvasElement);
    }
}

export default new PatientDocumentsPage()
