  PShape hexagon;
 
  float i = 0;
  float ii = 0;
  float j = 0; 
  float jj = 0;
  float size = 10;
  float aa = 0;
  float bb = 0;
  float cc = 0;
  float dd = 0;
  float zz = random(255);

  
  void setup(){
    size(3000, 200, P2D );
    background( #E9D558 );
    smooth();
    

  }
  
  void draw (){

    
    hexagon = createShape();
    hexagon.beginShape();
    for ( int i = 0; i < 6; i++ ) {
      float x = cos( i * THIRD_PI ) * size*ii;
      float y = sin( i * THIRD_PI ) * size*ii;
      hexagon.vertex(x, y);
    }
    fill((size*ii*ii)%255,zz,(ii*zz)%255,50);
    hexagon.endShape(CLOSE);
    
    
    if (aa > 3000){
      background( #E9D558 );
      aa = 0;
      zz = (zz + random(0,100))%200;
    }
    
    aa = aa + random(0,100);
    bb = random(0,200);
   
    
    pushMatrix();
    translate(aa,bb);
    rotate(random(1,23)*PI/23);
    shape(hexagon);
    popMatrix();
    
    ii = ii + random(0.1,2);
    jj = jj + random(0.1,2);
    
    
    
    if (ii >= 5){
      ii = 1;
    }
    if (jj >= 5){
      jj = 1;
    }
    
  }