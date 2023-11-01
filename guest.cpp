extern "C" void _puts(char *);

typedef struct {
    int a;
    int b;
    char *c;
} ctx_t;

typedef struct {
    int status;
    int len;
    char *body;
} res_t;

extern "C" 
res_t init(ctx_t ctx) {
    res_t res;
    res.status = ctx.a + ctx.b;
    res.len = 5;
    res.body = (char *) "hello";
    return res;
}
