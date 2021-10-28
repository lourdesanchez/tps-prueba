class Blancanieves{
  //atributos
  PImage blancanievesImg;
  
  int posXBlancanieves, posYBlancanieves, anchoBlancanieves, altoBlancanieves;
  float velocidadBlancanieves;
  int saltoBlancanieves;
  boolean ganar;
 
  
  //constructores
  Blancanieves(){
    this.blancanievesImg = loadImage("blancanieves.jpg");
    
    this.anchoBlancanieves = 60;
    this.altoBlancanieves = 100;
    this.posXBlancanieves = 10;
    this.posYBlancanieves = 260;
    this.velocidadBlancanieves = 7;
    this.saltoBlancanieves = 0;
    
    this.ganar = true;
  }
  
  
  //acciones
  void dibujar(){
    if(ganar){
    image(this.blancanievesImg, this.posXBlancanieves, this.posYBlancanieves, this.anchoBlancanieves, this.altoBlancanieves);
    }
    
  }
  
  
  
  void teclaPresionada(){
    if(keyCode == RIGHT){
       this.posXBlancanieves +=velocidadBlancanieves;
    }else if(keyCode == LEFT){
      this.posXBlancanieves -= velocidadBlancanieves;
    }
    }
    
    
  
  
  
  void perder(){
    ganar=false; 
  }
  
  void chocarObstaculo(){
    
  }
  
  

  
  
}
