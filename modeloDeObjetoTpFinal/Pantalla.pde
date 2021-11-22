class Pantalla {

  //atributos

  int cantImgs =4;
  //PImage [] imgs;
  PImage  imgs;
  PFont tipografia;
  String [] introTxt;

  int image, estado;


  //String [] txt;
  color fillTxt, fondo;
  int tamTxt, x, y, separacion, introTXT;
  int cantintroTXT=4;
  /*color fillTxt, fondo;
   int tamTxs, posXTxt, posYTxt;*/

  //int imgs; 

  //constructores
  Pantalla(int imgQueVa_,PImage [] imgs_, String [] introTxt_, color fillTitxt_, color fondo_, int tamTxt_, int posXTxt_, int posYTxt_) {
     
    this.imgs= loadImage("0" + imgQueVa_ + "jpg");
    
    //arreglos
    this.introTxt = introTxt_;
    this.imgs = imgs_;


    this.fillTxt = fillTitxt_;
    this.fondo = fondo_;
    this.tamTxt = tamTxt_;
    this.tipografia = loadFont("Consolas-48.vlw");


    this.x = posXTxt_;
    this.y = posYTxt_;


    for (int i=0; i<cantImgs; i++) {   //for de imagenes
      this.imgs[i] = loadImage( i + ".jpg");
    }

    /*for(int i=0; i<cantintroTXT; i++){//for de textos
     this.introTxt[i] = loadStrings("cuento.txt")[i];
     }*/


    //this.introTxt = loadStrings("cuento.txt");
    this.tipografia = loadFont("Consolas-48.vlw");


    this.estado=1;
    this.separacion=20;
  }


  //metodos

  void dibujarPantallas() {
    if (this.estado==0) {
      image(this.imgs[0], 0, 0, 500, 500);
      textFont(this.tipografia);
      textSize(this.tamTxt);
      fill(this.fillTxt);
      text("Blancanieves y los 7 enanitos\n\n       Aventura gráfica", this.x, this.y);
    } else if (this.estado==1) {
      image(imgs[1], 0, 0, 650, 410 );
      textSize(15);
      for (int i=0; i<2; i++) {
        text(introTxt[i], 10, 450+separacion*i); //10, 450,
      }
    } else if (this.estado==2) {
      image(imgs[2], 0, 0, 650, 410 );
      textSize(15);
      for (int i=0; i<2; i++) {
        text(introTxt[i], 10, 450+separacion*i); //10, 450,
      }
    }
  }



  void teclaPresionada() {
    if (keyCode == RIGHT && estado==1) {
      this.estado=2;
    }

    /* if(this.estado>3){
     this.estado=0;
     }*/
  }
}
