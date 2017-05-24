#include <unistd.h>
#include "erl_nif.h"


static ERL_NIF_TERM erl_isatty(ErlNifEnv* env, int argc, const ERL_NIF_TERM argv[]) {
    int fd;
    if (!enif_get_int(env, argv[0], &fd)) {
        return enif_make_badarg(env);
    }
    if(isatty(fd)) {
        return enif_make_atom(env, "true");
    }
    return enif_make_atom(env, "false");
}

static ErlNifFunc nif_funcs[] = {
    {"isatty", 1, erl_isatty}
};

ERL_NIF_INIT(erl_isatty, nif_funcs, NULL, NULL, NULL, NULL)
