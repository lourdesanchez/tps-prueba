class Fondo{
  
   //atributos
  
  PImage fondo;
  
  int posXFondo, posYFondo, anchoFondo, altoFondo;
  
  //constructores
   Fondo(){
   this.fondo = loadImage("bosquee.jpg");
   
    this.anchoFondo = 500;
    this.altoFondo = 400;
    this.posXFondo = 0;
    this.posYFondo = 0;
   }
  
  
  //acciones
  void dibujar(){
    image(this.fondo, this.posXFondo, this.posXFondo, this.anchoFondo, this.altoFondo);
  }
  
}
