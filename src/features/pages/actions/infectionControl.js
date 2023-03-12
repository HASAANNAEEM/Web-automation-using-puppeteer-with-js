import Input_utility from "../../../utilities/input";
import { expect } from "chai";
import clicking from "../../../utilities/clicking";
import clinicalLocators from "../../locators/clinicalRecords.json";
import Input from "../../../utilities/input";
import announcementPage from "./announcementPage";
import click_utility from "../../../utilities/clicking";
import settingsLocators from "../../locators/settings.json";
import input_utility from "../../../utilities/input";
import dates from "../../../data/date.json";
import fs from "fs-extra";
import { Then } from "@cucumber/cucumber";
import navigationPage from "./navigationBar";
import patMergePage from "./patMergePage";
import clinicalRecordsPage from "./clinicalRecordsPage";
import clinicalNotingPage from "./clinicalNotingPage";

class infectionControl {
  async verifyTableHeader(page, element) {
    let tableHeaderXpath =
      "//div[contains(@class,'data-set-row')]//div[contains(text(),'" +
      element +
      "')]|//div[contains(@class,'table-heading')]//div[text()='" +
      element +
      "']|//div[contains(@class,'data-set-header')]//div[contains(@class,'content-cell')]//div[contains(text(),'" +
      element +
      "')]|//div[@class='overlay-panel active panel-fixed']//div[contains(@class,'panel-inner-wrapper')]//div[contains(text(),'" +
      element +
      "')]";
    let tableHeaderText = await Input_utility.getElementTextUsingXpath(
      page,
      tableHeaderXpath,
      "textContent"
    );
    expect(tableHeaderText.toUpperCase()).to.be.equal(element.toUpperCase());
  }

  async selectTime(page, hours, minutes, seconds) {
    let hourSelectionXpath =
      "//div[@class='hours']//span[text()='" + hours + "']";
    await clicking.clickElementByXpath(page, hourSelectionXpath);
    let minutesSelectionXpath =
      "//div[@class='minutes']//span[text()='" + minutes + "']";
    await clicking.clickElementByXpath(page, minutesSelectionXpath);
    let secondSelectionXpath =
      "//div[@class='minutes']//span[text()='" + seconds + "']";
    await clicking.clickElementByXpath(page, secondSelectionXpath);
  }

  async checkParameterSelection(page, headerTitle) {
    let roleHeaderXpath =
      "//div[@id='appended-elements']//div[contains(text(),'" +
      headerTitle +
      "')]/../..//div[2]";
    let element = await page.waitForXPath(roleHeaderXpath, {
      visible: true,
      timeout: 30000,
    });
    let className = await (await element.getProperty("className")).jsonValue();
    console.log(className);

    if (
      className.includes(
        "container-item container-icon selection-square-active"
      )
    ) {
      console.log("Already Active");
    } else if (
      className.includes(
        "container-item container-icon selection-square-inactive"
      )
    ) {
      await clicking.clickElementByXpath(page, roleHeaderXpath);
    }
  }

  async clickLastRecord(page) {
    let xpath =
      "(//div[contains(@class,'data-set-body')]//div[@class='data-set-cell meatballs'])[last()]|(//div[contains(@class,'data-set-body')]//div[@class='data-set-cell outbreak-inactive'])[last()]|(//div[contains(@class,'data-set-body')]//div[@class='data-set-row --clickable '])[last()]";
    await click_utility.clickElementByXpath(page, xpath);
  }

  async verifyPopUpWithLabelDetailsWithoutValue(page, label) {
    let elementXpath =
      "//*[@class='container-column' or @id='outbreaks']//div[text()='" +
      label +
      "']|//div[@class='sub-header']//div[text()='" +
      label +
      "']|//div[@class='data-set-row']//div[text()='" +
      label +
      "']";
    let PopUpDetailText = await Input_utility.getElementTextUsingXpath(
      page,
      elementXpath,
      "textContent"
    );
    expect(PopUpDetailText.toUpperCase()).to.be.equal(label.toUpperCase());
  }

  async verifyPopUpWithLabelvalue(page, label, value) {
    let elementXpath =
      "//*[@class='component-container']//div[text()='" + label + "']";
    let valueXpath =
      "//*[@class='component-container --clickable']//*[text()='" +
      value +
      "']";
    let elementValue = await Input_utility.getElementTextUsingXpath(
      page,
      valueXpath,
      "textContent"
    );
    await expect(elementValue).to.be.equal(value);
  }

  async enterTextInTextArea(page, text) {
    await Input_utility.enterTextXpath(
      page,
      settingsLocators.announcementPage.xpath.popUpTextArea,
      text
    );
  }

  async clickonPopUpBackIcon(page) {
    await click_utility.clickElementByXpath(
      page,
      settingsLocators.announcementPage.xpath.popUpbackIcon
    );
  }

  async verifyTableHasMultipleRowsInPopup(page) {
    await page.waitForTimeout(7000);
    let items = await page.$x(
      settingsLocators.organisationSettingsPage.xpath.tableRowsPopup
    );
    expect(items.length).to.be.above(1);
  }

  async verifyTableHasMultipleRowsInPopupDetail(page) {
    await page.waitForTimeout(7000);
    let items = await page.$x(
      settingsLocators.organisationSettingsPage.xpath.tableRowsPopupDetail
    );
    expect(items.length).to.be.above(1);
  }

  async verifyTableData(page) {
    await page.waitForTimeout(7000);
    let items = await page.$x(
      settingsLocators.organisationSettingsPage.xpath.tableRowVerify
    );
    console.log(items.length);
    expect(items.length).to.be.above(0);
  }

  async verifyTableHasRowsInPopup(page) {
    await page.waitForTimeout(7000);
    let items = await page.$x(
      settingsLocators.organisationSettingsPage.xpath.InfectionRows
    );
    expect(items.length).to.be.above(1);
  }

  async verifySubMenu(page, element) {
    let tableHeaderXpath =
      "//div[contains(@class,'module-navigator-items')]/div[contains(text(),'" +
      element +
      "')]|//div[@class='overlay-panel active panel-fixed']//div[contains(@class,'demographics-left')]//*[contains(text(),'" +
      element +
      "')]";
    let tableHeaderText = await Input_utility.getElementTextUsingXpath(
      page,
      tableHeaderXpath,
      "innerHTML"
    );
    expect(tableHeaderText.toUpperCase()).to.be.equal(element.toUpperCase());
  }

  async verifyPopUpWithLabelAndValueDetails(page, label, value) {
    await page.waitForTimeout(2000);
    let actionItemXpaths =
      "//div[contains(@id,'appended-elements')]//div[text()='" +
      label +
      "']|//div[contains(@id,'appended-elements')]//span[contains(text(),'" +
      label +
      "')]";
    await click_utility.clickElementByXpath(page, actionItemXpaths);
    await page.waitForTimeout(2000);
    //  await expect(actionItemXpath).to.be.equal(label);
    let actionItemXpath =
      "(//div[contains(@id,'appended-elements')]//div[text()='" +
      value +
      "'])[2]|(//div[contains(@id,'appended-elements')]//span[contains(text(),'" +
      value +
      "')])[2]|(//div[contains(@id,'appended-elements')]//div[text()='" +
      value +
      "'])";
    await click_utility.clickElementByXpath(page, actionItemXpath);
  }

  async clickLastRecordPopUp(page) {
    let xpath =
      "(//div[contains(@id,'appended-elements')]//div[contains(@class,'component-container --clickable')])[last()]|(//div[contains(@id,'appended-elements')]//div[contains(@class,'demographics-bar-component-container property-clickable')])[last()]";
    await click_utility.clickElementByXpath(page, xpath);
  }

  async clickFirstRecordPopUp(page) {
    let xpath =
      "//div[contains(@id,'appended-elements')]//*[@class='component-container --clickable'][1]";
    await click_utility.clickElementByXpath(page, xpath);
  }

  async verifyDataDisplayed(page) {
    let xpath = "//*[@id='appended-elements']//*[@class='panel-inner-wrapper']";
    await click_utility.clickElementByXpath(page, xpath);
  }

  async verifySurnameAndForename(page, value, label) {
    let element = await page.waitForXPath(
      clinicalLocators.patientIdentifier.xpath.demoGraphicsDisplayName
    );
    const className = await (
      await element.getProperty("textContent")
    ).jsonValue();
    console.log(className);
    let surname = className.split(",")[0].trim();
    let fame = className.split(",")[1].trim();
    expect(surname).to.be.equal(value);
    expect(fame).to.be.equal(label);
  }

  async verifyDOBAndDate(page, label, value) {
    let element = await page.waitForXPath(
      clinicalLocators.patientIdentifier.xpath.demoGraphicsDOB
    );
    const className = await (
      await element.getProperty("textContent")
    ).jsonValue();
    console.log(className);
    let Date = className.split(" ")[0].trim();
    let Years = className.split(" ")[1].trim();
    expect(Date).to.be.equal(label);
    expect(Years).to.be.equal(value);
  }

  async verifyNHS(page, number) {
    let element = await page.waitForXPath(
      clinicalLocators.patientIdentifier.xpath.demoGraphicsNHS
    );
    const className = await (
      await element.getProperty("textContent")
    ).jsonValue();
    console.log(className);
    let NHS = className.split(".")[0].trim();
    let Number = className.split(".")[1].trim();
    expect(Number).to.be.equal(number);
  }

  async clickFirstRecord(page) {
    let xpath =
      "(//div[contains(@class,'data-set-body')]//div[@class='data-set-cell outbreak-inactive'])[1]";
    await click_utility.clickElementByXpath(page, xpath);
  }

  async eventName(page, value) {
    let element = await page.waitForXPath(
      clinicalLocators.patientIdentifier.xpath.caseEvents
    );
    const className = await (
      await element.getProperty("textContent")
    ).jsonValue();
    console.log(className);
    expect(className.trim()).to.be.equal(value);
  }

  async verifyMandatoryField(page, header) {
    let mandatoryXpath =
      "//div[@id='appended-elements']//div[contains(text(),'" +
      header +
      "')]/../..";
    let element = await page.waitForXPath(mandatoryXpath, { visible: true });
    const className = await (
      await element.getProperty("className")
    ).jsonValue();
    expect(className).to.includes("mandatory");
  }

  async inputRandomValue(page) {
    this.randomValueGenerated = Math.random().toString(36).substring(2, 11);
    console.log(this.randomValueGenerated);
    //let rand = this.randomValueGenerated;
    let xpath =
      "//div[contains(@id,'appended-elements')]//textarea|//input[contains(@class,'inline-text-input')]";
    await input_utility.removeTextByXpath(page, xpath);
    await input_utility.enterTextXpath(page, xpath, this.randomValueGenerated);
    return this.randomValueGenerated;
  }

  async inputRandomNumber(page) {
    this.randomValueGenerated = Math.random().toString(5).substring(2, 12);
    console.log(this.randomValueGenerated);
    let xpath =
      "//div[contains(@id,'appended-elements')]//textarea|//input[contains(@class,'inline-text-input')]";
    await input_utility.removeTextByXpath(page, xpath);
    await input_utility.enterTextXpath(page, xpath, this.randomValueGenerated);
    return this.randomValueGenerated;
  }

  async inputRandomAlphabet(page) {
    this.randomValueGenerated = Math.random().toString(36).substring(2, 5);
    console.log(this.randomValueGenerated);
    let xpath =
      "//div[contains(@id,'appended-elements')]//textarea|//input[contains(@class,'inline-text-input')]";
    await input_utility.removeTextByXpath(page, xpath);
    await input_utility.enterTextXpath(page, xpath, this.randomValueGenerated);
    return this.randomValueGenerated;
  }

  async clickOnYesNoOption(page, label) {
    await page.waitForTimeout(2000);
    let actionItemXpath =
      "//*[@class='container-item container-complication inline']//div[contains(text(),'" +
      label +
      "')]";
    await click_utility.clickElementByXpath(page, actionItemXpath);
  }

  async saveNHSNumber(page) {
    let randomValueGenerated = Math.random().toString(36).substring(2, 5);
    let saveNHSNumber = await Input_utility.getElementTextUsingXpath(
      page,
      settingsLocators.Outbreak.xpath.NHSNumber,
      "innerText"
    );
    let jsonFile = dates;
    jsonFile.startDate = saveNHSNumber;

    jsonFile["patientIdentifier" + randomValueGenerated] = randomValueGenerated;
    await fs.writeJson("src/data/date.json", jsonFile);
    this.startDate = saveNHSNumber;
  }

  async clickOnParameterDateFilter(page) {
    await click_utility.clickElementByXpath(
      page,
      settingsLocators.Outbreak.xpath.FilterParameterDate
    );
  }

  async verifyColorFieldValue(page, header, color) {
    let mandatoryXpath =
      "//div[@id='appended-elements']//div[contains(text(),'" +
      header +
      "')]/../..//span|//div[@id='appended-elements']//div[contains(text(),'" +
      header +
      "')]/../..//div[contains(@class,'container-text collection')]";
    let element = await page.waitForXPath(mandatoryXpath, { visible: true });
    const className = await (
      await element.getProperty("className")
    ).jsonValue();
    expect(className).to.includes(color);
  }

  async verifyReview(page, label) {
    let element = await page.waitForXPath(
      clinicalLocators.clinicalRecordSettings.xpath.ReviewComments
    );
    const className = await (
      await element.getProperty("textContent")
    ).jsonValue();
    console.log(className);
    expect(className).to.be.equal(label);
  }

  async verifyCaseParameter(page, parameter) {
    let mandatoryXpath =
      "//*[@class='container-item container-complication lozenge']/div[contains(text(),'" +
      parameter +
      "')]";
    let element = await page.waitForXPath(mandatoryXpath, { visible: true });
    const className = await (
      await element.getProperty("textContent")
    ).jsonValue();
    expect(className).to.includes(parameter);
  }

  async selectFirstCase(page) {
    let firstDoc =
      "(//div[contains(@class,'demographics-bar-component-container property-clickable')])[1]/div";
    await click_utility.clickElementByXpath(page, firstDoc);
  }

  async verifyCaseHeader(page, parameter) {
    let mandatoryXpath =
      "//div[@class='data-set-row']//div[contains(@class,'" + parameter + "')]";
    let element = await page.waitForXPath(mandatoryXpath, { visible: true });
    const className = await (
      await element.getProperty("textContent")
    ).jsonValue();
    expect(className).to.includes(parameter);
  }

  async clickParameter(page) {
    let Parameter =
      "//div[contains(@class,'container-item container-text label')][contains(text(),'Parameters')]";
    await click_utility.clickElementByXpath(page, Parameter);
  }

  async checkParamSelection(page, headerTitle) {
    let roleHeaderXpath =
      "//div[@id='appended-elements']//div[contains(text(),'" +
      headerTitle +
      "')]/../..//div[2]";
    let element = await page.waitForXPath(roleHeaderXpath, {
      visible: true,
      timeout: 30000,
    });
    let Name = await (await element.getProperty("className")).jsonValue();
    console.log(Name);

    if (Name.includes("inactive")) {
      await clicking.clickElementByXpath(page, roleHeaderXpath);
    } else if (Name.includes("active")) {
      console.log("Already Selected");
    }
  }

  async verifyCaseList(page, parameter) {
    let mandatoryXpath =
      "//div[@class='data-set-body']//div[contains(text(),'" +
      parameter +
      "')]";
    let element = await page.waitForXPath(mandatoryXpath, { visible: true });
    const className = new Array(
      await (await element.getProperty("textContent")).jsonValue()
    );
    console.log(className);
    //const OrginNameList = [className]
    console.log(className.length);
    for (let i = 0; i < className.length; i++) {
      expect(className[i]).to.includes(parameter);
    }
  }

  async popupLabel(page, label) {
    let elementXpath =
      "//*[@class='container-column' or @id='outbreaks']//div[text()='" +
      label +
      "']";
    let PopUpDetailText = await Input_utility.getElementTextUsingXpath(
      page,
      elementXpath,
      "textContent"
    );
    expect(PopUpDetailText.toUpperCase()).to.be.equal(label.toUpperCase());
  }

  async verifyCaseListBedManagement(page, parameter) {
    let mandatoryXpath =
      "//div[@class='data-set-body']//div[contains(@class,'data-set-cell color')][contains(text(),'Unknown') or contains(text(),'Green') or contains(text(),'Red') or contains(text(),'Amber')]";
    let element = await page.waitForXPath(mandatoryXpath, { visible: true });
    const className = new Array(
      await (await element.getProperty("textContent")).jsonValue()
    );
    console.log(className);
    //const OrginNameList = [className]
    console.log(className.length);
    for (let i = 0; i < className.length; i++) {
      expect(className[i]).to.includes(parameter);
    }
  }

  async UncheckParam(page, headerTitle) {
    let roleHeaderXpath =
      "//div[@id='appended-elements']//div[contains(text(),'" +
      headerTitle +
      "')]/../..//div[2]";
    let element = await page.waitForXPath(roleHeaderXpath, {
      visible: true,
      timeout: 30000,
    });
    let Name = await (await element.getProperty("className")).jsonValue();
    console.log(Name);
    console.log("ayer shuja");
    if (
      Name.includes("inactive") ||
      Name.includes("selection-square-inactive")
    ) {
      console.log("Already Selected");
      console.log("ayer shuja1");
    } else if (
      Name.includes("active") ||
      Name.includes("selection-square-active")
    ) {
      await clicking.clickElementByXpath(page, roleHeaderXpath);
      console.log("ayer shuja2");
    }
  }

  async verifyCaseListWithTwoParameter(page, parameter1, parameter2) {
    let parameterXpath1 =
      "//div[@class='data-set-body']//div[contains(text(),'" +
      parameter1 +
      "')]";
    let parameterXpath2 =
      "//div[@class='data-set-body']//div[contains(text(),'" +
      parameter2 +
      "')]";
    let element = await page.waitForXPath(parameterXpath1, { visible: true });
    let element2 = await page.waitForXPath(parameterXpath2, { visible: true });
    const className = new Array(
      await (await element.getProperty("textContent")).jsonValue()
    );
    const className2 = new Array(
      await (await element2.getProperty("textContent")).jsonValue()
    );
    console.log(className);
    console.log(className.length);
    for (let i = 0; i < className.length; i++) {
      expect(className[i]).to.includes(parameter1) &&
        expect(className2[i]).to.includes(parameter2);
    }
  }

  async verifyResult(page, parameter, parameter1) {
    let HeaderXpathDesc = "(//div[@class='container-item container-complication standard'])[1]//*[contains(text(),'"+parameter+"')]";
    let HeaderXpathName = "(//div[@class='container-item container-complication standard'])[1]//*[contains(text(),'" +parameter1+"')]";
    let element = await page.waitForXPath(HeaderXpathDesc, { visible: true });
    let element1 = await page.waitForXPath(HeaderXpathName, { visible: true });
    const className = await (
      await element.getProperty("textContent")
    ).jsonValue();
    const className1 = await (
      await element1.getProperty("textContent")
    ).jsonValue();
    expect(className).to.includes(parameter);
    expect(className1).to.includes(parameter1);
  }

  async SelectTableWithSpecficName(page, name) {
    console.log("Selecting Option: " + name);
    let specficName =
      "//div[contains(text(),'" +
      name +
      "')]/..//div[@class='data-set-cell outbreak-inactive']";
    await clicking.clickElementByXpath(page, specficName);
  }

  async AssociatedCases(page, parameter) {
    let ParameterXpath =
      "//*[@id='appended-elements']//*[translate(text(),'abcdefghijklmnopqrstuvwxyz','ABCDEFGHIJKLMNOPQRSTUVWXYZ')=\"" +
      parameter.toUpperCase() +
      "\"]/../..//div[@class='container-column']/div[contains(@class,'collection')]";
    let element = await page.waitForXPath(ParameterXpath, {
      visible: true,
      timeout: 30000,
    });
    let Name = await (await element.getProperty("outerText")).jsonValue();
    console.log(Name);

    if (Name.includes(0)) {
      await clicking.clickElementByXpath(page, ParameterXpath);
      await announcementPage.waitForLoadingWithTitle(page, "Outbreak Cases");
      await announcementPage.verifyPopUpLabel(page, "Outbreak Cases");
      await patMergePage.clickMenu(page);
      await announcementPage.waitForLoadingWithTitle(page, "Patient Case Menu");
      await announcementPage.verifyPopUpLabel(page, "Patient Case Menu");
      await navigationPage.clickOnPopupItem(page, "Add");
      await this.verifyPopUpWithLabelAndValueDetails(
        page,
        "Location",
        "Acute Assessment Unit - DPoW"
      );
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(
        page,
        "Case Search Results"
      );
      await announcementPage.verifyPopUpLabel(page, "Case Search Results");
      await this.clickLastRecordPopUp(page);
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(
        page,
        "Patient Case Summary"
      );
      await announcementPage.verifyPopUpLabel(page, "Patient Case Summary");
      await announcementPage.clickonCheckIcon(page);
      await announcementPage.waitForLoadingWithTitle(page, "Submission Status");
      await announcementPage.verifyPopUpLabel(page, "Submission Status");
      await announcementPage.verifyForm(page, "Success");
      await announcementPage.clickonCheckIcon(page);
    } else return;
  }

  async PrerequsiteLocation(page) {
    await page.waitForTimeout(10000);
    await this.clickParameter(page);
    await announcementPage.clickOnActionItem(page, "Date Range");
    await clinicalRecordsPage.selectDate(page, 2, "June", 2021);
    await announcementPage.clickonCheckIcon(page);
    await clicking.clickElementByXpath(page, settingsLocators.announcementPage.xpath.popUpDateTime);
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Origin Site");
    await page.waitForTimeout(10000);
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Diana Princess of Wales Hospital", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Goole and District Hospital", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "North East Lincs Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "North Lincs Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Scunthorpe General Hospital", "inactive");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Origin Site");
    await page.waitForTimeout(10000);
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Diana Princess of Wales Hospital", "active");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Location");
    await announcementPage.waitForLoadingWithTitle(page, "Select Locations");
    await announcementPage.verifyPopUpLabel(page, "Select Locations");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Status");
    await navigationPage.clickOnPopupItem(page, "Open");
    await announcementPage.clickOnActionItem(page, "Assignee");
    await announcementPage.waitForLoadingWithTitle(page, "Select Assignee");
    await announcementPage.verifyPopUpLabel(page, "Select Assignee");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Bed Management");
    await announcementPage.waitForLoadingWithTitle(page, "Bed Management Status");
    await announcementPage.verifyPopUpLabel(page, "Bed Management Status");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await navigationPage.clickOnPopupItem(page, "Case Search");
    await announcementPage.clickonCheckIcon(page);
  }
  async PrerequsiteTestCase(page) {
    await page.waitForTimeout(10000);
    await this.clickParameter(page);
    await announcementPage.clickOnActionItem(page, "Date Range");
    await clinicalRecordsPage.selectDate(page, 2, "June", 2021);
    await announcementPage.clickonCheckIcon(page);
    await clicking.clickElementByXpath(page, settingsLocators.announcementPage.xpath.popUpDateTime);
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Origin Site");
    await page.waitForTimeout(10000);
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Diana Princess of Wales Hospital", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Goole and District Hospital", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "North East Lincs Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "North Lincs Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Scunthorpe General Hospital", "inactive");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Origin Site");
    await page.waitForTimeout(10000);
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Diana Princess of Wales Hospital", "active");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Location");
    await announcementPage.waitForLoadingWithTitle(page, "Select Locations");
    await announcementPage.verifyPopUpLabel(page, "Select Locations");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Status");
    await navigationPage.clickOnPopupItem(page, "Open");
    await announcementPage.clickOnActionItem(page, "Assignee");
    await announcementPage.waitForLoadingWithTitle(page, "Select Assignee");
    await announcementPage.verifyPopUpLabel(page, "Select Assignee");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Bed Management");
    await announcementPage.waitForLoadingWithTitle(page, "Bed Management Status");
    await announcementPage.verifyPopUpLabel(page, "Bed Management Status");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Patient Identifier");
    await announcementPage.clearTextInTextArea(page);
    await navigationPage.clickOnPopupItem(page, "Case Search");
    await announcementPage.clickonCheckIcon(page);
  }

  async PrerequsiteTestCaseWithRedBedManagement(page) {
    await page.waitForTimeout(10000);
    await this.clickParameter(page);
    await announcementPage.clickOnActionItem(page, "Date Range");
    await clinicalRecordsPage.selectDate(page, 2, "June", 2021);
    await announcementPage.clickonCheckIcon(page);
    await clicking.clickElementByXpath(page, settingsLocators.announcementPage.xpath.popUpDateTime);
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Origin Site");
    await page.waitForTimeout(10000);
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Diana Princess of Wales Hospital", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Goole and District Hospital", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "North East Lincs Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "North Lincs Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Scunthorpe General Hospital", "inactive");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Origin Site");
    await page.waitForTimeout(10000);
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Diana Princess of Wales Hospital", "active");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Location");
    await announcementPage.waitForLoadingWithTitle(page, "Select Locations");
    await announcementPage.verifyPopUpLabel(page, "Select Locations");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Status");
    await navigationPage.clickOnPopupItem(page, "Open");
    await announcementPage.clickOnActionItem(page, "Assignee");
    await announcementPage.waitForLoadingWithTitle(page, "Select Assignee");
    await announcementPage.verifyPopUpLabel(page, "Select Assignee");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Bed Management");
    await announcementPage.waitForLoadingWithTitle(page, "Bed Management Status");
    await announcementPage.verifyPopUpLabel(page, "Bed Management Status");
    await navigationPage.clickOnPopupItem(page, "Red");
    await announcementPage.clickonCheckIcon(page);
    await navigationPage.clickOnPopupItem(page, "Case Search");
    await announcementPage.clickonCheckIcon(page);
  }

  async PrerequsiteTestCaseClosedCase(page) {
    await page.waitForTimeout(10000);
    await this.clickParameter(page);
    await announcementPage.clickOnActionItem(page, "Date Range");
    await clinicalRecordsPage.selectDate(page, 2, "June", 2021);
    await announcementPage.clickonCheckIcon(page);
    await clicking.clickElementByXpath(page, settingsLocators.announcementPage.xpath.popUpDateTime);
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Origin Site");
    await page.waitForTimeout(10000);
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Diana Princess of Wales Hospital", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Goole and District Hospital", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "North East Lincs Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "North Lincs Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Scunthorpe General Hospital", "inactive");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Origin Site");
    await page.waitForTimeout(10000);
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Community Services", "active");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Location");
    await announcementPage.waitForLoadingWithTitle(page, "Select Locations");
    await announcementPage.verifyPopUpLabel(page, "Select Locations");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Organism");
    await announcementPage.waitForLoadingWithTitle(page, "Organisms List");
    await announcementPage.verifyPopUpLabel(page, "Organisms List");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Status");
    await navigationPage.clickOnPopupItem(page, "Closed");
    await announcementPage.clickOnActionItem(page, "Assignee");
    await announcementPage.waitForLoadingWithTitle(page, "Select Assignee");
    await announcementPage.verifyPopUpLabel(page, "Select Assignee");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Bed Management");
    await announcementPage.waitForLoadingWithTitle(page, "Bed Management Status");
    await announcementPage.verifyPopUpLabel(page, "Bed Management Status");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await navigationPage.clickOnPopupItem(page, "Case Search");
    await announcementPage.clickonCheckIcon(page);
  }


  async PrerequsiteTestCasedemographics(page) {
    await page.waitForTimeout(10000);
    await this.clickParameter(page);
    await announcementPage.clickOnActionItem(page, "Date Range");
    await clinicalRecordsPage.selectDate(page, 2, "June", 2022);
    await announcementPage.clickonCheckIcon(page);
    await clicking.clickElementByXpath(page, settingsLocators.announcementPage.xpath.popUpDateTime);
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Origin Site");
    await page.waitForTimeout(10000);
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Diana Princess of Wales Hospital", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Goole and District Hospital", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "North East Lincs Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "North Lincs Community Services", "inactive");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Scunthorpe General Hospital", "inactive");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Origin Site");
    await page.waitForTimeout(10000);
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Goole and District Hospital", "active");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickonCheckIcon(page);
  }

  async PrerequsiteLocationFromClient(page) {
    await page.waitForTimeout(10000);
    await this.clickParameter(page);
    await announcementPage.clickOnActionItem(page, "Date Range");
    await clinicalRecordsPage.selectDate(page, 2, "June", 2021);
    await announcementPage.clickonCheckIcon(page);
    await clicking.clickElementByXpath(
      page,
      settingsLocators.announcementPage.xpath.popUpDateTime
    );
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Origin Site");
    await page.waitForTimeout(10000);
    await clinicalNotingPage.makeRolePermissionsActiveInActive(
      page,
      "Community Services",
      "inactive"
    );
    await clinicalNotingPage.makeRolePermissionsActiveInActive(
      page,
      "Diana Princess of Wales Hospital",
      "inactive"
    );
    await clinicalNotingPage.makeRolePermissionsActiveInActive(
      page,
      "Goole and District Hospital",
      "inactive"
    );
    await clinicalNotingPage.makeRolePermissionsActiveInActive(
      page,
      "North East Lincs Community Services",
      "inactive"
    );
    await clinicalNotingPage.makeRolePermissionsActiveInActive(
      page,
      "North Lincs Community Services",
      "inactive"
    );
    await clinicalNotingPage.makeRolePermissionsActiveInActive(
      page,
      "Scunthorpe General Hospital",
      "inactive"
    );
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Origin Site");
    await page.waitForTimeout(10000);
    await clinicalNotingPage.makeRolePermissionsActiveInActive(
      page,
      "Scunthorpe General Hospital",
      "active"
    );
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Location");
    await announcementPage.waitForLoadingWithTitle(page, "Select Locations");
    await announcementPage.verifyPopUpLabel(page, "Select Locations");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Status");
    await navigationPage.clickOnPopupItem(page, "Open");
    await announcementPage.clickOnActionItem(page, "Assignee");
    await announcementPage.waitForLoadingWithTitle(page, "Select Assignee");
    await announcementPage.verifyPopUpLabel(page, "Select Assignee");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.clickOnActionItem(page, "Bed Management");
    await announcementPage.waitForLoadingWithTitle(
      page,
      "Bed Management Status"
    );
    await announcementPage.verifyPopUpLabel(page, "Bed Management Status");
    await navigationPage.clickOnPopupItem(page, "Clear");
    await announcementPage.clickonCheckIcon(page);
    await navigationPage.clickOnPopupItem(page, "Case Search");
    await announcementPage.clickonCheckIcon(page);
  }
}
export default new infectionControl();
