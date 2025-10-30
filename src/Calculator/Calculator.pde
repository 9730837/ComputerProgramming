// Ethan Shafran | Sept 25 | Calculator
Button[] buttons = new Button[16];
Button[] numButtons = new Button[10];
float l, r, result;
String dVal;
String op;
boolean left;

void setup() {
  size(340, 640);
  background(0);
  l = 0.0;
  r = 0.0;
  result = 0.0;
  dVal = "0.0";
  op = " ";
  left = true;

  buttons[0]= new Button(40, 120, 60, 60, "AC", color(0), color(255));
  buttons[1]= new Button(120, 120, 60, 60, "+/-", color(0), color(255));
  buttons[2]= new Button(200, 120, 60, 60, "^", color(0), color(255));
  buttons[3]= new Button(280, 120, 60, 60, "√", color(0), color(255));
  buttons[4]= new Button(40, 200, 60, 60, "%", color(0), color(255));
  buttons[5]= new Button(120, 200, 60, 60, "floor", color(0), color(255));
  buttons[6]= new Button(200, 200, 60, 60, "Del", color(0), color(255));
  buttons[7]= new Button(280, 200, 60, 60, "*", color(0), color(255));
  numButtons[9]= new Button(40, 280, 60, 60, "9", color(0), color(255));
  numButtons[8]= new Button(120, 280, 60, 60, "8", color(0), color(255));
  numButtons[7]= new Button(200, 280, 60, 60, "7", color(0), color(255));
  buttons[8]= new Button(280, 280, 60, 60, "/", color(0), color(255));
  numButtons[6]= new Button(40, 360, 60, 60, "6", color(0), color(255));
  numButtons[5]= new Button(120, 360, 60, 60, "5", color(0), color(255));
  numButtons[4]= new Button(200, 360, 60, 60, "4", color(0), color(255));
  buttons[9]= new Button(280, 360, 60, 60, "-", color(0), color(255));
  numButtons[3]= new Button(40, 440, 60, 60, "3", color(0), color(255));
  numButtons[2]= new Button(120, 440, 60, 60, "2", color(0), color(255));
  numButtons[1]= new Button(200, 440, 60, 60, "1", color(0), color(255));
  buttons[10]= new Button(280, 440, 60, 60, "+", color(0), color(255));
  numButtons[0]= new Button(40, 520, 60, 60, "0", color(0), color(255));
  buttons[11]= new Button(120, 520, 60, 60, ".", color(0), color(255));
  buttons[12]= new Button(200, 520, 60, 60, "abs", color(0), color(255));
  buttons[13]= new Button(280, 560, 60, 140, "=", color(0), color(255));
  buttons[14]= new Button(60, 600, 100, 60, "ceil", color(0), color(255));
  buttons[15]= new Button(183, 600, 100, 60, "dist", color(0), color(255));
}

void draw() {
  background(127);
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].display();
    buttons[i].hover(mouseX, mouseY);
  }
  for (int i = 0; i < numButtons.length; i++) {
    numButtons[i].display();
    numButtons[i].hover(mouseX, mouseY);
  }
  updateDisplay();
}

void keyPressed() {
  println("Key:" + key);
  println("KeyCode:" + keyCode);
  if (keyCode == 107 || keyCode == 16) {
    dVal = "0.0";
    left = false;
    op = "+";
  } else if (keyCode == 45 || keyCode == 109) {
    dVal = "0.0";
    left = false;
    op = "-";
  }
  if (keyCode == 106 || keyCode == 56) {
    dVal = "0.0";
    left = false;
    op = "*";
  }
  if (keyCode == 111 || keyCode == 47) {
    dVal = "0.0";
    left = false;
    op = "/";
  } else if (keyCode == 55 || keyCode == 103) {
    if (dVal.length()<17) {
      if (left == true)
        if (dVal.equals("0.0")) {
          dVal = "7";
          l = float(dVal);
        } else {
          dVal += "7";
          l = float(dVal);
        } else if (!left) {
        if (dVal.equals("0.0")) {
          dVal = "7";
          r = float(dVal);
        } else {
          dVal += "7";
          r = float(dVal);
        }
      }
    }
  }else if (keyCode == 55 || keyCode == 103) {
    if (dVal.length()<17) {
      if (left == true)
        if (dVal.equals("0.0")) {
          dVal = "7";
          l = float(dVal);
        } else {
          dVal += "7";
          l = float(dVal);
        } else if (!left) {
        if (dVal.equals("0.0")) {
          dVal = "7";
          r = float(dVal);
        } else {
          dVal += "7";
          r = float(dVal);
        }
      }
    }
  }
  //else if (keyCode == 48 || keyCode == 96) {
  //  if (dVal.length()<17) {
  //    if (left == true)
  //      if (dVal.equals("0.0")) {
  //        dVal = "0";
  //        l = float(dVal);
  //      } else {
  //        dVal += "0";
  //        l = float(dVal);
  //      } else {
  //      dVal += "0";
  //      l = float(dVal);
  //    }
  //  } else if (!left) {
  //    if (dVal.equals("0.0")) {
  //      dVal = "0";
  //      r = float(dVal);
  //    } else {
  //      dVal += "0";
  //      r = float(dVal);
  //    }
  //  }
  //} else if (keyCode == 49 || keyCode == 97) {
  //  if (dVal.length()<17) {
  //    if (left == true)
  //      if (dVal.equals("0.0")) {
  //        dVal = "1";
  //        l = float(dVal);
  //      } else {
  //        dVal += "1";
  //        l = float(dVal);
  //      } else {
  //      dVal += "1";
  //      l = float(dVal);
  //    }
  //  } else if (!left) {
  //    if (dVal.equals("0.0")) {
  //      dVal = "1";
  //      r = float(dVal);
  //    } else {
  //      dVal += "1";
  //      r = float(dVal);
  //    }
  //  }
  //} else if (keyCode == 50 || keyCode == 98) {
  //  if (dVal.length()<17) {
  //    if (left == true)
  //      if (dVal.equals("0.0")) {
  //        dVal = "2";
  //        l = float(dVal);
  //      } else {
  //        dVal += "2";
  //        l = float(dVal);
  //      } else {
  //      dVal += "2";
  //      l = float(dVal);
  //    }
  //  } else if (!left) {
  //    if (dVal.equals("0.0")) {
  //      dVal = "2";
  //      r = float(dVal);
  //    } else {
  //      dVal += "2";
  //      r = float(dVal);
  //    }
  //  }
  //} else if (keyCode == 51 || keyCode == 99) {
  //  if (dVal.length()<17) {
  //    if (left == true)
  //      if (dVal.equals("0.0")) {
  //        dVal = "3";
  //        l = float(dVal);
  //      } else {
  //        dVal += "3";
  //        l = float(dVal);
  //      } else {
  //      dVal += "3";
  //      l = float(dVal);
  //    }
  //  } else if (!left) {
  //    if (dVal.equals("0.0")) {
  //      dVal = "3";
  //      r = float(dVal);
  //    } else {
  //      dVal += "3";
  //      r = float(dVal);
  //    }
  //  }
  //} else if (keyCode == 52 || keyCode == 100) {
  //  if (dVal.length()<17) {
  //    if (left == true)
  //      if (dVal.equals("0.0")) {
  //        dVal = "4";
  //        l = float(dVal);
  //      } else {
  //        dVal += "4";
  //        l = float(dVal);
  //      } else {
  //      dVal += "4";
  //      l = float(dVal);
  //    }
  //  } else if (!left) {
  //    if (dVal.equals("0.0")) {
  //      dVal = "4";
  //      r = float(dVal);
  //    } else {
  //      dVal += "4";
  //      r = float(dVal);
  //    }
  //  }
  //} else if (keyCode == 53 || keyCode == 101) {
  //  if (dVal.length()<17) {
  //    if (left == true)
  //      if (dVal.equals("0.0")) {
  //        dVal = "5";
  //        l = float(dVal);
  //      } else {
  //        dVal += "5";
  //        l = float(dVal);
  //      } else {
  //      dVal += "5";
  //      l = float(dVal);
  //    }
  //  } else if (!left) {
  //    if (dVal.equals("0.0")) {
  //      dVal = "5";
  //      r = float(dVal);
  //    } else {
  //      dVal += "5";
  //      r = float(dVal);
  //    }
  //  }
  //}else if (keyCode == 54 || keyCode == 102) {
  //  if (dVal.length()<17) {
  //    if (left == true)
  //      if (dVal.equals("0.0")) {
  //        dVal = "6";
  //        l = float(dVal);
  //      } else {
  //        dVal += "6";
  //        l = float(dVal);
  //      } else {
  //      dVal += "6";
  //      l = float(dVal);
  //    }
  //  } else if (!left) {
  //    if (dVal.equals("0.0")) {
  //      dVal = "6";
  //      r = float(dVal);
  //    } else {
  //      dVal += "6";
  //      r = float(dVal);
  //    }
  //  }
  //}else if (keyCode == 55 || keyCode == 103) {
  //  if (dVal.length()<17) {
  //    if (left == true)
  //      if (dVal.equals("0.0")) {
  //        dVal = "7";
  //        l = float(dVal);
  //      } else {
  //        dVal += "7";
  //        l = float(dVal);
  //      } else {
  //      dVal += "7";
  //      l = float(dVal);
  //    }
  //  } else if (!left) {
  //    if (dVal.equals("0.0")) {
  //      dVal = "7";
  //      r = float(dVal);
  //    } else {
  //      dVal += "7";
  //      r = float(dVal);
  //    }
  //  }
  //} else if (keyCode == 56 || keyCode == 104) {
  //   if (dVal.length()<17) {
  //    if (left == true)
  //      if (dVal.equals("0.0")) {
  //        dVal = "8";
  //        l = float(dVal);
  //      } else {
  //        dVal += "8";
  //        l = float(dVal);
  //      } else {
  //      dVal += "8";
  //      l = float(dVal);
  //    }
  //  } else if (!left) {
  //    if (dVal.equals("0.0")) {
  //      dVal = "8";
  //      r = float(dVal);
  //    } else {
  //      dVal += "8";
  //      r = float(dVal);
  //    }
  //  }
  //}
  ////else if (keyCode == 56 || keyCode == 104) {
  ////  if (dVal.length()<17) {
  ////    if (left == true)
  ////      if (dVal.equals("0.0")) {
  ////        dVal = "8";
  ////        l = float(dVal);
  ////      } else {
  ////        dVal += "8";
  ////        l = float(dVal);
  ////      } else {
  ////      dVal += "8";
  ////      l = float(dVal);
  ////    }
  ////  } else if (!left) {
  ////    if (dVal.equals("0.0")) {
  ////      dVal = "8";
  ////      r = float(dVal);
  ////    } else {
  ////      dVal += "8";
  ////      r = float(dVal);
  ////    }
  ////  }
  ////}
  //else if (keyCode == 57 || keyCode == 105) {
  //  if (dVal.length()<17) {
  //    if (left == true)
  //      if (dVal.equals("0.0")) {
  //        dVal = "9";
  //        l = float(dVal);
  //      } else {
  //        dVal += "9";
  //        l = float(dVal);
  //      } else {
  //      dVal += "9";
  //      l = float(dVal);
  //    }
  //  } else if (!left) {
  //    if (dVal.equals("0.0")) {
  //      dVal = "9";
  //      r = float(dVal);
  //    } else {
  //      dVal += "9";
  //      r = float(dVal);
  //    }
  //  }
  //}
}

void mousePressed() {
  for (int i = 0; i < buttons.length; i++) {
    if (dVal.length()<16) {
      if (left == true) {
        if (dVal.equals("0.0")) {
          dVal = "0.0";
          l = float(dVal);
        }
      } else if (left == false) {
        if (dVal.equals("0.0"));
        r = float(dVal);
      }
    }
    if (buttons[i].over) {
      String val = buttons[i].val;

      if (val.equals("+") || val.equals("-") || val.equals("*") || val.equals("/") || val.equals("^")) {
        dVal = "0.0";
        left = false;
        op = val;
      } else if (val.equals(".")) {
        if (!dVal.contains(".")) {
          dVal += ".";
          updateOperands();
        }
      } else if (val.equals("AC")) {
        l = 0.0;
        r = 0.0;
        result = 0.0;
        dVal = "0.0";
        op = " ";
        left = true;
      } else if (val.equals("ceil") || val.equals("abs") || val.equals("dist") || val.equals("floor")) {
        dVal = "0.0";
        left = false;
        op = val;
      } else if (val.equals("Del")) {
        if (dVal.length() > 1) {
          dVal = dVal.substring(0, dVal.length() - 1);
        } else {
          dVal = "0.0";
        }
        updateOperands();
      } else if (val.equals("=")) {
        performCalculation();
      } else if (val.equals("+/-")) {
        if (left) {
          l *= -1;
          dVal = str(l);
        } else {
          r *= -1;
          dVal = str(r);
        }
      } else if (val.equals("√")) {
        if (left) {
          l = sqrt(l);
          dVal = str(l);
        } else {
          r = sqrt(r);
          dVal = str(r);
        }
      } else if (val.equals("%")) {
        if (!left) {
          r = r % l;
          dVal = str(r);
        }
      }
    }
  }

  for (int i = 0; i < numButtons.length; i++) {
    if (numButtons[i].over && dVal.length() < 16) {
      String digit = numButtons[i].val;
      if (dVal.equals("0.0")) {
        dVal = digit;
      } else {
        dVal += digit;
      }
      updateOperands();
    }
  }

  println("l: " + l + ", r: " + r + ", op: " + op + ", result: " + result + ", left: " + left);
}

void updateOperands() {
  if (left) {
    l = float(dVal);
  } else {
    r = float(dVal);
  }
}

void updateDisplay() {
  rectMode(CORNER);
  fill(220);
  rect(10, 10, 320, 60, 10);
  fill(0);
  textSize(35);
  textAlign(RIGHT);
  if (dVal.length() < 16) {
    text(dVal, width - 20, 55);
  }
}

void performCalculation() {
  if (op.equals("+")) {
    result = l + r;
  } else if (op.equals("-")) {
    result = l - r;
  } else if (op.equals("*")) {
    result = l * r;
  } else if (op.equals("/")) {
    result = r != 0 ? l / r : 0;
  } else if (op.equals("^")) {
    result = pow(l, r);
  } else if (op.equals("%")) {
    result = l % r;
  } else if (op.equals("ceil")) {
    result = ceil(l);
  } else if (op.equals("abs")) {
    result = abs(l);
  } else if (op.equals("dist")) {
    result = dist(0, 0, l, r);
  } else if (op.equals("floor")) {
    result = floor(l);
  }

  dVal = str(result);
  l = result;
  left = true;
}
