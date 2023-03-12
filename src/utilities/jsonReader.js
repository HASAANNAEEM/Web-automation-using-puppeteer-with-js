class jsonReader{

    //this function is used to replace sub-string with another sub-string
    replaceAll(string, search, replace) {
        return string.split(search).join(replace);
    }

    //th[contains(text(),'xpath1')]//a[contains(text(),'xpath2')] -- ['Username','Raider'] --> th[contains(text(),'Username')]//a[contains(text(),'Raider')]
    //this function rewrites xpath with the above example, to be used for handling dynamic json xpath or selector expressions
    getXpath(originalXpathString,elementsArray){
        console.log("Original Xpath: "+originalXpathString);
        for(let i = 1; i <= elementsArray.length;i++){
            let xpath = "xpath"+i;
            originalXpathString = this.replaceAll(originalXpathString,xpath,elementsArray[i-1])
            console.log(originalXpathString)
        }
        console.log("New Xpath: "+originalXpathString);
        return originalXpathString;
    }
}

export default new jsonReader();