int totalWalkers = 8;
Walker[] walkers = new Walker[totalWalkers];
PVector thrust = new PVector(0.2, 0);

void setup() {
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  initWalkers();
}

void initWalkers() {
  for (int i = 0; i < totalWalkers; i++) {
    walkers[i] = new Walker();
    walkers[i].mass = i + 1;
    walkers[i].scale = walkers[i].mass * 15;

    float posY = 2 * (Window.windowHeight / totalWalkers) * ((i + 1) - (totalWalkers / 2.0));
    walkers[i].position = new PVector(Window.left, posY);

    int r = int(random(255));
    int g = int(random(255));
    int b = int(random(255));
    walkers[i].col = color(r, g, b);
  }
}

void draw() {
  background(80);

  for (int i = 0; i < totalWalkers; i++) {

    // thrust scaled by mass so all walkers accelerate equally (like gravity F = ma)
    PVector thrustForce = PVector.mult(thrust, walkers[i].mass);
    walkers[i].applyForce(thrustForce);

    // friction coefficient changes past midpoint
    float mew = 0.01;
    if (walkers[i].position.x > 0) {
      mew = 0.4;
    }

    // friction force = -mew * mass, opposite to velocity direction
    if (walkers[i].velocity.mag() > 0) {
      PVector friction = walkers[i].velocity.copy();
      friction.normalize();
      friction.mult(-1 * mew * walkers[i].mass);
      walkers[i].applyForce(friction);
    }

    walkers[i].update();
    walkers[i].checkEdges();
    walkers[i].render();
  }
}

void mouseClicked() {
  initWalkers();
}
