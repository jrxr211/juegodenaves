class planeta{
  public PVector posicion;
  public PImage imagen;
  public PVector velocidad;
 
  public planeta(){
     imagen=loadImage("planeta.png");
  }
  public planeta(PVector posicion,PVector velocidad){
    this.posicion=posicion;
    this.velocidad=velocidad;
    this.imagen=loadImage("planeta.png");
  }
  
 public void dibujar(){
  imageMode(CENTER);
  image(imagen,posicion.x,posicion.y,150,150);
 }
 
 public void mover(){
   if(this.posicion.y<=height){
     this.posicion.y+=this.velocidad.y;
   
 }else
 this.posicion.y=0;
 }
}
 
