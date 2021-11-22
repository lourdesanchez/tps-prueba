class Creditos {

  
  //atributos
  PImage [] imgCreditos;
  PFont letra;
  //PImage imagen0, imagen1, imagen2, imagen3, imagen4, imagen5, imagen6, imagen7, imagen8, imagen9, imagen10;
  int transparencia, contador;
  int direc, walt, names=17, names2, musica=-10, musica2=400, musica3, pjp=-10, pj=400, pj2=-0, sec=-30, secp=-70, secp2=0, secp3=0;
  float puntitoX, puntitoY;
  int cantImgCreditos=10;



  //constructores
  Creditos(){
    
    this.imgCreditos = new PImage [this.cantImgCreditos];
    for(int i=0; i<cantImgCreditos; i++){
   //imgCreditos[i] = loadImage("0" + i + ".jpg");
  }
 
    
  }






  //metodos
  void dibujar() {
  }

  void mousePresionado() {
  }

  void teclaPresionada() {
  }
}
