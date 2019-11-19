#include "efi.h"

int main() {
  InputKey input_key;
  while (true) {
    uint64_t status = efi_system_table->con_in->read_key_stroke(
        efi_system_table->con_in, &input_key);
    if (status == 0) {
      EFIPutChar(input_key.unicode_char);
    }
  }
  return 0;
}
