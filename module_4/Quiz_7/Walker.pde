public class Walker
{
  public PVector position = new PVector();
  public PVector velocity = new PVector();
  public PVector acceleration = new PVector();
  public float scale = 15;
  public float velocityLimit = 15;
  
  public Walker()
  {
    
  }
  
  public void update()
  {
    float mousePointX = mouseX - Window.windowWidth;
    float mousePointY = -(mouseY - Window.windowHeight);
    
    PVector mouse = new PVector(mousePointX, mousePointY);
    PVector direction = PVector.sub(mouse, position);
    
    direction.normalize();
    direction.mult(0.2);
    acceleration = direction;
    
    this.position.add(this.velocity);
    this.velocity.limit(velocityLimit);
    this.velocity.add(this.acceleration);
  }
  
  public void render()
  {
    fill(255);
    noStroke();
    circle(position.x, position.y, scale);
  }
  
  public void checkEdges ()
  {
    if (this.position.x > Window.right)
    {
      this.position.x = Window.left;
    }
    else if (this.position.x < Window.left)
    {
      this.position.x = Window.right;
    }
    
    if (this.position.y > Window.top)
    {
      this.position.y = Window.bottom;
    }
    else if (this.position.y < Window.bottom)
    {
      this.position.x = Window.top;
    }
  }
  
}
