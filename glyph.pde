int scaleMajor = 40; //How many pixels is between the start of each glyph

void glyph(int x0, int y0, int s, int n){ //xy location, width of glyph, number of nodes/points
  int p = s / n; //distance between points/nodes
  int rx, ry = 0; //used later for random lines
  for(int i = 0; i < n; i++){ //itterate through points/nodes
    for(int j = 0; j < n; j++){
      rx = int(random(-2, 2)); //returns -1, 0, or 1
      ry = int(random(-2, 2));
      if(rx != 0 || ry != 0){ //if the random x or random y is non-zero then draw a line from the point/node to x+rx,y+ry
        line(x0 + (j * p), y0 + (i * p), x0 + ((j + rx) * p), y0 + ((i + ry) * p));
      }
    }
  }
}

void setup(){ //Draw a grid of glyphs, nothing fancy here
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
