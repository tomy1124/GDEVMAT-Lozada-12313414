class walker_2
{
  float x;
  float y;
  
  void render()
  {
  int i = int (random(255));
  int j = int (random(255));
  int k = int (random(255));
    
    
    color random = color(i, j, k);
    fill(random);
    stroke(random);
    
    circle (x, y, 30);
    
  }
  
  void randomWalkBiased()
  {
    int rng =int( random(7));
    if (rng >= 4)
    {
      y++;
    }
   
     else if (rng == 1)
     {
       y--;
     }
     
     else if (rng == 2)
     {
     x++;
     }
     
     else if (rng == 3)
     {
       x--;
     }
  }
  
}
