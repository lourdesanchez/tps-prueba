class Obstaculo{
  
  
  //atributos
  int cantObstaculo;
  Obstaculo [] obstaculo = new Obstaculo [cantObstaculo];
  
  int posXObstaculo, posYObstaculo, anchoObstaculo, altoObstaculo;
  //int separacion=20;
  float velocidad;
  //constructores
  
  Obstaculo(int posXObstaculo, int posYObstaculo){
    
   
    this.anchoObstaculo = 40;
    this.altoObstaculo = 40;
    this.posXObstaculo = posXObstaculo;//440;
    this.posYObstaculo = posYObstaculo;  // 320;
    this.velocidad = 6;
  }
  
  
  
  //acciones
  void dibujar(){
     rect(this.posXObstaculo, this.posYObstaculo, this.anchoObstaculo, this.altoObstaculo);
     this.posXObstaculo-=velocidad;
  }
 

  
  void chocarObstaculo(){
    
  }
 }
