const fs = require('fs');
const path = require('path');

const outputFile = path.join(__dirname, './../test-reports/cucumber-js/gezag/step-summary.txt');
fs.writeFileSync(outputFile, '', 'utf8');

function processFile(inputPath, outputPath, caption) {
    const content = fs.readFileSync(inputPath, 'utf8');
    const lines = content.split('\n');
    const results = [];
    let footerLines = [];

    if (lines.length >= 4) {
        footerLines = lines.slice(-4);
    }

    let finalOutput = `#### ${caption}\n`;
    finalOutput += footerLines.join('\n') + '\n';

    lines.forEach((line) => {
        const match = line.match(/^\d+\) Scenario: .*# (.+:\d+)/);
        if (match) {
            results.push((results.length + 1) + ": " + match[1]);
        }
    });

    if (results.length > 0) {
        finalOutput += `<details>\n<summary>Bestandsnamen en regelnummers</summary>\n\n`;
        finalOutput += results.join('\n') + '\n';
        finalOutput += `\n</details>\n\n`;
    }

    fs.appendFileSync(outputPath, finalOutput, 'utf8');
}

const fileMap = new Map([
    ["./../test-reports/cucumber-js/step-definitions/test-result-zonder-dependency-integratie-summary.txt", "docs (zonder integratie)"],
    ["./../test-reports/cucumber-js/gezag/test-result-summary.txt", "functionele specificaties"]
]);

fileMap.forEach((caption, filePath) => {
    processFile(path.join(__dirname, filePath), outputFile, caption);
});