class Blancanieves{
  //atributos
  PImage blancanievesImg;
  
  int posXBlancanieves, posYBlancanieves, anchoBlancanieves, altoBlancanieves;
  float velocidadBlancanieves;
  float saltoBlancanieves;
  boolean saltar = false;

  
  //constructores
  Blancanieves(){
    this.blancanievesImg = loadImage("blancanieves.jpg");
    
    this.anchoBlancanieves = 60;
    this.altoBlancanieves = 100;
    this.posXBlancanieves = 10;
    this.posYBlancanieves = 260;
    this.velocidadBlancanieves = 7;
  }
  
  
  //acciones
  void dibujar(){
    image(this.blancanievesImg, this.posXBlancanieves, this.posYBlancanieves, this.anchoBlancanieves, this.altoBlancanieves);
  }
  
  void moverYSaltarBlancanieves(){
    if(keyCode == RIGHT){
       this.posXBlancanieves +=velocidadBlancanieves;
    }else if(keyCode == LEFT){
      this.posXBlancanieves -= velocidadBlancanieves;
    }
  }
  
  
  void perder(){

  }
  
  void chocarObstaculo(){
    
  }
  
 /* boolean saltarBlancanieves(){
   if(keyCode == UP){
     this.posYBlancanieves = this.posYBlancanieves-5;
      return true;
    }else{
      return false;
    }
  }*/
  
  
}
