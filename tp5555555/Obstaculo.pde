class Obstaculo{
 //atributos
  /*int cantObstaculo;
  Obstaculo [] obstaculo = new Obstaculo [cantObstaculo];*/
 
  PImage tronco;
  
  int posXObstaculo, posYObstaculo, anchoObstaculo, altoObstaculo;
  float velocidad;

  
  
  //constructores
  Obstaculo(int posXObstaculo, int posYObstaculo){
 
    this.tronco = loadImage("tronm2.png");
    
    this.anchoObstaculo = 50;
    this.altoObstaculo = 50;
    this.posXObstaculo = posXObstaculo;//440;
    this.posYObstaculo = posYObstaculo;  // 320;
    this.velocidad = 5;
    
  }
  
  
  
  
  
  
  
  //acciones
  void dibujar(){
    //rect(this.posXObstaculo, this.posYObstaculo, this.anchoObstaculo, this.altoObstaculo);
    image(this.tronco, this.posXObstaculo, this.posYObstaculo, this.anchoObstaculo, this.altoObstaculo);
    
    moverOstaculo();
  }
  
  void moverOstaculo(){
    this.posXObstaculo-= this.velocidad;
    
  }
  
  /*void reiniciarObstaculo(int posActual){
    this.posXObstaculo = posActual;
  }*/
  
  boolean chocar( float posXPj,float posYPj,float anchoPj, float altoPj) {
    if (
      posXPj-anchoPj/2 < this.posXObstaculo + this.anchoObstaculo/2
      && posXPj+anchoPj/2 > this.posXObstaculo-this.anchoObstaculo/2
      && posYPj-altoPj/2 < this.posYObstaculo + this.altoObstaculo/2
      && posYPj+altoPj/2 > this.posYObstaculo- this.altoObstaculo/2

      ) {
     
      return true;
    } else {
      return false;
    }
  
  
  
  
}
}
   

  
  
  
  
  
  
