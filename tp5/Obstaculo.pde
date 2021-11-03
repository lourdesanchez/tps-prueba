class Obstaculo{
  
  
  //atributos
  PImage obstaculoImg;
  
  int cantObstaculo;
  Obstaculo [] obstaculo = new Obstaculo [cantObstaculo];
  
  int posXObstaculo, posYObstaculo, anchoObstaculo, altoObstaculo;
  //int separacion=20;
  float velocidad;
  //constructores
  
  Obstaculo(int posXObstaculo, int posYObstaculo){
    this.obstaculoImg = loadImage("tronm2.png");
   
    this.anchoObstaculo = 40;
    this.altoObstaculo = 40;
    this.posXObstaculo = posXObstaculo;//440;
    this.posYObstaculo = posYObstaculo;  // 320;
    this.velocidad = 6;
  }
  
  
  
  //acciones
  void dibujar(){
     image( this.obstaculoImg, this.posXObstaculo, this.posYObstaculo, this.anchoObstaculo, this.altoObstaculo);
     this.posXObstaculo-=velocidad;
  } 
  }
 

  
