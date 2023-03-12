import input from "../../../utilities/input";
import { expect } from "chai";
import Input from "../../../utilities/input";
import settingsLocators from "../../locators/settings.json";
import patMergePage from "./patMergePage";
import announcementPage from "./announcementPage";
import navigationPage from "./navigationBar";
import clicking from "../../../utilities/clicking";
import patientRecordsPage from "./patientRecordsPage";
import accountSettingsPage from "./accountSettingsPage";
import docSettingsLocator from "../../locators/documentSettings.json";
import input_utility from "../../../utilities/input";
import click_utility from "../../../utilities/clicking";
import mailReader from "../../../utilities/mailReader";
import utility from "../../../utilities/utility";
import Input_utility from "../../../utilities/input";
import patientInfo from "../../../data/patientData.json";
class DocumentSettingsPage {
  imageURI = "None";

  // async verifyFilteredColumn(page, header, value) {
  //   let headerValues = await Input.getTextOfTheElements(page,settingsLocators.announcementPage.xpath.announcementLists);
  //   for(let name of headerValues){
  //     let index = headerValues.indexOf(name)+1;
  //     if(name===header){
  //       let headerValueXpath = "//div[contains(@class,'data-set-body')]/div/div["+index+"]";
  //       let headerValue = await input.getTextOfTheElements(page,headerValueXpath);
  //       headerValue.forEach(item=>{
  //         expect(item).to.be.equal(value);
  //       })
  //     }
  //   }
  // }

  async verifyMandatory(page, header) {
    let mandatoryXpath =
      "//div[@id='appended-elements']//div[contains(text(),'" +
      header +
      "')]/..";
    let element = await page.waitForXPath(mandatoryXpath, { visible: true });
    const className = await (
      await element.getProperty("className")
    ).jsonValue();
    expect(className).to.includes("red");
  }

  async enterInputPlaceholder(page, placeholder, value) {
    let inputXpath = "//input[contains(@placeholder,'" + placeholder + "')]";
    await input.enterTextXpath(page, inputXpath, value);
  }

  async uploadFileAddFile(page, fileName) {
    const sample = __dirname + "../../../../data/" + fileName;
    await input.uploadFile(
      page,
      settingsLocators.documentSettings.xpath.imageUpload,
      sample
    );
  }

  async verifyCircularValues(page, header, value) {
    let xpath =
      "//div[contains(@id,'appended-elements')]//div[contains(text(),'" +
      header +
      "')]/following-sibling::div/span|//div[contains(@id,'appended-elements')]//div[contains(text(),'" +
      header +
      "')]/../following-sibling::div/span|//div[contains(@id,'appended-elements')]//div[contains(text(),'" +
      header +
      "')]/../following-sibling::div/div[1]";
    let xpathValue = await input.getElementTextUsingXpath(
      page,
      xpath,
      "textContent"
    );
    expect(xpathValue.trim()).to.be.equal(value.trim());
  }

  // async createPropIfNotExist(page, propCode, propName, propDesc, propType) {
  //   await patMergePage.selectOption(page, "All Names");
  //   await page.waitForTimeout(3000);
  //   await announcementPage.enterTextInTextArea(page, propName);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clickonCheckIcon(page);
  //   await page.waitForTimeout(3000);
  //   let detailItemsXpath =
  //       "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
  //       propName +
  //       "')]";
  //
  //   let elementValues = await Input.getTextOfTheElements(
  //       page,
  //       detailItemsXpath
  //   );
  //   console.log("fetched items : ");
  //   console.log(elementValues);
  //   console.log(elementValues.length);
  //
  //   if (elementValues.length < 1) {
  //     await announcementPage.clickOnPlusIcon(page);
  //     await this.inputValueInline(page, "Code", propCode);
  //     await navigationPage.clickOnPopupItem(page, "Name");
  //     await announcementPage.enterTextInTextArea(page, propName);
  //     await announcementPage.clickonCheckIcon(page);
  //     await navigationPage.clickOnPopupItem(page, "Description");
  //     await announcementPage.enterTextInTextArea(page, propDesc);
  //     await announcementPage.clickonCheckIcon(page);
  //     await navigationPage.clickOnPopupItem(page, "Type");
  //     await navigationPage.clickOnPopupItem(page, propType);
  //     await announcementPage.clickonCheckIcon(page);
  //     await announcementPage.clickonCheckIcon(page);
  //     await announcementPage.verifyForm(page, "Submission Successful");
  //     await announcementPage.clickonCheckIcon(page);
  //
  //     await page.waitForTimeout(3000);
  //     await announcementPage.clickonPopUpBackIcon(page);
  //   }
  //
  //   // if(elementValues.length < 1){
  //   //
  //   // }
  //   await patMergePage.selectOption(page, propName);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clearTextInTextArea(page);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clickonCheckIcon(page);
  //   await page.waitForTimeout(3000);
  // }

  // async inputValueInline(page, label, value) {
  //   let xpath =
  //       "//div[contains(@id,'appended-elements')]//div[text()='" +
  //       label +
  //       "']//following-sibling::div/input";
  //   await input.enterTextXpath(page, xpath, value);
  // }

  // async createDocIfNotExist(page,docCode,docName,docDesc,docType,docAmendable,docDraft,docSummarize,docAbandon) {
  //   await patMergePage.selectOption(page, "All Names");
  //   await page.waitForTimeout(3000);
  //   await announcementPage.enterTextInTextArea(page, docName);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clickonCheckIcon(page);
  //   await page.waitForTimeout(3000);
  //   let detailItemsXpath =
  //       "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
  //       docName +
  //       "')]";
  //
  //   let elementValues = await Input.getTextOfTheElements(
  //       page,
  //       detailItemsXpath
  //   );
  //   console.log("fetched items : ");
  //   console.log(elementValues);
  //   console.log(elementValues.length);
  //
  //   if (elementValues.length < 1) {
  //     await announcementPage.clickOnPlusIcon(page);
  //     await this.inputValueInline(page, "Code", docCode);
  //     await this.inputValueInline(page, "Name", docName);
  //     await navigationPage.clickOnPopupItem(page, "Type");
  //     await navigationPage.clickOnPopupItem(page, docType);
  //     await navigationPage.clickOnPopupItem(page, "Description");
  //     await announcementPage.enterTextInTextArea(page, docDesc);
  //     await announcementPage.clickonCheckIcon(page);
  //     await announcementPage.clickToggleButtonToValue(page,"Amendable",docAmendable);
  //     await announcementPage.clickToggleButtonToValue(page,"Ability To Save Draft",docDraft);
  //     await announcementPage.clickToggleButtonToValue(page,"Summarisable",docSummarize);
  //     await announcementPage.clickToggleButtonToValue(page,"Abandonable",docAbandon);
  //     await announcementPage.clickonCheckIcon(page);
  //     await announcementPage.clickonCheckIcon(page);
  //     await announcementPage.verifyForm(page, "Submission Successful");
  //     await announcementPage.clickonCheckIcon(page);
  //     await page.waitForTimeout(3000);
  //     await announcementPage.clickonPopUpBackIcon(page);
  //   }
  //   await patMergePage.selectOption(page, docName);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clearTextInTextArea(page);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clickonCheckIcon(page);
  //   await page.waitForTimeout(3000);
  // }

  // async publishOption(page, name) {
  //   await patMergePage.selectOption(page, "All Names");
  //   await page.waitForTimeout(3000);
  //   await announcementPage.enterTextInTextArea(page, name);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clickonCheckIcon(page);
  //   await page.waitForTimeout(3000);
  //   await this.clickOnTableFirstRow(page,name);
  //   await page.waitForTimeout(3000);
  //   let status = await input.getElementTextUsingXpath(page,settingsLocators.documentSettings.xpath.statusXpath,"textContent");
  //   await console.log("Status: "+status);
  //   if (status !== "Published") {
  //     await announcementPage.clickOnActionIcon(page);
  //     await announcementPage.clickOnActionItem(page,"Publish");
  //     await announcementPage.clickonCheckIcon(page);
  //     await announcementPage.verifyForm(page, "Success");
  //     await announcementPage.clickonCheckIcon(page);
  //     status = await input.getElementTextUsingXpath(page,settingsLocators.documentSettings.xpath.statusXpath,"textContent");
  //     expect(status).to.be.equal("Published");
  //   }
  //   await announcementPage.clickonPopUpBackIcon(page);
  //   await patMergePage.selectOption(page, name);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clearTextInTextArea(page);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clickonCheckIcon(page);
  //   await page.waitForTimeout(3000);
  // }

  async clickOnTableFirstRow(page, columnValue) {
    await page.waitForTimeout(3000);
    let menuOption = "(//div[contains(@class,'body')]//div[contains(@class,'cell')][text()='" +columnValue +"'])[1]|(//div[contains(@class,'body')]//div[contains(@class,'cell')]//div[text()='" +columnValue +"'])[1]";
    await clicking.clickElementByXpath(page, menuOption);
  }

  // async createPackageIfNotExist(page, packCode, packName, packDesc, packOrigin) {
  //   await patMergePage.selectOption(page, "All Names");
  //   await page.waitForTimeout(3000);
  //   await announcementPage.enterTextInTextArea(page, packName);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clickonCheckIcon(page);
  //   await page.waitForTimeout(3000);
  //   let detailItemsXpath =
  //       "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
  //       packName +
  //       "')]";
  //
  //   let elementValues = await Input.getTextOfTheElements(
  //       page,
  //       detailItemsXpath
  //   );
  //   console.log("fetched items : ");
  //   console.log(elementValues);
  //   console.log(elementValues.length);
  //
  //   if (elementValues.length < 1) {
  //     await announcementPage.clickOnPlusIcon(page);
  //     await this.inputValueInline(page, "Code", packCode);
  //     await this.inputValueInline(page, "Name", packName);
  //
  //     await navigationPage.clickOnPopupItem(page, "Description");
  //     await announcementPage.enterTextInTextArea(page, packDesc);
  //     await announcementPage.clickonCheckIcon(page);
  //
  //     await navigationPage.clickOnPopupItem(page, "Origin");
  //     await navigationPage.clickOnPopupItem(page, packOrigin);
  //
  //     await announcementPage.clickonCheckIcon(page);
  //     await announcementPage.clickonCheckIcon(page);
  //
  //     await announcementPage.verifyForm(page, "Submission Successful");
  //     await announcementPage.clickonCheckIcon(page);
  //
  //     await page.waitForTimeout(3000);
  //     await announcementPage.clickonPopUpBackIcon(page);
  //   }
  //
  //   // if(elementValues.length < 1){
  //   //
  //   // }
  //   await patMergePage.selectOption(page, packName);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clearTextInTextArea(page);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clickonCheckIcon(page);
  //   await page.waitForTimeout(3000);
  // }

  // async associateDocumentToPackage(page, packName, docmentName) {
  //   await patMergePage.selectOption(page, "All Names");
  //   await page.waitForTimeout(3000);
  //   await announcementPage.enterTextInTextArea(page, packName);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clickonCheckIcon(page);
  //   await page.waitForTimeout(3000);
  //   let detailItemsXpath =
  //       "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
  //       packName +
  //       "')]";
  //
  //   let elementValues = await Input.getTextOfTheElements(
  //       page,
  //       detailItemsXpath
  //   );
  //   console.log("fetched items : ");
  //   console.log(elementValues);
  //   console.log(elementValues.length);
  //
  //   if (elementValues.length > 0) {
  //     await this.clickOnTableFirstRow(page,packName);
  //     await navigationPage.clickOnPopupItem(page,"Linked Documents");
  //     await announcementPage.clickOnActionIconWithHeaderName(page,"Linked Documents List");
  //     await navigationPage.clickOnPopupItem(page,"Add Documents");
  //     await announcementPage.clickonCheckIcon(page);
  //     await page.waitForTimeout(10000);
  //     await accountSettingsPage.searchInFilter(page,docmentName);
  //
  //     let divXpath = "//*[@id='appended-elements']//*[text()='"+labelName+"']/../..";
  //
  //     let element = await page.waitForXPath(divXpath);
  //     const className = await (
  //         await element.getProperty("className")
  //     ).jsonValue();
  //     console.log(className);
  //
  //     if (!className.includes("disabled")) {
  //       await navigationPage.clickOnPopupItem(page,"Add Documents");
  //     }
  //     await announcementPage.clickonCheckIcon(page);
  //     await page.waitForTimeout(3000);
  //     await announcementPage.clickonPopUpBackIcon(page);
  //     await page.waitForTimeout(3000);
  //     await announcementPage.clickonPopUpBackIcon(page);
  //   }
  //
  //   await patMergePage.selectOption(page, packName);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clearTextInTextArea(page);
  //   await page.waitForTimeout(3000);
  //   await announcementPage.clickonCheckIcon(page);
  //   await page.waitForTimeout(3000);
  // }

  async configureDocument(page, documentName, propName) {
    // await patMergePage.selectOption(page, "All Names");
    // await page.waitForTimeout(3000);
    // await announcementPage.enterTextInTextArea(page, documentName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
    await this.clickOnTableFirstRow(page, documentName);
    await page.waitForTimeout(3000);
    let status = await input.getElementTextUsingXpath(
      page,
      settingsLocators.documentSettings.xpath.statusXpath,
      "textContent"
    );
    await console.log("Status: " + status);
    if (status !== "Published") {
      await announcementPage.clickOnActionIcon(page);
      await announcementPage.clickOnActionItem(page, "Configure");
      await patientRecordsPage.clickActionIconByLabel(
        page,
        "Document Sections"
      );
      await announcementPage.clickOnActionItem(page, "Create");
      let value = documentName.split("_");
      await this.inputValueInline(
        page,
        "Code",
        "Section_" + value[1] + "_Code"
      );
      await this.inputValueInline(
        page,
        "Name",
        "Section_" + value[1] + "_Name"
      );
      await announcementPage.clickOnActionItem(page, "Description");
      await announcementPage.enterTextInTextArea(
        page,
        "Section_" + value[1] + "_Description"
      );
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickOnActionItem(page, "Return to Document");

      await patientRecordsPage.clickActionIconByLabel(
        page,
        "Document Properties"
      );
      await announcementPage.clickOnActionItem(page, "Add Property");
      await announcementPage.clickOnActionItem(page, "Use Existing Property");
      await announcementPage.clickonCheckIcon(page);
      await accountSettingsPage.searchInFilter(page, propName);
      await announcementPage.clickOnActionItem(page, propName);
      await announcementPage.clickonCheckIcon(page);

      await announcementPage.clickonCheckIcon(page);
      status = await input.getElementTextUsingXpath(
        page,
        settingsLocators.documentSettings.xpath.statusXpath,
        "textContent"
      );
      expect(status).to.be.equal("Published");
    }
    await announcementPage.clickonPopUpBackIcon(page);
    // await patMergePage.selectOption(page, documentName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clearTextInTextArea(page);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
  }

  async configureDocumentWithProperty(page, documentName, propName) {
    await this.clickOnTableFirstRow(page, documentName);
    await announcementPage.waitForLoading(page);
    await page.waitForTimeout(3000);
    let status = await input.getElementTextUsingXpath(page,settingsLocators.documentSettings.xpath.statusXpath,"textContent");
    await console.log("Status: " + status);
    if (status !== "Published") {
      await announcementPage.clickOnActionIcon(page);
      await announcementPage.clickOnActionItem(page, "Configure");
      await this.removeAllSections(page);
      await patientRecordsPage.clickActionIconByLabel(page,"Document Sections");
      await announcementPage.clickOnActionItem(page, "Create");
      let value = documentName.split("_");
      await this.inputValueInline(page,"Code","Section_" + value[1] + "_Code");
      await this.inputValueInline(page,"Name","Section_" + value[1] + "_Name");
      await announcementPage.clickOnActionItem(page, "Description");
      await announcementPage.enterTextInTextArea(page,"Section_" + value[1] + "_Description");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickOnActionItem(page, "Return to Document");
      let allProp = propName.split(",");
      for (const item of allProp) {
        await patientRecordsPage.clickActionIconByLabel(page,"Document Properties");
        await announcementPage.clickOnActionItem(page, "Add Property");
        await announcementPage.clickOnActionItem(page, "Use Existing Property");
        await announcementPage.clickonCheckIcon(page);
        await accountSettingsPage.searchInFilter(page, item);
        await announcementPage.clickOnActionItem(page, item);
        await announcementPage.clickonCheckIcon(page);
        await page.reload();
        await announcementPage.clickonPopUpBackIcon(page);
      }
    }
    await announcementPage.clickonBackIcon(page);
  }

  async verifyPresentInDocument(page, propValue) {
    let propValueXpath = "//*[text()=\"" + propValue + "\"]";
    let present = await input.getTextOfTheElements(page, propValueXpath);
    await console.log("Present Length: " + present.length);
    if (present.length < 1) {
      expect(false).to.be.true;
      return;
    }
    expect(true).to.be.true;
  }

  async verifyNotPresentInDocument(page, propValue) {
    let propValueXpath = "//*[text()='" + propValue + "']";
    let present = await input.getTextOfTheElements(page, propValueXpath);
    await console.log("Not Present Length: " + present.length);
    if (present.length > 0) {
      expect(false).to.be.true;
      return;
    }
    expect(true).to.be.true;
  }

  async configureInformationProperty(page, propName, propValue) {
    await this.clickOnTableFirstRow(page, propName);
    await page.waitForTimeout(3000);
    let status = await input.getElementTextUsingXpath(
      page,
      settingsLocators.documentSettings.xpath.statusXpath,
      "textContent"
    );
    await console.log("Status: " + status);
    if (status !== "Published") {
      await announcementPage.clickOnActionIcon(page);
      await announcementPage.clickOnActionItem(page, "Configure content");
      await input.enterTextXpath(
        page,
        settingsLocators.announcementPage.xpath.popUpQlEditore,
        propValue
      );
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickonCheckIcon(page);
    }
    await announcementPage.clickonPopUpBackIcon(page);
  }

  async removeAllSections(page) {
    await page.waitForTimeout(3000);
    await page.reload();
    await page.waitForTimeout(3000);
    let sections = await page.$x(settingsLocators.documentSettings.xpath.allSections);
    await console.log("Sections: " + sections.length);
    let max = sections.length;
    if (sections.length > 0) {
      for (let section of sections) {
        await console.log("Removing Section");
        max = max - 1;
        await clicking.clickElementByXpath(page,settingsLocators.documentSettings.xpath.actionSectionXpath);
        await announcementPage.clickOnPopUpActionIcon(page);
        await announcementPage.clickOnActionItem(page, "Remove");
        await announcementPage.clickonCheckIcon(page);
        await page.waitForTimeout(3000);
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
        await console.log("Section Removed");
        await page.reload();
      }
    }
    await console.log("All Sections Removed");
  }

  async configureDocumentTST680(page, propName) {
    // await patMergePage.selectOption(page, "All Names");
    // await page.waitForTimeout(3000);
    // await announcementPage.enterTextInTextArea(page, propName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
    await this.clickOnTableFirstRow(page, propName);
    await announcementPage.waitForLoading(page);
    await page.waitForTimeout(3000);
    let status = await input.getElementTextUsingXpath(page,settingsLocators.documentSettings.xpath.statusXpath,"textContent");
    await console.log("Status: " + status);
    if (status !== "Published") {
      await announcementPage.clickOnActionIcon(page);
      await page.waitForTimeout(3000);
      await announcementPage.clickOnActionItem(page, "Configure");
      //Removing Previous Sections
      await this.removeAllSections(page);
      //Creating Section
      await patientRecordsPage.clickActionIconByLabel(page,"Document Sections");
      await announcementPage.clickOnActionItem(page, "Create");
      let value = propName.split("_");
      await this.inputValueInline(page,"Code", "Section_" + value[1] + "_Code");
      await this.inputValueInline(page,"Name","Section_" + value[1] + "_Name");
      await announcementPage.clickOnActionItem(page, "Description");
      await announcementPage.waitForLoadingWithTitle(page,"Enter Description");
      await announcementPage.verifyPopUpLabel(page,"Enter Description");
      await announcementPage.enterTextInTextArea(page,"Section_" + value[1] + "_Description");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Create Section");
      await announcementPage.verifyPopUpLabel(page,"Create Section");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Create Section");
      await announcementPage.verifyPopUpLabel(page,"Create Section");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Create Section");
      await announcementPage.verifyPopUpLabel(page,"Create Section");
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickOnActionItem(page, "Return to Document");
      await page.reload();
      await page.waitForTimeout(5000);
      //Configuring Section for Property 1
      await patientRecordsPage.clickActionIconByLabel(page,"Document Properties");
      await announcementPage.waitForLoadingWithTitle(page,"Property Menu");
      await announcementPage.verifyPopUpLabel(page,"Property Menu");
      await announcementPage.clickOnActionItem(page, "Add Property");
      await announcementPage.waitForLoadingWithTitle(page,"Property Search");
      await announcementPage.verifyPopUpLabel(page,"Property Search");
      await announcementPage.clickOnActionItem(page, "Use Existing Property");
      await announcementPage.waitForLoadingWithTitle(page,"Existing Property Search");
      await announcementPage.verifyPopUpLabel(page,"Existing Property Search");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Existing Property Search Results");
      await announcementPage.verifyPopUpLabel(page,"Existing Property Search Results");
      await accountSettingsPage.searchInFilter(page, "Prop_TST-680_Name_1");
      await announcementPage.clickOnActionItem(page, "Prop_TST-680_Name_1");
      await announcementPage.waitForLoadingWithTitle(page,"Selected Existing Property Summary");
      await announcementPage.verifyPopUpLabel(page,"Selected Existing Property Summary");
      await announcementPage.clickonCheckIcon(page);
      await page.reload();
      await page.waitForTimeout(5000);
      await announcementPage.waitForLoadingWithTitle(page,"Property Menu");
      await announcementPage.verifyPopUpLabel(page,"Property Menu");
      await announcementPage.clickonPopUpBackIcon(page);
      //Configuring Section for Property 2
      await patientRecordsPage.clickActionIconByLabel(page,"Document Properties");
      await announcementPage.waitForLoadingWithTitle(page,"Property Menu");
      await announcementPage.verifyPopUpLabel(page,"Property Menu");
      await announcementPage.clickOnActionItem(page, "Add Property");
      await announcementPage.waitForLoadingWithTitle(page,"Property Search");
      await announcementPage.verifyPopUpLabel(page,"Property Search");
      await announcementPage.clickOnActionItem(page, "Use Existing Property");
      await announcementPage.waitForLoadingWithTitle(page,"Existing Property Search");
      await announcementPage.verifyPopUpLabel(page,"Existing Property Search");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Existing Property Search Results");
      await announcementPage.verifyPopUpLabel(page,"Existing Property Search Results");
      await accountSettingsPage.searchInFilter(page, "Prop_TST-680_Name_2");
      await announcementPage.clickOnActionItem(page, "Prop_TST-680_Name_2");
      await announcementPage.waitForLoadingWithTitle(page,"Selected Existing Property Summary");
      await announcementPage.verifyPopUpLabel(page,"Selected Existing Property Summary");
      await announcementPage.clickonCheckIcon(page);
      await page.reload();
      await page.waitForTimeout(5000);
      await announcementPage.waitForLoadingWithTitle(page,"Property Menu");
      await announcementPage.verifyPopUpLabel(page,"Property Menu");
      await announcementPage.clickonPopUpBackIcon(page);
      //Applying Rules to Prop_TST-680_Name
      await clicking.clickElementByXpath(page,settingsLocators.documentSettings.xpath.propTST680_NameAction);
      await announcementPage.waitForLoadingWithTitle(page,"Property Details");
      await announcementPage.verifyPopUpLabel(page,"Property Details");
      await announcementPage.clickOnActionItem(page, "Rules");
      await announcementPage.waitForLoadingWithTitle(page,"Property Rules");
      await announcementPage.verifyPopUpLabel(page,"Property Rules");
      await announcementPage.clickOnPopUpPlusIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Configure Rule");
      await announcementPage.verifyPopUpLabel(page,"Configure Rule");
      await announcementPage.clickOnActionItem(page, "Property");
      await announcementPage.waitForLoadingWithTitle(page,"Select Section");
      await announcementPage.verifyPopUpLabel(page,"Select Section");
      await announcementPage.clickOnActionItem(page, "Section_TST-680_Name");
      await announcementPage.waitForLoadingWithTitle(page,"Select Property");
      await announcementPage.verifyPopUpLabel(page,"Select Property");
      await announcementPage.clickOnActionItem(page, "Prop_TST-680_Name_2");
      await announcementPage.waitForLoadingWithTitle(page,"Select Value");
      await announcementPage.verifyPopUpLabel(page,"Select Value");
      await announcementPage.clickOnActionItem(page, "This is Prop_TST-680_2");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Configure Rule");
      await announcementPage.verifyPopUpLabel(page,"Configure Rule");
      await announcementPage.clickOnActionItem(page,"Make property not visible");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Rule Summary");
      await announcementPage.verifyPopUpLabel(page,"Rule Summary");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Property Details");
      await announcementPage.verifyPopUpLabel(page,"Property Details");
      await announcementPage.clickonPopUpBackIcon(page);
    }
    await announcementPage.clickonBackIcon(page);
    // await patMergePage.selectOption(page, propName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clearTextInTextArea(page);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
  }

  async configureDocumentTST792(page, propName) {
    await this.clickOnTableFirstRow(page, propName);
    await announcementPage.waitForLoading(page);
    await page.waitForTimeout(3000);
    let status = await input.getElementTextUsingXpath(page,settingsLocators.documentSettings.xpath.statusXpath,"textContent");
    await console.log("Status: " + status);
    if (status !== "Published") {
      await announcementPage.clickOnActionIcon(page);
      await page.waitForTimeout(3000);
      await announcementPage.clickOnActionItem(page, "Configure");
      await navigationPage.verifyPage(page,"Document Settings");
      //Applying Rules to Prop_TST-792_Name
      await clicking.clickElementByXpath(page,settingsLocators.documentSettings.xpath.propTST792_NameAction);
      await announcementPage.waitForLoadingWithTitle(page,"Property Details");
      await announcementPage.verifyPopUpLabel(page,"Property Details");
      await announcementPage.clickOnActionItem(page, "Rules");
      await announcementPage.waitForLoadingWithTitle(page,"Property Rules");
      await announcementPage.verifyPopUpLabel(page,"Property Rules");
      await announcementPage.clickOnPopUpPlusIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Configure Rule");
      await announcementPage.verifyPopUpLabel(page,"Configure Rule");
      await announcementPage.clickOnActionItem(page, "Property");
      await announcementPage.waitForLoadingWithTitle(page,"Select Section");
      await announcementPage.verifyPopUpLabel(page,"Select Section");
      await announcementPage.clickOnActionItem(page, "Section_TST-792_Name");
      await announcementPage.waitForLoadingWithTitle(page,"Select Property");
      await announcementPage.verifyPopUpLabel(page,"Select Property");
      await announcementPage.clickOnActionItem(page, "Prop_TST-792_Name_2");
      await announcementPage.waitForLoadingWithTitle(page,"Select Value");
      await announcementPage.verifyPopUpLabel(page,"Select Value");
      await announcementPage.clickOnActionItem(page, "This is Prop_TST-792_2");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Configure Rule");
      await announcementPage.verifyPopUpLabel(page,"Configure Rule");
      await announcementPage.clickOnActionItem(page,"Make property not visible");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Rule Summary");
      await announcementPage.verifyPopUpLabel(page,"Rule Summary");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Property Details");
      await announcementPage.verifyPopUpLabel(page,"Property Details");
      await announcementPage.clickonPopUpBackIcon(page);
    }
    await announcementPage.clickonBackIcon(page);
  }

  async configureDocumentTST695(page, propName) {
    await this.clickOnTableFirstRow(page, propName);
    await announcementPage.waitForLoading(page);
    await page.waitForTimeout(3000);
    let status = await input.getElementTextUsingXpath(page,settingsLocators.documentSettings.xpath.statusXpath,"textContent");
    await console.log("Status: " + status);
    if (status !== "Published") {
      await announcementPage.clickOnActionIcon(page);
      await page.waitForTimeout(3000);
      await announcementPage.clickOnActionItem(page, "Configure");
      //Removing Previous Sections
      await this.removeAllSections(page);
      //Creating Section
      await patientRecordsPage.clickActionIconByLabel(page,"Document Sections" );
      await announcementPage.clickOnActionItem(page, "Create");
      let value = propName.split("_");
      await this.inputValueInline(page,"Code","Section_" + value[1] + "_Code" );
      await this.inputValueInline(page,"Name","Section_" + value[1] + "_Name");
      await announcementPage.clickOnActionItem(page, "Description");
      await announcementPage.enterTextInTextArea(page,"Section_" + value[1] + "_Description");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickOnActionItem(page, "Return to Document");
      await page.reload();
      await page.waitForTimeout(5000);
      //Configuring Section for Property 1
      await patientRecordsPage.clickActionIconByLabel(page,"Document Properties");
      await announcementPage.clickOnActionItem(page, "Add Property");
      await announcementPage.clickOnActionItem(page, "Use Existing Property");
      await announcementPage.clickonCheckIcon(page);
      await accountSettingsPage.searchInFilter(page, "Prop_TST-695_Name_1");
      await announcementPage.clickOnActionItem(page, "Prop_TST-695_Name_1");
      await announcementPage.clickonCheckIcon(page);
      await page.reload();
      await page.waitForTimeout(5000);
      //Configuring Section for Property 2
      await patientRecordsPage.clickActionIconByLabel(page,"Document Properties");
      await announcementPage.clickOnActionItem(page, "Add Property");
      await announcementPage.clickOnActionItem(page, "Use Existing Property");
      await announcementPage.clickonCheckIcon(page);
      await accountSettingsPage.searchInFilter(page, "Prop_TST-695_Name_2");
      await announcementPage.clickOnActionItem(page, "Prop_TST-695_Name_2");
      await announcementPage.clickonCheckIcon(page);
      await page.reload();
      await page.waitForTimeout(5000);
      await announcementPage.clickonPopUpBackIcon(page)
    }
    await announcementPage.clickonBackIcon(page);
  }

  async configureSelectionProperty(page, propName, propValues) {
    // await patMergePage.selectOption(page, "All Names");
    // await page.waitForTimeout(3000);
    // await announcementPage.enterTextInTextArea(page, propName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
    await this.clickOnTableFirstRow(page, propName);
    await page.waitForTimeout(3000);
    let status = await input.getElementTextUsingXpath(
      page,
      settingsLocators.documentSettings.xpath.statusXpath,
      "textContent"
    );
    await console.log("Status: " + status);
    if (status !== "Published") {
      await announcementPage.clickOnActionItem(page, "Values");
      await announcementPage.clickOnActionIcon(page);
      let all_values = propValues.split(",");
      await console.log("Values: " + all_values);
      //Configuring First Value
      await announcementPage.clickOnActionItem(page, "Add Value");
      await announcementPage.clickOnActionItem(page, "Display");
      await announcementPage.enterTextInTextArea(page, all_values[0]);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickOnActionItem(page, "Value");
      await announcementPage.enterTextInTextArea(page, all_values[0]);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Success");
      //Configuring Second Value
      await announcementPage.clickOnActionItem(page, "Create Another Value");
      await announcementPage.clickOnActionItem(page, "Display");
      await announcementPage.enterTextInTextArea(page, all_values[1]);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickOnActionItem(page, "Value");
      await announcementPage.enterTextInTextArea(page, all_values[1]);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickonCheckIcon(page);
    }
    await announcementPage.clickonPopUpBackIcon(page);
    // await patMergePage.selectOption(page, propName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clearTextInTextArea(page);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
  }

  async hasRulesApplied(page, propName) {
    let rulesXpath =
      "//span[contains(text(),'" +
      propName +
      "')]/ancestor::div[contains(@class,'configurator-property')]";
    let rulesElement = await page.waitForXPath(rulesXpath);
    const className = await (
      await rulesElement.getProperty("className")
    ).jsonValue();
    expect(className).to.includes("rules-active");
  }

  async hasNoRulesApplied(page, propName) {
    let rulesXpath =
      "//span[contains(text(),'" +
      propName +
      "')]/ancestor::div[contains(@class,'configurator-property')]";
    let rulesElement = await page.waitForXPath(rulesXpath);
    const className = await (
      await rulesElement.getProperty("className")
    ).jsonValue();
    if (className.includes("rules-active")) expect(false).to.be.true;
  }

  async clickActionProperty(page, label) {
    let xpath =
      "//span[contains(text(),'" +
      label +
      "')]/../following-sibling::div[contains(@class,'meatballs')]";
    await clicking.clickElementByXpath(page, xpath);
  }

  async configureDocumentTST1003(page, propName) {
    await this.clickOnTableFirstRow(page, propName);
    await announcementPage.waitForLoading(page);
    await page.waitForTimeout(3000);
    let status = await input.getElementTextUsingXpath(      page,      settingsLocators.documentSettings.xpath.statusXpath,      "textContent"    );
    await console.log("Status: " + status);
    if (status !== "Published") {
      await announcementPage.clickOnActionIcon(page);
      await page.waitForTimeout(3000);
      await announcementPage.clickOnActionItem(page, "Configure");
      //Removing Previous Sections
      await this.removeAllSections(page);
      //Creating Section
      await patientRecordsPage.clickActionIconByLabel(        page,        "Document Sections"      );
      await announcementPage.clickOnActionItem(page, "Create");
      let value = propName.split("_");
      await this.inputValueInline(page, "Code", "Section_"+value[1]+"_Code");
      await this.inputValueInline(page, "Name", "Section_"+value[1]+"_Name");
      await announcementPage.clickOnActionItem(page,"Description");
      await announcementPage.enterTextInTextArea(page,"Section_"+value[1]+"_Description");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickOnActionItem(page, "Return to Document");
      await page.reload();
      await page.waitForTimeout(5000);
      //Configuring Section for Property 1
      await patientRecordsPage.clickActionIconByLabel(        page,        "Document Properties"      );
      await announcementPage.clickOnActionItem(page, "Add Property");
      await announcementPage.clickOnActionItem(page, "Use Existing Property");
      await announcementPage.clickonCheckIcon(page);
      await accountSettingsPage.searchInFilter(page, "Prop_TST-1003_Name_1");
      await announcementPage.clickOnActionItem(page, "Prop_TST-1003_Name_1");
      await announcementPage.clickonCheckIcon(page);
      await page.reload();
      await page.waitForTimeout(5000);
      //Configuring Section for Property 2
      await patientRecordsPage.clickActionIconByLabel(        page,        "Document Properties"      );
      await announcementPage.clickOnActionItem(page, "Add Property");
      await announcementPage.clickOnActionItem(page, "Use Existing Property");
      await announcementPage.clickonCheckIcon(page);
      await accountSettingsPage.searchInFilter(page, "Prop_TST-1003_Name_2");
      await announcementPage.clickOnActionItem(page, "Prop_TST-1003_Name_2");
      await announcementPage.clickToggleButtonToValue(page,        "Mandatory",        "active"      );
      await announcementPage.clickonCheckIcon(page);
      await page.reload();
      await page.waitForTimeout(5000);
      await announcementPage.clickonPopUpBackIcon(page);
      await announcementPage.clickonBackIcon(page);
    } else await announcementPage.clickonPopUpBackIcon(page);
  }

  async addFilter(page, propName, parameter) {
    await patMergePage.selectOption(page, parameter);
    await page.waitForTimeout(3000);
    await announcementPage.enterTextInTextArea(page, propName);
    await page.waitForTimeout(3000);
    await announcementPage.clickonCheckIcon(page);
    await page.waitForTimeout(3000);
  }

  async removeFilter(page, propName) {
    await patMergePage.selectOption(page, propName);
    await page.waitForTimeout(3000);
    await announcementPage.clearTextInTextArea(page);
    await page.waitForTimeout(3000);
    await announcementPage.clickonCheckIcon(page);
    await page.waitForTimeout(3000);
  }

  async chooseFilter(page, propName, parameter) {
    await patMergePage.selectOption(page, parameter);
    await page.waitForTimeout(3000);
    let filterXpath =
      "//div[@id='appended-elements']//*[text()='" + propName + "']";
    await clicking.clickElementByXpath(page, filterXpath);
    await page.waitForTimeout(3000);
    await announcementPage.clickonCheckIcon(page);
    await page.waitForTimeout(3000);
  }

  async verifyLinkedDocument(page, propName) {
    let values = await input.getTextOfTheElements(
      page,
      settingsLocators.documentSettings.xpath.linkedDocumentList
    );
    expect(values).to.includes(propName);
  }

  async verifyLinkedDocumentStatus(page, docName, status) {
    let xpath =
      "//div[@id='appended-elements']//div[contains(text(),'" +
      docName +
      "')]/../following-sibling::div/span";
    let statusValues = await input.getElementTextUsingXpath(
      page,
      xpath,
      "textContent"
    );
    expect(statusValues.trim()).to.equal(status);
  }

  async verifyImageShownAndSaved(page) {
    let image = await page.waitForXPath(
      settingsLocators.documentSettings.xpath.imageShown
    );
    let style = await page.evaluate((img) => {
      return JSON.parse(JSON.stringify(getComputedStyle(img)));
    }, image);
    // this.imageURI = await (await image.getProperty('src')).jsonValue();
    await console.log(style);
    expect(style.display).to.include("inline");
  }

  async verifyImage(page) {
    let image = await page.waitForXPath(
      settingsLocators.documentSettings.xpath.imageShown
    );
    let data = await (await image.getProperty("src")).jsonValue();
    expect(this.imageURI).to.be.equal(data);
  }

  async clickOnDocumetSettingsMenuOption(page, optionName) {
    let menuOption =
      "//div[@class='module-navigator-items']//div[text()='" +
      optionName +
      "']";
    await clicking.clickElementByXpath(page, menuOption);
  }

  async inputValueInline(page, label, value) {
    try {
      let xpath =
        "//div[contains(@id,'appended-elements')]//div[text()='" +
        label +
        "']//following-sibling::div/input";
      await input.enterTextXpath(page, xpath, value);
    } catch (e) {
      let xpath =
        "(//div[contains(@id,'appended-elements')]//div[text()='" +
        label +
        "']/..//following-sibling::div//input)[last()]";
      await input.enterTextXpath(page, xpath, value);
    }
  }

  async selectValueInline(page, label, value) {
    try {
      let xpath =
          "//div[contains(@id,'appended-elements')]//div[text()='" +
          label +
          "']//following-sibling::div/input";
      await input.enterTextXpath(page, xpath, value);
    } catch (e) {
      let xpath =
          "//div[contains(@id,'appended-elements')]//div[text()='" +
          label +
          "']/..//following-sibling::div//input";
      await input.enterTextXpath(page, xpath, value);
    }
  }


  async verifyDetail(page, label, value) {
   try {
     let detailItemXpath =
         "//div[contains(@class,'label')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" +
         label.toUpperCase() +
         "']//following-sibling::div|//div[contains(@class,'label')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']/..//following-sibling::div//div[contains(@class,'container-text')]";
     console.log(detailItemXpath);
     let detailItemText = await Input.getElementTextUsingXpath(
         page,
         detailItemXpath,
         "innerText"
     );
     expect(detailItemText).to.be.equal(value);
   }catch (e) {
     let detailItemXpath = "//div[contains(@class,'label')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']/..//following-sibling::div//div[contains(@class,'container-text')]";
     let detailItemText = await Input.getElementTextUsingXpath(page,detailItemXpath,"innerText");
     expect(detailItemText).to.be.equal(value);
   }
  }


  async verifyDetailPage(page, label, value) {
    try {
      let detailItemXpath =
          "//div[contains(@class,'label')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" +
          label.toUpperCase() +
          "']//following-sibling::div";
      console.log(detailItemXpath);
      let detailItemText = await Input.getElementTextUsingXpath(
          page,
          detailItemXpath,
          "innerText"
      );
      expect(detailItemText).to.be.equal(value);
    }catch (e) {
      let detailItemXpath = "//div[contains(@class,'label')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']/..//following-sibling::div//div[contains(@class,'container-text')]";
      let detailItemText = await Input.getElementTextUsingXpath(page,detailItemXpath,"innerText");
      expect(detailItemText).to.be.equal(value);
    }
  }

  async verifyDetailContains(page, label, value) {
    let detailItemXpath =
      "//div[contains(@class,'label')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" +
      label.toUpperCase() +
      "']//following-sibling::div";
    console.log(detailItemXpath);
    let detailItemText = await Input.getElementTextUsingXpath(
      page,
      detailItemXpath,
      "innerText"
    );
    expect(detailItemText).to.be.includes(value);
  }

  async verifyPopupOptionIsVisible(page, label) {
    let detailItemXpath =
      "//*[@id='appended-elements']//*[text()=\"" + label + "\"]";
    console.log(detailItemXpath);
    let detailItemText = await Input.getElementTextUsingXpath(
      page,
      detailItemXpath,
      "innerText"
    );
    expect(detailItemText).to.exist;
  }

  async changeToggle(page, label, isEnable) {
    let itemToggleXpath =
      "//*[@id='appended-elements']//*[text()='" + label + "']/..";
    let itemXpath = "//*[@id='appended-elements']//*[text()='" + label + "']";
    let element = await page.waitForXPath(itemToggleXpath);
    const className = await (
      await element.getProperty("className")
    ).jsonValue();
    console.log(className);

    if (isEnable === "true") {
      if (className.includes("false")) {
        await clicking.clickElementByXpath(page, itemXpath);
      }
    } else if (isEnable === "false") {
      if (className.includes("active")) {
        await clicking.clickElementByXpath(page, itemXpath);
      }
    }
  }

  async verifyToggle(page, label, isEnable) {
    let itemXpath =
      "//*[@id='appended-elements']//*[text()='" + label + "']/..";
    let element = await page.waitForXPath(itemXpath);
    const className = await (
      await element.getProperty("className")
    ).jsonValue();
    console.log(className);
    expect(className.includes(isEnable)).to.be.true;
  }

  async verifySectionVisibility(page, labelName, isVisible) {
    let divXpath =
      "//span[text()='" +
      labelName +
      "']/ancestor::div[contains(@class,'configurator-')]";
    let element = await page.waitForXPath(divXpath);
    const className = await (
      await element.getProperty("className")
    ).jsonValue();
    console.log(className);

    if (className.includes("hidden")) {
      expect("false").to.be.equal(isVisible);
    } else {
      expect("true").to.be.equal(isVisible);
    }
  }

  async clickOnTableRow(page, columnValue) {
    let menuOption =
      "//div[@class='table-body' or @class='data-set-body']//div[contains(@class,'table-cell') or contains(@class,'data-set-cell')][text()='" +
      columnValue +
      "']";
    await clicking.clickElementByXpath(page, menuOption);
  }

  async verifyIsSearchResultsExist(page, isExist) {
    try {
      await announcementPage.waitForLoading(page);
      await page.waitForXPath(
        docSettingsLocator.packages.xpath.docSearchResults,
        { visible: true }
      );
      await expect("true").to.equal(isExist);
    } catch (e) {
      await expect("false").to.equal(isExist);
    }
  }

  async verifyItemSelectable(page, labelName, isSelectable) {
    let divXpath =
      "//div[contains(@class,'container-item')][text()='" +
      labelName +
      "']/ancestor::div[contains(@class,'component-container')]";
    let element = await page.waitForXPath(divXpath);
    const className = await (
      await element.getProperty("className")
    ).jsonValue();
    console.log(className);

    if (className.includes("disabled")) {
      expect("false").to.be.equal(isSelectable);
    } else {
      expect("true").to.be.equal(isSelectable);
    }
  }

  async verifyIsItemExists(page, pageHeaderName, isExist) {
    let pageXpath =
      "//*[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" + pageHeaderName.toUpperCase() + "']/../..";
    console.log(pageXpath);
    let isAvailable = true;
    try {
      await page.waitForXPath(pageXpath, { visible: true, timeout: 20000 });
      isAvailable = true;
    } catch (e) {
      isAvailable = false;
    }
    await expect(isAvailable+"").to.equal(isExist);


  }

  async verifyIsItemNotExists(page, pageHeaderName, isExist) {
    let pageXpath =
        "//div[contains(@class,'star-active')]//following-sibling::div";
    console.log(pageXpath);
    let isNotAvailable = false;
    try {
      await page.waitForXPath(pageXpath, { visible: true, timeout: 20000 });
      isNotAvailable = false;
    } catch (e) {
      isNotAvailable = true;
    }
    await expect(isNotAvailable+"").to.equal(isExist);


  }

  async verifyIsRemoveIconExists(page, pageHeaderName, isExist) {
    let pageXpath =
      "//div[text()='" +
      pageHeaderName +
      "']/parent::div/following-sibling::span[contains(@class,'remove')]";
    console.log(pageXpath);
    try {
      await page.waitForXPath(pageXpath, { visible: true, timeout: 20000 });
      await expect("true").to.equal(isExist);
    } catch (e) {
      // throw new Error( `error , ${e.stack}`)
      await expect("false").to.equal(isExist);
    }
  }

  async verifyItemCounter(page, label, value) {
    let detailItemXpath =
      "//div[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" +
      label.toUpperCase() +
      "']/..//following-sibling::div/span[contains(@class,'counter')]";
    console.log(detailItemXpath);
    let detailItemText = await Input.getElementTextUsingXpath(
      page,
      detailItemXpath,
      "innerText"
    );
    expect(detailItemText.toString().trim()).to.be.equal(value);
  }

  async verifyItemList(page, headerTitle, values) {
    const usingSplit = values.split(",");
    let detailItemsXpath =
      "//div[text()='" +
      headerTitle +
      "']/../../following-sibling::div//span[@class='details']";
    console.log(detailItemsXpath);
    let elementValues = await Input.getTextOfTheElements(
      page,
      detailItemsXpath
    );
    console.log("fetched items : ");
    console.log(elementValues);
    console.log("available items : ");
    for (const item of elementValues) {
      expect(item.toString().trim()).to.be.equal(
        usingSplit[elementValues.indexOf(item)]
      );
      console.log(item);
      console.log(usingSplit[elementValues.indexOf(item)]);
    }
  }

  async clickItemDown(page, labelName) {
    let divXpath =
      "//*[@id='appended-elements']//*[text()='" +
      labelName +
      "']/ancestor::div[@class='selector']//div[@class='selector-down']";
    await clicking.clickElementByXpath(page, divXpath);
  }

  async clickItemUp(page, labelName) {
    let divXpath =
      "//*[@id='appended-elements']//*[text()='" +
      labelName +
      "']/ancestor::div[@class='selector']//div[@class='selector-up']";
    await clicking.clickElementByXpath(page, divXpath);
  }

  // async clickOnTableFirstRow(page, columnValue) {
  //   let menuOption =
  //       "(//div[contains(@class,'body')]//div[contains(@class,'cell')][text()='" +
  //       columnValue +
  //       "'])[1]";
  //   await clicking.clickElementByXpath(page, menuOption);
  // }

  async changePropertyStatus(page, propertyName, to_status, from_status) {
    try {
      await patMergePage.selectOption(page, "All Names");
      await announcementPage.enterTextInTextArea(page, propertyName);
      await announcementPage.clickonCheckIcon(page);
      await patMergePage.selectOption(page, "All Statuses");
      await navigationPage.clickOnPopupItem(page, from_status);
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(5000);

      let detailItemsXpath =
        "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
        propertyName +
        "')]";

      let elementValues = await Input.getTextOfTheElements(
        page,
        detailItemsXpath
      );
      console.log("fetched items : ");
      console.log(elementValues);
      console.log(elementValues.length);
      for (const item of elementValues) {
        try {
          await this.clickOnTableFirstRow(page, propertyName);
          await page.waitForTimeout(10000);
          await announcementPage.clickOnActionIconWithHeaderName(
            page,
            "Property Details"
          );
          await navigationPage.clickOnPopupItem(page, to_status);
          await page.waitForTimeout(10000);
          await announcementPage.clickonCheckIcon(page);
          await page.waitForTimeout(3000);
          await announcementPage.verifyForm(page, "Success");
          await page.waitForTimeout(3000);
          await announcementPage.clickonCheckIcon(page);
          await page.waitForTimeout(3000);
          await announcementPage.clickonPopUpBackIcon(page);
          await page.waitForTimeout(5000);
        } catch (e) {
          console.log(e.message);
        }
      }
    } catch (e) {
      console.log(e.message);
    }
    await patMergePage.selectOption(page, propertyName);
    await announcementPage.clearTextInTextArea(page);
    await announcementPage.clickonCheckIcon(page);
    await patMergePage.selectOption(page, from_status);
    await navigationPage.clickOnPopupItem(page, "Clear Values");
    await announcementPage.clickonCheckIcon(page);
    await page.waitForTimeout(5000);
  }

  async changeDocumentStatus(page, docName, to_status, from_status) {
    try {
      await patMergePage.selectOption(page, "All Names");
      await page.waitForTimeout(3000);
      await announcementPage.enterTextInTextArea(page, docName);
      await page.waitForTimeout(3000);
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(3000);
      await patMergePage.selectOption(page, "All Statuses");
      await page.waitForTimeout(3000);
      await navigationPage.clickOnPopupItem(page, from_status);
      await page.waitForTimeout(3000);
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(5000);

      let detailItemsXpath =
        "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
        docName +
        "')]";

      let elementValues = await Input.getTextOfTheElements(
        page,
        detailItemsXpath
      );
      console.log("fetched items : ");
      console.log(elementValues);

      for (const item of elementValues) {
        await this.clickOnTableFirstRow(page, docName);
        await page.waitForTimeout(10000);
        await announcementPage.clickOnActionIconWithHeaderName(
          page,
          "Document Details"
        );
        await navigationPage.clickOnPopupItem(page, to_status);
        await page.waitForTimeout(3000);
        await announcementPage.clickonCheckIcon(page);
        // await announcementPage.verifyForm(page,"Success");
        // await announcementPage.clickonCheckIcon(page);
        // await announcementPage.clickonPopUpBackIcon(page);
        await page.waitForTimeout(5000);
      }
    } catch (e) {
      console.log(e.message);
    }
  }

  async verifyRulesIconVisibility(page, labelName, isVisible) {
    let divXpath =
      "//span[text()='" +
      labelName +
      "']/ancestor::div[contains(@class,'configurator-')]";
    let element = await page.waitForXPath(divXpath);
    const className = await (
      await element.getProperty("className")
    ).jsonValue();
    console.log(className);

    if (className.includes("rules-active")) {
      expect("true").to.be.equal(isVisible);
    } else {
      expect("false").to.be.equal(isVisible);
    }
  }

  async verifyIsTableHeaderExists(page, tableHeaderName, isExist) {
    let pageXpath =
      "//div[contains(@class,'header')]//div[contains(@class,'cell')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" +
      tableHeaderName.toUpperCase() +
      "']";
    console.log(pageXpath);
    try {
      await page.waitForXPath(pageXpath, { visible: true, timeout: 20000 });
      await expect("true").to.equal(isExist);
    } catch (e) {
      // throw new Error( `error , ${e.stack}`)
      await expect("false").to.equal(isExist);
    }
  }

  async createPropIfNotExist(page, propCode, propName, propDesc, propType) {
    // await patMergePage.selectOption(page, "All Names");
    // await page.waitForTimeout(3000);
    // await announcementPage.enterTextInTextArea(page, propName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
    let detailItemsXpath =
      "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
      propName +
      "')]";

    let elementValues = await Input.getTextOfTheElements(
      page,
      detailItemsXpath
    );
    console.log("fetched items : ");
    console.log(elementValues);
    console.log(elementValues.length);

    if (elementValues.length < 1) {
      await announcementPage.clickOnPlusIcon(page);
      await this.inputValueInline(page, "Code", propCode);
      await navigationPage.clickOnPopupItem(page, "Name");
      await announcementPage.enterTextInTextArea(page, propName);
      await announcementPage.clickonCheckIcon(page);
      await navigationPage.clickOnPopupItem(page, "Description");
      await announcementPage.enterTextInTextArea(page, propDesc);
      await announcementPage.clickonCheckIcon(page);
      await navigationPage.clickOnPopupItem(page, "Type");
      await navigationPage.clickOnPopupItem(page, propType);
      if(propType==="Image"){
        await announcementPage.clickOnActionItem(page,"Add Image");
        await announcementPage.clickonCheckIcon(page);
        await accountSettingsPage.searchInFilter(page, propName.split("_")[1]);
        await announcementPage.clickOnActionItem(page,"Image_"+propName.split("_")[1]+"_Code");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickonCheckIcon(page);
      }
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Submission Successful");
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(3000);
      await announcementPage.clickonPopUpBackIcon(page);
    }

    // if(elementValues.length < 1){
    //
    // }

    // await patMergePage.selectOption(page, propName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clearTextInTextArea(page);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
  }

  async createPropertyCompleteIfNotExist(
    page,
    propCode,
    propName,
    propDesc,
    propType,
    propPersistence
  ) {
    let detailItemsXpath =
      "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
      propName +
      "')]";

    let elementValues = await Input.getTextOfTheElements(
      page,
      detailItemsXpath
    );
    console.log("fetched items : ");
    console.log(elementValues);
    console.log(elementValues.length);

    if (elementValues.length < 1) {
      await announcementPage.clickOnPlusIcon(page);
      await this.inputValueInline(page, "Code", propCode);
      await navigationPage.clickOnPopupItem(page, "Name");
      await announcementPage.enterTextInTextArea(page, propName);
      await announcementPage.clickonCheckIcon(page);
      await navigationPage.clickOnPopupItem(page, "Description");
      await announcementPage.enterTextInTextArea(page, propDesc);
      await announcementPage.clickonCheckIcon(page);
      await navigationPage.clickOnPopupItem(page, "Type");
      await navigationPage.clickOnPopupItem(page, propType);
      await navigationPage.clickOnPopupItem(page, "Persistence");
      await navigationPage.clickOnPopupItem(page, propPersistence);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Submission Successful");
      await announcementPage.clickonCheckIcon(page);

      await page.waitForTimeout(3000);
      await announcementPage.clickonPopUpBackIcon(page);
    }
  }

  async verifyFilteredColumn(page, header, value) {
    let values = value.split(",");
    let headerValues = await Input.getTextOfTheElements(
      page,
      settingsLocators.announcementPage.xpath.announcementLists
    );
    for (let name of headerValues) {
      let index = headerValues.indexOf(name) + 1;
      if (name === header) {
        let headerValueXpath =
          "//div[contains(@class,'table-body')]//div[contains(@class,'table-cell')][" +
          index +
          "]|//div[contains(@class,'data-set-body')]//div[contains(@class,'data-set-cell')][" +
          index +
          "]";
        let headerValue = await Input.getTextOfTheElements(
          page,
          headerValueXpath
        );
        headerValue.forEach((item) => {
          expect(value).to.include(item);
        });
      }
    }
  }

  async verifyFilteredColumnWithMultipleValues(page, header, value) {
    let values = value.split(",");
    let headerValues = await Input.getTextOfTheElements(
        page,
        settingsLocators.announcementPage.xpath.announcementLists
    );
    for (let name of headerValues) {
      let index = headerValues.indexOf(name) + 1;
      if (name === header) {
        let headerValueXpath =
            "//div[contains(@class,'table-body')]//div[contains(@class,'table-cell')][" +
            index +
            "]|//div[contains(@class,'data-set-body')]//div[contains(@class,'data-set-cell')][" +
            index +
            "]";
        let headerValue = await Input.getTextOfTheElements(
            page,
            headerValueXpath
        );
        headerValue.forEach((item) => {
          expect(value).to.include(item);
        });
      }
    }
  }

  async verifyFilteredColumnWithContains(page, header, value) {
    let headerValues = await Input.getTextOfTheElements(
      page,
      settingsLocators.announcementPage.xpath.announcementLists
    );
    for (let name of headerValues) {
      let index = headerValues.indexOf(name) + 1;
      if (name === header) {
        let headerValueXpath =
          "//div[contains(@class,'table-body')]//div[contains(@class,'table-cell')][" +
          index +
          "]|//div[contains(@class,'data-set-body')]//div[contains(@class,'data-set-cell')][" +
          index +
          "]";
        let headerValue = await Input.getTextOfTheElements(
          page,
          headerValueXpath
        );
        headerValue.forEach((item) => {
          // expect(item).to.be.equal(value);
          expect(item).to.be.includes(value);
        });
      }
    }
  }

  async createPackageIfNotExist(
    page,
    packCode,
    packName,
    packDesc,
    packOrigin
  ) {
    // await patMergePage.selectOption(page, "All Names");
    // await page.waitForTimeout(3000);
    // await announcementPage.enterTextInTextArea(page, packName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
    let detailItemsXpath =
      "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
      packName +
      "')]";

    let elementValues = await Input.getTextOfTheElements(
      page,
      detailItemsXpath
    );
    console.log("fetched items : ");
    console.log(elementValues);
    console.log(elementValues.length);

    if (elementValues.length < 1) {
      await announcementPage.clickOnPlusIcon(page);
      await this.inputValueInline(page, "Code", packCode);
      await this.inputValueInline(page, "Name", packName);

      await navigationPage.clickOnPopupItem(page, "Description");
      await announcementPage.enterTextInTextArea(page, packDesc);
      await announcementPage.clickonCheckIcon(page);

      await navigationPage.clickOnPopupItem(page, "Origin");
      await announcementPage.waitForLoading(page);
      await navigationPage.clickOnPopupItem(page, packOrigin);

      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);

      await announcementPage.verifyForm(page, "Submission Successful");
      await announcementPage.clickonCheckIcon(page);

      await page.waitForTimeout(3000);
      await announcementPage.clickonPopUpBackIcon(page);
    }

    // if(elementValues.length < 1){
    //
    // }

    // await patMergePage.selectOption(page, packName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clearTextInTextArea(page);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
  }

  async createPackageCompleteIfNotExist(page,packCode,packName,packDesc,packCategory,packSpeciality,packOrigin) {
    let detailItemsXpath ="//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'"+packName+"')]";
    let elementValues = await Input.getTextOfTheElements(page,detailItemsXpath);
    console.log("fetched items : ");
    console.log(elementValues);
    console.log(elementValues.length);
    if (elementValues.length < 1) {
      await announcementPage.clickOnPlusIcon(page);
      await this.inputValueInline(page, "Code", packCode);
      await this.inputValueInline(page, "Name", packName);

      await navigationPage.clickOnPopupItem(page, "Description");
      await announcementPage.enterTextInTextArea(page, packDesc);
      await announcementPage.clickonCheckIcon(page);

      await navigationPage.clickOnPopupItem(page, "Category");
      await announcementPage.waitForLoading(page);
      await navigationPage.clickOnPopupItem(page, packCategory);
      await announcementPage.clickonCheckIcon(page);

      await navigationPage.clickOnPopupItem(page, "Specialty");
      await announcementPage.waitForLoading(page);
      await navigationPage.clickOnPopupItem(page, packSpeciality);
      await announcementPage.clickonCheckIcon(page);

      await navigationPage.clickOnPopupItem(page, "Origin");
      await announcementPage.waitForLoading(page);
      await navigationPage.clickOnPopupItem(page, packOrigin);

      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);

      await announcementPage.verifyForm(page, "Submission Successful");
      await announcementPage.clickonCheckIcon(page);

      await page.waitForTimeout(3000);
      await announcementPage.clickonPopUpBackIcon(page);
    }

    // if(elementValues.length < 1){
    //
    // }

    // await patMergePage.selectOption(page, packName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clearTextInTextArea(page);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
  }

  async associateDocumentToPackage(page, packName, docmentName) {
    // await patMergePage.selectOption(page, "All Names");
    // await page.waitForTimeout(3000);
    // await announcementPage.enterTextInTextArea(page, packName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
    let detailItemsXpath ="//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +packName +"')]";

    let elementValues = await Input.getTextOfTheElements(page,detailItemsXpath);
    console.log("fetched items : ");
    console.log(elementValues);
    console.log(elementValues.length);

    if (elementValues.length > 0) {
      await this.clickOnTableFirstRow(page, packName);
      await announcementPage.waitForLoading(page);
      await navigationPage.clickOnPopupItem(page, "Linked Documents");

      let pageXpath = "//div[text()='" + docmentName + "']/../..";
      console.log(pageXpath);
      try {
        await page.waitForXPath(pageXpath, { visible: true, timeout: 20000 });
      } catch (e) {
        await announcementPage.clickOnActionIconWithHeaderName(page,"Linked Documents List");
        await navigationPage.clickOnPopupItem(page, "Add Documents");
        await announcementPage.clickonCheckIcon(page);
        await page.waitForTimeout(10000);
        await accountSettingsPage.searchInFilter(page, docmentName);

        let divXpath =
          "//*[@id='appended-elements']//*[text()='" + docmentName + "']/../..";

        let element = await page.waitForXPath(divXpath);
        const className = await (
          await element.getProperty("className")
        ).jsonValue();
        console.log(className);

        if (!className.includes("disabled")) {
          await navigationPage.clickOnPopupItem(page, docmentName);
        }
        await announcementPage.clickonCheckIcon(page);
      }
      await page.waitForTimeout(3000);
      await announcementPage.clickonPopUpBackIcon(page);
      await page.waitForTimeout(3000);
      await announcementPage.clickonPopUpBackIcon(page);
    }
    // await patMergePage.selectOption(page, packName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clearTextInTextArea(page);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
  }

  async associateDocumentsToPackage(page, packName, docmentName) {
    // await patMergePage.selectOption(page, "All Names");
    // await page.waitForTimeout(3000);
    // await announcementPage.enterTextInTextArea(page, packName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
    let detailItemsXpath ="//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +packName +"')]";

    let elementValues = await Input.getTextOfTheElements(page,detailItemsXpath);
    console.log("fetched items : ");
    console.log(elementValues);
    console.log(elementValues.length);

    if (elementValues.length > 0) {
      await this.clickOnTableFirstRow(page, packName);
      await announcementPage.waitForLoading(page);
      await navigationPage.clickOnPopupItem(page, "Linked Documents");

      let pageXpath = "//div[text()='" + docmentName + "']/../..";
      console.log(pageXpath);
      try {
        await page.waitForXPath(pageXpath, { visible: true, timeout: 20000 });
      } catch (e) {
        await announcementPage.clickOnActionIconWithHeaderName(page,"Linked Documents List");
        await navigationPage.clickOnPopupItem(page, "Add Documents");
        await announcementPage.clickonCheckIcon(page);
        await page.waitForTimeout(10000);
        await accountSettingsPage.searchInFilter(page, docmentName);

        let divXpath =
            "//*[@id='appended-elements']//*[text()='" + docmentName + "']/../..";

        let element = await page.waitForXPath(divXpath);
        const className = await (
            await element.getProperty("className")
        ).jsonValue();
        console.log(className);

        if (!className.includes("disabled")) {
          await navigationPage.clickOnPopupItem(page, docmentName);
        }
        await announcementPage.clickonCheckIcon(page);
      }
      await page.waitForTimeout(3000);
      await announcementPage.clickonPopUpBackIcon(page);
      await page.waitForTimeout(3000);
      await announcementPage.clickonPopUpBackIcon(page);
    }
    // await patMergePage.selectOption(page, packName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clearTextInTextArea(page);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
  }

  async createDocIfNotExist(
    page,
    docCode,
    docName,
    docDesc,
    docType,
    docAmendable,
    docDraft,
    docSummarize,
    docAbandon
  ) {
    // await patMergePage.selectOption(page, "All Names");
    // await page.waitForTimeout(3000);
    // await announcementPage.enterTextInTextArea(page, docName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
    let detailItemsXpath =
      "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
      docName +
      "')]";
    let elementValues = await Input.getTextOfTheElements(
      page,
      detailItemsXpath
    );
    console.log("fetched items : ");
    console.log(elementValues);
    console.log(elementValues.length);
    if (elementValues.length < 1) {
      await announcementPage.clickOnPlusIcon(page);
      await this.inputValueInline(page, "Code", docCode);
      await this.inputValueInline(page, "Name", docName);
      await navigationPage.clickOnPopupItem(page, "Type");
      await navigationPage.clickOnPopupItem(page, docType);
      await navigationPage.clickOnPopupItem(page, "Description");
      await announcementPage.enterTextInTextArea(page, docDesc);
      await page.waitForTimeout(1);
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(1);
      await announcementPage.clickToggleButtonToValue(
        page,
        "Amendable",
        docAmendable
      );
      await announcementPage.clickToggleButtonToValue(
        page,
        "Ability To Save Draft",
        docDraft
      );
      await announcementPage.clickToggleButtonToValue(
        page,
        "Summarisable",
        docSummarize
      );
      await announcementPage.clickToggleButtonToValue(
        page,
        "Abandonable",
        docAbandon
      );
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Submission Successful");
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(3000);
      await announcementPage.clickonPopUpBackIcon(page);
    }
    // await patMergePage.selectOption(page, docName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clearTextInTextArea(page);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
  }

  async verifyIsTableHeaderExists_UsingClass(
    page,
    tableHeaderNameClassName,
    isExist
  ) {
    let pageXpath =
      "//div[contains(@class,'header')]//div[contains(@class,'cell')][contains(translate(@class,'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ'),'" +
      tableHeaderNameClassName.toUpperCase() +
      "')]";
    console.log(pageXpath);
    try {
      await page.waitForXPath(pageXpath, { visible: true, timeout: 20000 });
      await expect("true").to.equal(isExist);
    } catch (e) {
      // throw new Error( `error , ${e.stack}`)
      await expect("false").to.equal(isExist);
    }
  }

  async publishOption(page, name) {
    // await patMergePage.selectOption(page, "All Names");
    // await page.waitForTimeout(3000);
    // await announcementPage.enterTextInTextArea(page, name);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
    await this.clickOnTableFirstRow(page, name);
    await announcementPage.waitForLoading(page);
    await page.waitForTimeout(3000);
    let status = await Input.getElementTextUsingXpath(
      page,
      settingsLocators.documentSettings.xpath.statusXpath,
      "textContent"
    );
    await console.log("Status: " + status);
    if (status === "Requires Review" && name.includes("Pack")) {
      await announcementPage.clickOnActionItem(page, "Linked Documents");
      let statusValues = await input.getTextOfTheElements(page,settingsLocators.documentSettings.xpath.linkedDocumentsListStatuses);
      let nameValues = await input.getTextOfTheElements(page,settingsLocators.documentSettings.xpath.linkedDocumentList);
      for (const item of statusValues) {
        if (item.trim() === "Superseded") {
          await console.log("IF Inside");
          await console.log("Name: " + nameValues);
          let index = statusValues.indexOf(item);
          console.log("Index: " + index + " Name: " + nameValues[index]);
          await announcementPage.clickOnActionItem(page, nameValues[index]);
          await page.waitForTimeout(3000);
          await announcementPage.clickOnActionIcon(page);
          await announcementPage.clickOnActionItem(page, "Synchronize");
          await announcementPage.clickonCheckIcon(page);
          await announcementPage.verifyForm(page, "Success");
          await announcementPage.clickonCheckIcon(page);
          await announcementPage.clickOnActionIcon(page);
          await announcementPage.clickOnActionItem(page, "Publish");
          await announcementPage.clickonCheckIcon(page);
          await announcementPage.verifyForm(page, "Success");
          await announcementPage.clickonCheckIcon(page);
          status = await Input.getElementTextUsingXpath(
            page,
            settingsLocators.documentSettings.xpath.statusXpath,
            "textContent"
          );
          expect(status).to.be.equal("Published");
        }
      }
    }
    else if (status === "Superseded" && name.includes("Prop")) {
      await announcementPage.clickOnActionIcon(page);
      await announcementPage.clickOnActionItem(page, "Synchronise");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickOnActionIcon(page);
      await announcementPage.clickOnActionItem(page, "Publish");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      status = await Input.getElementTextUsingXpath(page,settingsLocators.documentSettings.xpath.statusXpath,"textContent");
      expect(status).to.be.equal("Published");

    }
    else if (status !== "Published") {
      await announcementPage.clickOnActionIcon(page);
      await announcementPage.clickOnActionItem(page, "Publish");
      try {
        await announcementPage.clickonCheckIcon(page);
      }catch (e) {
        await announcementPage.clickonPopUpBackIcon(page);
        await announcementPage.clickOnActionItem(page, "Linked Documents");
        let statusValues = await input.getTextOfTheElements(page,settingsLocators.documentSettings.xpath.linkedDocumentsListStatuses);
        let nameValues = await input.getTextOfTheElements(page,settingsLocators.documentSettings.xpath.linkedDocumentList);
        for (const item of statusValues) {
          if (item.trim() === "Superseded") {
            await console.log("IF Inside");
            await console.log("Name: " + nameValues);
            let index = statusValues.indexOf(item);
            console.log("Index: " + index + " Name: " + nameValues[index]);
            await announcementPage.clickOnActionItem(page, nameValues[index]);
            await page.waitForTimeout(3000);
            await announcementPage.verifyPopUpLabel(page,"Document Details");
            await announcementPage.clickOnActionIcon(page);
            await announcementPage.clickOnActionItem(page, "Synchronize");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.verifyForm(page, "Synchronize Successful");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.clickOnActionIcon(page);
            await announcementPage.clickOnActionItem(page, "Publish");
            await announcementPage.clickonCheckIcon(page);
            // await announcementPage.verifyForm(page, "Success");
            // await announcementPage.clickonCheckIcon(page);
            // status = await Input.getElementTextUsingXpath(page,settingsLocators.documentSettings.xpath.statusXpath,"textContent"  );
            // expect(status).to.be.equal("Published");
          }
        }

      }
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickonCheckIcon(page);
      await page.reload();
      status = await Input.getElementTextUsingXpath(page,settingsLocators.documentSettings.xpath.statusXpath,"textContent");
      expect(status).to.be.equal("Published");
    }
    await announcementPage.clickonPopUpBackIcon(page);
    // await patMergePage.selectOption(page, name);
    // await page.waitForTimeout(3000);
    // await announcementPage.clearTextInTextArea(page);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
  }

  async unpublishOption(page, name) {
    await this.clickOnTableFirstRow(page, name);
    await announcementPage.waitForLoading(page);
    await page.waitForTimeout(3000);
    let status = await Input.getElementTextUsingXpath(page,settingsLocators.documentSettings.xpath.statusXpath,"textContent");
    await console.log("Status: " + status);
    if (status === "Requires Review" && name.includes("Doc")) {
        await announcementPage.clickOnActionIcon(page);
        await announcementPage.clickOnActionItem(page,"Revise");
        await announcementPage.clickonCheckIcon(page);
        await page.waitForTimeout(3000);
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(3000);
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(3000);
      await page.reload();
      await page.waitForTimeout(3000);
    }else if (status === "Published" && name.includes("Pack")) {
      await announcementPage.clickOnActionIcon(page);
      await announcementPage.clickOnActionItem(page,"Revise");
      await announcementPage.clickOnActionItem(page,"Name");
      await announcementPage.clickOnActionItem(page,"Code");
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(3000);
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(3000);
      await announcementPage.verifyForm(page, "Submission Successful");
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(3000);
      await page.reload();
      await page.waitForTimeout(3000);
    }
    await announcementPage.clickonPopUpBackIcon(page);
  }

  async publishOptionButLinkedDocumentsSuperseded(page) {
    await announcementPage.clickOnActionItem(page, "Linked Documents");
    let statusValues = await input.getTextOfTheElements(page,settingsLocators.documentSettings.xpath.linkedDocumentsListStatuses);
    let nameValues = await input.getTextOfTheElements(page,settingsLocators.documentSettings.xpath.linkedDocumentList);
    for (const item of statusValues) {
      if (item.trim() === "Superseded") {
        await console.log("IF Inside");
        await console.log("Name: " + nameValues);
        let index = statusValues.indexOf(item);
        console.log("Index: " + index + " Name: " + nameValues[index]);
        await announcementPage.clickOnActionItem(page, nameValues[index]);
        await page.waitForTimeout(3000);
        await announcementPage.clickOnActionIcon(page);
        await announcementPage.clickOnActionItem(page, "Synchronize");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.verifyForm(page, "Success");
      }
    }
  }

  async configureUnPublishedDoc(page, docName, secName, secCode, propertyName) {
    // await patMergePage.selectOption(page, "All Names");
    // await page.waitForTimeout(3000);
    // await announcementPage.enterTextInTextArea(page, docName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
    await this.clickOnTableFirstRow(page, docName);
    await announcementPage.waitForLoading(page);
    await page.waitForTimeout(3000);

    // let detailItemXpath =
    //   "//div[contains(@class,'label')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='STATUS']//following-sibling::div";
    // console.log(detailItemXpath);
    let detailItemText = await Input.getElementTextUsingXpath(
      page,
        settingsLocators.documentSettings.xpath.popupStatusXpath,
      "innerText"
    );

    if (detailItemText === "Unpublished") {
      await announcementPage.clickOnActionIconWithHeaderName(
        page,
        "Document Details"
      );
      await navigationPage.clickOnPopupItem(page, "Configure");
      await navigationPage.verifyPage(page, "Document Settings");

      let secFlag = false;
      let divXpath =
          "//span[text()='" +
          secName +
          "']/ancestor::div[contains(@class,'configurator-')]";
      try {
        await page.waitForXPath(divXpath);
        secFlag = false;
      }catch (e) {
        secFlag = true;
      }

      if(secFlag){
        await announcementPage.clickOnActionIconWithHeaderName(
            page,
            "Document Sections"
        );
        await announcementPage.verifyPopUpLabel(page, "Document Section Actions");
        await navigationPage.clickOnPopupItem(page, "Create");
        await announcementPage.verifyPopUpLabel(page, "Create Section");
        await this.inputValueInline(page, "Code", secCode);
        await this.inputValueInline(page, "Name", secName);
        await announcementPage.clickonCheckIcon(page);
        await page.waitForTimeout(3000);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
        await page.waitForTimeout(3000);
        await announcementPage.clickonPopUpBackIcon(page);
      }


      const propArray = propertyName.split("|");
      for (let i = 0; i < propArray.length; i++) {

        let propFlag = false;
        let divXpath =
            "//span[text()='" +
            propArray[i] +
            "']/ancestor::div[contains(@class,'configurator-')]";
        try {
          await page.waitForXPath(divXpath);
          propFlag = false;
        } catch (e) {
          propFlag = true;
        }

        if (propFlag) {
          await announcementPage.clickOnActionIconWithHeaderName(
              page,
              "Document Properties"
          );
          await announcementPage.verifyPopUpLabel(page, "Property Menu");
          await navigationPage.clickOnPopupItem(page, "Add Property");
          await announcementPage.verifyPopUpLabel(page, "Property Search");
          await navigationPage.clickOnPopupItem(page, "Use Existing Property");
          await page.waitForTimeout(3000);
          await announcementPage.clickonCheckIcon(page);
          await page.waitForTimeout(10000);
          await announcementPage.verifyPopUpLabel(
              page,
              "Existing Property Search Results"
          );
          await accountSettingsPage.searchInFilter(page, propArray[i]);
          await navigationPage.clickOnPopupItem(page, propArray[i]);
          await page.waitForTimeout(3000);
          await announcementPage.clickonCheckIcon(page);
          await page.waitForTimeout(3000);
        }
      }
      await announcementPage.clickonBackIcon(page);
    }
    // await patMergePage.selectOption(page, docName);
    // await page.waitForTimeout(3000);
    // await announcementPage.clearTextInTextArea(page);
    // await page.waitForTimeout(3000);
    // await announcementPage.clickonCheckIcon(page);
    // await page.waitForTimeout(3000);
  }

  async filterTextItem(page, filterItem, filterValue) {
    await patMergePage.selectOption(page, filterItem);
    await page.waitForTimeout(3000);
    await announcementPage.clearTextInTextArea(page);
    await announcementPage.enterTextInTextArea(page, filterValue);
    await page.waitForTimeout(3000);
    await announcementPage.clickonCheckIcon(page);
    await page.waitForTimeout(3000);
    // await this.clickOnTableFirstRow(page, filterValue);
    // await page.waitForTimeout(3000);
  }

  async clearFilteredTextItem(page, filterValue) {
    await patMergePage.selectOption(page, filterValue);
    await page.waitForTimeout(3000);
    await announcementPage.clearTextInTextArea(page);
    await page.waitForTimeout(3000);
    await announcementPage.clickonCheckIcon(page);
    await page.waitForTimeout(3000);
  }

  async clearInputValueInlineDocumentProperties(page, label) {
    let xpath = "//*[text()='" + label + "']/..//following-sibling::div//input";
    await input_utility.removeTextByXpath(page, xpath);
  }

  async inputValueInlineDocumentProperties(page, label, value) {
    let xpath = "//*[text()='" + label + "']/..//following-sibling::div//input";
    await input.enterTextXpath(page, xpath, value);
  }

  async clickInputValueInline(page, label) {
    let xpath = "//*[text()='" + label + "']/..//following-sibling::div//input";
    await clicking.clickElementByXpath(page, xpath);
  }

  async changePropertyType(page, propertyName, persistenceType) {
    await this.clickOnTableFirstRow(page, propertyName);
    await page.waitForTimeout(3000);

    let persistenceTypeEleText = await Input.getElementTextUsingXpath(
      page,
      settingsLocators.documentSettings.xpath.persistenceXpath,
      "textContent"
    );
    await console.log("Persistence Type: " + persistenceTypeEleText);

    if (persistenceTypeEleText !== persistenceType) {
      let status = await Input.getElementTextUsingXpath(
        page,
        settingsLocators.documentSettings.xpath.statusXpath,
        "textContent"
      );
      await console.log("Status: " + status);
      await announcementPage.clickOnActionIconWithHeaderName(
        page,
        "Property Details"
      );
      if (status === "Unpublished") {
        await navigationPage.clickOnPopupItem(page, "Edit");
      } else {
        await navigationPage.clickOnPopupItem(page, "Revise");
      }
      await navigationPage.clickOnPopupItem(page, "Persistence");
      await navigationPage.clickOnPopupItem(page, persistenceType);
      // await navigationPage.clickOnPopupItem(page,"Persistence");
      //
      // await navigationPage.clickOnPopupItem(page,persistenceType);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickonCheckIcon(page);
    }
    await announcementPage.clickonPopUpBackIcon(page);
  }

  async verifyPersistentPropertyValue(page, label, value) {
    let xpath = "//*[text()='" + label + "']/..//following-sibling::div//input";
    let element = await page.waitForXPath(xpath, {
      visible: true,
      timeout: 30000,
    });
    let foundText = await page.evaluate((x) => {
      return x.value;
    }, element);
    // let foundText = await Input.getElementTextUsingXpath(page,xpath,"textContent");
    await console.log("Found Text: " + foundText);
    expect(foundText).to.be.equal(value);
  }

  async verifyPanel(page, panelName) {
    let values = await input.getTextOfTheElements(
      page,
      settingsLocators.documentSettings.xpath.panelNames
    );
    expect(values).to.includes(panelName);
  }

  async verifyPatientDemographics(page) {
    try {
      await page.waitForXPath(
        settingsLocators.documentSettings.xpath.patientDemographics,
        { visible: true }
      );
    } catch (e) {
      expect(false).to.be.true;
    }
  }

  async verifyPopUpPatientDemographics(page) {
    try {
      await page.waitForXPath(
          settingsLocators.documentSettings.xpath.patientDemographics,
          { visible: true }
      );
    } catch (e) {
      expect(false).to.be.true;
    }
  }

  async createNewDocumentSection(
    page,
    sectionCode,
    sectionName,
    sectionDescription
  ) {
    await patientRecordsPage.clickActionIconByLabel(page, "Document Sections");
    await announcementPage.clickOnActionItem(page, "Create");
    await this.inputValueInline(page, "Code", sectionCode);
    await this.inputValueInline(page, "Name", sectionName);
    await announcementPage.clickOnActionItem(page, "Description");
    await announcementPage.enterTextInTextArea(page, sectionDescription);
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.verifyForm(page, "Success");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickonPopUpBackIcon(page);
  }

  async createTableInQlEditor(page, row, columns) {
    await clicking.clickElementByXpath(
      page,
      settingsLocators.documentSettings.xpath.qlEditorTable
    );
    let tableSizeXpath =
      "//div[contains(@id,'appended-elements')]//span[contains(@data-value,'newtable_" +
      row +
      "_" +
      columns +
      "') and @class='ql-picker-item']";
    await clicking.clickElementByXpath(page, tableSizeXpath);
    await page.keyboard.press("ArrowUp");
  }

  async enterTextWithTextFormat(page, text, option) {
    await page.keyboard.type(text);
    await page.keyboard.down("Control");
    await page.keyboard.down("Shift");
    await page.keyboard.press("ArrowLeft");
    let textStylingXpath =
      "//div[contains(@id,'appended-elements')]//button[contains(@class,'ql-" +
      option +
      "')]";
    await click_utility.clickElementByXpath(page, textStylingXpath);
    await page.keyboard.up("Control");
    await page.keyboard.up("Shift");
  }

  async appendTable(page, appendOption) {
    let tableAppendXpath =
      "//div[contains(@id,'appended-elements')]//button[contains(@value,'append-" +
      appendOption +
      "')]";
    await clicking.clickElementByXpath(page, tableAppendXpath);
    await page.keyboard.press("ArrowDown");
  }

  async enterTextWithTextAllignment(page, text, align) {
    let allignXpath =
      "//div[contains(@id,'appended-elements')]//span[contains(@data-value,'" +
      align +
      "')]";
    if (align.toLowerCase() === "left") {
      allignXpath = settingsLocators.documentSettings.xpath.allignLeft;
    }
    await clicking.clickElementByXpath(
      page,
      settingsLocators.documentSettings.xpath.allignControl
    );
    await click_utility.clickElementByXpath(page, allignXpath);
    await page.keyboard.type(text);
  }

  async enterTextWithTextList(page, text, listType) {
    await page.keyboard.type(text);
    let listTypeXpath =
      "//div[contains(@id,'appended-elements')]//button[contains(@value,'" +
      listType +
      "')]";
    await clicking.clickElementByXpath(page, listTypeXpath);
  }

  async enterTextWithTextFont(page, text, color) {
    await clicking.clickElementByXpath(
      page,
      settingsLocators.documentSettings.xpath.textColorOption
    );
    let fontColorXpath =
      "//div[contains(@id,'appended-elements')]//span[contains(@class,'ql-color')][1]//span//span[contains(@data-value,'" +
      this.getColorValue(color) +
      "')]";
    await clicking.clickElementByXpath(page, fontColorXpath);
    await page.keyboard.type(text);
  }

  async enterTextWithTextBackground(page, text, color) {
    await clicking.clickElementByXpath(
      page,
      settingsLocators.documentSettings.xpath.BackGroundOption
    );
    let fontColorXpath =
      "//div[contains(@id,'appended-elements')]//span[contains(@class,'ql-background')]//span[contains(@data-value,'" +
      this.getColorValue(color) +
      "')]";
    await clicking.clickElementByXpath(page, fontColorXpath);
    await page.keyboard.type(text);
  }

  async enterTextWithTextSize(page, text, sizeType) {
    if (sizeType.toLowerCase() === "normal") {
      await page.keyboard.type(text);
      return;
    }
    await clicking.clickElementByXpath(
      page,
      settingsLocators.documentSettings.xpath.testSizeOption
    );
    let sizeOptionXpath =
      "//div[contains(@id,'appended-elements')]//span[contains(@class,'ql-formats')]//span[contains(@data-value,'" +
      sizeType +
      "')]";
    await clicking.clickElementByXpath(page, sizeOptionXpath);
    await page.keyboard.type(text);
  }

  getColorValue(value) {
    let rgbValue;
    switch (value.toLowerCase()) {
      case "white":
        rgbValue = "#fff";
        break;
      case "alizarin":
        console.log("color found")
        rgbValue = "#e74c3c";
        break;
      case "pumpkin":
        rgbValue = "#e7652f";
        break;
      case "carrot":
        rgbValue = "#e67e22";
        break;
      case "orange2":
        rgbValue = "#eba119";
        break;
      case "sunflower":
        rgbValue = "#f1c40f";
        break;
      case "kiwi":
        rgbValue = "#90c840";
        break;
      case "emerald":
        rgbValue = "#2ecc71";
        break;
      case "turquoise":
        rgbValue = "#31b2a6";
        break;
      case "river":
        rgbValue = "#2980b9";
        break;
      case "belize":
        rgbValue = "#6779c9";
        break;
      case "amethyst":
        rgbValue = "#9b59b6";
        break;
      case "deep wisteria":
        rgbValue = "#6e5d99";
        break;
      case "midnight":
        rgbValue = "#40627b";
        break;
      case "coffee liquer":
        rgbValue = "#6e5b4a";
        break;
      case "nougat":
        rgbValue = "#b8a188";
        break;
      case "quarry":
        rgbValue = "#9aa4a9";
        break;
      case "cedar":
        rgbValue = "#979269";
        break;
      case "bamboo":
        rgbValue = "#d3b457";
        break;
      case "burnt sienna":
        rgbValue = "#c46157";
        break;
      case "raspberry wine":
        rgbValue = "#b63e5c";
        break;
      case "black":
        rgbValue = "#000000";
        break;
      case "black2":
        rgbValue = "#191919";
        break;
      case "grey":
        rgbValue = "#b2b2b2";
        break;
      case "cyan":
        rgbValue = "#41b6e6";
        break;
      case "royal blue":
        rgbValue = "#0072c6";
        break;
      case "green":
        rgbValue = "#009933";
        break;
      case "orange":
        rgbValue = "#e28c05";
        break;
      case "red":
        rgbValue = "#cc0000";
        break;
      case "purple":
        rgbValue = "#ae2573";
        break;
      case "yellow":
        rgbValue = "#f5bc0c";
        break;
      case "dark blue":
        rgbValue = "#330099";
        break;
      case "silver":
        rgbValue = "#cccccc";
        break;
      case "amber":
        rgbValue = "#e28c05";
        break;
      default:
        rgbValue = "#fff";
    }
    return rgbValue;
  }

  hexToRgb(hex) {
    return hex
      .replace(
        /^#?([a-f\d])([a-f\d])([a-f\d])$/i,
        (m, r, g, b) => "#" + r + r + g + g + b + b
      )
      .substring(1)
      .match(/.{2}/g)
      .map((x) => parseInt(x, 16));
  }

  RgbToHex(r, g, b) {
    return "#" + this.componentToHex(r) + this.componentToHex(g) + this.componentToHex(b);
  }

  componentToHex(c) {
    var hex = c.toString(16);
    return hex.length === 1 ? "0" + hex : hex;
  }


  async verifyNewColumnExists(page) {
    try {
      await page.waitForXPath(
        settingsLocators.documentSettings.xpath.newColumn,
        { visible: true }
      );
    } catch (e) {
      expect(true).to.be.false;
    }
  }

  async verifyTextStyle(page, text, styling) {
    try {
      if (styling === "left" || styling === "normal") {
        await page.waitForXPath("//table//*[text()='" + text + "']", {
          visible: true,
        });
        return;
      }
      let colorsRGB = "None";
      if (styling.includes("color")) {
        let rgbValues = this.hexToRgb(this.getColorValue(text));
        await console.log(rgbValues);
        colorsRGB =
          styling +
          ": rgb(" +
          rgbValues[0] +
          ", " +
          rgbValues[1] +
          ", " +
          rgbValues[2] +
          ");";
        await console.log(colorsRGB);
      }
      let textStyleXpath =
        "//table//" +
        styling +
        "[text()='" +
        text +
        "']|//table//p[contains(@class,'" +
        styling +
        "') and text()='" +
        text +
        "']|//table//" +
        styling +
        "//li[text()='" +
        text +
        "']|//table//span[contains(@class,'" +
        styling +
        "') and text()='" +
        text +
        "']|//table//span[@style='" +
        colorsRGB +
        "' and text()='" +
        text +
        "']";
      await page.waitForXPath(textStyleXpath, { visible: true });
    } catch (e) {
      expect(true).to.be.false;
    }
  }

  async enterTextWithLink(page, text) {
    await page.keyboard.type(text);
    await page.keyboard.down("Control");
    await page.keyboard.down("Shift");
    await page.keyboard.press("ArrowLeft");
    await page.keyboard.up("Control");
    await page.keyboard.up("Shift");
    await click_utility.clickElementByXpath(
      page,
      settingsLocators.announcementPage.xpath.popUpLinkTag
    );
    await click_utility.clickElementByXpath(
      page,
      settingsLocators.announcementPage.xpath.popUpSaveDiv
    );
    await page.keyboard.down("Control");
    await page.keyboard.down("Shift");
    await page.keyboard.press("ArrowLeft");
    await page.keyboard.up("Control");
    await page.keyboard.up("Shift");
  }

  async createImageIfNotExist(
    page,
    code,
    name,
    desc,
    anatomical,
    orientation,
    imagePath
  ) {
    let detailItemsXpath =
      "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
      name +
      "')]";
    let elementValues = await Input.getTextOfTheElements(
      page,
      detailItemsXpath
    );
    console.log("fetched items : ");
    console.log(elementValues);
    console.log(elementValues.length);
    if (elementValues.length < 1) {
      await announcementPage.clickOnPlusIcon(page);
      await this.inputValueInline(page, "Code", code);
      await this.inputValueInline(page, "Name", name);
      await navigationPage.clickOnPopupItem(page, "Description");

      await announcementPage.verifyPopUpLabel(page, "Enter Description");
      await announcementPage.enterTextInTextArea(page, desc);
      await announcementPage.clickonCheckIcon(page);
      await navigationPage.clickOnPopupItem(page, "Anatomical Site");
      await announcementPage.verifyPopUpLabel(page, "Select Site");
      await navigationPage.clickOnPopupItem(page, anatomical);
      await navigationPage.clickOnPopupItem(page, "Orientation");
      await announcementPage.verifyPopUpLabel(page, "Select Orientation");
      await navigationPage.clickOnPopupItem(page, orientation);
      await this.uploadFileAddFile(page, imagePath);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Submission Successful");
      // await page.waitForTimeout(3000);
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(3000);
      await announcementPage.clickonPopUpBackIcon(page);
    }
  }

  async verifyPopupAdjacentValue(page, label, value) {
    let detailItemXpath =
      "//*[@id='appended-elements']//*[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" +
      label.toUpperCase() +
      "']/..//following-sibling::div";
    console.log(detailItemXpath);
    let detailItemText = await Input.getElementTextUsingXpath(
      page,
      detailItemXpath,
      "innerText"
    );
    console.log(detailItemText);
    if(detailItemText===""){
      detailItemXpath =
          "//*[@id='appended-elements']//*[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" +
          label.toUpperCase() +
          "']/..//following-sibling::div//input";
      console.log(detailItemXpath);
      detailItemText = await Input.getElementTextUsingXpath(
          page,
          detailItemXpath,
          "value"
      );
    }
    expect(detailItemText).to.be.equal(value);
  }

  async verifySectionBody(page, label, value, isExist) {
    let itemXpath =
      "//div[text()='" + label + "']/../../..//div[text()='" + value + "']";
    console.log(itemXpath);
    try {
      await page.waitForXPath(itemXpath, { visible: true });
      await expect("true").to.equal(isExist);
    } catch (e) {
      await expect("false").to.equal(isExist);
    }
  }

  async verifyPopupThumbnailIsExists(page, pageHeaderName, isExist) {
    let pageXpath =
      "//*[@id='appended-elements']//div[text()='" +
      pageHeaderName +
      "']/following-sibling::div/img";
    console.log(pageXpath);
    try {
      await page.waitForXPath(pageXpath, { visible: true, timeout: 20000 });
      await expect("true").to.equal(isExist);
    } catch (e) {
      // throw new Error( `error , ${e.stack}`)
      await expect("false").to.equal(isExist);
    }
  }
  async verifyeDetailContains(page, label, value) {
    let detailItemXpath =
      "//div[contains(@class,'label')][translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" +
      label.toUpperCase() +
      "']//following-sibling::div";
    console.log(detailItemXpath);
    let detailItemText = await Input.getElementTextUsingXpath(
      page,
      detailItemXpath,
      "innerText"
    );
    expect(detailItemText).to.be.includes(value);
  }

  async verifyDocInfoAdjacentValue(page, label, value) {
    let detailItemXpath =
      "//*[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" +
      label.toUpperCase() +
      "']/../..//following-sibling::div/div[contains(@class,'standard')]/div";
    console.log(detailItemXpath);
    let detailItemText = await Input.getElementTextUsingXpath(
      page,
      detailItemXpath,
      "innerText"
    );
    expect(detailItemText).to.be.equal(value);
  }

  async deleteAllDocument(page, docName) {
    let detailItemsXpath =
      "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
      docName +
      "')]";

    let elementValues = await Input.getTextOfTheElements(
      page,
      detailItemsXpath
    );
    console.log(elementValues);

    for (let i = 1; i <= elementValues.length; i++) {
      await this.clickOnTableFirstRow(page, docName);
      await announcementPage.waitForLoading(page);
      await announcementPage.verifyPopUpLabel(page, "Document Menu");
      await navigationPage.clickOnPopupItem(page, "Remove");
      await announcementPage.verifyPopUpLabel(page, "Package Menu");
      await announcementPage.verifyForm(page, "Remove Document");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoading(page);
      await announcementPage.verifyPopUpLabel(page, "Submission Status");
      await announcementPage.waitForLoading(page);
      await announcementPage.verifyForm(page, "Removed");
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(3000);
    }
  }

  async clickBackIcon(page) {
    let backIcon =
      "//div[contains(text(),'Property Details')]/preceding-sibling::div";
    await clicking.clickElementByXpath(page, backIcon);
  }

  async preReqTST694(page) {
    await this.clickOnTableRow(page, "Prop_TST-694_Name");
    await announcementPage.waitForLoadingWithTitle(page, "Property Details");
    await announcementPage.verifyPopUpLabel(page, "Property Details");
    await announcementPage.clickOnPopUpActionIcon(page);
    await announcementPage.clickOnActionItem(page, "Revise");
    await announcementPage.clickonCheckIcon(page);
    await page.waitForTimeout(5000);
    await announcementPage.verifyForm(page, "Success");
    await announcementPage.clickonCheckIcon(page);
    await page.waitForTimeout(5000);
    await this.verifyDetail(page, "Status", "Unpublished");
    await announcementPage.clickOnPopUpActionIcon(page);
    await announcementPage.clickOnActionItem(page, "Publish");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.verifyForm(page, "Success");
    await announcementPage.clickonCheckIcon(page);
    await this.verifyDetail(page, "Status", "Published");
    await announcementPage.clickonPopUpBackIcon(page);
  }
    async selectFirstDoc(page) {

      let firstDoc = "//div[contains(@class,'table-body')]/div[1]/div[2]";
      await clicking.clickElementByXpath(page, firstDoc);
    }

  async clickOnPlusIcon_WRT_Label(page,label){
    let plusIconXpath = "//div[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='"+label.toUpperCase()+"']/following-sibling::div[contains(@class,'navigation-plus')]"
    await click_utility.clickElementByXpath(page,plusIconXpath);
  }

  async createPropValueIfNotExist(page,propertyName, displayName, value, icd10code, readcode, snomedcode, isEnabled){
    await this.clickOnTableFirstRow(page,propertyName);
    await page.waitForTimeout(3000);

      let status = await Input.getElementTextUsingXpath(page,settingsLocators.documentSettings.xpath.statusXpath,"textContent");
      await console.log("Status: "+status);
      // await announcementPage.clickOnActionIconWithHeaderName(page,"Property Details");
      if (status === "Unpublished") {

        await navigationPage.clickOnPopupItem(page,"Values");

        let pageXpath = "//*[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" + displayName.toUpperCase() + "']/../..";
        console.log(pageXpath);
        let isExist = false;
        try {
          await page.waitForXPath(pageXpath, { visible: true, timeout: 20000 });
          isExist = true;
        } catch (e) {
          isExist = false;
        }

        if (!isExist){
          await announcementPage.clickOnActionIconWithHeaderName(page,"Property Values");
          await navigationPage.clickOnPopupItem(page,"Add Value");
          await announcementPage.clickOnActionItem(page,"Display");
          await announcementPage.verifyPopUpLabel(page,"Add Name Value");
          await announcementPage.enterTextInTextArea(page,displayName);
          await announcementPage.clickonCheckIcon(page);
          await navigationPage.clickOnPopupItem(page,"Value");
          await announcementPage.verifyPopUpLabel(page,"Add Value");
          await announcementPage.enterTextInTextArea(page,value);
          await announcementPage.clickonCheckIcon(page);
          await this.inputValueInline(page, "ICD10 Code", icd10code);
          await this.inputValueInline(page, "Read Code", readcode);
          await this.inputValueInline(page, "Snomed Code", snomedcode);
          //enable code
          await announcementPage.clickonCheckIcon(page);
          await announcementPage.waitForLoading(page);
          await announcementPage.verifyPopUpLabel(page,"Submission Status");
          await announcementPage.verifyForm(page,"Submission Successful");
          await announcementPage.clickonCheckIcon(page);
          await announcementPage.waitForLoading(page);
        }
      }
    await announcementPage.clickonPopUpBackIcon(page);
  }

  async documentFavouritesIcon(page,docName, isActive){
    let mandatoryXpath = "(//*[@id='patient-documents-table']//div[text()='"+docName+"']//preceding-sibling::div[contains(@class,'favourites')])[1]";
    let element = await page.waitForXPath(mandatoryXpath,{visible:true});
    const className = await(await element.getProperty('className')).jsonValue();
//active
    console.log(className);
    if(className.toUpperCase().includes("-"+isActive.toUpperCase())){
    }else{
      console.log("clicking on favourite")
      await clicking.clickElementByXpath(page, mandatoryXpath);
    }
    await announcementPage.waitForLoading(page);
    element = await page.waitForXPath(mandatoryXpath,{visible:true});
    let classNameAfterUpdate = await(await element.getProperty('className')).jsonValue();
    console.log(classNameAfterUpdate);
    expect(classNameAfterUpdate.toUpperCase()).to.includes(isActive.toUpperCase());
  }


  async checkDocumentsExistWithNSorIP(page) {
    let documentsXpath = settingsLocators.documentSettings.xpath.documentsXpathPatientSummary;
    await page.waitForXPath(documentsXpath);
    let documentsLists = await page.$x(documentsXpath);
    let documentStatus = await input.getTextOfTheElements(page,documentsXpath);
    documentStatus.forEach(item=>{
      expect(["Not Started","In Progress"]).to.include(item);
    });
    if(documentsLists.length<5){
      expect(false).to.be.true;
    }
  }

    async editPackWithEmails(page, packName, emails) {
      await this.clickOnTableFirstRow(page, packName);
      await announcementPage.waitForLoading(page);
      await page.waitForTimeout(3000);
      let status = await Input.getElementTextUsingXpath(
          page,
          settingsLocators.documentSettings.xpath.statusXpath,
          "textContent"
      );
      await console.log("Status: " + status);
      if (status === "Requires Review" && packName.includes("Pack")) {
        await announcementPage.clickOnActionItem(page, "Linked Documents");
        let statusValues = await input.getTextOfTheElements(page, settingsLocators.documentSettings.xpath.linkedDocumentsListStatuses);
        let nameValues = await input.getTextOfTheElements(page, settingsLocators.documentSettings.xpath.linkedDocumentList);
        for (const item of statusValues) {
          if (item.trim() === "Superseded") {
            await console.log("IF Inside");
            await console.log("Name: " + nameValues);
            let index = statusValues.indexOf(item);
            console.log("Index: " + index + " Name: " + nameValues[index]);
            await announcementPage.clickOnActionItem(page, nameValues[index]);
            await page.waitForTimeout(3000);
            await announcementPage.clickOnActionIcon(page);
            await announcementPage.clickOnActionItem(page, "Synchronize");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.verifyForm(page, "Success");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.clickOnActionIcon(page);
            await announcementPage.clickOnActionItem(page, "Publish");
            await announcementPage.clickonCheckIcon(page);
            await announcementPage.verifyForm(page, "Success");
            await announcementPage.clickonCheckIcon(page);
            status = await Input.getElementTextUsingXpath(
                page,
                settingsLocators.documentSettings.xpath.statusXpath,
                "textContent"
            );
            expect(status).to.be.equal("Published");
          }
        }
      } else if (status !== "Published") {
        await announcementPage.clickOnPopUpActionIcon(page);
        await announcementPage.clickOnActionItem(page, "Edit");
        await announcementPage.clickOnActionItem(page, "Email Address(s)");
        emails = emails.split(",");
        try {
          await page.waitForXPath(settingsLocators.documentSettings.xpath.emailsText, {timeout: 20000});
          let emailTexts = await input.getTextOfTheElements(page, settingsLocators.documentSettings.xpath.emailsText);
          for (let emailId in emailTexts) {
            await clicking.clickElementByXpath(page, settingsLocators.documentSettings.xpath.firstEmailCrossIcon);
          }
        } catch (ex) {
          await announcementPage.verifyForm(page, "Nothing Here");
        }
        for (let email of emails) {
          await announcementPage.clickOnPopUpPlusIcon(page);
          await this.enterInputPlaceholder(page, "Enter an Email Address List", email);
          await announcementPage.clickonCheckIcon(page);
        }
        await announcementPage.clickonPopUpBackIcon(page);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.verifyForm(page, "Success");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.clickonPopUpBackIcon(page);
      }
    }

  async receivedEmail(page) {
    await mailReader.getEmails(page);
  }

  async verifySignatureInEventReport(page) {
    expect(false).to.be.true;
  }

  async verifyPropertyWithImageInEventReport(page,propertyName) {
    let xpath = "//div[contains(@class,'property-value')][text()='"+propertyName+"']/..//following-sibling::div//img"
    let element = await page.waitForXPath(xpath,{visible:true});
    expect(element).to.not.be.null;
  }

  async verifyImageInEventReport(page) {
    expect(false).to.be.true;
  }

  async synchronizePropertyToDoc(page,docName,propName){
    await this.clickOnTableFirstRow(page, docName);
    await announcementPage.waitForLoading(page);
    await page.waitForTimeout(3000);


    let detailItemText = await Input.getElementTextUsingXpath(
        page,
        settingsLocators.documentSettings.xpath.popupStatusXpath,
        "innerText"
    );

    if (detailItemText === "Requires Review") {
      await announcementPage.clickOnActionIconWithHeaderName(
          page,
          "Document Details"
      );
      await navigationPage.clickOnPopupItem(page, "Revise");
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(1000);
      await announcementPage.clickonCheckIcon(page);
      await page.waitForTimeout(1000);
      await navigationPage.clickOnPopupItem(page, "Configure Document");
      await navigationPage.verifyPage(page, "Document Settings");
      await announcementPage.waitForLoading(page);
      await navigationPage.clickMeatBalls(page,propName);
      await announcementPage.waitForLoading(page);

      detailItemText = await Input.getElementTextUsingXpath(
          page,
          settingsLocators.documentSettings.xpath.popupStatusXpath,
          "innerText"
      );
      if (detailItemText === "Superseded") {
        await announcementPage.clickOnActionIconWithHeaderName(
            page,
            "Property Details"
        );
        await navigationPage.clickOnPopupItem(page, "Synchronise");
        await announcementPage.waitForLoading(page);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.verifyForm(page, "Success");
        // await announcementPage.clickonCheckIcon(page);
        await navigationPage.clickOnPopupItem(page, "Return to Document");
      }
      // detailItemText = await Input.getElementTextUsingXpath(
      //     page,
      //     settingsLocators.documentSettings.xpath.popupStatusXpath,
      //     "innerText"
      // );
      // if (detailItemText === "Unpublished") {
      //   await announcementPage.clickOnActionIconWithHeaderName(
      //       page,
      //       "Property Details"
      //   );
      //   await navigationPage.clickOnPopupItem(page, "Publish");
      //   await announcementPage.waitForLoading(page);
      //   await announcementPage.clickonCheckIcon(page);
      //   await announcementPage.verifyForm(page, "Success");
      //   // await announcementPage.clickonCheckIcon(page);
      //   await navigationPage.clickOnPopupItem(page, "Return to Document");
      // }
      await announcementPage.clickonBackIcon(page);
    }
  }

  async synchronizeDocToPackage(page,docName,packageName){
    await this.clickOnTableFirstRow(page, packageName);
    await announcementPage.waitForLoading(page);
    // await page.waitForTimeout(3000);


    let detailItemText = await Input.getElementTextUsingXpath(
        page,
        settingsLocators.documentSettings.xpath.popupStatusXpath,
        "innerText"
    );

    if (detailItemText === "Requires Review") {
      // await announcementPage.clickOnActionIconWithHeaderName(
      //     page,
      //     "Package Details"
      // );

      await navigationPage.clickOnPopupItem(page, "Linked Documents");
      await announcementPage.waitForLoading(page);
      await navigationPage.clickOnPopupItem(page, docName);
      await announcementPage.waitForLoading(page);
      detailItemText = await Input.getElementTextUsingXpath(
          page,
          settingsLocators.documentSettings.xpath.popupStatusXpath,
          "innerText"
      );
      // if (detailItemText === "Under Review") {
      //
      //   await announcementPage.clickOnActionIconWithHeaderName(
      //       page,
      //       "Document Details"
      //   );
      //   await navigationPage.clickOnPopupItem(page, "Go To Latest Version");
      //   await announcementPage.waitForLoading(page);
      // }

      if (detailItemText === "Superseded") {

        await announcementPage.clickOnActionIconWithHeaderName(
            page,
            "Document Details"
        );
        await navigationPage.clickOnPopupItem(page, "Synchronize");
        await announcementPage.waitForLoading(page);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.verifyForm(page, "Synchronize Successful");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoading(page);
      }

      detailItemText = await Input.getElementTextUsingXpath(
          page,
          settingsLocators.documentSettings.xpath.popupStatusXpath,
          "innerText"
      );

      if (detailItemText === "Unpublished") {
        await announcementPage.clickOnActionIconWithHeaderName(
            page,
            "Package Details"
        );
        await navigationPage.clickOnPopupItem(page, "Publish");
        await announcementPage.waitForLoading(page);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.verifyForm(page, "Publish Successful");
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.waitForLoading(page);
      }
      await announcementPage.clickonBackIcon(page);
    }
  }

  async removeAllPatientDocuments(page, docName) {
    try {
      // await patMergePage.selectOption(page, "All Names");
      // await announcementPage.enterTextInTextArea(page, docName);
      // await page.waitForTimeout(1000);
      // await announcementPage.clickonCheckIcon(page);

      let detailItemsXpath =
          "//div[contains(@class,'body')]//div[contains(@class,'cell')][contains(text(),'" +
          docName +
          "')]";

      let elementValues = await Input.getTextOfTheElements(
          page,
          detailItemsXpath
      );
      console.log("fetched items : ");
      console.log(elementValues);

      for (const item of elementValues) {
        await this.clickOnTableFirstRow(page, docName);
        await announcementPage.waitForLoading(page);
        await navigationPage.clickOnPopupItem(page, "Remove");
        await announcementPage.waitForLoading(page);
        await announcementPage.clickonCheckIcon(page);
        await announcementPage.verifyForm(page,"Removed");
        await announcementPage.clickonCheckIcon(page);
        // await announcementPage.clickonPopUpBackIcon(page);
        await announcementPage.waitForLoading(page);
      }
    } catch (e) {
      console.log(e.message);
    }
  }

  async verifyElectronicSignature(page, propertyName) {
    let mandatoryXpath =
        "//span[contains(text(),'"+propertyName+"')]/../following-sibling::div";
    let element = await page.waitForXPath(mandatoryXpath, { visible: true });
    const className = await (
        await element.getProperty("className")
    ).jsonValue();
    expect(className).to.includes("electronic-signature");
  }

  async verifyESignatureValues(page,propertyName, userName, isRoleExist) {
    let usernameXpath = "(//span[contains(text(),'"+propertyName+"')]/../following-sibling::div//div[contains(@class,'container-text')])[1]";
    let roleXpath = "(//span[contains(text(),'"+propertyName+"')]/../following-sibling::div//*[contains(@class,'role')])[1]";
    let dateXpath = "(//span[contains(text(),'"+propertyName+"')]/../following-sibling::div//*[contains(@class,'date')])[1]";

    let detailItemText = await Input.getElementTextUsingXpath(
        page,
        usernameXpath,
        "innerText"
    );
    expect(detailItemText.toUpperCase()).to.be.equal(userName.toString().toUpperCase());

    try {
      let roleEle = await page.waitForXPath(roleXpath, { visible: true, timeout: 20000 });
      await expect("true").to.equal(isRoleExist);
    } catch (e) {
      // throw new Error( `error , ${e.stack}`)
      await expect("false").to.equal(isRoleExist);
    }

    let currentDate = await utility.customDate("dd-MMM-yyyy");
    let dateItem = await Input.getElementTextUsingXpath(
        page,
        dateXpath,
        "innerText"
    );
    expect(dateItem).to.be.includes(currentDate);

  }


  async verifyTab(page, option) {

    let tabText = "//div[contains(text(),'"+option+"') and @class = 'tab-restricted']";
    let elementValue = await Input_utility.getElementTextUsingXpath(page,tabText,"textContent");
    expect(elementValue).to.be.equal(option);
  }

  async verifyActiveTab(page, option) {

    let tabText = "//div[contains(text(),'"+option+"') and @class = 'active']";
    let elementValue = await Input_utility.getElementTextUsingXpath(page,tabText,"textContent");
    expect(elementValue).to.be.equal(option);
  }


  async clickTab(page, option) {

    let tab = "//div[contains(text(),'"+option+"') and @class = 'active']";
    await clicking.clickElementByXpath(page, tab);
  }

  async clickDocAdjacentToStatus(page, label, status) {
    let detailItemXpath =
        "//*[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')='" +
        label.toUpperCase() +
        "']/../..//following-sibling::div//div[text()='"+status+"']";
    console.log(detailItemXpath);
   await click_utility.clickElementByXpath(page,detailItemXpath);

  }

  async enterVals(page, option) {

    let respirationTxt = "//div[contains(text(),'"+val+"') and @class='container-item container-text label']";
    await Input_utility.enterTextXpath(page,respirationTxt,patientInfo.VitalsValues[Respiration]);

  }

  async verifyVitals(page) {

  }

  async clickMeatball(page) {

    let meatBall = "//div[contains(@class,'meatballs-clickable')]";
    await click_utility.clickElementByXpath(page,meatBall);

  }

  async verifyPackageDetails(page) {

    let option = "Status";
    let Status = "//div[contains(text(),'Status') and @class='container-item container-text label']";
    let elementValue = await Input_utility.getElementTextUsingXpath(page,Status,"textContent");
    expect(elementValue).to.be.equal(option);
  }

    async startInterface(page) {
    try {
        await click_utility.clickElementByXpath(page,settingsLocators.documentSettings.xpath.startInterface);
        await click_utility.clickElementByXpath(page,settingsLocators.documentSettings.xpath.yesButton);
    }catch (e) {
      await announcementPage.clickonPopUpBackIcon(page);
      }
    }

  async stopInterface(page) {
    try {
      await announcementPage.waitForLoadingWithTitle(page,"Interface Actions");
      await announcementPage.verifyPopUpLabel(page,"Interface Actions");
      await click_utility.clickElementByXpath(page,settingsLocators.documentSettings.xpath.stopInterface);
      await announcementPage.waitForLoadingWithTitle(page,"Action Confirmation");
      await announcementPage.verifyPopUpLabel(page,"Action Confirmation");
      await click_utility.clickElementByXpath(page,settingsLocators.documentSettings.xpath.yesButton);
    }catch (e) {
      await announcementPage.clickonPopUpBackIcon(page);
    }
  }

    async verifyDate(page) {

      let dateToverify = "//div[@class = 'large' and contains(text(),'22/06/2021 TEST')]";
      let elementValue = await Input_utility.getElementTextUsingXpath(page,dateToverify,"textContent");
      expect(elementValue).to.be.equal("22/06/2021 TEST");
    }

  async selectFirstDocument(page) {

    let firstDoc = "(//div[@class =' table-cell'])[1]";
    await click_utility.clickElementByXpath(page,firstDoc);
  }

  async verifyImg(page, value) {

    let imgVer = "(//div[contains(text(),'"+value+"')])[1]";
    let elementValue = await Input_utility.getElementTextUsingXpath(page,imgVer,"textContent");
    expect(elementValue).to.be.equal(value);
  }

  async verifyStatus(page, value) {

    let stat = ""
  }

  async clickFormOpt(page) {

    let formOpt = "(//div[@class='container-item container-text standard --nowrap --red' and contains(text(),'Not Started')])[1]";
    await click_utility.clickElementByXpath(page,formOpt);
  }

  async selctReport(page, value) {

    let report = "(//div[@class='right-aligned table-cell' and contains(text(),'"+value+"')])[1]";
    await click_utility.clickElementByXpath(page,report);
  }

  async verifyProps(page) {

    let propStat = "(//div[@class='value' and contains(text(),'Requested')])[1]";
    let elementValue = await Input_utility.getElementTextUsingXpath(page,propStat,"textContent");
    expect(elementValue).to.be.equal("Requested");
  }

  async verfyStat(page) {

    let Stat = "//div[contains(@class,'table-body')]/div[1]/div[6]";
    let elementValue = await Input_utility.getElementTextUsingXpath(page,Stat,"textContent");
    expect(elementValue).to.be.equal("Abandoned");
  }

  async verifyStat(page) {

    let statDoc = "(//div[contains(@class,'container__item__column property-value') and text()='Amended'])[1]";
    let elementValue = await Input_utility.getElementTextUsingXpath(page,statDoc,"textContent");
    expect(elementValue).to.be.equal("Amended");
  }

  async configureDocumentTST808(page, propName) {

    await this.clickOnTableFirstRow(page, propName);
    await announcementPage.waitForLoading(page);
    await page.waitForTimeout(3000);
    let status = await input.getElementTextUsingXpath(page,settingsLocators.documentSettings.xpath.statusXpath,"textContent");
    await console.log("Status: " + status);
    if (status !== "Published") {
      await announcementPage.clickOnActionIcon(page);
      await page.waitForTimeout(3000);
      await announcementPage.clickOnActionItem(page, "Configure");
      //Removing Previous Sections
      await this.removeAllSections(page);
      //Creating Section
      await patientRecordsPage.clickActionIconByLabel(page,"Document Sections");
      await announcementPage.clickOnActionItem(page, "Create");
      let value = propName.split("_");
      await this.inputValueInline(page,"Code", "Section_" + value[1] + "_Code");
      await this.inputValueInline(page,"Name","Section_" + value[1] + "_Name");
      await announcementPage.clickOnActionItem(page, "Description");
      await announcementPage.waitForLoadingWithTitle(page,"Enter Description");
      await announcementPage.verifyPopUpLabel(page,"Enter Description");
      await announcementPage.enterTextInTextArea(page,"Section_" + value[1] + "_Description");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Create Section");
      await announcementPage.verifyPopUpLabel(page,"Create Section");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Create Section");
      await announcementPage.verifyPopUpLabel(page,"Create Section");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Create Section");
      await announcementPage.verifyPopUpLabel(page,"Create Section");
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickOnActionItem(page, "Return to Document");
      await page.reload();
      await page.waitForTimeout(5000);
      //Configuring Section for Property 1
      await patientRecordsPage.clickActionIconByLabel(page,"Document Properties");
      await announcementPage.waitForLoadingWithTitle(page,"Property Menu");
      await announcementPage.verifyPopUpLabel(page,"Property Menu");
      await announcementPage.clickOnActionItem(page, "Add Property");
      await announcementPage.waitForLoadingWithTitle(page,"Property Search");
      await announcementPage.verifyPopUpLabel(page,"Property Search");
      await announcementPage.clickOnActionItem(page, "Use Existing Property");
      await announcementPage.waitForLoadingWithTitle(page,"Existing Property Search");
      await announcementPage.verifyPopUpLabel(page,"Existing Property Search");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Existing Property Search Results");
      await announcementPage.verifyPopUpLabel(page,"Existing Property Search Results");
      await accountSettingsPage.searchInFilter(page, "Prop_TST-808_Name_1");
      await announcementPage.clickOnActionItem(page, "Prop_TST-808_Name_1");
      await announcementPage.waitForLoadingWithTitle(page,"Selected Existing Property Summary");
      await announcementPage.verifyPopUpLabel(page,"Selected Existing Property Summary");
      await announcementPage.clickonCheckIcon(page);
      await page.reload();
      await page.waitForTimeout(5000);
      await announcementPage.waitForLoadingWithTitle(page,"Property Menu");
      await announcementPage.verifyPopUpLabel(page,"Property Menu");
      await announcementPage.clickonPopUpBackIcon(page);
      //Configuring Section for Property 2
      await patientRecordsPage.clickActionIconByLabel(page,"Document Properties");
      await announcementPage.waitForLoadingWithTitle(page,"Property Menu");
      await announcementPage.verifyPopUpLabel(page,"Property Menu");
      await announcementPage.clickOnActionItem(page, "Add Property");
      await announcementPage.waitForLoadingWithTitle(page,"Property Search");
      await announcementPage.verifyPopUpLabel(page,"Property Search");
      await announcementPage.clickOnActionItem(page, "Use Existing Property");
      await announcementPage.waitForLoadingWithTitle(page,"Existing Property Search");
      await announcementPage.verifyPopUpLabel(page,"Existing Property Search");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Existing Property Search Results");
      await announcementPage.verifyPopUpLabel(page,"Existing Property Search Results");
      await accountSettingsPage.searchInFilter(page, "Prop_TST-808_Name_2");
      await announcementPage.clickOnActionItem(page, "Prop_TST-808_Name_2");
      await announcementPage.waitForLoadingWithTitle(page,"Selected Existing Property Summary");
      await announcementPage.verifyPopUpLabel(page,"Selected Existing Property Summary");
      await announcementPage.clickonCheckIcon(page);
      await page.reload();
      await page.waitForTimeout(5000);
      await announcementPage.waitForLoadingWithTitle(page,"Property Menu");
      await announcementPage.verifyPopUpLabel(page,"Property Menu");
      await announcementPage.clickonPopUpBackIcon(page);
      //Applying Rules to Prop_TST-808_Name
      await clicking.clickElementByXpath(page,settingsLocators.documentSettings.xpath.propTST808_NameAction);
      await announcementPage.waitForLoadingWithTitle(page,"Property Details");
      await announcementPage.verifyPopUpLabel(page,"Property Details");
      await announcementPage.clickOnActionItem(page, "Rules");
      await announcementPage.waitForLoadingWithTitle(page,"Property Rules");
      await announcementPage.verifyPopUpLabel(page,"Property Rules");
      await announcementPage.clickOnPopUpPlusIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Configure Rule");
      await announcementPage.verifyPopUpLabel(page,"Configure Rule");
      await announcementPage.clickOnActionItem(page, "Property");
      await announcementPage.waitForLoadingWithTitle(page,"Select Section");
      await announcementPage.verifyPopUpLabel(page,"Select Section");
      await announcementPage.clickOnActionItem(page, "Section_TST-808_Name");
      await announcementPage.waitForLoadingWithTitle(page,"Select Property");
      await announcementPage.verifyPopUpLabel(page,"Select Property");
      await announcementPage.clickOnActionItem(page, "Prop_TST-808_Name_2");
      await announcementPage.waitForLoadingWithTitle(page,"Select Value");
      await announcementPage.verifyPopUpLabel(page,"Select Value");
      await announcementPage.clickOnActionItem(page, "This is Prop_TST-808_2");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Configure Rule");
      await announcementPage.verifyPopUpLabel(page,"Configure Rule");
      await announcementPage.clickOnActionItem(page,"Make property not visible");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Rule Summary");
      await announcementPage.verifyPopUpLabel(page,"Rule Summary");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Property Details");
      await announcementPage.verifyPopUpLabel(page,"Property Details");
      await announcementPage.clickonPopUpBackIcon(page);
    }
    await announcementPage.clickonBackIcon(page);
  }

  async configureDocumentTST672(page, propName) {

    await this.clickOnTableFirstRow(page, propName);
    await announcementPage.waitForLoading(page);
    await page.waitForTimeout(3000);
    let status = await input.getElementTextUsingXpath(page,settingsLocators.documentSettings.xpath.statusXpath,"textContent");
    await console.log("Status: " + status);
    if (status !== "Published") {
      await announcementPage.clickOnActionIcon(page);
      await page.waitForTimeout(3000);
      await announcementPage.clickOnActionItem(page, "Configure");
      //Removing Previous Sections
      await this.removeAllSections(page);
      //Creating Section
      await patientRecordsPage.clickActionIconByLabel(page,"Document Sections");
      await announcementPage.clickOnActionItem(page, "Create");
      let value = propName.split("_");
      await this.inputValueInline(page,"Code", "Section_" + value[1] + "_Code");
      await this.inputValueInline(page,"Name","Section_" + value[1] + "_Name");
      await announcementPage.clickOnActionItem(page, "Description");
      await announcementPage.waitForLoadingWithTitle(page,"Enter Description");
      await announcementPage.verifyPopUpLabel(page,"Enter Description");
      await announcementPage.enterTextInTextArea(page,"Section_" + value[1] + "_Description");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Create Section");
      await announcementPage.verifyPopUpLabel(page,"Create Section");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Create Section");
      await announcementPage.verifyPopUpLabel(page,"Create Section");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Create Section");
      await announcementPage.verifyPopUpLabel(page,"Create Section");
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickOnActionItem(page, "Return to Document");
      await page.reload();
      await page.waitForTimeout(5000);
      //Configuring Section for Property 1
      await patientRecordsPage.clickActionIconByLabel(page,"Document Properties");
      await announcementPage.waitForLoadingWithTitle(page,"Property Menu");
      await announcementPage.verifyPopUpLabel(page,"Property Menu");
      await announcementPage.clickOnActionItem(page, "Add Property");
      await announcementPage.waitForLoadingWithTitle(page,"Property Search");
      await announcementPage.verifyPopUpLabel(page,"Property Search");
      await announcementPage.clickOnActionItem(page, "Use Existing Property");
      await announcementPage.waitForLoadingWithTitle(page,"Existing Property Search");
      await announcementPage.verifyPopUpLabel(page,"Existing Property Search");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Existing Property Search Results");
      await announcementPage.verifyPopUpLabel(page,"Existing Property Search Results");
      await accountSettingsPage.searchInFilter(page, "Prop_TST-672_Name_1");
      await announcementPage.clickOnActionItem(page, "Prop_TST-672_Name_1");
      await announcementPage.waitForLoadingWithTitle(page,"Selected Existing Property Summary");
      await announcementPage.verifyPopUpLabel(page,"Selected Existing Property Summary");
      await announcementPage.clickonCheckIcon(page);
      await page.reload();
      await page.waitForTimeout(5000);
      await announcementPage.waitForLoadingWithTitle(page,"Property Menu");
      await announcementPage.verifyPopUpLabel(page,"Property Menu");
      await announcementPage.clickonPopUpBackIcon(page);
      //Configuring Section for Property 2
      await patientRecordsPage.clickActionIconByLabel(page,"Document Properties");
      await announcementPage.waitForLoadingWithTitle(page,"Property Menu");
      await announcementPage.verifyPopUpLabel(page,"Property Menu");
      await announcementPage.clickOnActionItem(page, "Add Property");
      await announcementPage.waitForLoadingWithTitle(page,"Property Search");
      await announcementPage.verifyPopUpLabel(page,"Property Search");
      await announcementPage.clickOnActionItem(page, "Use Existing Property");
      await announcementPage.waitForLoadingWithTitle(page,"Existing Property Search");
      await announcementPage.verifyPopUpLabel(page,"Existing Property Search");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Existing Property Search Results");
      await announcementPage.verifyPopUpLabel(page,"Existing Property Search Results");
      await accountSettingsPage.searchInFilter(page, "Prop_TST-672_Name_2");
      await announcementPage.clickOnActionItem(page, "Prop_TST-672_Name_2");
      await announcementPage.waitForLoadingWithTitle(page,"Selected Existing Property Summary");
      await announcementPage.verifyPopUpLabel(page,"Selected Existing Property Summary");
      await announcementPage.clickonCheckIcon(page);
      await page.reload();
      await page.waitForTimeout(5000);
      await announcementPage.waitForLoadingWithTitle(page,"Property Menu");
      await announcementPage.verifyPopUpLabel(page,"Property Menu");
      await announcementPage.clickonPopUpBackIcon(page);
      //Applying Rules to Prop_TST-808_Name
      await clicking.clickElementByXpath(page,settingsLocators.documentSettings.xpath.propTST672_NameAction);
      await announcementPage.waitForLoadingWithTitle(page,"Property Details");
      await announcementPage.verifyPopUpLabel(page,"Property Details");
      await announcementPage.clickOnActionItem(page, "Rules");
      await announcementPage.waitForLoadingWithTitle(page,"Property Rules");
      await announcementPage.verifyPopUpLabel(page,"Property Rules");
      await announcementPage.clickOnPopUpPlusIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Configure Rule");
      await announcementPage.verifyPopUpLabel(page,"Configure Rule");
      await announcementPage.clickOnActionItem(page, "Property");
      await announcementPage.waitForLoadingWithTitle(page,"Select Section");
      await announcementPage.verifyPopUpLabel(page,"Select Section");
      await announcementPage.clickOnActionItem(page, "Section_TST-672_Name");
      await announcementPage.waitForLoadingWithTitle(page,"Select Property");
      await announcementPage.verifyPopUpLabel(page,"Select Property");
      await announcementPage.clickOnActionItem(page, "Prop_TST-672_Name_2");
      await announcementPage.waitForLoadingWithTitle(page,"Select Value");
      await announcementPage.verifyPopUpLabel(page,"Select Value");
      await announcementPage.clickOnActionItem(page, "This is Prop_TST-672_2");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Configure Rule");
      await announcementPage.verifyPopUpLabel(page,"Configure Rule");
      await announcementPage.clickOnActionItem(page,"Make property not visible");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Rule Summary");
      await announcementPage.verifyPopUpLabel(page,"Rule Summary");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page,"Property Details");
      await announcementPage.verifyPopUpLabel(page,"Property Details");
      await announcementPage.clickonPopUpBackIcon(page);
    }
    await announcementPage.clickonBackIcon(page);
  }
}

export default new DocumentSettingsPage();
