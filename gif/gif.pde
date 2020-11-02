PImage[] gif;
int frames;
int f;

void setup() {
  size(1000, 700, FX2D);

  frames = 49;
  gif = new PImage[frames];

  int p = 0;
  while (p < frames) {
    gif[p] = loadImage("frame_"+p+"_delay-0.04s.gif");
    p++;
  }
  
  f = 0;
}

void draw() {
  
  image(gif[f],0,0,width,height);
  if (frameCount % 3 == 0) f++;
  
  if(f == frames) f = 0;
}
