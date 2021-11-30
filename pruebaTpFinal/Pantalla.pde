class Pantalla {
  
  //atributos
  PImage  numImg;
  PImage [] imgs ;
  
  
  PFont tipografia;
  String texto;
  
  color fillTxt, fondo;
  int posXImg, posYImg, tamTxt, posXTxt,posYTxt;
  
  
  //constructores
  Pantalla(color fondo_,int numImg_, int posXImg_, int posYImg_, color fillTxt_, String texto_, int tamTxt_, int posXTxt_,int posYTxt_){
    
    this.tipografia = loadFont("Consolas-48.vlw");
    
    this.fondo = fondo_;
    this.numImg = loadImage( numImg_ + ".jpg");
    this.posXImg = posXImg_;
    this.posYImg = posYImg_;
    this.fillTxt = fillTxt_;
    this.tamTxt = tamTxt_;
    this.texto = texto_;
    this.posXTxt = posXTxt_;
    this.posYTxt = posYTxt_;
    
  }
  
  
  
  //metodos
  void dibujarPantallas(){
    background(this.fondo);
    image(this.numImg ,0,0, this.posXImg, this.posYImg);
    fill(this.fillTxt);
    //textAlign(CENTER);
    textFont(tipografia);
    textSize(this.tamTxt);
    text(this.texto, this.posXTxt, this.posYTxt);
    
    
  }
  
  
  
}
