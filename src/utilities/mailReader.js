import imaps from 'imap-simple';
import read_file from "./read_file";
import * as path from "path";

const setupPath = path.resolve(__dirname+'/../data/download/');
class mailReader {
  config = {
    imap: {
      user: 'automation.kualitee@outlook.com',
      password: 'Kualitatem123',
      host: 'imap.outlook.com',
      port: 993,
      tls: true,
      authTimeout: 10000,
      tlsOptions: { rejectUnauthorized: false }
    }
  };

  async getEmails(page) {
      await console.log("Establishing Connection");
      let connection = await imaps.connect(this.config);
    try {
      await console.log("Connection Established");
      await console.log("Getting Recent Emails");
      let attachments = await this.getDownloads(connection);
      await console.log("Files Received: " + attachments.length);
      let latestAttachment = attachments.length-1;
      await console.log("Recent Emails Received");
      await console.log("Downloading File");
      let fileName = attachments[latestAttachment].filename;
      let fileData = attachments[latestAttachment].data;
      await read_file.writeFile(fileName, fileData);
      await console.log("File Downloaded");
      await connection.end();
      await console.log(setupPath + "/"+fileName);
      await page.goto(setupPath +"/"+ fileName);
    }catch (e) {
      await connection.end();
      throw new Error( `error , ${e.stack}`)
    }
  }

  async getDownloads(connection){
      return await connection.openBox('INBOX').then(function () {
        // Fetch emails from the last 5M
        var currentDateObj = new Date();
        var numberOfMlSeconds = currentDateObj.getTime();
        var addMlSeconds = 5 * 60*1000;
        var newDateObj = new Date(numberOfMlSeconds - addMlSeconds);
        newDateObj = newDateObj.toISOString();
        // Fetch emails from the last 24h
        // const delay = 5 * 60*1000;
        // let yesterday = new Date();
        // yesterday.setTime(Date.now() - delay);
        // let yesterday1 = yesterday.toISOString();
        const searchCriteria = ['UNSEEN', ['SINCE', newDateObj]];
        const fetchOptions = {bodies: ['HEADER.FIELDS (FROM TO SUBJECT DATE)'], struct: true};

        // retrieve only the headers of the messages
        return connection.search(searchCriteria, fetchOptions);
      }).then(function (messages) {
        let attachments = [];
        messages.forEach(function (message) {
          const parts = imaps.getParts(message.attributes.struct);
          attachments = attachments.concat(parts.filter(function (part) {
            return part.disposition && part.disposition.type.toUpperCase() === 'ATTACHMENT';
          }).map(async function (part) {
            // retrieve the attachments only of the messages with attachments
            return await connection.getPartData(message, part)
                .then(async function (partData) {
                  return {
                    filename: part.disposition.params.filename,
                    data: partData
                  };
                });
          }));
        });
        return Promise.all(attachments);
      });
  }

}
export default new mailReader();
