class Juego {
  //atributos


  //MiniJuego miniJuego;
  Boton botonComenzar, botonReiniciar;
  Pantalla pantallaComenzar, pantallaGanar, pantallaPerder, pantallaJugar;
  //Contador contador;

  int cantObstaculo =10;
  Blancanieves blancanieves;
  Obstaculo [] obstaculo = new Obstaculo [cantObstaculo];
  Fondo fondoJuego;
  int pantalla, contador;

  boolean iniciar, jugando, perder, ganar;


  //String pantalla;


  //constructores
  Juego() {

    this.blancanieves = new Blancanieves();

    for (int i=0; i<this.cantObstaculo; i++) {
      int posXObstaculo= 400 * (i+1);
      this.obstaculo[i] = new Obstaculo(posXObstaculo, 295);
    }  

    this.pantallaComenzar= new Pantalla("A jugar!\n\nJunta 2000 puntos para escapar del cazador", #FFFFFF, 0);
    this.pantallaPerder= new Pantalla("Oh no!! D:\n\nTendras que enfrentar al cazador", #FFFFFF, 0);
    this.pantallaGanar= new Pantalla("Lo lograste!! :D\n\nAhora puedes escapar al bosque", #FFFFFF, 0);

    this.botonComenzar= new Boton("Comenzar", 280);
    this.botonReiniciar= new Boton("Reiniciar", 280);

    this.fondoJuego = new Fondo();
    this.contador=0;


    this.iniciar=true;
    this.jugando=false;
    this.perder= false;
    this.ganar=false;

    this.pantalla=0;
  }



  //acciones
  void dibujar() {
    //dibujo las pantallas y lo que corresponde en cada una de ellas
    if (pantalla==0) {
      this.pantallaComenzar.dibujar();
      this.botonComenzar.dibujar();
      println("iniciar");
    } else if ( pantalla==1) {
      background(200);
      this.fondoJuego.dibujar();
      this.blancanieves.dibujar();
      textSize(20);
      fill(#FFFFFF);
      text("Puntos:" + this.contador, 400, 30);
      for (int i=0; i<this.cantObstaculo; i++) {
        this.obstaculo[i].dibujar();

        if (this.obstaculo[i].chocar(this.blancanieves.posXPj, this.blancanieves.posYPj, this.blancanieves.anchoPj, this.blancanieves.altoPj)){
          this.blancanieves.perder();
          //this.pantalla=2;
        }

        if (saltarObstaculo(this.obstaculo[i])) {
          this.contador++;
           
        }
      }
      println("jugando");
    }
    if(contador>=1500){
      this.pantalla=3;
    }

    else if (this.perder == this.blancanieves.viva) {
      this.pantalla = 2;  
    } 

    if (pantalla==2) {   
      this.pantallaPerder.dibujar();
      this.botonReiniciar.dibujar();
      println("perder");
      
    }else if (pantalla==3) {
      this.pantallaGanar.dibujar();
      this.botonReiniciar.dibujar();
      println("ganar");
    }
  }
  
  



  void mouseClikeado() {
    if (this.pantalla==0 && this.botonComenzar.estoySobreBoton()) {
        this.pantallaSieguiente();
      }
    

    else if (this.pantalla==2 && this.botonReiniciar.estoySobreBoton()) {
      this.pantallaSieguiente();
      for (int i=0; i<this.cantObstaculo; i++) {
      int posXObstaculo= 400 * (i+1);
      this.obstaculo[i] = new Obstaculo(posXObstaculo, 295);
    }
    } else if (this.pantalla==3 && this.botonReiniciar.estoySobreBoton()) {
      this.pantallaSieguiente();
      this.blancanieves = new Blancanieves();
     for (int i=0; i<this.cantObstaculo; i++) {
      int posXObstaculo= 400 * (i+1);
      this.obstaculo[i] = new Obstaculo(posXObstaculo, 295);
    }
    }
  }

  void pantallaSieguiente() {
    if (pantalla==0) {
      this.pantalla=1;
    }
    
    if (pantalla==2) {
      this.pantalla=0;
      this.contador=0;
      
    } if (pantalla==3 ) { 
    
      this.pantalla=0;
      this.contador=0;
    }
  }



  boolean saltarObstaculo(Obstaculo obstaculo) {
    if (obstaculo.posXObstaculo<=0) {
      return true;
    } else {
      return false;
    }
  }
}









  /*boolean chocar(Obstaculo obstaculo, Personaje personaje) {
   if (dist(obstaculo.posXObstaculo, obstaculo.posYObstaculo, personaje.posXPj, personaje.posYPj)<80) {
   return perder = true;
   
   } else {
   return perder = false;
   
   }*/
  // }



/*boolean iniciar(){
 return pantalla==0;
 }*/

/*boolean empiezaJuego(){
 return pantalla==1;
 }*/

/*boolean perdioJuego(){
 return pantalla==2;
 }*/



/*if (this.pantalla.equals("empezar")){ //esto es lo mismo que poner = if(this.pantalla=="inicio")   
 this.pantallaComenzar.dibujar();
 this.botonComenzar.dibujar();
 println("empezar");
 
 } else if (this.pantalla.equals("jugando")) {
 
 this.miniJuego.dibujar();
 println("jugando");
 
 } else if (this.pantalla.equals("ganar")) {
 println("ganar");
 this.botonReiniciar.dibujar();
 
 } else if (this.pantalla.equals("perder")) {
 background(0);
 println("perder");
 this.botonReiniciar.dibujar();
 
 }
 }
 
 
 void mouseClikeado() {
 //conecto las pantallas para que me lleve a la que corresponde
 if (this.pantalla.equals("empezar") && this.botonComenzar.estoySobreBoton()) {  
 this.cambioDePantallas("jugando");
 } //else if (this.pantalla.equals("jugando")) {
 
 
 //this.cambioDePantallas("ganar");
 else if (this.pantalla.equals("ganar") && this.botonReiniciar.estoySobreBoton() ) {
 this.cambioDePantallas("empezar");
 } else if (this.pantalla.equals("perder")) {
 this.cambioDePantallas("empezar");
 }
 }
 
 
 //metodos para cambio de pantallas
 
 void cambioDePantallas(String nuevaPantalla ){
 //los valores que contienen las pantallas van a ser 0
 this.pantalla = nuevaPantalla;
 if(nuevaPantalla.equals("empezar")){
 
 
 
 }else if(nuevaPantalla.equals("jugando")){
 this.miniJuego.empezar();
 
 }else if (nuevaPantalla.equals("perder")){
 this.miniJuego.finalizar();
 }
 
 
 }*/
