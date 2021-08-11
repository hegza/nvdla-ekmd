# Use the makefile in the firmware directory
FIRMWARE_DIR = kmd/firmware

.PHONY: $(FIRMWARE_DIR)

all: $(FIRMWARE_DIR)
clean: $(FIRMWARE_DIR)

$(FIRMWARE_DIR):
	$(MAKE) -C $@ $(MAKECMDGOALS)

