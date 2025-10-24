# ---- Config ----
SRC_DIR := src
BIN_DIR := bin

# ---- Discovery ----
SOURCES := $(shell find $(SRC_DIR) -type f -name '*.jank')
# Map src/foo/bar.jank -> bin/foo/bar (no extension)
OUTPUTS := $(patsubst $(SRC_DIR)/%.jank,$(BIN_DIR)/%,$(SOURCES))

# ---- Default ----
.PHONY: all clean list
all: $(OUTPUTS)

list:
	@printf "Sources:\n"; printf "  %s\n" $(SOURCES)
	@printf "Executables:\n"; printf "  %s\n" $(OUTPUTS)

# ---- Build rule ----
# Compile each .jank source to an executable with no extension.
$(BIN_DIR)/%: $(SRC_DIR)/%.jank
	@mkdir -p $(dir $@)
	jjc $< -o $@
	@chmod +x $@

# ---- Cleanup ----
clean:
	rm -rf $(BIN_DIR)
