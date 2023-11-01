emcc -Os -s STANDALONE_WASM -s EXPORTED_FUNCTIONS="['_init']" -Wl,--no-entry -sERROR_ON_UNDEFINED_SYMBOLS=0 "guest.cpp" -o "guest.wasm"
wasm2wat guest.wasm > guest.wat