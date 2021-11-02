//modes ============================
int mode = 0;
final int intro = 1;
final int game = 2;
final int pause = 3;
final int gameover = 4;

//gif ===================
gif g_l, gi;

//button ====================
boolean mouseReleased;
boolean hadPressed;
Button buttoni;

//palette ===================================
color dgreen = #4a6fa5;
color mgreen = #345B3B;
color mred = #4a6fa5;
color dblue = #1A3037;
color lyellowg = #D7E3A1;
color dyellowg = #B6C17D;
color black = #030C12;
color dpurple = #2E2F51;
color lpurple = #8C7CA8;
color dbrown = #1C1912;
color mbrown = #4D4035;
color mgrey = #5A4F55;
color white = #FFFFFF;

//gameobj ========================
ArrayList<GameObject> myObjects;

//player ==============
PImage pp;
boolean up, down, left, right, space;
player myPlayer;

// map ====================
PImage map;
color nRoom, sRoom, eRoom, wRoom;
PImage bg, floor;

// darkness =========================
ArrayList<Darkness> darkness;
Darkness lightlayer;

void setup() {
  size(800, 600, P2D);
  imageMode(CENTER);
  rectMode(CENTER);
  textAlign(CENTER, CENTER);

  //gif =====================
  g_l = new gif(3, "level/", "_delay-0.2s.gif", width/4, height/2, 300, height, 5);
  gi = new gif(33, "intro/", "_delay-0.08s.gif", width/2, height/2, 850, 850, 2);

  //button =============================
  buttoni = new Button("Start", width/2, 500, 200, 80, dblue, lyellowg);

  //objs ========================
  myObjects = new ArrayList<GameObject>(1000);
  pp = loadImage("pp.png");
  myPlayer = new player();
  myObjects.add(myPlayer);

  // mode ====================
  mode = intro;

  // map ========================
  map = loadImage("map.png");
  bg = loadImage("aa.jpg");
  floor = loadImage("floor.jpg");

  //darkness =====================
  darkness = new ArrayList<Darkness>();
  lightlayer = new Darkness(1, 1, 3);

}

void draw() {

  //mode =======================
  if (mode==intro) {
    intro();
  } else if (mode==game) {
    game();
  } else if (mode==pause) {
    pause();
  } else if (mode==gameover) {
    gameover();
  } else {
    println("Error" + mode);
  }

  //button ========================
  bPressed();
}

void bPressed() {
  if (mousePressed) hadPressed = true;
  else if (hadPressed && !mousePressed) {
    mouseReleased = true;
    hadPressed = false;
  } else if (mouseReleased) mouseReleased = false;
}

void keyPressed() { //reorganize 
  if (key == 'w' || key == 'W') up = true;
  if (key == 's' || key == 'S') down = true;
  if (key == 'a' || key == 'A') left = true;
  if (key == 'd' || key == 'D') right = true;
  if (key ==  ' ') space = true;
}

void keyReleased() {
  if (key == 'w' || key == 'W') up = false;
  if (key == 's' || key == 'S') down = false;
  if (key == 'a' || key == 'A') left = false;
  if (key == 'd' || key == 'D') right = false;
  if (key ==  ' ') space = false;
}
