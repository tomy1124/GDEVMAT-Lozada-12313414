int totalWalkers = 100;
Walker[] walkers = new Walker [totalWalkers];
BlackHole blackHole;
int frameLimit = 300;

void setup () {
  size(1280, 720, P3D);
  camera(0, 0, Window.eyeZ, 0, 0, 0, 0, -1, 0);
  
  blackHole = new BlackHole();
  
  for (int i = 0; i < totalWalkers; i++) {
    walkers[i] = new Walker();
  }
}

void draw ()
{
  background (0);
  
  blackHole.update();
  blackHole.render();
  
  for (int i = 0; i < totalWalkers; i++)
  {
    walkers[i].moveTowards(blackHole.position);
    walkers[i].render();
  }
  
  if (frameCount % frameLimit == 0)
  {
    reset();
  }
}
  
  void reset()
  {
    blackHole = new BlackHole();
    for (int i = 0; i < totalWalkers; i++)
    {
      walkers[i] = new Walker();
    }
  }
