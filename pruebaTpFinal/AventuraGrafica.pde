class AventuraGrafica {

  //atributos
  // Historia historia;
  //Creditos creditos;
  Juego juego;
  Boton botonComenzar, botonCreditos, botonCazador, botonBosque;

  int cantPantallas =10;
  Pantalla [] pantalla = new Pantalla [cantPantallas]; 

  String estado;

  boolean DEBUG;

  int separacion=20;
  //constructores
  AventuraGrafica() { 

    // this.creditos = new Creditos(); 
    //this.historia = new Historia();
    this.juego = new Juego();

    this.botonComenzar = new Boton( "Comenzar", 0, 180, 250, 140, 50);
    this.botonCreditos = new Boton( "Creditos", 0, 180, 350, 140, 50);
    this.botonBosque = new Boton( "Ir al bosque", 0, 180, 350, 140, 50);
    this.botonCazador = new Boton( "Enfrentar al cazador", 0, 180, 350, 140, 50);

    for (int i=0; i<cantPantallas; i++) {

      this.pantalla[0] = new Pantalla(0, 0, 500, 500, #FFFFFF, "Blancanieves y los 7 enanitos\n\n       Aventura gráfica", 30, 10, 90);
      this.pantalla[1] = new Pantalla(0, 1, 650, 410, #FFFFFF, "Blancanieves era la joven mas hermosa de su reino debido\na su encantadora tez que era blanca como la nieve", 13, 10, 450+separacion);
      this.pantalla[2] = new Pantalla(0, 2, 500, 420, #FFFFFF, "La reina, que era su madrastra, tenia muchos celos de ella y decide\nidear un plan para deshacerse e la joven.\nContrata a un cazador para que mate a Blancanieves y le traiga su\ncorazón como prueba de ello.", 13, 10, 440+separacion);
      this.pantalla[3] = new Pantalla(0, 3, 500, 370, #FFFFFF, "El cazador encuentra a Blancanieves y se prepara para atacarla,\npero ella se da cuenta a tiempo.... ", 13, 10, 390);
      this.pantalla[4] = new Pantalla(0, 4, 500, 370, #FFFFFF, "Blancanieves huye hacia el bosque en busca de ayuda\npero solo es socorrida por los animales, quienes la guían a una pequeña casita que se encontraba por los alrededores.", 13, 10, 430+separacion);
    }



    this.DEBUG=false;

    this.estado = "inicioAventura";
  }


  //metodos
  void dibujar() {

    if (this.estado.equals("inicioAventura")) { 
      this.pantalla[0].dibujarPantallas();
      this.botonComenzar.dibujar();
      this.botonCreditos.dibujar();
    } else if (this.estado.equals("pantalla1")) { 
      this.pantalla[1].dibujarPantallas();
    } else if (this.estado.equals("pantalla2")) { 
      this.pantalla[2].dibujarPantallas();
    } else if (this.estado.equals("pantalla3")) { 
      this.pantalla[3].dibujarPantallas();
    } else if (this.estado.equals("pantalla4")) { 
      this.juego.dibujar();
    } else if (this.estado.equals("pantalla4")) { 
      this.pantalla[4].dibujarPantallas();
      //this.pantalla[4].dibujarPantallas();
    } else if (this.estado.equals("comienzaHistoria")) {    
      //this.historia.dibujar();
    }
    
  }

  void mousePresionado() {  
    if (this.estado.equals("inicioAventura") && this.botonComenzar.mouseSobreBoton()) {  
      this.estado = "pantalla1";
    } else if (this.estado.equals("inicioAventura") && this.botonCreditos.mouseSobreBoton()) {
      this.estado = "creditos";
    } else if (this.estado.equals("pantalla4")) {
      this.juego.mouseClikeado();
      //println("Jugar");
    } else if (this.juego.pantalla == 3 && this.botonCazador.mouseSobreBoton()) {
      this.juego.mouseClikeado();
      this.estado = "pantalla5";
      //println("Enfrentar al cazador");
    } else if (this.juego.pantalla == 2 &&this.botonBosque.mouseSobreBoton()) {
      this.juego.mouseClikeado();
      this.estado = "pantalla11";
      //println("Ir al bosque");
    }
  }

  void teclaPresionada() {
    if (this.estado.equals("pantalla1") && keyCode == RIGHT) {
      this.estado = "pantalla2";
      //this.pantalla[1].teclaPresionada();
    } else if (this.estado.equals("pantalla2") && keyCode == RIGHT) {
      this.estado = "pantalla3";
    } else if (this.estado.equals("pantalla3") && keyCode == RIGHT) {
      this.estado = "pantalla4";
    }else if (this.estado.equals("pantalla5") && keyCode == RIGHT) {
      this.estado = "pantalla6";
  }
}
}
