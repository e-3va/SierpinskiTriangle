public int stop = 400;

public void setup(){
  size(400,400);
  background(255);
  noStroke();
  //frameRate(10);
}
boolean keys = false;

void draw(){
  if(keys){
    background(255);
    sierpinski(0, 400, 400, stop);
  }
}

void keyPressed() {
  if(key == 's' && !keys){ 
    keys = true;
    if(stop > 20)
      stop = stop/2;
    redraw(); 
  }
}

void keyReleased() {
  if(key == 's')
    keys = false;
}

public void sierpinski(int x, int y, int len, int stop) {
  if(len <= stop)
    triangle(x,y,x+(len/2),y-len, x+len, y);
  else{
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    sierpinski(x,y,len/2, stop);
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    sierpinski(x+(len/2), y, len/2, stop);
    fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
    sierpinski(x+(len/4), y-(len/2), len/2, stop);
  }
}
