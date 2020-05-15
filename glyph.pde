int scaleMajor = 40;

void glyph(int x0, int y0, int s, int n){
  int p = s / n;
  int rx, ry = 0;
  float rc = random(240, 460);
  for(int i = 0; i < n; i++){
    for(int j = 0; j < n; j++){
      rx = int(random(-2, 2));
      ry = int(random(-2, 2));
      if(rx != 0 || ry != 0){
        stroke(rc, 100, random(25, 100));
        line(x0 + (j * p), y0 + (i * p), x0 + ((j + rx) * p), y0 + ((i + ry) * p));
      }
    }
  }
}

void setup(){
  size(600, 600);
  colorMode(HSB, 360, 100, 100);
  background(0, 0, 0);
  fill(0, 0, 0);
  strokeCap(ROUND);
  stroke(0, 0, 100);
  strokeWeight(scaleMajor / 12);
  for(int y = scaleMajor; y < height; y = y + scaleMajor){
    for(int x = scaleMajor; x < width; x = x + scaleMajor){
      glyph(x, y + int(random(-5, 5)), scaleMajor / 2, 3);
    }
  }
}

void draw(){
}
