let { DirectPinKey, .. } = import "../../fak/keyboard.ncl" in
let { CH552, .. } = import "../../fak/mcus.ncl" in

{
  mcu = CH552,
  
  usb_dev = {
    vid = 0x1234,
    pid = 0x5678,
    name = "Hoang Dam 3x3 Macropad",
    manufacturer = "HoangDam-Keeb",
  },

  # Khai báo 9 chân cho chip 16 chân (CH552G)
  # Thứ tự: P32, P33, P34 (Hàng 1) | P11, P14, P15 (Hàng 2) | P16, P17, P31 (Hàng 3)
  keys = [
    DirectPinKey 32, DirectPinKey 33, DirectPinKey 34,
    DirectPinKey 11, DirectPinKey 14, DirectPinKey 15,
    DirectPinKey 16, DirectPinKey 17, DirectPinKey 31,
  ],
}
