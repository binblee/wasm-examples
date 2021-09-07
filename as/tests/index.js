const assert = require("assert");
const myModule = require("..");
assert.strictEqual(myModule.add(1, 2), 3);
console.log(`add: ${myModule.add(1, 2)}`);
assert.strictEqual(myModule.sub(1, 2), -1);
console.log(`sub: ${myModule.sub(1, 2)}`);
