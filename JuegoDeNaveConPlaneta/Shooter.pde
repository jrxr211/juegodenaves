class Shooter{
  public PVector posicion;
  public PImage imagen;
  public PVector velocidad;
  
  // C0NSTRUCTOR
  public Shooter(){
    imagen=loadImage("shooter.png");
  }
  
public void dibujar(){
  imageMode(CENTER);
  image(imagen,posicion.x,posicion.y,150,150);
 }
 /**
 * Mueve la posicion hacia izquierda o derecha segun la
 *que se indique en el atributo velocidad
 *direccion (0;izquierda;1=derecha; 2=arriba; 3=abajo)
 */
public void mover(int direccion){
  if(direccion==0){
    this.posicion.x-=this.velocidad.x;
  }
  if(direccion==1){
    this.posicion.x+=this.velocidad.x;
  }
  
  if(direccion==2){
    this.posicion.y-=this.velocidad.y;
  }
  if(direccion==3){
    this.posicion.y+=this.velocidad.y;
  }
  
}
}
