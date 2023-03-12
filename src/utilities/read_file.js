import fs from 'fs'

class ReadFile{

    //this function is used to read a json file and get a specific value according to the key
    async readFileWithKey(filename, key){
        let fileData= fs.readFileSync('src/data/'+filename+'.json');
        let parsedData= JSON.parse(fileData);
        return parsedData[key];
    }
    async readFileAndSetContent(page,filename){
        let contentHtml = fs.readFileSync(filename, 'utf8');
        await page.setContent(contentHtml);
    }

    async writeFile(filename,data){
        fs.writeFileSync('src/data/download/'+filename,data);
    }
}



export default new ReadFile()
