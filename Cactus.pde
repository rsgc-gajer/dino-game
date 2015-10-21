class Cactus {
  float x1; // tracks horizontal position of first cactus 
  float a1; // tracks acceleration of the first cactus 
  float s1; // tracks the speed of the first cactus
  float r = 35; // raduis

  Cactus (float x_, float a_, float s_) {
    x1 = x_;
    a1 = a_;
    s1 = s_;
  }

  void update(float gravity) {


    //       x    y   w   h
    ellipse(x1, 175, r, r);
    fill(0);

    // change the speed
    s1 = s1 + a1;
    // create the appearence of moving by changing the x position
    x1= x1 + s1;

    // put the cactus back on right edge if it goes off left edge
    if (x1 < -25) {
      x1 = 900;
      s1 = -1;
      score++;
      highscore = max(score, highscore);
    }
  }
}