 //TP2: variables y condicionales
 //N&A:Nathan Olivera Legajo 122822/0 Comision 1
 //Serie elegida: Breaking Bad
  
PImage im1,im2,im3;
int Tiempo;
PFont t;
String uh,uh2,uh3,uh4,uh5,uh6,uh7;
int posX, posY, anchoBot, altoBot, tamFigura;
void setup(){
  size(640, 480);
  im1= loadImage("22890-3840x2160-desktop-4k-breaking-bad-wallpaper-photo.jpg");
  im2= loadImage("When-Better-Call-Sauls-Breaking-Bad-Scenes-Take-Place.jpg");
  im3= loadImage("breaking-bad-wallpaper-3.jpg");
  t = loadFont("Arial-Black-30.vlw");
  uh = "una serie estadounidense, creada y producida por Vince Gilligan, emitida entre 2008 y 2013";
  uh2 ="El show sigue la historia de Walter White un miserable profesor de química que poco a poco se irá convirtiendo en uno de los traficantes de drogas mas buscados de toda Albuquerque"; 
  uh3 ="\n Bryan Cranston como Walter White \n Aaron paul como Jesse Pinkman \n Anna Gunn como Skyler White \n RJ Mitte como Walther White Jr.";
  uh4 ="\n Dean Norris como Hank Schrader \n Betsy Brandt como Marie Schrader \n Bob Odenkirk como saul Goodman \n Giancarlo Esposito como Gustabo Fring";
  uh5 ="\n y Jonhatan Banks como Mike Ehrmantraut ";
  uh6 ="Con la gran actuación de personajes como:";
  uh7 ="FIN";
   posX = 640;
  posY = 480;
  anchoBot=315;
  altoBot=309;
  tamFigura=50;
  
 
}

void draw (){
 
  println(frameCount);
  println(mouseX, mouseY);
 background(0);
  if (frameCount % 25==0) { 
    Tiempo ++;
  }
  if (Tiempo<=10) {
   image(im1, 0, 0, width, height);
   textSize(35);
   float tono = map(posX, 400, 30, 0, 255);
   fill(13,245,255, tono);
   text(uh, 30, 300, 450, 200);
   if (posX>0) {
    posX = posX-5;
  }
  } 
  else if (Tiempo >10 && Tiempo <=24) {
   image(im3, 0, 0, width, height);
   fill(13,245,255);
   textSize(30);
   text(uh2, 30, posY, 600, 200);
  posY = posY-2;
  
  } 
  if(Tiempo == 24){
    posX = 640;
  }
 
  else if (Tiempo >24 && Tiempo <=35) {
   image(im2, 0, 0, width, height);
   fill(13,245,255);
   textSize(30);
   text(uh6, 30, 300, 600, 200);
   text(uh3, posX, 300, 600, 200);
   if (posX > 30) {
    posX = posX-3;}
     }
    if(Tiempo == 35){
    posX = 640;
  }
  else if (Tiempo >35 && Tiempo <=47) {
   image(im2, 0, 0, width, height);
   fill(13,245,255);
   textSize(30);
   text(uh4, posX, 300, 600, 200);
   text(uh6, 30, 300, 600, 200);
   if (posX > 30) {
    posX = posX-3;}
  }
  if(Tiempo == 47){
    posX = 640;
  }
  else if (Tiempo >47 && Tiempo <=57) {
   image(im2, 0, 0, width, height);
   fill(13,245,255);
   textSize(30);
   text(uh5, posX, 300, 600, 200);
   text(uh6, 30, 300, 600, 200);
   if (posX > 30) {
    posX = posX-3;}
  }
  else if (Tiempo >57){
   fill(255);
   textSize(60);
   text(uh7, 271, 197, 600, 200);
  }
  textSize(25);
  fill(0,0,0);
  text(Tiempo, 50, 50);
 if (Tiempo >57){
   float Wao = dist (mouseX, mouseY, altoBot, anchoBot);
   if (Wao < tamFigura / 2){
     fill(8,203,255);
   }
   else {
   fill(255);
   }
  circle(altoBot,anchoBot,tamFigura);
  }

  
}
void mousePressed() {
  float Wao = dist(mouseX, mouseY, altoBot, anchoBot);
  if (Wao < tamFigura / 2) {
    Tiempo = 0;
    posX = 640;
    posY = 480;
  }
}
