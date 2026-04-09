int i = int (random(255));
int j = int (random(255));
int k = int (random(255));


void setup()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

walker myWalker = new walker();
walker_2 myWalker2 = new walker_2();

void draw()
{
  myWalker.randomWalk();
  myWalker.render();
  myWalker2.randomWalkBiased();
  myWalker2.render();
}
