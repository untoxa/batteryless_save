# Batteryless save example
Saving and loading of SRAM into and from FLASH ROM

GBDK-2020 v4 is required.

Location of flash sector is determined by START_SAVE variable in Makefile, must be a multiple of 4, and there should start 4 empty banks.

Known issues:
  - No detection of chip type, works for the same chip that LucentW's patch was for. Edit commands in flasher_s.s, if you want it to work with another chip type.
  - All 4 banks are saved at once, but it is possible to load them individually.
