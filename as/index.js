const fs = require("fs");
const loader = require("@assemblyscript/loader");
const imports = {
    index: {
        log: (message) => {
            const content = wasmModule.exports.__getString(message);
            console.log(content);
        }
    }
};
const wasmModule = loader.instantiateSync(fs.readFileSync(__dirname + "/build/optimized.wasm"), imports);

wasmModule.exports.test();

module.exports = wasmModule.exports;
