const fs = require("fs");
const codes = {};
for (const file of fs.readdirSync("../aument/examples")) {
    codes[file] = fs.readFileSync("../aument/examples/" + file).toString();
}
fs.writeFileSync("js/codes.js", "const codes=" + JSON.stringify(codes) + ";");