PROJECT = esdl
PROJECT_VERSION = 1.3.1

C_SRC_OUTPUT = $(CURDIR)/priv/sdl_driver

SDL_CFLAGS = $(shell sdl-config --cflags)
SDL_LDFLAGS = $(shell sdl-config --libs)
SDL_LDLIBS = -lSDL_ttf -lSDL_image

include erlang.mk

CFLAGS += $(SDL_CFLAGS)
LDFLAGS += $(SDL_LDFLAGS)
LDLIBS += $(SDL_LDLIBS)
