class Walker
{
  PVector position = new PVector();
  PVector speed = new PVector(5, 8);
  
  void render()
  {
  int i = int (random(255));
  int j = int (random(255));
  int k = int (random(255));
    
    
    color random = color(i, j, k);
    fill(random);
    stroke(random);
    
    circle (position.x, position.y, 30);
    
  }
  
  void randomWalkBiased()
  {
    int rng =int( random(7));
    if (rng >= 4)
    {
      position.y++;
    }
   
     else if (rng == 1)
     {
       position.y--;
     }
     
     else if (rng == 2)
     {
     position.x++;
     }
     
     else if (rng == 3)
     {
       position.x--;
     }
  }
  
  void moveAndBounce()
{
  
  
  position.add(speed); 
  
  if ((position.x > Window.right) || (position.x < Window.left))
  {
    speed.x *= -1;
  }
  
  if ((position.y>Window.top) || (position.y < Window.bottom))
  {
    speed.y *= -1;
  }
  
}
  
}
