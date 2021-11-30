class Juego {
  //atributos

  J_Boton botonComenzar, botonReiniciar, botonBosque, botonCazador;
  J_Pantalla pantallaComenzar, pantallaGanar, pantallaPerder, pantallaJugar;

  J_Blancanieves blancanieves;
  int cantObstaculo =10;
  J_Obstaculo [] obstaculo = new J_Obstaculo [cantObstaculo];
  J_Fondo fondoJuego;
  int pantalla, contador;

  boolean  perder;

  String estadoDelJuego =  "";
  //constructores
  Juego() {

    this.blancanieves = new J_Blancanieves();

    for (int i=0; i<this.cantObstaculo; i++) {
      int posXObstaculo= 400 * (i+1);
      this.obstaculo[i] = new J_Obstaculo(posXObstaculo, 270);
    }  

    this.pantallaComenzar= new J_Pantalla("A jugar!\n\nJunta 2000 puntos para escapar del cazador", #FFFFFF, 0);
    this.pantallaPerder= new J_Pantalla("Oh no!! D:\n\nTendras que enfrentar al cazador", #FFFFFF, 0);
    this.pantallaGanar= new J_Pantalla("Lo lograste!! :D\n\nAhora puedes escapar al bosque", #FFFFFF, 0);

    this.botonComenzar= new J_Boton("Ir", 280);
    this.botonReiniciar= new J_Boton("Ir", 280);
    this.botonBosque = new J_Boton("Enfrentar al cazador", 280);
    this.botonCazador = new J_Boton("Enfrentar al cazador", 280);
    this.fondoJuego = new J_Fondo();


    this.contador=0;
    this.perder= false;
    this.pantalla=0;
  }



  //acciones
  void dibujar() {
    //dibujo las pantallas y lo que corresponde en cada una de ellas
    if (this.pantalla==0) {
      this.pantallaComenzar.dibujar();
      this.botonComenzar.dibujar();
      //estadoDelJuego = "";
    } else if (this.pantalla==1) {
      background(200);
      this.fondoJuego.dibujar();
      this.blancanieves.dibujar();
      textSize(20);
      fill(#FFFFFF);
      text("Puntos:" + this.contador, 400, 30);
      for (int i=0; i<this.cantObstaculo; i++) {
        this.obstaculo[i].dibujar();

        //colision
        if (this.obstaculo[i].chocarConBlancanieves(this.blancanieves.posXPj, this.blancanieves.posYPj, this.blancanieves.anchoPj, this.blancanieves.altoPj)) {
          this.blancanieves.perder();
        }
        //sumar puntos
        if (saltarObstaculo(this.obstaculo[i])) {
          this.contador++;
        }
      }
      //estadoDelJuego = "";
    }
    if (this.contador>=1500) {
      this.pantalla=3;
      //estadoDelJuego = "ganar";
    } else if (this.perder == this.blancanieves.viva) {
      this.pantalla = 2;
      //estadoDelJuego = "perder";
    } 

    if (this.pantalla==2) {   

      this.pantallaPerder.dibujar();
      this.botonCazador.dibujar();
      //this.botonIrAOtroCamino.dibujar();
    } else if (this.pantalla==3) {

      this.pantallaGanar.dibujar();
      this.botonBosque.dibujar();
      //aventuraGrafica.botonBosque.dibujar();
      //
    }
  }





  void mouseClikeado() {

    if (this.pantalla==0 && this.botonComenzar.estoySobreBoton()) {
      this.pantallaSieguiente();
    }else if(this.pantalla ==3 && this.botonBosque.estoySobreBoton()){
      aventuraGrafica.estado.equals("pantalla5");
    }
    
    
    /* else if (this.pantalla==2 && this.botonReiniciar.estoySobreBoton()) {
      this.perder=false;
      this.contador =0;
      this.pantalla=0;
      this.blancanieves = new J_Blancanieves();
      for (int i=0; i<this.cantObstaculo; i++) {
        int posXObstaculo= 400 * (i+1);
        this.obstaculo[i] = new J_Obstaculo(posXObstaculo, 270);
        this.pantallaSieguiente();
      }
    } else if (this.pantalla==3 && this.botonReiniciar.estoySobreBoton()) {
      this.perder=false;
      this.contador =0;
      this.pantalla=0; 
      this.blancanieves = new J_Blancanieves();
      for (int i=0; i<this.cantObstaculo; i++) {
        int posXObstaculo= 400 * (i+1);
        this.obstaculo[i] = new J_Obstaculo(posXObstaculo, 270);
        this.pantallaSieguiente();
      }
    }*/
  }

  void pantallaSieguiente() {
    if (pantalla==0) {
      this.pantalla=1;
    } /*else if (pantalla==2) {
      this.pantalla=0;
      this.contador=0;
    } else if (pantalla==3 ) { 
      this.pantalla=0;
      this.contador=0;
    }*/
  }


  //para sumar puntos
  boolean saltarObstaculo(J_Obstaculo obstaculo) {
    if (obstaculo.posXObstaculo<=0) {
      return true;
    } else {
      return false;
    }
  }
}
