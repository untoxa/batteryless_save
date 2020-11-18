#include <gb/gb.h>
#include <string.h>

#include "flasher.h"

extern const UINT8 save_rom_bank;

void restore_sram_bank(UINT8 bank) {
    UINT8 _save = _current_bank;
    SWITCH_RAM_MBC1(bank);
    SWITCH_ROM_MBC1(save_rom_bank + (bank >> 1));
    memcpy((UINT8 *)0xA000, (UINT8 *)(0x4000 + ((bank & 1) << 13)), 0x2000);
    SWITCH_ROM_MBC1(_save);
}

void restore_sram() {
    for (UINT8 i = 0; i < 4; i++)
        restore_sram_bank(i);
}

extern UINT8 erase_flash();                 // erases FLASH sector: 64K or 4 banks
extern UINT8 save_sram_banks(UINT8 count);  // copies up to count SRAM banks to FLASH

UINT8 save_sram() {
    if (!erase_flash()) return 0;
    return save_sram_banks(4);
}