Pelota[] myPelota;
int numPelota = 50;

//Pelota myPelota;
//Pelota myPelota2;

void setup(){
  size(500,500);
  background(255);
  
  myPelota = new Pelota[numPelota];
  
  for( int i = 0; i < myPelota.length; i++){
    myPelota [i] = new Pelota(10,i*10,5,5,color(i,100));
  }
}

void draw(){
  
 
    for( int i = 0; i < myPelota.length; i++){
      myPelota[i].dibujo();
      myPelota[i].accion();
      myPelota[i].condicion();
    } 
  
  fill(255,10);
  noStroke();
  rect(0,0,width,height);
 }

