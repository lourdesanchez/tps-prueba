class Blancanieves{
  
  //atributos
  PImage blancanievesImg;
  PImage pasto;
  
  Contador contador;
  
  int posXBlancanieves, posYBlancanieves, anchoBlancanieves, altoBlancanieves, posXPasto, posYPasto, anchoPasto, altoPasto, _contador;
  float velocidad, limiteSalto, alturaSalto, suelo, limiteDeSalto;
  boolean saltando, bajar,subir;
 
  
  //constructores
  Blancanieves(){
    //this.contador = new Contador("Score: "+0, #030202, 0);
     this.contador = new Contador(0);
    
    this.blancanievesImg = loadImage("Blancanieves1.png");
    
    this.anchoBlancanieves = 110;
    this.altoBlancanieves = 190;
    this.posXBlancanieves = 10;
    this.posYBlancanieves = 145;
    
    
    /*this.anchoPasto = 360;
    this.altoPasto = 90;
    this.posXPasto = 0;
    this.posYPasto = 370;*/
    
    this.velocidad = 5;
    this.alturaSalto = 50;
    this.suelo = this.posYBlancanieves;
  
    this.limiteDeSalto = this.alturaSalto ;
    this.subir = true;
    
   
  }
  
  
  //acciones
  void dibujar(){
   
    image(this.blancanievesImg, this.posXBlancanieves, this.posYBlancanieves, this.anchoBlancanieves, this.altoBlancanieves);
     this.actualizar();
     //this.contador.dibujar();
    }
    
    
    
     void actualizar(){
    if (keyPressed && keyCode == UP){
      println("UP");
      this.saltando = true;
      //this.contador.dibujar();
      println("contador");
    }
    if (keyPressed && keyCode == LEFT) {
     this.posXBlancanieves -= this.velocidad ;
    } else if (keyPressed && keyCode == RIGHT) {
      this.posXBlancanieves += this.velocidad;
    }
    if (this.saltando == true) {
      this.logicaDeSalto();
    }
     }
  
  
  void logicaDeSalto() {
    if (this.subir == true && this.bajar == false) {
      this.posYBlancanieves = this.posYBlancanieves-6;
      if (this.posYBlancanieves < this.limiteDeSalto) {
        this.bajar  = true;
        this.subir = false;
      }
    } else if (this.subir == false && this.bajar == true) {
      this.posYBlancanieves=this.posYBlancanieves+6;
      if (this.posYBlancanieves >= this.suelo) {
        this.bajar  = false;
        this.subir = true;
        this.saltando = false;
      }
    }
    println(this.subir);
  }
}

  
  
