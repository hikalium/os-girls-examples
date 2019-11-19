struct InputKey {
  uint16_t scan_code;
  wchar_t unicode_char;
};

struct SimpleTextInputProtocol {
  void *reset;
  uint64_t (*read_key_stroke)(SimpleTextInputProtocol *,
                              InputKey *);
  void *wait_for_key;
};
