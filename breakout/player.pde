class player extends GameObject {

  float speed;
  int roomX, roomY;

  player() {
    super();
    speed = 8;
    roomX = 1;
    roomY = 1;
  }

  void show() {
    fill(white);
    noStroke();
    circle(loc.x+1, loc.y, 40);
    image(pp, loc.x-8, loc.y-3, 60, 54);
  }

  void act() {
    super.act();
    if (up) v.y = -speed;
    if (down) v.y = speed;
    if (left) v.x = -speed;
    if (right) v.x = speed;

    if (!up && !down) v.y = 0;
    if (!left && !right) v.x = 0;

    v.limit(speed);


    //check exit
    if (nRoom != white && loc.y == height*0.1 && loc.x >= width/2 - 50 && loc.x <= width/2 + 50) {
      roomY--;
      loc = new PVector(width/2, height*0.9-10);
      print("n");
    }

    if (eRoom != white && loc.x == width*0.9 && loc.y >= height/2 - 50 && loc.y <= height/2 + 50) {
      roomX++;
      loc = new PVector(width*0.1+10, height/2);
      print("e");
    }

    if (sRoom != white && loc.y == height*0.9 && loc.x >= width/2 - 50 && loc.x <= width/2 + 50) {
      roomY++;
      loc = new PVector(width/2, height*0.1+10);
      print("s");
    }

    if (wRoom != white && loc.x == width*0.1 && loc.y >= height/2 - 50 && loc.y <= height/2 + 50) {
      roomX--;
      loc = new PVector(width*0.9-10, height/2);
      print("w");
    }

  }
}
