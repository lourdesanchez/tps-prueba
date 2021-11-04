class Obstaculo{
  
  
  //atributos
  PImage obstaculoImg;
  
  int cantObstaculo;
  
  Obstaculo [] obstaculo = new Obstaculo [cantObstaculo];
  Contador contador;
  
  int posXObstaculo, posYObstaculo, anchoObstaculo, altoObstaculo;
  //int separacion=20;
  float velocidad;
  //constructores
  
  Obstaculo(int posXObstaculo, int posYObstaculo){
    this.contador = new Contador(0);
    
    this.obstaculoImg = loadImage("tronm2.png");
   
    this.anchoObstaculo = 70;
    this.altoObstaculo = 70;
    this.posXObstaculo = posXObstaculo;//440;
    this.posYObstaculo = posYObstaculo;  // 320;
    this.velocidad = 5;
  }
  
  
  
  //acciones
  void dibujar(){
     image( this.obstaculoImg, this.posXObstaculo, this.posYObstaculo, this.anchoObstaculo, this.altoObstaculo);
     //this.contador.dibujar();
     //this.posXObstaculo-=velocidad;
  } 
  
  void moverObstaculo(){
    this.posXObstaculo-=velocidad;
    
    }
  
  boolean contador(){
    if(this.posXObstaculo<-10){
     //this.contador.contador+=1;
  return true;
    }
    return false;
  }
  
  }
 

  
