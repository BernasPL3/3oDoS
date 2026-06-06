#---------------------------------------------------------------------------------
# 3oDoS Engine
#---------------------------------------------------------------------------------

TARGET      := 3oDoS
BUILD       := build
SOURCES     := source
INCLUDES    := include
ROMFS       := romfs

#---------------------------------------------------------------------------------

ifeq ($(strip $(DEVKITPRO)),)
$(error "Please set DEVKITPRO in your environment.")
endif

include $(DEVKITPRO)/devkitARM/3ds_rules

#---------------------------------------------------------------------------------

CFLAGS      := -g -Wall -O2
CXXFLAGS    := $(CFLAGS) -fno-rtti -fno-exceptions

LIBS        := -lctru

#---------------------------------------------------------------------------------

export OUTPUT := $(CURDIR)/$(TARGET)

export VPATH := $(foreach dir,$(SOURCES),$(CURDIR)/$(dir))

export DEPSDIR := $(BUILD)

export INCLUDE := $(foreach dir,$(INCLUDES),-I$(CURDIR)/$(dir))

export CFILES   := $(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.c)))
export CPPFILES := $(foreach dir,$(SOURCES),$(notdir $(wildcard $(dir)/*.cpp)))

export OFILES := $(CPPFILES:.cpp=.o) $(CFILES:.c=.o)

#---------------------------------------------------------------------------------

.PHONY: all clean

all:
	@mkdir -p $(BUILD)
	@$(MAKE) -C $(BUILD) -f $(CURDIR)/Makefile

clean:
	rm -rf $(BUILD)
	rm -f *.3dsx *.elf *.cia

#---------------------------------------------------------------------------------

include $(DEVKITPRO)/devkitARM/3ds_rules
