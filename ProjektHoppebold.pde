void backgroundAlt() {
  background(0, 204, 0);
}

void blomst(int x, int y) {
  //grøn stilk
  strokeWeight(5);
  stroke(51, 255, 51);
  //line(x, y, x, );

  // fjern grøn streg
  strokeWeight(1);
  stroke(0);

  // blade
  fill(255, 0, 0);
  ellipse(x - 25, y - 25, 50, 50);
  ellipse(x - 25, y + 25, 50, 50);
  ellipse(x + 25, y - 25, 50, 50);
  ellipse(x + 25, y + 25, 50, 50);

  //tingen i midten 
  fill(255, 255, 0);
  ellipse(x, y, 50, 50);
}

void tegnBlomster() {
  blomst(50, 50);
  blomst(200, 50);
  blomst(350, 50);
  blomst(500, 50);
  blomst(650, 50);
  blomst(50, 200);
  blomst(200, 200);
  blomst(350, 200);
  blomst(500, 200);
  blomst(650, 200);
  blomst(50, 350);
  blomst(200, 350);
  blomst(350, 350);
  blomst(500, 350);
  blomst(650, 350);
}

Ball[] Bolde;


void setup() {
  size(700, 400);
  Bolde = new Ball[3];
  for (int i = 0; i < Bolde.length; i++) {
    Bolde [i] = new Ball(new PVector(i * 300 + 300, i * 50 + 50));
  }
}
void draw() {
  backgroundAlt();
  tegnBlomster();
  for (int i = 0; i < Bolde.length; i++) {
    Bolde[i].applyForce(new PVector(-0.3, 0));
    Bolde[i].applyForce(new PVector(+0, 1));
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
  float hue = 0;

  Ball() {
    this(new PVector (100, 100), new PVector (3.5, 0), new PVector(), #00FF00);
  }

  Ball(PVector pos, PVector vel, PVector acc, color col) {
    position = pos;
    velocity = vel;
    acceleration = acc;
    filling = col;
  }


  Ball(PVector pos) {
    this(pos, new PVector(0, 0), new PVector(0, 0), #000000);
  }

  void render() {
    colorMode(HSB);
    if (hue >= 255)  hue=0;  
    else  hue++;
    fill(hue, 255, 255);
    ellipse(position.x, position.y, 35, 35);
    colorMode(RGB);
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
