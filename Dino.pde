class Dino {
  float dinoY; // tracks position of dino
  float dinoS; // tracks speed of dino
  float dinoA; // tracks acceleration of dino

  Dino (float Y_, float S_, float A_) {
    dinoY = Y_;
    dinoS = S_;
    dinoA = A_;
  }
  void update (float gravity) {
    // draw the dino 
    image(dino, 20, dinoY, 80, 40);
    fill(0);
  }
}