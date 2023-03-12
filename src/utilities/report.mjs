import reporter from "cucumber-html-reporter";

const options ={
	theme: 'bootstrap',
	jsonDir: './src/report/json/',
	output: './src/report/html/cucumber-html-result.html',
	reportSuiteAsScenarios:true,
	launchReport:true,
	storeScreenshots:true,
	screenshotsDirectory: './src/report/screenshots/',
	scenarioTimestamp:true,

};

// import report from 'multiple-cucumber-html-reporter';
//
// report.generate({
// 	jsonDir: './src/report/json/',
// 	reportPath: './src/report/html/cucumber-html-result.html',
// 	metadata:{
// 		browser: {
// 			name: 'MS Edge',
// 			version: '100.0.1185.39 (Official build)'
// 		},
// 		device: 'Local test machine',
// 		platform: {
// 			name: 'Windows 10 Pro',
// 			version: '10.0.19044',
// 			build:"19044"
// 		}
// 	},
// 	customData: {
// 		title: 'Testing Info',
// 		data: [
// 			{label: 'Project', value: 'NLG-NHS'},
// 			{label: 'Release', value: 'Test'},
// 			{label: 'Cycle', value: 'Sprint 4'}
// 		]
// 	},
// 	openReportInBrowser:true,
// 	reportName: "NLG-NHS-Report",
// 	displayDuration: true,
// 	durationInMS:true,
// 	useCDN:true,
// });
//this function is used to generate cucumber-html-result.html file using the cucumber-report.json file according to the options
reporter.generate(options);
