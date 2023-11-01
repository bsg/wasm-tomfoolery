#include <string>

extern "C" void _puts(char *);

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
ret_t init(call_t ctx) {
    std::string msg = "hello こんにちは";

    ret_t res;
    res.status = ctx.a + ctx.b;
    res.len = msg.length();
    res.body = (char *) msg.c_str();

    return res;
}
