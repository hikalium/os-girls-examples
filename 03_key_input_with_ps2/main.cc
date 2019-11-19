#include "efi.h"

char NibbleToHexChar(uint8_t nibble) {
  if (nibble < 10)
    return nibble + '0';
  return nibble - 10 + 'A';
}

void PrintByte(uint8_t data) {
  EFIPutChar(NibbleToHexChar(data >> 4));
  EFIPutChar(NibbleToHexChar(data & 0xF));
  EFIPutChar('\r');
  EFIPutChar('\n');
}

extern "C" uint8_t ReadIOPort8(uint16_t);

int main() {
  while (true) {
    uint8_t status = ReadIOPort8(0x64);
    if(status & 1) {
      PrintByte(ReadIOPort8(0x60));
    }
  }
  return 0;
}
