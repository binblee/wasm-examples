// The entry file of your WebAssembly module.

export function add(a: i32, b: i32): i32 {
  return a + b;
}

// new function
export function sub(a: i32, b: i32) : i32 {
  return a - b;
}

// assemblyscript to call javascript function
declare function log(message: string): void;

export function as_call_js_test(): void {
    log("AssemblyScript call JavaScript function works.");
}