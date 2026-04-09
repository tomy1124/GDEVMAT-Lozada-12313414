class walker
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
  
  void randomWalk()
  {
    int rng =int( random(7));
    if (rng == 0)
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
     
     else if (rng == 4)
     {
       x++;
       y++;
     }
     
     else if (rng == 5)
     {
       x--;
       y++;
     }
     
     else if (rng == 6)
     {
       x++;
       y--;
     }
     else
     {
       x--;
       y--;
     }
  }
  
}
