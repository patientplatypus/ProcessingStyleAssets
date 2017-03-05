
  PShape shapey;
  float i = 10;
  float size = height/2;
  float translate1 = 500;
  float translate2 = 500;
  
  void setup() {
    size(1000,1000);
    background(255);
    noStroke();
  }
  
  void draw() {
    if (i>100){
      i = 4;
    }
    if (translate1 > 1000){
      translate1 = 0;
      translate2 = translate2 * 1.05;
    }
    if (translate2 > 1000){
      translate2 = 0;
    }
    shapey = createShape();
    shapey.beginShape();
    shapey.fill(translate1%255, translate2%255, 200,100);
    shapey.vertex(0,0);
    shapey.vertex(0,i);
    shapey.vertex(i,i);
    shapey.vertex(i,0);
    shapey.endShape();
    translate(translate1, translate2);
    rotate(PI*(i/100));
    shape(shapey);
    translate1 = translate1 + 100;
    translate2 = translate2 + (translate1/1000);
    print(translate2, "\n");
    i = i + 7;
  }
  