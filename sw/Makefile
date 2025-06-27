# Copyright (c) 2024 ETH Zurich and University of Bologna.
# Licensed under the Apache License, Version 2.0, see LICENSE for details.
# SPDX-License-Identifier: Apache-2.0
#
# Authors:
# - Paul Scheffler <paulsc@iis.ee.ethz.ch>
# - Philippe Sauter <phsauter@iis.ee.ethz.ch>

SRCDIR  ?= lib/src
INCDIR  ?= lib/inc

# Toolchain

RISCV_XLEN    ?= 32
RISCV_MARCH   ?= rv$(RISCV_XLEN)i_zicsr
RISCV_MABI    ?= ilp32

# Percorso alla directory bin del toolchain RISC-V
RISCV_TOOLCHAIN_PATH ?= /usr/pack/riscv-1.0-kgf/riscv64-gcc-13.2.0/bin

# Prefisso per i nomi degli eseguibili del toolchain (per target elf/bare-metal)
RISCV_TARGET_PREFIX  ?= riscv64-unknown-elf-

# Comandi del toolchain
RISCV_CC      ?= $(RISCV_TOOLCHAIN_PATH)/$(RISCV_TARGET_PREFIX)gcc
RISCV_CXX     ?= $(RISCV_TOOLCHAIN_PATH)/$(RISCV_TARGET_PREFIX)g++
RISCV_OBJDUMP ?= $(RISCV_TOOLCHAIN_PATH)/$(RISCV_TARGET_PREFIX)objdump
RISCV_OBJCOPY ?= $(RISCV_TOOLCHAIN_PATH)/$(RISCV_TARGET_PREFIX)objcopy
RISCV_AS      ?= $(RISCV_TOOLCHAIN_PATH)/$(RISCV_TARGET_PREFIX)as
RISCV_AR      ?= $(RISCV_TOOLCHAIN_PATH)/$(RISCV_TARGET_PREFIX)ar
RISCV_LD      ?= $(RISCV_TOOLCHAIN_PATH)/$(RISCV_TARGET_PREFIX)ld
RISCV_STRIP   ?= $(RISCV_TOOLCHAIN_PATH)/$(RISCV_TARGET_PREFIX)strip

RISCV_FLAGS    ?= -march=$(RISCV_MARCH) -mabi=$(RISCV_MABI) -mcmodel=medany -static -std=gnu99 -Os -nostdlib -fno-builtin -ffreestanding
RISCV_CCFLAGS  ?= $(RISCV_FLAGS) -Iinclude -I$(INCDIR) -I$(CURDIR)
RISCV_LDFLAGS  ?= -static -nostartfiles -lm -lgcc $(RISCV_FLAGS) # Potrebbe essere necessario -T$(LINK) qui o nella regola di linkaggio

# all

all: compile

# Building defaults

BINDIR 	?= bin
CRT0 	?= crt0.S
LINK 	?= link.ld

LIB_SOURCES := $(wildcard $(SRCDIR)/*.[cS])
LIB_OBJS    := $(LIB_SOURCES:$(SRCDIR)/%=$(SRCDIR)/%.o)

# Build all assembly and C files in the top level as seperate binaries
TOP_SOURCES ?= $(filter-out $(CRT0), $(wildcard *.[cS]))
TOP_BASENAMES := $(basename $(TOP_SOURCES))
TOP_OBJS    := $(TOP_BASENAMES:=.o)
ALL_TARGETS := $(TOP_BASENAMES:%=$(BINDIR)/%.elf) $(TOP_BASENAMES:%=$(BINDIR)/%.dump) $(TOP_BASENAMES:%=$(BINDIR)/%.hex)


$(BINDIR):
	mkdir -p $(BINDIR)

%.S.o: %.S
	$(RISCV_CC) $(RISCV_CCFLAGS) -c $< -o $@

%.c.o: %.c
	$(RISCV_CC) $(RISCV_CCFLAGS) -c $< -o $@

# Regola di linkaggio per file .S (Assembly) come sorgente principale
$(BINDIR)/%.elf: %.S.o $(CRT0).o $(LIB_OBJS) | $(BINDIR)
	$(RISCV_CC) -o $@ $^ $(RISCV_LDFLAGS) -T$(LINK)

# Regola di linkaggio per file .c (C) come sorgente principale
$(BINDIR)/%.elf: %.c.o $(CRT0).o $(LIB_OBJS) | $(BINDIR)
	$(RISCV_CC) -o $@ $^ $(RISCV_LDFLAGS) -T$(LINK)

$(BINDIR)/%.dump: $(BINDIR)/%.elf
	$(RISCV_OBJDUMP) -D -s $< >$@

$(BINDIR)/%.hex: $(BINDIR)/%.elf
	$(RISCV_OBJCOPY) -O verilog $< $@

# Phonies
.PHONY: all clean compile

clean:
	rm -rf $(BINDIR)
	rm -f *.o $(SRCDIR)/*.o # Aggiunto per pulire anche gli oggetti delle librerie

compile: $(BINDIR) $(ALL_TARGETS)
