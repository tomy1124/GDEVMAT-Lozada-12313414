int totalWalkers = 100;
Walker [] walkers = new Walker[totalWalkers];


void setup ()
{
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  for (int i = 0; i < totalWalkers; i++)
  {
    walkers[i] = new Walker ();
    walkers[i].position = new PVector(random(-Window.windowWidth, Window.windowWidth), random(-Window.windowHeight, Window.windowHeight));
    walkers[i].scale = random(5, 30);
  }
}

void draw()
{
  
  background(80);
  
  for (int i = 0; i < totalWalkers; i++)
  {
    walkers[i].update();
    walkers[i].render();
    walkers[i].checkEdges();
  }
  
}
