#include <string>

extern "C" void _sys_puts(char *);

struct call_t {
    int a;
    int b;
    char *c;
};

struct ret_t {
    int status;
    int len;
    char *body;
};

extern "C" 
ret_t init(call_t call) {
    std::string msg = "hello こんにちは";
    _sys_puts((char *) "Entered init");

    ret_t ret;
    ret.status = call.a + call.b;
    ret.len = msg.length();
    ret.body = (char *) msg.c_str();

    return ret;
}
