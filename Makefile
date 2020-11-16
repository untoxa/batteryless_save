CC = ../../gbdk/bin/lcc

CART_SIZE = 16
START_SAVE = 12

ROM_BUILD_DIR = build
OBJDIR = obj
CFLAGS = -Iinclude

LFLAGS_NBANKS += -Wl-yo$(CART_SIZE) -Wl-ya4 -Wl-j
LFLAGS_STARTSAVE = -Wl-g.start_save=$(START_SAVE)

LFLAGS = -Wl-yt0x1A $(LFLAGS_NBANKS) $(LFLAGS_STARTSAVE)

TARGET = $(ROM_BUILD_DIR)/rom.gb

ASRC = $(foreach dir,src,$(notdir $(wildcard $(dir)/*.s))) 
CSRC = $(foreach dir,src,$(notdir $(wildcard $(dir)/*.c))) 

OBJS = $(CSRC:%.c=$(OBJDIR)/%.o) $(ASRC:%.s=$(OBJDIR)/%.o)

all:	$(TARGET) symbols

.PHONY: clean release debug color profile

release:
	$(eval CFLAGS += -Wf'--max-allocs-per-node 50000')
	@echo "RELEASE mode ON"
	
debug:
	$(eval CFLAGS += -Wf--debug -Wl-m -Wl-w -Wl-y)
	$(eval CFLAGS += -Wf--nolospre -Wf--nogcse)
	$(eval LFLAGS += -Wf--debug -Wl-m -Wl-w -Wl-y)
	@echo "DEBUG mode ON"

color:
	$(eval CFLAGS += -DCGB)
	$(eval LFLAGS += -Wm-yC)
	@echo "COLOR mode ON"

profile:
	$(eval CFLAGS += -Wf--profile)
	@echo "PROFILE mode ON"

.SECONDARY: $(OBJS) 

$(OBJDIR)/%.o:	src/%.c
	$(CC) $(CFLAGS) -c -o $@ $<

$(OBJDIR)/%.o:	src/%.s
	$(CC) $(CFLAGS) -c -o $@ $<

$(ROM_BUILD_DIR)/%.gb:	$(OBJS)
	mkdir -p $(ROM_BUILD_DIR)
	$(CC) $(LFLAGS) -o $@ $^

clean:
	@echo "CLEANUP..."
	rm -rf obj/*
	rm -rf $(ROM_BUILD_DIR)

rom: $(ROM_BUILD_DIR)/game.gb

symbols:
	python ./utils/noi2sym.py $(patsubst %.gb,%.noi,$(TARGET)) >$(patsubst %.gb,%.sym,$(TARGET))