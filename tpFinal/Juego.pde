class Juego {
  //atributos

  J_Boton botonComenzar;//, botonReiniciar, botonBosque, botonCazador;
  J_Pantalla pantallaComenzar;//, pantallaGanar, pantallaPerder, pantallaJugar;

  J_Blancanieves blancanieves;
  int cantObstaculo =10;
  J_Obstaculo [] obstaculo = new J_Obstaculo [cantObstaculo];
  J_Fondo fondoJuego;
  int pantalla, contador;

  boolean  perder;

  //String estadoDelJuego =  "";
  //constructores
  Juego() {

    this.blancanieves = new J_Blancanieves();

    for (int i=0; i<this.cantObstaculo; i++) {
      int posXObstaculo= 400 * (i+1);
      this.obstaculo[i] = new J_Obstaculo(posXObstaculo, 270);
    }  

    this.pantallaComenzar= new J_Pantalla("\n\n                 A jugar!       \n\nJunta 2000 puntos para escapar del cazador", #FFFFFF, 0);
    this.botonComenzar= new J_Boton("Ir", 280);
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
    } else if (this.pantalla==1) {
      background(200);
      this.fondoJuego.dibujar();
      this.blancanieves.dibujar();
      textSize(20);
      fill(#FFFFFF);
      text("Puntos:" + this.contador, 350, 30);
      for (int i=0; i<this.cantObstaculo; i++) {
        this.obstaculo[i].dibujar();

        //sumar puntos
        if (saltarObstaculo(this.obstaculo[i])) {
          this.contador++;
        }
      }
    }
  }
  
  
  void actualizarJuego(){
    
  }
  //colision
  boolean perder() {
    for (int i=0; i<this.cantObstaculo; i++) {
      if (this.obstaculo[i].chocarConBlancanieves(this.blancanieves.posXPj, this.blancanieves.posYPj, this.blancanieves.anchoPj, this.blancanieves.altoPj)) {
        this.blancanieves.perder();
        return true;
      }
    }
    return false;
  }


  void mouseClikeado() {

    if (this.pantalla==0 && this.botonComenzar.estoySobreBoton()) {
      this.pantallaSieguiente();
    }
  }

  void pantallaSieguiente() {
    if (pantalla==0) {
      this.pantalla=1;
    }
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
