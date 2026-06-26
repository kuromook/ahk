getDoubleKeyCharacter(){
  dbl := getDoubleKey()
      ;finish flow
  dbl.append( new Operation("Free  ", 11,"j", 1, "{p}", "key"))
  dbl.append( new Operation("Fill  ", 11,"k", 1, "{2}", "key"))
  dbl.append( new Operation("Air br", 11,"m", 1, "{8}", "key"))
  dbl.append( new Operation("Oil   ", 11,"m", 2, "{9}", "key"))

  ; iris  flow
  dbl.append( new Operation("iris", 9,"F16", 1, "+!^{2}", "key"))
  dbl.append( new Operation("iris", 9,"F17", 1, "+!^{6}", "key"))
  dbl.append( new Operation("Kabura ", 9,"j", 1, "{f}", "key"))
  dbl.append( new Operation("tone   ", 9,"k", 1, "{8}", "key"))
  dbl.append( new Operation("Air br ", 9,"k", 2, "{3}", "key"))
  dbl.append( new Operation("maru   ", 9,"m", 1, "{j}", "key"))

  return dbl
}

getDoubleKeyEnvironment(){
  dbl := getDoubleKey()

    ; material flow
  ;dbl.append( new Operation("material", 5,"j", 1, "{f}", "key"))
  ;dbl.append( new Operation("material", 5,"m", 1, "{e}", "key"))
  return dbl
}

getDoubleKey(){
  dbl := new DoubleKey()
    ; line flow
  dbl.append( new Operation("Gradation", 8,"F16", 1, "+{F18}", "key"))
  dbl.append( new Operation("Free    ", 8,"j", 1, "{p}", "key"))
  dbl.append( new Operation("Free    ", 8,"j", 2, "_csPaintFlowChacacterFree", "sub"))
  dbl.append( new Operation("Control", 8,"n", 1, "{l}", "key"))
  dbl.append( new Operation("Control    ", 8,"n", 2, "_csPaintFlowChacacterControl", "sub"))
  dbl.append( new Operation("Sketch    ", 8,"m", 1, "^{F14}", "key"))

    ; gradation flow
  dbl.append( new Operation("Gradation", 7,"F16", 1, "+{F17}", "key"))
  dbl.append( new Operation("Gradation", 7,"F17", 1, "_csPaintFlowEyeOperation2", "sub"))
  dbl.append( new Operation("Gradation ", 7,"n", 1, "{b}", "key"))
  dbl.append( new Operation("Gradation M", 7,"m", 1, "{j}", "key"))

  ; dustpan flow
  dbl.append( new Operation("Kabura         ", 10,"j", 1, "{f}", "key"))
  dbl.append( new Operation("Eraser         ", 10,"k", 1, "{e}", "key"))
  dbl.append( new Operation("Magnet line sel", 10,"m", 1, "{m}", "key"))
 
  ; line flow
  dbl.append( new Operation("Free  ",     2,"j", 1, "{p}", "key"))
  dbl.append( new Operation("reset     ", 2,"j", 2, "^+{F14}", "key")) 
  dbl.append( new Operation("reset",      2,"n", 2, "^+{F14}", "key"))
  dbl.append( new Operation("Control   ", 2,"n", 1, "{l}", "key"))
  dbl.append( new Operation("Sketch    ", 2,"m", 1, "^{F14}", "key"))
  dbl.append( new Operation("duplicate ", 2,"F16", 1, "_csPaintFlowDuplicate", "sub"))
  dbl.append( new Operation("mask      ", 2,"x", 2, "_csPaintFlowChacacterSubColor", "sub"))
  dbl.append( new Operation("transparent  ", 2,"x", 1, "{x}", "key"))


  ; base flow
  ;dbl.append( new Operation("Mask     ", 5,"n", 1, "_csPaintFlowChacacterQuickMask", "sub"))
  dbl.append( new Operation("Kakeami", 5,"m", 1, "{b}", "key"))
  dbl.append( new Operation("reset", 5,"m", 2, "^+{F14}", "key"))
  ; shadow flow
    dbl.append( new Operation("Kakeami", 6,"m", 1, "{b}", "key"))
  dbl.append( new Operation("reset", 6,"m", 2, "^+{F14}", "key"))
  dbl.append( new Operation("Kakeami", 6,"n", 1, "{p}", "key"))
  dbl.append( new Operation("reset", 6,"n", 2, "^+{F14}", "key"))
  dbl.append( new Operation("duplicate ", 6,"F16", 1, "_csPaintFlowDuplicate", "sub"))

  ; default action (and without flow setting)
  dbl.append( new Operation("Kabura   ", 0,"j", 1, "{j}", "key"))
  dbl.append( new Operation("reset     ", 0,"j", 2, "^+{F14}", "key"))
  dbl.append( new Operation("Kakeami", 0,"m", 1, "{b}", "key"))
  dbl.append( new Operation("reset", 0,"m", 2, "^+{F14}", "key"))
  dbl.append( new Operation("Gradation  ", 0,"n", 1, "{y}", "key"))
  dbl.append( new Operation("Gradation  ", 0,"n", 2, "{v}", "key"))
  dbl.append( new Operation("Curve ", 0,"s", 1, "{F6}", "key"))  
  dbl.append( new Operation("Confirm  ", 0,"s", 2, "_csp_Character_confirm_transform", "sub")) 
  dbl.append( new Operation("mask      ", 0,"x", 2, "_csPaintFlowChacacterQuickMask", "sub"))
  dbl.append( new Operation("transparent  ", 0,"x", 1, "{x}", "key"))
  dbl.append( new Operation("finish->binary " , 0,"F19", 1, "^!{F18}" , "key"))
  return dbl
}
