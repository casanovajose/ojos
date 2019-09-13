class Text {
  String [] text;
  PVector l;
  PFont font;
  float size;
  int cursor;
  PVector boxSize;
  boolean show;
  
  Text() {
    text = loadStrings("baudelaire.txt");
    cursor = 0;
    l = new PVector(10,10);
    size = 20;
    boxSize = new PVector(size * 2, height - 30);
    show = true;
  }
  
  void display() {
    if (show) {
      fill(255);
      textAlign(CENTER);
      textSize(size);
      text(text[cursor], l.x, l.y, boxSize.x, boxSize.y);
      // println(text[cursor]);
    }  
  }
}
