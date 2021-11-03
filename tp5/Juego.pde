class Juego {

  //atributos
  int pantallas;
  int cantObstaculo=10;
  int chocarObstaculo;
  int _contador;

  Blancanieves blancanieves;
  Obstaculo [] obstaculo = new Obstaculo [cantObstaculo];
  Fondo fondo;
  Pantalla pantallaComenzar, pantallaGanar, pantallaPerder;
  Contador contador, contador2;

  boolean perder, ganar ;




  //constructores
  Juego() {
    //this.cantObstaculo=10;
    this._contador=0;
    this.pantallas=0;
    this.contador = new Contador(0);
    //this.contador2 = new Contador(0);
    this.pantallaComenzar= new Pantalla("A jugar\n\nClick para continuar", 0, #FFFFFF);
    this.pantallaGanar= new Pantalla("Felicidades ganaste!\n\nAhora podras escapar al bosque :D", 0, #FFFFFF);
    this.pantallaPerder= new Pantalla("Oh no, perdiste!\n\nTendras que enfrentar al cazador! D:" , 0,#FFFFFF );
 

    this.fondo = new Fondo();
    this.blancanieves = new Blancanieves();

    for (int i=0; i<this.cantObstaculo; i++) {
      int posXObstaculo= 400 * (i+1);
      this.obstaculo[i] = new Obstaculo(posXObstaculo, 320);
    }
    this.ganar =false;
    this.perder =false;
  }



  //acciones

  void dibujar() {
    if (this.empiezaJuego()) {
      this.pantallaComenzar.dibujar();
    } else if (this.estoyJugando()) {
      this.fondo.dibujar();
      this.contador.dibujar();
      this.blancanieves.dibujar();

      for (int i=0; i<this.cantObstaculo; i++) {
        this.obstaculo[i].dibujar();
        this.obstaculo[i].moverObstaculo();
        if(obstaculo[i].esSaltado()){
          this.contador.contador+=1;
        }
        //if(this.obstaculo[i].
        //this.contador.contador+=1;
        //this.contador++;
         //if(blancanievesSaltaTodosLosObstaculos(this.blancanieves, this.obstaculo[i])){
             //this.ganar=true;
         //}
        if (blancanievesChocaObstaculo(this.blancanieves, this.obstaculo[i])) {
          this.perder= true;
          //this.ganar=false;
        }
        
      }

      
    }

    if (ganar==true) {
      this.pantallaGanar.dibujar();
      
    } else if (perder==true) {
      
      this.pantallaPerder.dibujar();
      cambiarPantalla();
    }
    }

  

  boolean empiezaJuego() {
    return this.pantallas==0;
  }

  boolean estoyJugando() {
    return this.pantallas == 1;
  }
  
   boolean siPierdo() {
    return this.pantallas == 2;
  }


  void mousePresionado() {
    if (this.empiezaJuego()) {
      cambiarPantalla();
    }/*else if(this.estoyJugando()){
     cambiarPantalla();*/
    //else if (perder==true) {
     // cambiarPantalla();
    //}
  }


  void cambiarPantalla() {
    if (this.empiezaJuego()) {
      pantallas++;
      
    } else if (this.estoyJugando()) {
      pantallas++;
      //miniJuego.finalizar();     //VER
    }// else if (perder==true) {
      //pantallas++;
     // pantallas=0;
    //}
  }


  boolean blancanievesChocaObstaculo(Blancanieves blancanieves, Obstaculo obstaculo) {
    if (dist(blancanieves.posXBlancanieves, blancanieves.posYBlancanieves, obstaculo.posXObstaculo, obstaculo.posYObstaculo)<80){
      return true;
    }
    return false;
  }

  /*boolean blancanievesSaltaTodosLosObstaculos(Blancanieves blancanieves, Obstaculo obstaculo){
   if(this.blancanieves.posXObstaculo< ) {
   this.contador.contador+=1;
   return true;
   }
  
   return false;
   }*/
  }
