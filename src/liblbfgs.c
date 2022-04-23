#include "erl_nif.h"

static ErlNifFunc funcs[] = {
};

static int load(ErlNifEnv* env, void** priv, ERL_NIF_TERM info) {
  return 0;
}

static int reload(ErlNifEnv* env, void** priv, ERL_NIF_TERM info) {
  return 0;
}

static int upgrade(ErlNifEnv* env, void** priv, void** old_priv, ERL_NIF_TERM info) {
  return load(env, priv, info);
}

static void unload(ErlNifEnv* env, void* priv) {
}

ERL_NIF_INIT(Elixir.ExLiblbfgs, funcs, &load, &reload, &upgrade, &unload)
