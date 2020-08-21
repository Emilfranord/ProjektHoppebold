void backgroundAlt() {
}

void setup() {
}

void draw() {
}


boolean hitEdge (PVector position) {
  if (position.x > width) {
    return true;
  }
  if (position.x < 0) {
    return true;
  }
  if (position.y > height) {
    return true;
  }
  return false;
}

class Ball {
  PVector position;
  PVector velocity;
  PVector accleration;
  color filling; // color is protected :(

  Ball() {
    // TODO: implement this.
  }

  Ball(PVector pos, PVector vel, PVector acc) {
    // TODO: implement this.
  }

  void render() {
    // TODO: implement this.
  }

  void update() {
    // TODO: implement this.
  }

  void moveToMouse() {
    // TODO: implement this.
  }

  void applyForce() {
  }
}
