import urls from "../../data/url.json";
import fs from "fs-extra";

async function setEnvironment () {
    let args =  process.argv.length; //total length of command written on command prompt
    let command = process.argv[args-1]; //Last command
    if(command.includes("qa")){
        await console.log("Setting Up Qa Environment with URL: "+urls.urls.qaURL);
        let jsonFile = urls;
        jsonFile.urls.url=urls.urls.qaURL;
        await fs.writeJson("./src/data/url.json", jsonFile);
        await console.log("Qa Environment Setup Completed")
    }

    else if(command.includes("dev")){
        await console.log("Setting Up dev Environment with URL: "+urls.urls.dev);
        let jsonFile = urls;
        jsonFile.urls.url=urls.urls.dev;
        await fs.writeJson("./src/data/url.json", jsonFile);
        await console.log("dev Environment Setup Completed")
    }

    else if(command.includes("prep")){
        await console.log("Setting Up prep Environment with URL: "+urls.urls.prep);
        let jsonFile = urls;
        jsonFile.urls.url=urls.urls.prep;
        await fs.writeJson("./src/data/url.json", jsonFile);
        await console.log("prep Environment Setup Completed")
    }

    else if(command.includes("demo")){
        await console.log("Setting Up prep Environment with URL: "+urls.urls.demo);
        let jsonFile = urls;
        jsonFile.urls.url=urls.urls.demo;
        await fs.writeJson("./src/data/url.json", jsonFile);
        await console.log("prep Environment Setup Completed")
    }

    else{
        await console.log("Setting Up Qa Environment with URL: "+urls.urls.qaURL)
        let jsonFile = urls;
        jsonFile.urls.url=urls.urls.qaURL;
        await fs.writeJson("./src/data/url.json", jsonFile);
        await console.log("Qa Environment Setup Completed")
    }
}
await setEnvironment();