private Shooter nave;
private planeta planeta;

public void setup(){
  size(800,800);
 nave= new Shooter();
 
 
 nave.posicion= new PVector(width/2,height/2);
 nave.velocidad= new PVector(10,10);
 
 planeta=new planeta(new PVector(width/2,0),new PVector(0,10));

}

public void draw(){
  background(#0CCEE5);
  nave.dibujar();
  actualizarVelocidadNave();
  planeta.dibujar();
  planeta.mover();

  
}
public void keyPressed(){
  if(key=='d'){
    nave.mover(1);
  }
  if(key=='a'){
    nave.mover(0);
  } 
  if(key=='w'){
    nave.mover(2);
  }
  if(key=='s'){
    nave.mover(3);
  }
}
  public void actualizarVelocidadNave (){
  if(nave.posicion.x>(width/2)){
    nave.velocidad.x=30;
  }else{
    nave.velocidad.x=10;
  }
  }
