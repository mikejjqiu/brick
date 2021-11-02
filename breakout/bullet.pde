class bullet {

  PVector loc, v, aim;
  color c;
  int size;

  bullet() {
    loc = myPlayer.loc.copy();
    v = new PVector(0, 0);
  }

  bullet(PVector aim1, color c1, int size1) {
    aim = aim1;
    c = c1;
    size = size1;
  }

  void show() {
    fill(c);
    circle(loc.x, loc.y, size);
  }

  void act() {
    loc.add(v);
    v.add(aim);
  }
}
