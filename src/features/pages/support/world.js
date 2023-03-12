import {setWorldConstructor, World} from "@cucumber/cucumber";
import puppeteer from "puppeteer-core";
import {getEdgePath} from "edge-paths";
import * as path from "path";
import url from "../../../data/url.json";
const downloadPath = path.resolve(__dirname+'../../../../data/download');

const PAGE = url.urls.url;

class TodoWorld extends World {

    page = null;

    constructor(options) {
        super(options);
    }

    async openTodoPage() {
        const EDGE_PATH = getEdgePath();
        this.browser = await puppeteer.launch({
            headless: false,
            ignoreHTTPSErrors: true,
            executablePath:EDGE_PATH,
            // slowMo: 250,
            // defaultViewport: null,//width: 1366, height: 768
            // width: 1920, height: 1080
             defaultViewport:{ width: 1920, height: 1080},
           // defaultViewport: null,
            args: [
                '--start-maximized',
                "--enable-features=NetworkService",
                "--no-sandbox",
                "--headless"
            ]
        });

        this.pages = await this.browser.pages();
        this.page = this.pages[0];
        await this.page._client.send('Page.setDownloadBehavior', {
            behavior: 'allow',
            downloadPath: downloadPath
        });
       await this.urlLoad();
    }

    async urlLoad(){
        try {
            let response = await this.page.goto(PAGE, {waitUntil: 'load', timeout: 0});
            // console.log("Response: "+JSON.stringify(response)+ "=>>>>>>>"+response.toString())
        } catch (e) {
            // console.log("no response trying to reload..." + e.message)
           await this.urlLoad();
        }
    }

    async closeTodoPage() {
        let pages = await this.browser.pages();
        await Promise.all(pages.map(page =>page.close()));
       await this.browser.close();
    }
}

setWorldConstructor(TodoWorld);
