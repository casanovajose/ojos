class Text {
  String [] text;
  
  Text() {
    text = loadStrings("baudelaire.txt");
  }
  
  void displayText() {
    println(text[0]);
  }

}
