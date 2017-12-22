const commandLineArgs = require('command-line-args');

const optionDefinitions = [
    { name: 'verbose', alias: 'v', type: Boolean },
    { name: 'run', type: String, multiple: false, defaultOption: true },
    { name: 'timeout', alias: 't', type: Number },
];

const options = commandLineArgs(optionDefinitions);

console.log(options);

