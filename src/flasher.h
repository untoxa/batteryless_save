#ifndef __FLASHER_H_INCLUDE
#define __FLASHER_H_INCLUDE

#include <gb/gb.h>

void restore_sram_bank(UINT8 bank);
void restore_sram();

UINT8 save_sram();

#endif