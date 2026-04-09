let { tap, .. } = import "../../../fak/keycode.ncl" in
let kc = tap.reg.kc in

{
  layers = [
    [
      # Hàng 1
      kc.F13, kc.F14, kc.F15,
      # Hàng 2
      kc.F16, kc.F17, kc.F18,
      # Hàng 3
      kc.F19, kc.F20, kc.F21,
    ],
  ],
}
