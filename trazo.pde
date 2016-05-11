class Pelota{
  PVector pos;
  PVector mov;
  PVector acel;
  PVector linea;
  
  PVector tamano; 
  PVector suerte;
  color vista;
  
  float n;
  float r;
  
  Pelota(float c_posX, float c_posY, float c_tamanoX,float c_tamanoY, color c_vista){
    pos = new PVector(c_posX,c_posY);
    mov = new PVector(5,0);
    acel = new PVector(1,0);
    suerte = new PVector(10,10);
    linea = new PVector(0,0);
    
    tamano = new PVector(c_tamanoX,c_tamanoY);
    vista = c_vista;
  }
  
  void dibujo(){
  fill(vista);
    noStroke();
    smooth();
   //ellipse(pos.x,pos.y,tamano.x,tamano.y);
    
    n += 0.1;
    r = map(noise(n),0,1,1,width);
    println(r);
    stroke(255,20);
    //line(pos.x,pos.y,width/2,height/2);
    
    //line(pos.x,pos.y,r,height/2);
    
    fill(vista);
    //triangle(pos.x,pos.y,r,r,r+150,pos.x-150);
    triangle(pos.x,pos.y,width/2,height/2,pos.y,pos.x-150);
    
    /*
    line(pos.x,pos.y,150,150);
    line(pos.x,pos.y,width - 150,height - 150);
    line(pos.x,pos.y,width - 150,150);
    line(pos.x,pos.y,150,height-150);
    */
  }
  
  void accion(){
    acel = PVector.random2D();
    
    pos.add(mov);
    mov.add(acel); 
   linea.add(acel); 
    mov.limit(5);
    
    
    
   println(linea);
  }
  
  void condicion(){
    if (pos.x >= width){
      pos.x = 0;
    }
    if (pos.y >= height){
      pos.y = 0;
    }
    if (pos.x <= 0){
      pos.x = width;
    }
    if (pos.y <= 0){
      pos.y = height;
    }
  }

}
