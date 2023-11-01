emcc -Os -s STANDALONE_WASM -s EXPORTED_FUNCTIONS="['_init']" -Wl,--no-entry "guest.cpp" -o "guest.wasm"
wasm2wat guest.wasm > guest.wat