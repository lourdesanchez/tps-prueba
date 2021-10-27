class Juego{
  
  //atributos

  int cantObstaculo =10;
  Blancanieves blancanieves;
  Obstaculo [] obstaculo = new Obstaculo [cantObstaculo];
  Fondo fondo;
  
  
  int posX, posY;
  boolean perder = false;
  
  //constructores
  Juego(){
    this.fondo = new Fondo();
    this.blancanieves = new Blancanieves();
    for(int i=0; i<cantObstaculo; i++){
      int posXObstaculo= 400 * (i+1);
     this.obstaculo[i] = new Obstaculo(posXObstaculo, 320);
    }

    }
  
  
  
  
  //acciones
  void dibujar(){
    
    this.fondo.dibujar();
    this.blancanieves.dibujar();
    
    for(int i=0; i<cantObstaculo; i++){
     this.obstaculo[i].dibujar();
    }
    
  }
    
    /*void movimientoObstaculo(){
    for(int i=0; i<cantObstaculo; i++){
     this.obstaculo[i].moverObstaculo();
    }
  }*/
    
  
  void cambiarPantalla(){
    
  }
    

  void movimientoYSaltoBlancanieves(){
    this.blancanieves.moverYSaltarBlancanieves();
  }
  
  void saltoBlancanieves(){
    this.blancanieves.moverYSaltarBlancanieves();
  }
   }
  
