void backgroundAlt() {
}

Ball[] Bolde;


void setup() {
  size(700, 400);
  Bolde = new Ball[3];
  for (int i = 0; i < Bolde.length; i++) {
    Bolde [i] = new Ball();
  }
}

void draw() {
  for (int i = 0; i < Bolde.length; i++) {
    Bolde[i].applyForce(new PVector(-2, 0));
    Bolde[i].bounceEdge();
    Bolde [i].update();
    Bolde [i].render();
  }
}


class Ball {
  PVector position;
  PVector velocity;
  PVector acceleration;
  color filling; // color is protected :(

  Ball() {
    this(new PVector (100, 100), new PVector (3.5, 0), new PVector(), #00FF00);
  }

  Ball(PVector pos, PVector vel, PVector acc, color col) {
    position = pos;
    velocity = vel;
    acceleration = acc;
    filling = col;
  }

  void render() {
    fill(filling);
    ellipse(position.x, position.y, 35, 35);
  }

  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration.mult(0);
  }

  void bounceEdge() {  
  if (position.x > width) {
      position.x = width;
      velocity.x *= -1;
    } else if (position.x < 0) {
      velocity.x *= -1;
      position.x = 0;
    }
     if (position.y > height) {
      velocity.y *= -1;
      position.y = height;
     }
  }

  void moveToMouse() {

    // TODO: implement this.
  }

  void applyForce(PVector force) {
    acceleration.add(force);
  }
}
