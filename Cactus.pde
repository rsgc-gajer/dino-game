class Cactus {
  float x1; // tracks horizontal position of first cactus 
  float a1; // tracks acceleration of the first cactus 
  float s1; // tracks the speed of the first cactus
  float y1;
  float r1;

  Cactus (float x_, float a_, float s_) {
    x1 = x_;
    y1 = 175;
    a1 = a_;
    s1 = s_;
    r1 = 35;
  }

  void update(float gravity) {


    //       x    y   w   h
    ellipse(x1, y1, r1, r1);
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
  // get x
  // purpose: to return the x position of the cactus
  float getX() {

    return x1;
  }
  // getR
  float getR() {
    return r1;
  }
}