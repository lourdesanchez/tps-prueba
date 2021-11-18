class Fondo{
  
  
  
   
   //atributos
  
  PImage fondo;
  
  
  float posXFondo, posYFondo, anchoFondo, altoFondo, velXFondo;
  boolean juego;
  //constructores
   Fondo(){
    //this.fondoJuego =fondoJuego;
   this.fondo = loadImage("bosquesito2.jpg");
   this.posXFondo=0;
   this.velXFondo=-2;
   
   }
   
    /*this.anchoFondo = 500;
    this.altoFondo = 400;
    this.posXFondo = 0;
    this.posYFondo = 0;*/
    
   
  
  
  //acciones
  void dibujar(){
    image(this.fondo, this.posXFondo,0, width*2, height);
    
    this.posXFondo+=this.velXFondo;
    
    if(this.posXFondo<-width){
      this.posXFondo=0;
    }
  }
  
 
  }
  
  
  
  
