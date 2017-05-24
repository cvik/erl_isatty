ERTS_INCLUDE_DIR ?= $(shell bin/get_env)

all: priv/erl_isatty.so
	@rebar3 compile

priv/erl_isatty.so: c_src/erl_isatty.c
	@cc -O3 -Wall -fpic -shared -o priv/erl_isatty.so -I $(ERTS_INCLUDE_DIR) c_src/erl_isatty.c

clean:
	@rm priv/erl_isatty.so 2> /dev/null
	@rm -rf _build 2> /dev/null
