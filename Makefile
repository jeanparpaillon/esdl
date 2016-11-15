PROJECT = esdl
PROJECT_VERSION = 1.3.1

C_SRC_OUTPUT = $(CURDIR)/priv/sdl_driver

SDL_CFLAGS = $(shell pkg-config sdl --cflags) -D_USE_SDL_TTF -D_USE_SDL_IMAGE
SDL_LDFLAGS = $(shell pkg-config sdl --libs)
SDL_LDLIBS = -lSDL_ttf -lSDL_image

include erlang.mk

CFLAGS += $(SDL_CFLAGS)
LDFLAGS += $(SDL_LDFLAGS)
LDLIBS += $(SDL_LDLIBS)
