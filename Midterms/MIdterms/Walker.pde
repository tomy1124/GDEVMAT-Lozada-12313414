public class Walker {
  PVector position;
  float scale;
  color randomColor;
  float speed = 10;
  
   Walker()
  {
    float standardDeviation = 200;
    float meanX = 0;
    float meanY = 0;
    
    float x = (randomGaussian() * standardDeviation) + meanX;
    float y = (randomGaussian() * standardDeviation) + meanY;
    
    if (x > Window.windowWidth)
    {
      x = Window.windowWidth;
    }
    
    if (x < Window.windowWidth)
    {
      x = -Window.windowWidth;
    }
    
    if (y > Window.windowHeight)
    {
      y = Window.windowHeight;
    }
    
    if (y < Window.windowHeight)
    {
      y = -Window.windowHeight;
    }
    
    position = new PVector(x, y);
    
    float gaussianSize = randomGaussian();
    float standardDeviationSize = 10;
    float meanSize = 20;
    scale = (standardDeviationSize * gaussianSize) + meanSize;
    
    if (scale < 0)
    {
      scale = scale * -1;
    }
    
    int i = int(random(255));
    int j = int(random(255));
    int k = int(random(255));
    
    randomColor = color(i, j, k);
  }
  
  void render()
  {
    fill(randomColor);
    noStroke();
    circle(position.x, position.y, scale);
  }
  
  void moveTowards(PVector target)
  {
    PVector direction = PVector.sub(target, position);
    if (direction.mag() < 25)
    {
      render();
    }
    direction.normalize();
    direction.mult(speed);
    position.add(direction);
    
  }
}
