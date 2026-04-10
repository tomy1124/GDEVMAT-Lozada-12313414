void setup ()
{
  size(1020, 720, P3D);
  camera(0, 0, -(height/2.0) / tan(PI*30.0 / 180.0), 0, 0, 0, 0, -1, 0);
  background (255);
}

void draw ()
{
 float gaussian = randomGaussian();
 println(gaussian);
 
 float standardDeviation = 100;
 float mean = 0;
 
 float x = standardDeviation * gaussian + mean;
 float y = random(-360, 360);
 
 float gaussianSize = randomGaussian();
 float standardDeviationSize = 10;
 float meanSize = 20;
 
 float size = standardDeviationSize * gaussianSize + meanSize;
 
 int i = int(random(255));
 int j = int(random(255));
 int k = int(random(255));
 
 
 color randomColor = color(i, j, k);
 fill(randomColor, 255);
 circle(x, y, size);
}
