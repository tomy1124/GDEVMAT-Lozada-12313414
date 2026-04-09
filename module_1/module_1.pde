void setup()
{
  size(1280, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0/ 180.0), 0, 0, 0, 0, -1, 0);
}

void draw()
{
  background(0);
  
  //circle(0, 0 , 15);
  drawCartesianPlane();
  drawLinearFunction();
  drawQuadraticFunction();
  drawCircle();
  drawSineWave();
}
void drawCartesianPlane()
{
   strokeWeight(1);
  color white = color(255, 255, 255);
  fill(white);
  stroke(white);
  line (300, 0, -300 , 0);
  line(0, -300, 0, 300);
  
  for (int i = -300; i <= 300; i += 10)
  {
    line(i, -2, i, 2);
    line(-2, i, 2, i);
  }
}

void drawLinearFunction()
{
  color purple = color(128, 0, 128);
  fill(purple);
  noStroke();
  
  for (int x = -200; x <= 200; x++)
  {
    circle (x, (-5*x) + 30, 5);
  }
}

void drawQuadraticFunction()
{
  color yellow = color(255, 255, 0);
  fill(yellow);
  stroke(yellow);
  
  for (float x = -300; x <= 300; x +=0.1f)
  {
    circle(x*10, ((float)Math.pow(x,2) + (15 * x) - 3), 5);
  }
}

void drawCircle()
{
  color white = color (255, 255, 255);
  fill (white);
  stroke (white);
  float radius = 50;
  
  for (int x =0; x <= 360; x++)
  {
    circle((float)Math.cos(x) * radius, (float)Math.sin(x) * radius, 5);
  }
}

void drawSineWave() {
  color green = color(0, 255, 0);
  fill(green);
  stroke(green);

  float amplitude = 50;
  float frequency = 0.05;

  for (int x = -300; x <= 300; x++) {
    float y = amplitude * (float)Math.sin(frequency * x);
    circle(x, y, 5);
  }
}
