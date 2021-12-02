class Creditos {

  //atributos
  int cantPantallas;
  Boton botonReinicio;
  Pantalla [] pantallaCreditos = new Pantalla [11]; 

  int contador, pantalla;

  int direc, walt =0, names=17, names2, musica=-10, musica2=400, musica3, pjp=-10, pj=400, pj2=-0, sec=-30, secp=-70, secp2=0, secp3=0, transparencia;
  float  puntitoX, puntitoY ;
  
  
  //constructores
  Creditos() {
    
    this.botonReinicio = new Boton(#CE9455, "Reiniciar", 20, 0, 340, 450, 150, 40);
    
    this.pantallaCreditos [0] = new Pantalla (0, 35, "Blancanieves\ny los 7 enanitos\n\n\n\nFIN", 90,60);
    this.pantallaCreditos [1] = new Pantalla(1, 38, "Una producción de\n Walt Disney", 20, walt );
    this.pantallaCreditos [2] = new Pantalla(2, 23, "\n                Dirección\n\nDavid Hand          Mickey Mouse\nWilfred Jackson    Bambi\nBen Sharpsteen     William Jackson\nOlaf                    Tarzan\nLilo                     Stitch\nScar                    Úrsula\nJafar                   Pluto", 90, names);
    this.pantallaCreditos [3] = new Pantalla(3, 25, "Larry Morey          Pato Donald\nPerce Pearce          Merida\nTed Sears             Cruella\nMike Wazowski    Yzma", 100, names2 );
    this.pantallaCreditos [4] = new Pantalla(4, 23, "\n                Música\nMinie Mouse     Shrek\nCenicienta        Caperucita Roja\nChayanne         Frank Churchill\nPooh                Tigger\nArie                 Múlan\nElsa                 Anna\nJasmine           Rapunzel", 30, musica);
    this.pantallaCreditos [5] = new Pantalla(5, 23, "Goofy\nMax\nDio\nTyler Joseph\nJosh Dun\nLuis Miguel", 50, musica3 );
    this.pantallaCreditos [6] = new Pantalla(6, 25, "Personajes Principales\nBlancanieves\nDoc\nTímido\nDormilón\nEstornudo", 90, pjp );
    this.pantallaCreditos [7] = new Pantalla(7, 25, "Feliz\nGruñon\nTontin\nLa Reina\n\n             Secundarios\nPrincipe Ferdinand\nEl Cazador\nEl Espejo", pj2, 30);
    this.pantallaCreditos [8] = new Pantalla(8, 20, "Bambi\nAlvin y las ardillas\nBirds\nConejos\nMapaches\nCaballos\nCiervo ", 300, secp2 );
    this.pantallaCreditos [9] = new Pantalla(9, 13, "©Walt Disney Originals", 180, 490);  
    //this.pantallaCreditos [10] = new Pantalla(10, );
    //this.pantallaCreditos [11] = new Pantalla(11, );

    this.cantPantallas = 11;
   
    //this.walt = walt;
     
    this.puntitoX =width/2;
    this.puntitoY= width/2;
     
    //this.estadoCreditos = "pantalla0";
  }



  //acciones
  void dibujar() {
    if (this.pantalla ==0) {
      
      this.pantallaCreditos[0].dibujarPantallaCreditos(90,60);
      noStroke();
      ellipse(puntitoX=random(width), puntitoY=random(height), 10, 10);
      //this.pantallaCreditos[0].transparencia=transparencia+5;
      ///this.transparencia=transparencia+5;
    } 
     
     else if (this.pantalla ==1) {
      this.pantallaCreditos[1].dibujarPantallaCreditos(20,walt);
        
      this.walt =this.walt+2;
      if (this.walt>=40) {
        this.walt=40;
      }
      
    } else if (this.pantalla ==2) {
      this.pantallaCreditos [2].dibujarPantallaCreditos(90, direc);
        this.direc=this.direc+2;
     if ((this.direc>60)/*&&(this.direc>=60)*/) {
        this.direc=60;
      } 
      
    }else if (this.pantalla ==3) {
        this.pantallaCreditos [3].dibujarPantallaCreditos(100, names2 );
         
        this.names2=this.names2+2;
        if (this.names2>=70) {
          this.names2=70;
        }
      }
     else if (this.pantalla ==4) {
      this.pantallaCreditos [4].dibujarPantallaCreditos(100, musica);
      this.musica=this.musica+2;
      if (this.musica>=50){//||(musica<=50))){
        this.musica=50;
      }
    } else if (this.pantalla ==5) {
      this.pantallaCreditos [5].dibujarPantallaCreditos(30, musica3);
      this.musica3=this.musica3+2;
      if (this.musica3>=80) {
        this.musica3=80;
      }
    } else if (this.pantalla==6) {
      this.pantallaCreditos [6].dibujarPantallaCreditos(90, pjp);
      pjp=pjp+2;
      if ((pjp>=40)&&(pjp<=70)) {
        pjp=40;
      }
    } else if (this.pantalla==7) {
      this.pantallaCreditos [7].dibujarPantallaCreditos(pj2, 30);
      pj2=pj2+3;
      if (pj2>=90) {
        pj2=90;
      }
    } else if (this.pantalla==8) {
      this.pantallaCreditos [8].dibujarPantallaCreditos( 300, secp2 );
      secp2=secp2+2;
      if (secp2>=50) {
        secp2=50;
      }
    } else if (this.pantalla==9) {
      this.pantallaCreditos [9].dibujarPantallaCreditos(180, 490);
      this.botonReinicio.dibujar();


    }

  println(this.contador,pantalla);
  this.contador++;
  if ((this.contador % 120)==0) {
    this.pantalla = this.pantalla +1;
    if (this.pantalla>=11) {
      this.pantalla=0;
    }
  }
}
}
