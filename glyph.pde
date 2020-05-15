int scaleMajor = 40;

void glyph(int x0, int y0, int s, int n){
  int p = s / n;
  int rx, ry = 0;
  for(int i = 0; i < n; i++){
    for(int j = 0; j < n; j++){
      rx = int(random(-2, 2));
      ry = int(random(-2, 2));
      if(rx != 0 || ry != 0){
        line(x0 + (j * p), y0 + (i * p), x0 + ((j + rx) * p), y0 + ((i + ry) * p));
      }
    }
  }
}

void setup(){
  size(600, 600);
  strokeWeight(scaleMajor / 12);
  for(int y = scaleMajor; y < height; y = y + scaleMajor){
    for(int x = scaleMajor; x < width; x = x + scaleMajor){
      glyph(x, y, scaleMajor / 2, 3);
    }
  }
}

void draw(){
}
