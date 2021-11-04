class Fondo{
  
   //atributos
  
  PImage fondoInicioYJuego;
  
  
  int posXFondo, posYFondo, anchoFondo, altoFondo;
  boolean juego;
  //constructores
   Fondo(PImage fondoInicioYJuego ){
    this.fondoInicioYJuego =fondoInicioYJuego;
    //this.fondJuego =fondJuego;
     
   // this.fondoInicio = loadImage("fondoInicio.png"); 
   /// this.fondJuego = loadImage("bosquesito.png");
   
    this.anchoFondo = 500;
    this.altoFondo = 400;
    this.posXFondo = 0;
    this.posYFondo = 0;
   }
  
  
  //acciones
  void dibujar(){
    image(this.fondoInicioYJuego, this.posXFondo, this.posXFondo, this.anchoFondo, this.altoFondo);
    //image(this.fondoInicio, this.posXFondo, this.posXFondo, this.anchoFondo, this.altoFondo);
  }
  
 
  }
  
