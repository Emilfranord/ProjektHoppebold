void backgroundAlt() {
}

Ball[] Bolde;


void setup() {
  Bolde = new Ball[3];
    for (int i = 0; i < Bolde.length; i++) {
    Bolde [i] = new Ball();
  }
}

void draw() {
 for (int i = 0; i < Bolde.length; i++) {
    Bolde[i].applyForce(new PVector(+2,0));
    Bolde [i].update();
    Bolde [i].render();

  }
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
  PVector acceleration;
  color filling; // color is protected :(

  Ball() {
   this(new PVector (300, 400), new PVector (3.5, 0), new PVector(), #FFFFBB);
  }

  Ball(PVector pos, PVector vel, PVector acc, color col) {
    position = pos;
    velocity = vel;
    acceleration = acc;
    filling = col;
    
  }

  void render() {
    // TODO: implement this.
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }

  void moveToMouse() {
    // TODO: implement this.
  }

  void applyForce(PVector force) {
    acceleration.add(force);
  }
}
