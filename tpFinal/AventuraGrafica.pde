class AventuraGrafica {

  //atributos
  Creditos creditos;
  Juego juego;
  Boton botonComenzar, botonCreditos, botonReiniciar, botonBosque,botonConfesar ;

  int cantPantallas =24;
  Pantalla [] pantalla = new Pantalla [cantPantallas]; 

  String estado;

  int separacion=20;
  //constructores
  AventuraGrafica() { 

    this.creditos = new Creditos(); 
    //this.historia = new Historia();
    this.juego = new Juego();

    this.botonComenzar = new Boton(#B7AD74, "Comenzar",20, 0, 180, 250, 140, 50);
    this.botonCreditos = new Boton(#B7AD74, "Creditos",20, 0, 180, 350, 140, 50);
    this.botonReiniciar = new Boton(#CE9455, "Reiniciar", 20, 0, 340, 450, 150, 40);
    this.botonConfesar = new Boton( #58AF8F,"ir a confesar al\ncastillo", 13, 0, 340, 430, 150, 50);
    this.botonBosque = new Boton(#5889AF, "Huir al bosque",13, 0, 10, 430, 150, 50);

    for (int i=0; i<cantPantallas; i++) {
      
      this.pantalla[0] = new Pantalla(0, 500, 500, "Blancanieves y los 7 enanitos\n\n       Aventura gráfica", 30, 10, 90);
      this.pantalla[1] = new Pantalla(1, 650, 410, "Blancanieves era la joven mas hermosa de su reino debido\na su encantadora tez que era blanca como la nieve", 13, 10, 450);
      this.pantalla[2] = new Pantalla(2, 500, 410, "La reina, que era su madrastra, tenia muchos celos de ella y decide\nidear un plan para deshacerse e la joven.\nContrata a un cazador para que mate a Blancanieves y le traiga su\ncorazón como prueba de ello.", 13, 10, 440);
      this.pantalla[3] = new Pantalla(3, 500, 410, "El cazador encuentra a Blancanieves y se prepara para atacarla,\npero ella se da cuenta a tiempo.... ", 13, 10, 440);

      //EMPIEZA HISTORIA PRINCIPAL
      this.pantalla[5] = new Pantalla(4, 500, 410, "Blancanieves huye hacia el bosque en busca de ayuda pero solo es\nsocorrida por los animales, quienes la guían a una pequeña casita que\nse encontraba por los alrededores.", 13, 10, 440);
      this.pantalla[6] = new Pantalla(5, 500, 410, "Se adentra a la pequeña casita pero noto que no había nadie en ella\ny como estaba muy cansada decide acostarse en una de las camas y\ndormir.", 13, 10, 450);
      this.pantalla[7] = new Pantalla(6, 500, 410, "Cuando se despierta, encuentra a 7 enanitos rodeándola, se asusta\npero de inmediato se da cuenta de que no van a lastimarla.", 13, 10, 450 );
      this.pantalla[8] = new Pantalla(7, 500, 410, "Blancanieves le cuenta su situación a los enanos y estos deciden\nayudarla a cambio de que cuide la casa, ella acepta y decide\nquedarse.", 13, 10, 440 );
      this.pantalla[9] = new Pantalla(8, 500, 410, "Al día siguiente los enanos se van a trabajar y Blancanieves se\nqueda sola en la casa.\nTodo estaba tranquilo hasta que una anciana se asoma por la ventana\ny le ofrece una manzana.", 13, 10, 435);
      this.pantalla[10] = new Pantalla(9, 500, 410, "Blancanieves tuvo que aceptar debido a la insistencia de la anciana\ny cuando muerde la manzana cae desmayada.\nCuando los enanitos llegan a la casa ya era demasiado tarde,\nBlancanieves se encontraba tirada en el suelo totalmente\ninconsciente.", 13, 10, 430 );
      this.pantalla[11] = new Pantalla(10, 500, 410, "Los enanitos la dieron por muerta y comenzaron a preparar todo para\nsu funeral. La colocaron adentro de un ataúd de cristal y la\nllevaron afuera, donde le habían preparado un santuario.", 13, 10, 440  );
      this.pantalla[12] = new Pantalla(11, 500, 410, "De repente aparece un joven que estaba recorriendo los alrededores\ny al ver a los enanos le dio curiosidad por lo que estaba pasando.\nSe acerca y lo primero que nota es el cuerpo de Blancanieves. Se\nacercaaun más al ataud y le da un beso a la princesa.", 13, 10, 440);
      this.pantalla[13] = new Pantalla(12, 500, 410, "La princesa magicamente despierta y todos se quedan sorprendidos.\nEl joven habia roto el hechizo que la tenia desmayada. ", 13, 10, 450);
      this.pantalla[14] = new Pantalla(13, 500, 390, "Ella le agradece y el joven le propone ir a su reino para que la\nviera un doctor, Blancanieves acepta y se despide de los enanos\npara emprender otro viaje.\nFinalmente se casaron y vivieron felices comiendo perdices. ", 13, 10, 425 );
      this.pantalla[15] = new Pantalla(17, 500, 430, "FIN", 30, 20, 470 );

      //EMPIEZA HISTORIA ALTERNA 1
      this.pantalla[16] = new Pantalla(14, 500, 400, "Blancanieves enfrenta al casador y logra apuñalarlo. Esconde su\ncuerpo sigilosamente por el bosque, en un lugar donde nadie pueda\nverlo.", 13, 10, 445  );
      this.pantalla[17] = new Pantalla(22, 500, 350, "Blancanieves estaba adesesperada, habia cometido un delito que podía\ncostarle su libertad, pero todo había sido en defensa propia.\nEntonces pensó que tal vez dialogando podría llegar a un acuerdo.\n¿Cuál de las opciones es la mejor?", 13, 10, 368  );
     
      this.pantalla[18] = new Pantalla(15, 500, 420, "Blancanieves va a confesar al castillo lo que había hecho, pero sin\npruebas suficiente y manchada de sangre no le creyeron.", 13, 10, 450 );
      this.pantalla[19] = new Pantalla(19, 500, 400, "Fue llevada a juicio y condenada a cadena perpetua. Ahora tenia\nque pasar toda su vida dentro de un calabozo por un crimen que\nfue obligada a cometer, todo por culpa de los celos de la reina.", 13, 10, 440 );
      this.pantalla[20] = new Pantalla(20, 500, 430, "FIN", 20, 10, 470);

      //EMPIEZA HISTORIA ALTERNA 2
      this.pantalla[21] = new Pantalla(16, 500, 430, "Blancanieves huye hacia en bosque toda manchada de sangre, ya no\npodía volver a su hogar por más que quisiera, porque sabía que\nnadie le iba creer.", 13, 10, 450   );
      this.pantalla[22] = new Pantalla(18, 500, 430, "No tenia otra opción más que vagar por el bosque durante el resto\nde sus días o hasta que encontrara una solución... ", 13, 10, 460 );
      this.pantalla[23] = new Pantalla(21, 500, 430, "FIN", 20, 10, 470   );
   }

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
      if (this.juego.contador>=1200) {
        this.estado = "pantalla5";
        println("pantalla5");
      } else if (this.juego.perder()) {
        this.estado = "pantalla16";
      }

      //EMPIEZA HISTORIA PRINCIPAL
    } else if (this.estado.equals("pantalla5")) { 
      this.pantalla[5].dibujarPantallas();
    } else if (this.estado.equals("pantalla6")) {
      this.pantalla[6].dibujarPantallas();
    } else if (this.estado.equals("pantalla7")) {
      this.pantalla[7].dibujarPantallas();
    } else if (this.estado.equals("pantalla8")) {
      this.pantalla[8].dibujarPantallas();
    } else if (this.estado.equals("pantalla9")) {
      this.pantalla[9].dibujarPantallas();
    } else if (this.estado.equals("pantalla10")) {
      this.pantalla[10].dibujarPantallas();
    } else if (this.estado.equals("pantalla11")) {
      this.pantalla[11].dibujarPantallas();
    } else if (this.estado.equals("pantalla12")) {
      this.pantalla[12].dibujarPantallas();
    } else if (this.estado.equals("pantalla13")) {
      this.pantalla[13].dibujarPantallas();
    } else if (this.estado.equals("pantalla14")) {
      this.pantalla[14].dibujarPantallas();
    } else if (this.estado.equals("pantalla15")) {
      this.pantalla[15].dibujarPantallas();
      this.botonReiniciar.dibujar();
    }
    
    ///HISTORIA ALTERNA 1
     else if (this.estado.equals("pantalla16")) {
      this.pantalla[16].dibujarPantallas();
     }else if (this.estado.equals("pantalla17")) {
      this.pantalla[17].dibujarPantallas();
      
      this.botonConfesar.dibujar();
      this.botonBosque.dibujar();
      
      
     }else if (this.estado.equals("pantalla18")) {
      this.pantalla[18].dibujarPantallas();
     }else if (this.estado.equals("pantalla19")) {
      this.pantalla[19].dibujarPantallas();
     }else if (this.estado.equals("pantalla20")) {
      this.pantalla[20].dibujarPantallas();
      this.botonReiniciar.dibujar();
     }
    
     ///HISTORIA ALTERNA 2
    else if (this.estado.equals("pantalla21")) {
      this.pantalla[21].dibujarPantallas();
     }else if (this.estado.equals("pantalla22")) {
      this.pantalla[22].dibujarPantallas();
     }else if (this.estado.equals("pantalla23")) {
      this.pantalla[23].dibujarPantallas();
      this.botonReiniciar.dibujar();
     }
    
    else if(this.estado.equals("creditos")){
      this.creditos.dibujar();
      //this.creditos.cambiarPantalla();
    }
  }

//CAMBIO DE PANTALLA POR DECISIÓN TOMADA
  void mousePresionado() {  
    if (this.estado.equals("inicioAventura") && this.botonComenzar.mouseSobreBoton()) {  
      this.estado = "pantalla1";
    } else if (this.estado.equals("inicioAventura") && this.botonCreditos.mouseSobreBoton()) {
      this.estado = "creditos";
    } else if (this.estado.equals("pantalla4")) {
      this.juego.mouseClikeado();
    }
     
     //DECISIÓN
     else if(this.estado.equals("pantalla17") && this.botonConfesar.mouseSobreBoton()){
       this.estado = "pantalla18";
     }
     else if(this.estado.equals("pantalla17") && this.botonBosque.mouseSobreBoton()){
       this.estado = "pantalla21";
     }
     
     
     //REINICIO H1
    else if(this.estado.equals("pantalla15") && this.botonReiniciar.mouseSobreBoton()){
      this.estado = "inicioAventura";
      this.juego = new Juego();
     
      //this.juego.contador=0;
    }
    
     //REINICIO H2
    else if(this.estado.equals("pantalla20") && this.botonReiniciar.mouseSobreBoton()){
      this.estado = "inicioAventura";
      this.juego = new Juego();
     
      //this.juego.contador=0;
    }
    
     //REINICIO H2
    else if(this.estado.equals("pantalla23") && this.botonReiniciar.mouseSobreBoton()){
      this.estado = "inicioAventura";
      this.juego = new Juego();
     
      //this.juego.contador=0;
    }
    
      //REINICIO CREDITOS
    else if(this.creditos.pantalla==9 && this.creditos.botonReinicio.mouseSobreBoton()){
      this.estado = "inicioAventura";
      this.juego = new Juego();
      this.creditos = new Creditos();
     // this.juego.contador=0;
    }
    
    
  }
  
  
//CAMBIO DE PANTALLA CON LAS TECLAS
  void teclaPresionada() {
    if (this.estado.equals("pantalla1") && keyCode == RIGHT) {
      this.estado = "pantalla2";
      //this.pantalla[1].teclaPresionada();
    } else if (this.estado.equals("pantalla2") && keyCode == RIGHT) {
      this.estado = "pantalla3";
    } else if (this.estado.equals("pantalla3") && keyCode == RIGHT) {
      this.estado = "pantalla4";
      
      //HISTORIA PRINCIPAL
    } else if (this.estado.equals("pantalla5") && keyCode == RIGHT) {
      this.estado = "pantalla6";
    } else if (this.estado.equals("pantalla6") && keyCode == RIGHT) {
      this.estado = "pantalla7";
    } else if (this.estado.equals("pantalla7") && keyCode == RIGHT) {
      this.estado = "pantalla8";
    } else if (this.estado.equals("pantalla8") && keyCode == RIGHT) {
      this.estado = "pantalla9";
    } else if (this.estado.equals("pantalla9") && keyCode == RIGHT) {
      this.estado = "pantalla10";
    } else if (this.estado.equals("pantalla10") && keyCode == RIGHT) {
      this.estado = "pantalla11";
    } else if (this.estado.equals("pantalla11") && keyCode == RIGHT) {
      this.estado = "pantalla12";
    } else if (this.estado.equals("pantalla12") && keyCode == RIGHT) {
      this.estado = "pantalla13";
    } else if (this.estado.equals("pantalla13") && keyCode == RIGHT) {
      this.estado = "pantalla14";
    } else if (this.estado.equals("pantalla14") && keyCode == RIGHT) {
      this.estado = "pantalla15";
      
      //HISTORIA ALTERNA 1
    } else if (this.estado.equals("pantalla16") && keyCode == RIGHT) {
      this.estado = "pantalla17";
    
    } else if (this.estado.equals("pantalla18") && keyCode == RIGHT) {
      this.estado = "pantalla19";
    } else if (this.estado.equals("pantalla19") && keyCode == RIGHT) {
      this.estado = "pantalla20";
    }
    
    //HISTORIA ALTERNA 2
    else if (this.estado.equals("pantalla21") && keyCode == RIGHT) {
      this.estado = "pantalla22";
    }  else if (this.estado.equals("pantalla22") && keyCode == RIGHT) {
      this.estado = "pantalla23";
    } 
    
  }
}
