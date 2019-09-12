class Eye {
  PImage[] eyes;
  File dir;
  File [] files;
  int currentPicture = 2;
 
  PVector l; // location
  PVector n; // noise vibration factor
  PVector np; // noised position
 

  Eye() {    
    dir = new File(dataPath("img"));
    files = dir.listFiles();
    eyes = new PImage[files.length];
    for (int i = 0; i < files.length; i++) {
      println("importing picture: "+files[i]);
      String path = files[i].getAbsolutePath();
      eyes[i] = loadImage(path);
    }
    
    l = new PVector(0, 0);
    n = new PVector(random(20, 80), random(20, 80));
    np = new PVector(0, 0);
    
  }

  void display() {
    pushMatrix();
    imageMode(CENTER);
    translate(width/2, height/2);
    scale(1.2);
    
    noisePosition();  
    l.x = np.x;
    l.y = np.y;
    tint(255, 200, 200, 50);
    image(eyes[currentPicture], l.x, l.y);
    // eyes[currentPicture].mask(eyes[currentPicture]);
    popMatrix();
  }
  
  
  
  void nextPicture() {
    currentPicture++;
  }
  
  void loadEffect(String effect) {
  }
  
  void setVibrationRate() {
    
  }
  
  void noisePosition() {
    np.x =  n.x - noise(frameCount) * n.x;
    np.y =  n.y - noise(frameCount) * n.y;
  }
}
