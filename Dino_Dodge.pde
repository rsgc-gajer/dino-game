// global variables (can be use everywhere below)
Cactus c1;
Cactus c2;
Dino d1;

float x2; //  tracks horizontal position of second cactus
float a2;// tracks acceleration of the second cactus
float s2; // tracks the speed of the second cactus

float gravity; // gravity
float distance1; // track the distance between dino and first cactus
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

  //// draw a circle at bottom right corner of the screen
  ////       x    y   w   h
  //ellipse(x2, 175, 35, 35);
  //fill(255, 0, 0);

  //// change the speed
  //s2 = s2 + a2;

  //// create the appearence of moving by changing the x position
  //x2= x2 + s2;

  if (x2 < -25) {
    x2 = 1000;
    s2 = -1;
    score++;
    highscore = max(score, highscore);
  }

  // status updates
  //textSize(12);
  //text("dinoY is " + dinoY, 150, 25);
  //text("dinoS is " + dinoS, 150, 50);
  //text("dinoA is " + dinoA, 150, 75);
  //text("distance is " + distance1, 150, 100);
  //fill(0);
  //text("score: " + score, 735, 10);

  //// move the dino
  //dinoA = dinoA + gravity; // changes acceleration based on gravity
  //dinoS = dinoS + dinoA; // change speed based on acceleration 
  //dinoY = dinoY + dinoS; // change location based on speed

  //// stop the dino if it hits the ground
  //if (dinoY > 150) { // bottom of the screen (200) minus the radius 
  //  dinoA = 0;
  //  dinoS = 0;
  //  dinoY = 150;
  //}

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

  //// determine the distande between the objects
  //leg3 = dinoY - 175; // dino - cactus
  leg4 = 50 - c1.getX();
  //distance2 = sqrt( pow(leg3, 2) + pow(leg4, 2)   ); 

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
}
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
    gravity = 0.07;
  } else if (mouseClicked>1) {
    score = 0; // reset the score
  }
  //{
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
  //}
}
// respond to keypress
//void keyPressed() {
//  if (keyPressed) {
//    if (dinoY==150) {
//      if (key == ' ' || key == ' ') { // only allows space key to work when jumping
//        dinoA = -1;
//      }
//    }
//  }
//}