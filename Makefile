
ARGS=--game=p2ce
ifeq ($(FINAL),1)
ARGS+=--config=final
else ifeq ($(FAST),1)
ARGS+=--config=fast
else
ARGS+=--config=normal
endif

all: maps/p2ce_dm_lockdown.bsp

maps/%.bsp: maps/%.vmf
	../../../sdk_tools/dev/compile-map.py $(ARGS) $<
