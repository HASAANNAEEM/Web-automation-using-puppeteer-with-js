class Logger {
    log;

    //this function is used to print values on to the console
    info(value) {
        // this.log.log('info', this.getValue(value));
            console.log('Info: ',value);
        
    }
}

export default new Logger();
// module.exports.Logger = new Logger;
