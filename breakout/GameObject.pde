class GameObject {

  PVector loc;
  PVector v;
  int hp;

  GameObject() {
    loc = new PVector(width/2, height/2);
    v = new PVector(0, 0);
    hp = 1;
  }

  void show() {
  }

  void act() {
    loc.add(v);

    if (loc.x <= width*0.1) loc.x = width*0.1;
    if (loc.x >= width*0.9) loc.x = width*0.9;
    if (loc.y <= height*0.1) loc.y = height*0.1;
    if (loc.y >= height*0.9) loc.y = height*0.9;
  }
}
