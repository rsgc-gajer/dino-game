class Dino {
  float dy; // tracks position of dino
  float ds; // tracks speed of dino
  float da; // tracks acceleration of dino
  float dx; // tracks horizontal position of dino
  float dr; // tracks radius of dino

  Dino (float dy_, float ds_, float da_) {
    dy = dy_;
    ds = ds_;
    da = da_;
    dx = 50;
    dr = 20;
  }
  void update (float gravity) {
    // draw the dino 
    image(dino, dr, dy, 80, 40);
    fill(0);

    // move the dino
    da = da + gravity; // changes acceleration based on gravity
    ds = ds + da; // changes speed based on acceleration
    dy = dy + ds; // changes location based on speed


    // status updates
    textSize(12);
    text("dy is " + dy, 150, 25);
    text("ds is " + ds, 150, 50);
    text("da is " + da, 150, 75);

    // stop the dino if it hits the ground
    if (dy > 150) { // bottom of the screen (200) minus the radius 
      dy = 150;
      da = 0;
      ds = 0;
    }
  }
  // getY
  //
  // Purpose: an accessor method; lets us find out where the dino is (vertically)
  float getY() {
    return dy;
  }

  // setA
  //
  // Purpose: a mutator method; lets the acceleration for the dsaur be set
  //          from outside the class
  void setA(float newA_) {
    da = newA_;
  }
  // isTouching
  boolean isTouching(Cactus c) {
    float a = dy - c.getY();
    float b = dx - c.getX();
    distance = sqrt(a*a + b*b);
    
    // decide whether dino is touching cactus
    if ( distance < ( dr + c.getR() ) ) {
      return true;
    }
    // when dino is not touching
    return false;
  }
}