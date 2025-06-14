//tp2: TP#3 — OpArt con Funciones y Ciclo For
//A&P: Nathan Olivera; Legajo 122822/0; Comision 1
//Link al video:


void setup() {
  size(800, 400);
}

void draw() {
  background(242);
  PImage OP = loadImage("20.png");
  image(OP, 0, 0, width/2, height);
  barras();
  rombo();
  rombo2();
}

void barras() {
  int x = width/2;
  for (int i=0; i<width; i+=80) {
    fill(40, 36, 37);
    strokeCap(SQUARE);
    strokeWeight(43);
    stroke(37, 35, 34);
    line (x, i, width, i);
  }
}
void rombo() {
  int x = width/2;
  int y = height/2;
  int cant = 5;
  for (int i=0; i<cant; i++) {
    if (i % 2 == 0) fill(255);
    else fill(0);
    float franja = map(i, 0, cant-1, x-100, x+40);
    noStroke();

    triangle(franja+100, y+3, x+200, height*0, x+200, height);
  }
}
void rombo2 () {
  int x = width/2;
  int y = height/2;
  int cant = 5;
  for (int i=0; i<cant; i++) {
    if (i % 2 == 0) fill(255);
    else fill(0);
    float franja = map(i, 0, cant+1, x+200, x-30);
    noStroke();

    triangle(franja+200, y+3, x+200, height*0, x+200, height);
  }
}
