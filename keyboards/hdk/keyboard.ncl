let { DirectPinKey, .. } = import "../../fak/keyboard.ncl" in
let { CH552, .. } = import "../../fak/mcus.ncl" in

{
  # Dòng này giữ nguyên CH552 vì trong thư viện mcus.ncl thường dùng chung core
  mcu = CH552,
  
  # Cấu hình USB để máy tính nhận diện đúng tên của Hoàng
  usb_dev = {
    vid = 0x1234,
    pid = 0x5678,
    name = "Hoang Dam 3x3 Macropad",
    manufacturer = "HoangDam-Keeb",
  },

  # Ánh xạ chân thực tế cho chip 16 chân (SOP-16)
  # Phím 1->3: P3.2, P3.3, P3.4
  # Phím 4->6: P1.1, P1.4, P1.5
  # Phím 7->9: P1.6, P1.7, P3.1
  keys = [
    DirectPinKey 32, DirectPinKey 33, DirectPinKey 34,
    DirectPinKey 11, DirectPinKey 14, DirectPinKey 15,
    DirectPinKey 16, DirectPinKey 17, DirectPinKey 31,
  ],
}
