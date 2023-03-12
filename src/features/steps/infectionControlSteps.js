import { Then } from "@cucumber/cucumber";
import navigationPage from "../pages/actions/navigationBar";
import announcementPage from "../pages/actions/announcementPage";
import clicking from "../../utilities/clicking";
import settingsLocators from "../locators/settings.json";
import login_utility from "../../utilities/helper/login_utility";
import utility from "../../utilities/utility";
import comorbidityPage from "../pages/actions/comorbidityPage";
import infectionControl from "../pages/actions/infectionControl";
import patMergePage from "../pages/actions/patMergePage";
import clinicalRecordsPage from "../pages/actions/clinicalRecordsPage";

Then(
  "user input the current date and time while creating outbreak",
  { timeout: 60 * 1000 },
  async function () {
    await navigationPage.clickOnDiv(this.page, "Select Current");
    await announcementPage.verifyPopUpLabel(this.page, "Start of Outbreak");
    await clicking.clickElementByXpath(
      this.page,
      settingsLocators.announcementPage.xpath.popUpDateTime
    );
    await announcementPage.clickonCheckIcon(this.page);
    await clicking.clickElementByXpath(
      this.page,
      settingsLocators.announcementPage.xpath.popUpDateTime
    );
    await announcementPage.clickonCheckIcon(this.page);
    await announcementPage.saveEndDate(this.page);
    await this.attach("End Date: " + announcementPage.startDate);
  }
);

Then(
  "user input the current date and time",
  { timeout: 60 * 1000 },
  async function () {
    await clicking.clickElementByXpath(
      this.page,
      settingsLocators.announcementPage.xpath.popUpDateTime
    );
    await announcementPage.clickonCheckIcon(this.page);
    await clicking.clickElementByXpath(
      this.page,
      settingsLocators.announcementPage.xpath.popUpDateTime
    );
    await announcementPage.clickonCheckIcon(this.page);
  }
);

Then(
  "user select the Month as {string}",
  { timeout: 60 * 1000 },
  async function (label) {
    await utility.clickOnSelectionOnMonth(this.page);
    await announcementPage.clickOnActionItem(this.page, label);
  }
);

Then(
  "user select the Date {string}",
  { timeout: 60 * 1000 },
  async function (value) {
    await utility.clickOnSelectionOnDay(this.page, value);
  }
);

Then(
  "user select Hour HH as {string}",
  { timeout: 60 * 1000 },
  async function (hour) {
    await utility.clickOnSelectionOnHour(this.page, hour);
  }
);
Then(
  "user select Minutes  MM as {string}",
  { timeout: 70 * 1000 },
  async function (minutes) {
    await utility.clickOnSelectionOnMin(this.page, minutes);
  }
);

Then(
  "user select Seconds SS as {string}",
  { timeout: 70 * 1000 },
  async function (second) {
    await utility.clickOnSelectionOnSec(this.page, second);
  }
);

Then(
  "user click on Edit on outbreak Menu",
  { timeout: 60 * 1000 },
  async function () {
    await announcementPage.clickOnActionItem(this.page, "Edit");
  }
);

Then(
  "user able to click on Parameter filter",
  { timeout: 60 * 1000 },
  async function () {
    await announcementPage.clickOnParameterFilter(this.page);
  }
);

Then(
  "user verify the Closed Case list",
  { timeout: 60 * 1000 },
  async function () {
    await comorbidityPage.verifyClosedSatus(this.page);
  }
);

Then(
  "user verify the Open or Active Case list",
  { timeout: 60 * 1000 },
  async function () {
    await announcementPage.clickOnStatusFilter(this.page);
  }
);

Then(
  "verify the table is populated in Case Infection popup",
  { timeout: 60 * 1000 },
  async function () {
    await infectionControl.verifyTableHasMultipleRowsInPopup(this.page);
  }
);

Then(
  "user click on last record in the table of popup",
  { timeout: 60 * 1000 },
  async function () {
    await infectionControl.clickLastRecordPopUp(this.page);
  }
);

Then(
  "user click on First record in the table of popup",
  { timeout: 60 * 1000 },
  async function () {
    await infectionControl.clickFirstRecordPopUp(this.page);
  }
);

Then(
  "verify data is populated on popup detail",
  { timeout: 60 * 1000 },
  async function () {
    await infectionControl.verifyTableHasMultipleRowsInPopup(this.page);
  }
);

Then(
  "verify data is populated on popup detail Page",
  { timeout: 60 * 1000 },
  async function () {
    await infectionControl.verifyTableHasMultipleRowsInPopupDetail(this.page);
  }
);

Then(
  "verify data is populated on case detail",
  { timeout: 60 * 1000 },
  async function () {
    await infectionControl.verifyTableHasRowsInPopup(this.page);
  }
);

Then(
  "user able to click on Date Parameter filter",
  { timeout: 60 * 1000 },
  async function () {
    await infectionControl.clickOnParameterDateFilter(this.page);
  }
);

Then("user input the end current date", { timeout: 60 * 1000 },
  async function () {
    await navigationPage.clickOnDiv(this.page, "Ends");
    await announcementPage.verifyPopUpLabel(this.page, "Configure End");
    await clicking.clickElementByXpath(this.page, settingsLocators.announcementPage.xpath.popUpDateTime);
    await announcementPage.clickonCheckIcon(this.page);
    await this.attach("End Date: " + announcementPage.startDate);
  }
);

Then("user click on parameter", { timeout: 60 * 1000 }, async function () {
  await infectionControl.clickParameter(this.page);
});

Then("user consider pre-requsite against location", { timeout: 60 * 10000 }, async function ()
    {
    await infectionControl.PrerequsiteLocation(this.page);
    });

Then("user consider pre-requsite against infectionControl", { timeout: 60 * 10000 }, async function ()
{
    await infectionControl.PrerequsiteTestCase(this.page);
});

Then("user consider pre-requsite against infectionControl with closed case & Community service", { timeout: 60 * 10000 }, async function ()
{
    await infectionControl.PrerequsiteTestCaseClosedCase(this.page);
});

Then("user consider pre-requsite against infectionControl for demographics", { timeout: 60 * 10000 }, async function ()
{
    await infectionControl.PrerequsiteTestCasedemographics(this.page);
});

Then("user consider pre-requsite against infectionControl With Selected Bed Management", { timeout: 60 * 10000 }, async function ()
{
    await infectionControl.PrerequsiteTestCaseWithRedBedManagement(this.page);
});

Then(
  "user consider pre-requsite against location on specific Data from Client",
  { timeout: 60 * 10000 },
  async function () {
    await infectionControl.PrerequsiteLocationFromClient(this.page);
  }
);
