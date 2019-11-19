#include "efi.h"

int main() {
  efi_system_table->con_out->output_string(
      efi_system_table->con_out, L"Hello UCS-2 String world!");
  return 0;
}
