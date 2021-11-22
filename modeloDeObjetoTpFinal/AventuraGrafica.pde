class AventuraGrafica {

  //atributos
  Historia historia;
  Creditos creditos;
  Boton botonComenzar, botonCreditos;
  //Pantalla pantallaTxtTitulo, pantallaTxtSubTutulo2;

  int cantPantallas =10;
  Pantalla [] pantalla = new Pantalla [cantPantallas]; 



  String [] introTxt; 
  String estado;
   
   
   boolean DEBUG;
  //int cantimgIntro=4, imgs; 

  //int pantallas,i;


  //constructores
  AventuraGrafica() { 

    this.creditos = new Creditos(); 
    this.historia = new Historia();



    /*for (int i=0; i<cantPantallas; i++) {
      this.pantalla[i] = new Pantalla("",10, #FFFFFF, 0, 30, 20, 90);
    }*/


    this.botonComenzar = new Boton( "Comenzar", 0, 180, 250, 140, 50);
    this.botonCreditos = new Boton( "Creditos", 0, 180, 350, 140, 50);
    this.pantalla= new Pantalla( 0, ( i+"jpg"),("cuento.txt".[i]), 0, 30,50, 90);


    this.DEBUG=true;
    //this.imgIntro = new PImage [this.cantimgIntro];

    //this.imgIntro= loadImage(imgs+".jpg");

    /*for (int i=0; i<cantPantallas; i++) {
     imgIntro = loadImage( imgs + ".jpg");
     
     }*/
    /*for (int i=0; i<cantimgIntro; i++) {
     imgIntro[i] = loadImage(i+".jpg");
     }*/
    //this.imgIntro= loadImage(i+".jpg");

    //this.tipografia = loadFont("Consolas-48.vlw");

    this.estado = "inicioAventura";
    //this.tipografia = 1;
  }




  //metodos
  void dibujar() {
    if (this.estado.equals("inicioAventura")) { 
      for (int i=0; i<cantPantallas; i++) {
      this.pantalla[i] = new Pantalla(0,  ); /*"",loadImage(i + "jpg"), #FFFFFF, 0, 30, 20, 90);*/       
      image();
      }     
       
      //textFont(tipografia);
      //this.intro.dibujar();
      //image(imgIntro, 0, 0, 500, 500);
      //this.pantalla[0].dibujarPantallas();
      //this.pantallaTxtTitulo.dibujar();
      this.botonComenzar.dibujar();
      this.botonCreditos.dibujar();
    } else if (this.estado.equals("pantalla1")) { 
      this.pantalla[1].dibujarPantallas();
    } else if (this.estado.equals("pantalla2")) { 
      this.pantalla[2].dibujarPantallas();
    } else if (this.estado.equals("pantalla3")) { 
      this.pantalla[3].dibujarPantallas();
    } else if (this.estado.equals("pantalla4")) { 
      this.pantalla[4].dibujarPantallas();
    } else if (this.estado.equals("comienzaHistoria")) {    
      this.historia.dibujar();
    }
    if(this.DEBUG){
      fill(0,250,0);
      text("pantalla:"+pantalla,20,40);
    }
  }

  void mousePresionado() {  
    if (this.estado.equals("inicioAventura") && this.botonComenzar.mouseSobreBoton()) {  
      this.estado = "pantalla1";
    } else if (this.estado.equals("inicioAventura") && this.botonCreditos.mouseSobreBoton()) {
      this.estado = "creditos";
    }
  }


  //this.intro.mousePresionado();


  void teclaPresionada() {
    if (this.estado.equals("pantalla1") && keyCode == RIGHT) {
      this.estado = "pantalla2";
      this.pantalla[1].teclaPresionada();
    } else if (this.estado.equals("pantalla2") && keyCode == RIGHT) {
      this.estado = "pantalla3";
    } else if (this.estado.equals("pantalla3") && keyCode == RIGHT) {
      this.estado = "pantalla4";
    }

    /*if((this.estado.equals("pantalla4")< this.estado.equals("pantalla4") )
     
     
     }*/
  }
}
