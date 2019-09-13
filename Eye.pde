class Eye {
  PImage[] eyes;
  File dir;
  File [] files;
  int currentPicture = 2;
   
  PVector l; // location
  PVector n; // noise vibration factor
  PVector np; // noised position
  float s; //scale
  int[] c = {230, 127, 250, 30}; // hue array
  int tintCursor;
   

  Eye() {    
    // find pictures in data/img dir
    dir = new File(dataPath("img"));
    files = dir.listFiles();
    eyes = new PImage[files.length];
    // set img array
    for (int i = 0; i < files.length; i++) {
      println("importing picture: "+files[i]);
      String path = files[i].getAbsolutePath();
      eyes[i] = loadImage(path);
    }
    
    l = new PVector(0, 0);
    np = new PVector(0, 0);
    initNoiseVibrationFactor();
    randomScale();
    randomTint(); 
  }

  void display() {
    pushMatrix();
    imageMode(CENTER);
    translate(width/2, height/2);
    scale(s);
    
    noisePosition();  
    l.x = np.x;
    l.y = np.y;
    tint(c[tintCursor], 30, 100, 40);
    image(eyes[currentPicture], l.x, l.y);
    eyes[currentPicture].mask(eyes[currentPicture]);
    popMatrix();
  }
   
  
  void nextPicture() {
    currentPicture = (currentPicture + 1) % eyes.length;
    println(currentPicture);
  }
  
  void randomScale() {
    s = random(1, 2);
  }
  
  void randomTint() {
    tintCursor = int(random(0, c.length));
    println("tint: " + tintCursor);   
  }

  void noisePosition() {
    np.x =  noise(frameCount) * n.x;
    np.y =  noise(frameCount) * n.y;
  }
  
  void initNoiseVibrationFactor() {
    n = new PVector(random(-40, 40), random(-50, 50));
    // prevent 0
    while (n.x == 0 || n.y == 0) {
    n = new PVector(random(-40, 40), random(-50, 50));
   }
  }
}
