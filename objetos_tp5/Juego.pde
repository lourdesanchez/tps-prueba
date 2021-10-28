class Juego {

  //atributos
  int pantallas;
  int cantObstaculo =10;
  Blancanieves blancanieves;
  Obstaculo [] obstaculo = new Obstaculo [cantObstaculo];
  Fondo fondo;
  Pantalla pantalla1, pantallaGanar, pantallaPerder;

  int posX, posY;
  boolean perder = false;

  boolean ganar = false;

  //constructores
  Juego() {
    this.pantallas=0;
    this.pantalla1= new Pantalla("A jugar\nClick para jugar");
    this.pantallaGanar= new Pantalla("Felicidades ganaste!\nAhora podras escapar al bosque");
    this.pantallaPerder= new Pantalla("Oh no, perdiste!\nTendras que enfrentar al cazador");


    this.fondo = new Fondo();
    this.blancanieves = new Blancanieves();

    for (int i=0; i<cantObstaculo; i++) {
      int posXObstaculo= 400 * (i+1);
      this.obstaculo[i] = new Obstaculo(posXObstaculo, 320);
    }
  }


  //this.pantalla = new Pantalla();





  //acciones
  void dibujar() {
    if (this.pantallas==0) {
      this.pantalla1.dibujar();
    } else if (this.pantallas==1) {
      this.fondo.dibujar();
      this.blancanieves.dibujar();

      for (int i=0; i<cantObstaculo; i++) {
        this.obstaculo[i].dibujar();
      }
    } else {
      if (this.ganar) {
        pantallaGanar.dibujar();
      } else {
        pantallaPerder.dibujar();
      }
    }
    /*if(this.chocarConOstaculo(this.blancanieves,  this.obstaculo)){
     this.blancanieves.perder();
     }*/
  }


  void teclaPresionada() {
    if (this.pantallas==0 && keyCode==ENTER) {
      cambiarPantalla();
    }else if (this.pantallas==1) {
    } else {
        cambiarPantalla();
    }
    
    this.blancanieves.teclaPresionada();
    
  }

  /*boolean chocarConOstaculo(Obstaculo obstaculo, Blancanieves blancanieves){
   if(dist(blancanieves.posX, blancanieves.posY, obstaculo.posX, obstaculo.posY)<50){
   return true; 
   }
   return false; 
   }*/

  /*void mousePresionado() {
    if (this.pantallas==0) {
      cambiarPantalla();
    }else if (this.pantallas==1) {
  
    } else {
        cambiarPantalla();
    }
  }*/
  
  void cambiarPantalla(){
      if (pantallas==0) {
      pantallas++;
    }else if (pantallas==1) {
  
    } else {
        pantallas=0;
    }
  }
}
