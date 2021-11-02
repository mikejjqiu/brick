//class weapon {
 
//  int shottimer, threshold, bulletv;
  
//  weapon() {
//   shottimer = 0;
//   threshold = 30;
//   bulletv = 5;
//  }
  
//  weapon(int thr, int ps) {
//   shottimer = 0;
//   threshold = thr;
//   bulletv = ps;
//  }
  
//  void update() {
//    shottimer++;
//  }
  
//  void shoot() {
//    if (shottimer >= threshold) {
//     PVector aimVector = new PVector(mouseX-myPlayer.loc.x, mouseY-myPlayer.loc.y);
//     aimVector.setMag(bulletv);
//     myObjects.add(new Bullet(aimVector, c, size);
//     shottimer = 0;
//    }
//  }
//}
