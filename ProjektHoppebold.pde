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
