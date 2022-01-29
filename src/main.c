#include <gbdk/platform.h>

#include <stdint.h>
#include <string.h>

#include "flasher.h"

extern const unsigned char font_data[];
extern void font_len();

const unsigned char textA[] = "LAST BUTTON: A ";
const unsigned char textB[] = "LAST BUTTON: B ";

const unsigned char error[] = "          !ERROR!          ";
const unsigned char success[] = "            !SUCCESS!            ";

void main() {
    ENABLE_RAM;
    SHOW_BKG;

    if (_cpu == CGB_TYPE) {
        cgb_compatibility();
        cpu_fast();
    }

    // load some font
    set_bkg_1bpp_data(0x20, (uint8_t)&font_len, font_data);

    // restore all 4 banks of SRAM from FLASH
    restore_sram();
    
    uint8_t bank = 0, redraw = 1;

    while (1) {
        uint8_t joy = joypad();
        if (joy & J_UP) {
            bank++, bank &= 3;
            redraw = 1;
            waitpadup();
        } else if (joy & J_DOWN) {
            bank--, bank &= 3;
            redraw = 1;
            waitpadup();
        } else if (joy & J_A) {
            memcpy((unsigned char *)0xA000, textA, sizeof(textA) - 1);
            redraw = 1;
            waitpadup();
        } else if (joy & J_B) {
            memcpy((unsigned char *)0xA000, textB, sizeof(textB) - 1);
            redraw = 1;
            waitpadup();
        } else if (joy & J_START) {
            waitpadup();
            // save SRAM to FLASH
            if (!save_sram()) set_bkg_tiles(5, 6, 9, 3, error); else set_bkg_tiles(4, 6, 11, 3, success);
            // restore SRAM bank
            SWITCH_RAM(bank); 
        }

        if (redraw) {
            SWITCH_RAM(bank);
            set_bkg_tiles(0, 0, 32, 32, (unsigned char *)0xA000);
            redraw = 0;
        }

        wait_vbl_done();
    } 

}