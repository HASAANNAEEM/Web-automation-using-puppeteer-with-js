import loginXpath from '../../features/locators/loginPage.json';
import loginData from '../../data/loginData.json';
import input_utility from '../input';
import click_utility from '../clicking';
import {expect} from "chai";

class LoginUtility {

    //this function is used to enter email in the email input field using selector expression
    async EnterEmail(page,email) {
      try {
          await input_utility.enterTextXpath(page, loginXpath.xpath.username_input, email);
          let emailValue = await this.getEmailValue(page);
          let counter = 0;
          while (counter < 3 && emailValue === '') {
              await input_utility.enterTextXpath(page, loginXpath.xpath.username_input, email);
              emailValue = await this.getEmailValue(page);
              counter++;
          }
          expect(emailValue.trim()).to.be.equal(email);
          // await console.log("Email Verified: "+email);
      }catch (e) {
          console.log("Reloading...");
          await page.reload();
          await this.EnterEmail(page, email);
      }
    }

    //this function is used to enter password in the password input field using selector expression
    async EnterPassword(page,password) {
        await input_utility.enterTextXpath(page, loginXpath.xpath.password_input, password);
        // await console.log("Using Password: "+password);
        let passwordValue = await this.getPasswordValue(page);
        let counter = 0;
        while(counter<3&&passwordValue===''){
            await input_utility.enterTextXpath(page, loginXpath.xpath.password_input, password);
            passwordValue = await this.getPasswordValue(page);
            counter++;
        }
        expect(passwordValue.trim()).to.be.equal(password);
        // await console.log("Password Verified: "+password);
    }

    //this function is used to get the email value
    async getEmailValue(page) {
        return await input_utility.getElementTextUsingXpath(page,loginXpath.xpath.username_input,"value");
    }

    //this function is used to get the password value
    async getPasswordValue(page) {
        return await input_utility.getElementTextUsingXpath(page,loginXpath.xpath.password_input,"value");
    }

    //this function is used to click on login Button using xpath expression
    async clickLoginButton(page) {
        await click_utility.clickElementByXpath(page, loginXpath.xpath.sing_in_input);
    }

    //this function is used to perform all the login functionality but in a single function
    async loginAppHaider(page) {
        await this.EnterEmail(page, loginData.credentials.username);
        await this.EnterPassword(page, loginData.credentials.password);
        await this.clickLoginButton(page);
    }

    async loginAppHaiderJS(page) {
        await click_utility.clickElementByXpath(page,loginXpath.xpath.username_input);
        let userName = await page.waitForXPath(loginXpath.xpath.username_input,{visible:true});
        await page.evaluate(el => el.value = loginData.credentials.username,userName);
        await page.keyboard.press('Enter');
        await click_utility.clickElementByXpath(page,loginXpath.xpath.password_input);
        let password = await page.waitForXPath(loginXpath.xpath.password_input,{visible:true});
        await page.evaluate(el => el.value = loginData.credentials.password,password);
        await page.keyboard.press('Enter');
        await this.clickLoginButton(page);
    }

    //this function is used to perform all the login functionality but in a single function
    async loginAppAshar(page) {
        await this.EnterEmail(page, loginData.credentials1.username);
        await this.EnterPassword(page, loginData.credentials1.password);
        await this.clickLoginButton(page);
    }

    //this function is used to perform all the log out functionality but in a single function
    async logOutApp(page) {
        await click_utility.clickElementByXpath(page,loginXpath.xpath.sing_out_div);
        // let loginPageElement = await input_utility.getElementTextUsingXpath(page,loginxpath.xpath.welcome_title,"TextContent");
        // expect(loginPageElement).to.be.equal(logindata.login_title);
    }

    async loginAppEjaz(page) {
        await this.EnterEmail(page, loginData.credentials2.username);
        await this.EnterPassword(page, loginData.credentials2.password);
        await this.clickLoginButton(page);
    }

    async loginApptayllew(page) {
        await this.EnterEmail(page, loginData.credentials3.username);
        await this.EnterPassword(page, loginData.credentials3.password);
        await this.clickLoginButton(page);
    }

    async loginRole(page) {
        await this.EnterEmail(page, loginData.credentials4.username);
        await this.EnterPassword(page, loginData.credentials4.password);
        await this.clickLoginButton(page);
    }

}
export default new LoginUtility()
