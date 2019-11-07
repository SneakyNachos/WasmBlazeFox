set disassembly-flavor intel
source /home/sneaky/Documents/gecko-dev/js/src/gdb/mozilla
dir /home/sneaky/Documents/gecko-dev/js/src/wasm
b* js::math_atan2
commands 1
end

b js::wasm::Instance::callExport
commands 2
end

c
