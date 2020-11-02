void game() {

  background(bg);
  strokeWeight(5);
  stroke(255);
  fill(0);

  //paddle=================
  circle(px, py, pd);
  if (akey == true) px = px - 5;
  if (dkey == true) px = px + 5;

  //ball====================
  circle(bx, by, bd);
  bx = bx + vx;
  by = by + vy;

  if (dist(bx, by, px, py) < br + pr) {
    vx = (bx - px) / 15;
    vy = (by - py) / 15;
  }

  if (bx < br || bx > width - br) {
    vx = vx * -1;
  } 
  if (by < br || by > height - br) {
    vy = vy * -1;
  }


  //bricks===================================

  int i = 0;
  while (i < n) { 
    
    if(y[i] == 50) fill(orange);
    if(y[i] == 150) fill(yellow);
    if(y[i] == 250) fill(green);
    if(y[i] == 350) fill(purple);
    
    stroke(255);
    strokeWeight(2);
    circle(x[i], y[i], brickd);

    if (dist(bx, by, x[i], y[i]) < bd/2 + brickd/2) {
      vx = (bx - x[i]) / 15;
      vy = (by - y[i]) / 15;
    }

    i=i+1;
  }
}
