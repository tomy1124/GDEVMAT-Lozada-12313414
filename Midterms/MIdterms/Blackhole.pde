public class BlackHole
{
  PVector position = new PVector( random(-Window.windowWidth, Window.windowWidth), random(-Window.windowHeight, Window.windowHeight));
  float scale = 50;


void update () {
  position.x = mouseX - Window.windowWidth;
  position.y = -(mouseY - Window.windowHeight);
}

void render ()
{
  fill(255);
  noStroke();
  circle(position.x, position.y, scale);
}

}
