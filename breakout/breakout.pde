//brick variables=====
int[] x;
int[] y;
int brickd;
int n;
int tempx, tempy;

//mode=========
int mode;
final int INTRO = 1;
final int GAME = 2;
final int  PAUSE = 3;
final int GAMEOVER = 4;

//paddle + ball
float px, py, pd, pr;
float bx, by, bd, br;
float vx, vy;
boolean akey, dkey;

//skittles!
color orange, yellow, green, purple, red;

//gif

//background
PImage bg;

void setup() {


  size(1000, 700);
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  mode = GAME;


  //brick ============

  brickd = 50;
  n = 36;
  x = new int[36];
  y = new int [36];
  tempx = 100;
  tempy = 50;

  int i = 0;
  while (i < n) {
    x[i] = tempx;
    y[i] = tempy;
    tempx = tempx + 100;
    if (tempx == width) {
      tempx = 100;
      tempy = tempy + 100;
    }

    i++;
  }

  orange = #e64808;
  yellow = #f1be02;
  green = #048207;
  purple = #5D2B7D;
  red = #c0043f;

  //paddle + ball ==================
  px = width/2;
  py = height;
  pd = 100;
  pr = pd/2;

  bx = width/2;
  by = height/2 + 20;
  bd = 30;
  br = bd/2;

  vx = 0;
  vy = random(1, 10);

  akey = false;
  dkey = false;
  
  
  bg = loadImage("bg.jpg");
}


void draw() {
  if (mode == INTRO) {
    intro();
  } else  if (mode == GAME) {
    game();
  } else  if (mode == PAUSE) {
    pause();
  } else  if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error: " + mode);
  }
}
