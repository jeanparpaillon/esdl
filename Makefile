PROJECT = esdl
PROJECT_VERSION = 1.3.1

C_SRC_OUTPUT = $(CURDIR)/priv/sdl_driver

ifeq ($(NERVES_SDK_SYSROOT),)
SDL_CONFIG=$(which sdl-config)
else
SDL_CONFIG=$(NERVES_SDK_SYSROOT)/usr/bin/sdl-config
endif
SDL_CFLAGS = $(shell $(SDL_CONFIG) --cflags) -D_USE_SDL_TTF -D_USE_SDL_IMAGE
SDL_LDFLAGS = $(shell $(SDL_CONFIG) --libs)
SDL_LDLIBS = -lSDL_ttf -lSDL_image

include erlang.mk

CFLAGS += $(SDL_CFLAGS)
LDFLAGS += $(SDL_LDFLAGS)
LDLIBS += $(SDL_LDLIBS)
