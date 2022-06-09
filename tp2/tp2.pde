boolean zoom; 
boolean nozoom;
int e = 100;


void setup(){
  size(500, 500);
  strokeWeight(8);
  rectMode(RADIUS);
  zoom = false;
  nozoom = false;
}



void draw(){
 background(255,0,0);
 for(int x = 0; x<width*2; x = x+20){
 line (x, 0, 0, x); 
 fill(255, 0 ,0);
 for(int e = 100; e>=0; e-=14){
 rect(width/2, height/2, e,e);
  if (!zoom){
 rect(width/2, height/2, e++,e++);
 }else{
 if (!nozoom) {
  rect(width/2, height/2, e--,e--);   
 }
    }
   }
  }
 }
void mousePressed(){
if( ((mouseX > 200) && (mouseX < 400) && (mouseY > 200) && (mouseY < 200))) {
      zoom = true; }
if( ((mouseX > 200) && (mouseX < 400) && (mouseY > 200) && (mouseY < 200))) {
      nozoom = true; }
}
 
