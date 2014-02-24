CFLAGS=-g -Werror -Wall -fPIC

LUAPC ?= lua5.2
LUA_CFLAGS ?= $(shell pkg-config --cflags $(LUAPC))

all: b64.so

b64.so: lua-b64.c
	$(CC) $(CFLAGS) $(LUA_CFLAGS) -o $@ -shared $<

