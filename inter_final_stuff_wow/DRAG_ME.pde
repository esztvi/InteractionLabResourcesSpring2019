class DragMe {
  PImage img;
  float pos_x, pos_y, SIZE = 50;
  float prev_x, prev_y;
  boolean locked;
  boolean dontMove;
  float offset_x, offset_y;

  DragMe(String tempImg, float tempX, float tempY) {
    img = loadImage(tempImg);
    pos_x = tempX;
    pos_y = tempY;
  }

  void update() {
    if (isOver() && !locked && !dontMove || locked && !dontMove )
      if (isClicked()) {
        locked = true;
      }
    if (locked && !dontMove) {

      pos_x =  mouseX - offset_x;
      pos_y =  mouseY - offset_y;
    }
  }

  void display() {
    imageMode(CORNER);
    image(img, pos_x, pos_y);
  }

  boolean isOver() {
    float right_x = pos_x + SIZE;
    float bottom_y = pos_y + SIZE;
    return mouseX >= pos_x && mouseX <= right_x &&
      mouseY >= pos_y && mouseY <= bottom_y;
  }

  boolean isClicked() {
    return isOver() && mousePressed && !dontMove;
  }

  boolean intersect(DragMe kid1Drag) {
    float distance = dist(pos_x, pos_y, kid1Drag.pos_x, kid1Drag.pos_y);
    if (distance < 50) {
      return true;
    } else {
      return false;
    }
  }
}
class DragMe1 {
  PImage img;
  float pos_x, pos_y, SIZE = 50;
  float prev_x, prev_y;
  boolean locked;
  boolean dontMove;
  float offset_x, offset_y;

  DragMe1(String tempImg, float tempX, float tempY) {
    img = loadImage(tempImg);
    pos_x = tempX;
    pos_y = tempY;
  }

  void update() {
    if (isOver() && !locked && !dontMove || locked && !dontMove )
      if (isClicked()) {
        locked = true;
      }
    if (locked && !dontMove) {

      pos_x =  mouseX - offset_x;
      pos_y =  mouseY - offset_y;
    }
  }

  void display() {
    imageMode(CORNER);
    image(img, pos_x, pos_y);
  }

  boolean isOver() {
    float right_x = pos_x + SIZE;
    float bottom_y = pos_y + SIZE;
    return mouseX >= pos_x && mouseX <= right_x &&
      mouseY >= pos_y && mouseY <= bottom_y;
  }

  boolean isClicked() {
    return isOver() && mousePressed && !dontMove;
  }

  boolean intersect(DragMe1 kid2Drag) {
    float distance = dist(pos_x, pos_y, kid2Drag.pos_x, kid2Drag.pos_y);
    if (distance < 50) {
      return true;
    } else {
      return false;
    }
  }
}
class DragMe2 {
  PImage img;
  float pos_x, pos_y, SIZE = 50;
  float prev_x, prev_y;
  boolean locked;
  boolean dontMove;
  float offset_x, offset_y;

  DragMe2(String tempImg, float tempX, float tempY) {
    img = loadImage(tempImg);
    pos_x = tempX;
    pos_y = tempY;
  }

  void update() {
    if (isOver() && !locked && !dontMove || locked && !dontMove )
      if (isClicked()) {
        locked = true;
      }
    if (locked && !dontMove) {

      pos_x =  mouseX - offset_x;
      pos_y =  mouseY - offset_y;
    }
  }

  void display() {
    imageMode(CORNER);
    image(img, pos_x, pos_y);
  }

  boolean isOver() {
    float right_x = pos_x + SIZE;
    float bottom_y = pos_y + SIZE;
    return mouseX >= pos_x && mouseX <= right_x &&
      mouseY >= pos_y && mouseY <= bottom_y;
  }

  boolean isClicked() {
    return isOver() && mousePressed && !dontMove;
  }

  boolean intersect(DragMe2 kid3Drag) {
    float distance = dist(pos_x, pos_y, kid3Drag.pos_x, kid3Drag.pos_y);
    if (distance < 50) {
      return true;
    } else {
      return false;
    }
  }
}
class DragMe3 {
  PImage img;
  float pos_x, pos_y, SIZE = 50;
  float prev_x, prev_y;
  boolean locked;
  boolean dontMove;
  float offset_x, offset_y;

  DragMe3(String tempImg, float tempX, float tempY) {
    img = loadImage(tempImg);
    pos_x = tempX;
    pos_y = tempY;
  }

  void update() {
    if (isOver() && !locked && !dontMove || locked && !dontMove )
      if (isClicked()) {
        locked = true;
      }
    if (locked && !dontMove) {

      pos_x =  mouseX - offset_x;
      pos_y =  mouseY - offset_y;
    }
  }

  void display() {
    imageMode(CORNER);
    image(img, pos_x, pos_y);
  }

  boolean isOver() {
    float right_x = pos_x + SIZE;
    float bottom_y = pos_y + SIZE;
    return mouseX >= pos_x && mouseX <= right_x &&
      mouseY >= pos_y && mouseY <= bottom_y;
  }

  boolean isClicked() {
    return isOver() && mousePressed && !dontMove;
  }

  boolean intersect(DragMe3 kid4Drag) {
    float distance = dist(pos_x, pos_y, kid4Drag.pos_x, kid4Drag.pos_y);
    if (distance < 50) {
      return true;
    } else {
      return false;
    }
  }
}
class DragMe4 {
  PImage img;
  float pos_x, pos_y, SIZE = 50;
  float prev_x, prev_y;
  boolean locked;
  boolean dontMove;
  float offset_x, offset_y;

  DragMe4(String tempImg, float tempX, float tempY) {
    img = loadImage(tempImg);
    pos_x = tempX;
    pos_y = tempY;
  }

  void update() {
    if (isOver() && !locked && !dontMove || locked && !dontMove )
      if (isClicked()) {
        locked = true;
      }
    if (locked && !dontMove) {

      pos_x =  mouseX - offset_x;
      pos_y =  mouseY - offset_y;
    }
  }

  void display() {
    imageMode(CORNER);
    image(img, pos_x, pos_y);
  }

  boolean isOver() {
    float right_x = pos_x + SIZE;
    float bottom_y = pos_y + SIZE;
    return mouseX >= pos_x && mouseX <= right_x &&
      mouseY >= pos_y && mouseY <= bottom_y;
  }

  boolean isClicked() {
    return isOver() && mousePressed && !dontMove;
  }

  boolean intersect(DragMe4 kid5Drag) {
    float distance = dist(pos_x, pos_y, kid5Drag.pos_x, kid5Drag.pos_y);
    if (distance < 50) {
      return true;
    } else {
      return false;
    }
  }
}
