
  PShape hexagon, triangleOuter;
 
  float size = random(0,100);
  float x = 0;
  float y = 0;
  float translatespiral = 0;

  
  void setup(){
    size(500, 500, P2D );
    background( #E9D558 );
    noStroke();
    smooth();
  }
  
  void draw (){

    
    
    
    translate(width/2, height/2);
    rotate(radians(frameCount));
    translate(translatespiral,translatespiral);
    
    hexagon = createShape();
    hexagon.beginShape();
    for ( int i = 0; i < 6; i++ ) {
      float x = cos( i * THIRD_PI ) * size;
      float y = sin( i * THIRD_PI ) * size;
      hexagon.vertex(x, y);
    }
    //fill(size,0,0,250);
    hexagon.endShape(CLOSE);
    

    
    
    //triangleInner = createShape();
    //triangleInner.beginShape();
    //  triangleInner.vertex(-50,-50);
    //  triangleInner.vertex(0,0);
    //  triangleInner.vertex(50,50);
    //triangleInner.endShape();
    
    rotate(translatespiral);
    triangle(-30,30,0,-100,30,30);
    
    
    fill(translatespiral*10%255,translatespiral%255,(translatespiral*translatespiral)%255,5);

    
    
    pushMatrix();
    //shape(hexagon);
    popMatrix();
    
    translatespiral = translatespiral + .01;

  }