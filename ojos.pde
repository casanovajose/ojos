
Text poem;
Eye eye;

void setup() {
  println("_los_ojos_ by C53 (Colectivo 53)");
  println("FESTIVAL ARTÍSTICO NOROESTE 2019 (FAN 2019)");
  println("https://github.com/casanovajose/ojos");
  println("https://c53.info");
  //fullScreen();
  size(800, 600);
  poem = new Text();
  eye = new Eye();
  background(0);
}

void draw() {
  fill(0, 10);
  rect(0, 0, width, height);
  // poem.displayText();
  eye.display();
}
