let { DirectPinKey, .. } = import "fak/keyboard.ncl" in
let { CH552E, .. } = import "fak/mcus.ncl" in
let kc = tap.reg.kc in
let mod = tap.reg.mod in

{
  mcu = CH552E,
  # Các chân phổ biến nhất trên mạch 3x3 CH552E
  # Nếu nạp xong bị ngược phím, bạn chỉ cần đổi vị trí các số trong ngoặc này
  keys = [
    DirectPinKey 11, DirectPinKey 14, DirectPinKey 15, # KEY1, KEY2, KEY3
    DirectPinKey 16, DirectPinKey 17, DirectPinKey 34, # KEY4, KEY5, KEY6
    DirectPinKey 33, DirectPinKey 32, DirectPinKey 31, # KEY7, KEY8, KEY9
  ],
  
  layers = [
    [
      # Hàng 1 (KEY 1-3): Lướt Web chuyên sâu
      kc.T & mod.lctl,            # KEY1: Mở Tab mới (Ctrl+T)
      kc.W & mod.lctl,            # KEY2: Đóng Tab (Ctrl+W)
      kc.T & mod.lctl & mod.lsft, # KEY3: Mở lại Tab vừa đóng (Ctrl+Shift+T)

      # Hàng 2 (KEY 4-6): Giải trí/Multimedia
      kc.MEDIA_PREV_TRACK,        # KEY4: Bài trước
      kc.MEDIA_PLAY_PAUSE,        # KEY5: Tạm dừng/Phát
      kc.MEDIA_NEXT_TRACK,        # KEY6: Bài kế

      # Hàng 3 (KEY 7-9): Âm thanh
      kc.AUDIO_VOL_DOWN,          # KEY7: Giảm âm lượng
      kc.AUDIO_VOL_UP,            # KEY8: Tăng âm lượng
      kc.AUDIO_MUTE               # KEY9: Tắt tiếng nhanh
    ]
  ]
}
