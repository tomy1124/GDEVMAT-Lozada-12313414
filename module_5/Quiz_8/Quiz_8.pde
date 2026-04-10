int totalWalkers = 10;
Walker[] walkers = new Walker [totalWalkers];

PVector gravity = new PVector(0, -0.4);
PVector wind = new PVector(0.15, 0); 


void setup ()
{
size (1280, 720, P3D);
camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);

for (int i = 0; i< totalWalkers; i++)
{
  walkers[i] = new Walker();
  walkers[i].mass = i + 1;
  walkers[i].scale = walkers[i].mass * 15;
  walkers[i].position = new PVector(-500, 200);
  
  int r = int(random(255));
  int g = int(random(255));
  int b = int(random(255));
  
  walkers[i].randomColor = color(r, g, b);
}

}

void draw ()
{
  background(80);
  
  for (int i = 0; i < totalWalkers; i++)
  {
    walkers[i].applyForce(gravity);
    walkers[i].applyForce(wind);
    walkers[i].update();
    walkers[i].checkEdges();
    walkers[i].render();
  }
  
}
