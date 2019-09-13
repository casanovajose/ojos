
Text poem;
Eye eye;

void setup() {
  println("_los_ojos_ by C53 (Colectivo 53)");
  println("FESTIVAL ARTÍSTICO NOROESTE 2019 (FAN 2019)");
  println("https://github.com/casanovajose/ojos");
  println("https://c53.info");
  //fullScreen();
  size(800, 600);
  colorMode(HSB, 360, 100, 100);
  poem = new Text();
  eye = new Eye();
  background(0);
}

void draw() {
  fill(0, 6);
  rect(0, 0, width, height);
  // poem.displayText();
  eye.display();
  poem.display();
  saveFrame("frames/####.tif");
}



void keyPressed() {
  if (keyPressed && key == CODED) {
    
    switch(keyCode) {
      case RIGHT:
        eye.nextPicture();
    }
  } else if (keyPressed) {
    switch(key) {
      case 'v':
        eye.initNoiseVibrationFactor();
        eye.randomScale();
        eye.randomTint();
    }
    
    println("ASCII");
  }

}
