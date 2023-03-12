import {Before, After, setDefaultTimeout} from "@cucumber/cucumber";
import login from '../../../utilities/helper/login_utility'
import env from '../../../data/url.json'
import url from "../../../data/url.json";
import roleSettingsPage from "../actions/roleSettingsPage";
import navigationPage from "../actions/navigationBar";
import settingsPage from "../actions/settingsPage";
import announcementPage from "../actions/announcementPage";
import clinicalNotingPage from "../actions/clinicalNotingPage";
import documentSettingsPage from "../actions/documentSettingsPage";


setDefaultTimeout(1800*1000);
// Before(async function () {
//     await this.attach("Environment: "+env.urls.url, 'text/plain');
//     await console.log("Launching Puppeteer");
//     await this.openTodoPage();
//     await console.log("Logging In");
//     await login.loginApp(this.page);
// });

Before({tags: "@haider"},async function () {
  await this.attach("Environment: "+env.urls.url, 'text/plain');
  await console.log("Launching Puppeteer");
  await this.openTodoPage();
  await console.log("Logging In");
  await login.loginAppHaider(this.page);
});

Before({tags: "@hamzaAhmad"},async function () {
  await this.attach("Environment: "+env.urls.url, 'text/plain');
  await console.log("Launching Puppeteer");
  await this.openTodoPage();
  await console.log("Logging In");
  await login.loginAppEjaz(this.page);
});

Before({tags: "@haiderejaz"},async function () {
  await this.attach("Environment: "+env.urls.url, 'text/plain');
  await console.log("Launching Puppeteer");
  await this.openTodoPage();
  await console.log("Logging In");
  await login.loginAppEjaz(this.page);
});

Before({tags: "@safi"},async function () {
  await this.attach("Environment: "+env.urls.url, 'text/plain');
  await console.log("Launching Puppeteer");
  await this.openTodoPage();
  await console.log("Logging In");
  await login.loginAppAshar(this.page);
});

Before({tags: "@tayllew"},async function () {
  await this.attach("Environment: "+env.urls.url, 'text/plain');
  await console.log("Launching Puppeteer");
  await this.openTodoPage();
  await console.log("Logging In");
  await login.loginApptayllew(this.page);
});

Before({tags: "@rolesPermissionsLogin"},async function () {
  await this.attach("Environment: "+env.urls.url, 'text/plain');
  await console.log("Launching Puppeteer");
  await this.openTodoPage();
  await console.log("Logging In");
  await login.loginRole(this.page);
});




async function ResetSystemPermissionsInWebVAdmin(page) {
  try {
    const PAGE = url.urls.url;
    await this.page.goto(PAGE, {waitUntil: 'load', timeout: 0});
    await roleSettingsPage.verifyAndChangeExistingRole(page, "WebV Admin");
    await navigationPage.clickOnNavigationIcon(page, "Settings");
    await settingsPage.clickOnIcon(page, "Roles");
    await navigationPage.verifyPage(page, "Roles Settings");
    await roleSettingsPage.clickTable(page, "WebV Admin");
    await announcementPage.waitForLoadingWithTitle(page, "Role Details");
    await announcementPage.verifyPopUpLabel(page, "Role Details");
    await announcementPage.clickOnActionIcon(page);
    await announcementPage.clickOnActionItem(page, "Configure Permissions");
    await clinicalNotingPage.makeRolePermissionsActiveInActive(page, "Systems", "active");
    await announcementPage.clickonCheckIcon(page);
    await announcementPage.verifyForm(page, "Success")
    await announcementPage.clickonCheckIcon(page);
  }catch (e) {
    await new ResetSystemPermissionsInWebVAdmin(page);
  }
}

Before({tags: "@AYERSHUJA"},async function () {
  await this.attach("Environment: "+env.urls.url, 'text/plain');
  await console.log("Launching Puppeteer");
  await this.openTodoPage();
  await console.log("Logging In");
  await login.loginAppHaider(this.page);
});


After(async function (scenario) {
  // this.pages = await this.browser.pages();
  // this.page = this.pages[0];
  if(this.page.isClosed()){
    console.log("Page is Closed")
    return;
  }
  console.log("Page is not Closed")
  if (scenario.result.status.toLowerCase() === "failed") {
    try {
      await console.log("Taking Screenshot");
      const screenShot = await this.page.screenshot({fullPage: true});
      const image18 = Buffer.from(screenShot, "base64");
      await this.attach(image18, "image/png");
      await console.log("Screenshot Attached to Report");
    } catch (e) {
      await console.log("Error while taking screenshot");
        console.log(e.message);
    }
  }
  // await console.log("Logging Out");
  // await login.logOutApp(this.page);
  await console.log("Closing Puppeteer");
  await this.closeTodoPage();
  await console.log("Puppeteer Close");
});

After({tags: "@resetProfile"},async function (scenario) {
  if (scenario.result.status.toLowerCase() === "failed") {
    try {
      await console.log("Taking Screenshot");
      const screenShot = await this.page.screenshot({fullPage: true});
      const image18 = Buffer.from(screenShot, "base64");
      await this.attach(image18, "image/png");
      await console.log("Screenshot Attached to Report");
    } catch (e) {
      await console.log("Error while taking screenshot");
      console.log(e.message);
    }
  }
    const PAGE = url.urls.url;
    await this.page.goto(PAGE, {waitUntil: 'load', timeout: 0});
    await roleSettingsPage.verifyAndChangeExistingRole(this.page, "WebV Admin");
    await roleSettingsPage.verifyAndChangeExistingSite(this.page, "Diana Princess of Wales Hospital");
});


After({tags: "@email"},async function (scenario) {
  if (scenario.result.status.toLowerCase() === "failed") {
    try {
      await console.log("Taking Screenshot");
      const screenShot = await this.page.screenshot({fullPage: true});
      const image18 = Buffer.from(screenShot, "base64");
      await this.attach(image18, "image/png");
      await console.log("Screenshot Attached to Report");
    } catch (e) {
      await console.log("Error while taking screenshot");
      console.log(e.message);
    }
  }
  const PAGE = url.urls.url;
  await this.page.goto(PAGE, {waitUntil: 'load', timeout: 0});
  await navigationPage.clickOnNavigationIcon(this.page,"Settings");
  await settingsPage.clickOnIcon(this.page,"Interface");
  await roleSettingsPage.clickTable(this.page,"WebV Email Processor");
  await documentSettingsPage.stopInterface(this.page);
});


