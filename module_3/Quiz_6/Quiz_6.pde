void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
}

PVector mousePos()
{
  float x = mouseX - Window.windowWidth /2;
  float y = -(mouseY - Window.windowHeight/2);
  return new PVector(x, y);
}

void draw()
{
  background(130);
  strokeWeight(5);
  stroke(255, 0, 0);
  
  PVector mouse = mousePos();
  
  mouse.normalize().mult(150);
  line(0, 0, mouse.x, mouse.y);
  
  strokeWeight(5);
  stroke(0, 255, 0);
  line(0, 0, -mouse.x, -mouse.y);
  
  strokeWeight(3);
  stroke(0, 0, 0);
  line(0, 0, (mouse.x / 4), (mouse.y / 4));
}
