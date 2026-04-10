public class walker
{

  public float x;
  public float y;
  public float tx = 0, ty = 1000;
  public float tSize = 500;
  
  public float tI = 100;
  public float tJ = 200;
  public float tK = 300;
  
  void render()
  {
    float size = map(noise(tSize), 0, 1, 5, 50);
    float i = map(noise(tI), 0, 1, 0, 255);
    float j = map(noise(tJ), 0, 1, 0, 255);
    float k = map(noise(tK), 0, 1, 0, 255);
    fill(i, j, k, 150);
    circle(x, y, size);
  }
  
  void perlinWalk()
  {
    x = map(noise(tx), 0, 1, -640, 640);
    y = map(noise(ty), 0, 1, -360, 360);
    
    tx += 0.01f;
    ty += 0.01f;
    tI += 0.01f;
    tJ += 0.01f;
    tK += 0.01f;
    
  }
  
}
