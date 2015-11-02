// global variables (can be use everywhere below)
Cactus c1;
Cactus c2;
Dino d1;

float x2; //  tracks horizontal position of second cactus
float a2;// tracks acceleration of the second cactus
float s2; // tracks the speed of the second cactus

float gravity; // gravity
float distance; // track the distance between dino and first cactus
float distance2; // track the distance between dino and second cactus
int mouseClicked; // mouse click to restart game
PImage dino; // pic of dino
PImage starter; // pic of starting image
float leg1;
float leg2;
float leg3;
float leg4;
int score = 0;
int highscore;

// this function runs once only
void setup() {
  // draw the canvas 
  size(800, 200);

  c1 = new Cactus(900, -1, -0.5);
  c2 = new Cactus(1000, -1, -0.5);

  d1 = new Dino (150, 0, -0.5);

  dino=loadImage("dino.png");
  // set initial position of the cactus
  x2 = 1000;

  // initial horizontal acceleration for cactus
  a2 = -0.1;

  // initial horizontal speed for cactus
  s2 = -1;

  //set gravity 
  gravity = 0.07;
}

// this function runs repeatedly 
void draw() {
  frameRate(60);
  // background clears each time the program loops
  background(255);

  c1.update(gravity);
  c2.update(gravity);
  d1.update(gravity);
  
   // check whether the cactus is touching the dino
  if (d1.isTouching(c1)) {
    textSize(80);
    text("HIT", 400, 100);
    noLoop(); // stop the game
  }
}

  //// draw a circle at bottom right corner of the screen
  ////       x    y   w   h
  //ellipse(x2, 175, 35, 35);
  //fill(255, 0, 0);

  //// change the speed
  //s2 = s2 + a2;

  //// create the appearence of moving by changing the x position
  //x2= x2 + s2;

//  if (x2 < -25) {
//    x2 = 1000;
//    s2 = -1;
//    score++;
//    highscore = max(score, highscore);
//  }

  // status updates
  //text("distance is " + distance1, 150, 100);
  //fill(0);
  //text("score: " + score, 735, 10);


  // determine the distance between the objects
  //leg1 = dinoY - 175; // dino - cactus
  //leg2 = 50 - x1;
  //distance1 = sqrt( pow(leg1, 2) + pow(leg2, 2)   ); 

  //if (distance1 < (17.5 + 17.5) ) {
  //  textSize(80);
  //  noLoop();
  //  background(255);
  //  textAlign(LEFT);
  //  textSize(60);
  //  text("Game Over!", 225, 100);
  //  text("Click to Restart", 175, 150);
  //  textSize(12);
  //  text("highscore: " + highscore, 715, 20);
  //}

  //if (distance2 < (17.5 + 17.5) ) {
  //  textSize(80);
  //  noLoop();
  //  background(255);
  //  textAlign(LEFT);
  //  textSize(60);
  //  text("Game Over!", 225, 100);
  //  text("Click to Restart", 175, 150);
  //  textSize(12);
  //  text("highscore: " + highscore, 715, 20);
  //}
void mouseClicked() {
  mouseClicked++;
  if (mouseClicked==1) {
    score= 0;
    //// set initial position of the cactus
    //x1 = 900; // position it off-screen on the right
    //x2 = 1000;

    //// initial horizontal acceleration for cactus
    //a1 = -0.1;
    //a2 = -0.1;

    //// initial horizontal speed for cactus
    //s1 = -1;
    //s2 = -1;

    // set dino initial vertical position
    //dinoY = 150;

    //// set dino initial speed
    //dinoS = 0;

    //// set dino initial acceleration
    //dinoA = -0.5;

    loop();
    //set gravity 
    //gravity = 0.07;
  } //else if (mouseClicked>1) {
  //score = 0; // reset the score
  //}
  //  //{
  //  // set initial position of the cactus
  //  x1 = 900; // position it off-screen on the right
  //  x2 = 1000;

  //  // initial horizontal acceleration for cactus
  //  a1 = -0.1;
  //  a2 = -0.1;

  //  // initial horizontal speed for cactus
  //  s1 = -1;
  //  s2 = -1;

  //  // set dino initial vertical position
  //  dinoY = 150;

  //  // set dino initial speed
  //  dinoS = 0;

  //  // set dino initial acceleration
  //  dinoA = -0.5;

  //  //set gravity 
  //  gravity = 0.07;
  //  loop();
}
// respond to keypress
void keyPressed() {
  if (d1.getY() == 150) {
    if (key == ' ' || key == ' ') {
      d1.setA(-1);
    }
  }
}