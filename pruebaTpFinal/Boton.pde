class Boton{
  
  //atributos
  String txt;
  color fillTxt;
  int posX, posY, tamX, tamY;
  
  
  //constructores
  Boton(String txt_, color _fillTxt, int posX_, int posY_, int tamX_, int tamY_){
   
    this.txt = txt_;
    this.fillTxt = _fillTxt;
    this.posX = posX_;
    this.posY = posY_;
    this.tamX = tamX_;
    this.tamY = tamY_;
  
  }
  
  
  //metodos
  void dibujar(){
    if (mouseX>this.posX && mouseX<this.posX + this.tamX && mouseY>this.posY && mouseY<this.posY + this.tamY){
      fill(#B7AD74, 150);
    }else{
      fill(#837C52, 100);
    }
    rect(this.posX, this.posY, this.tamX, this.tamY, 5);
  //textAlign(CENTER);
   fill(fillTxt);
   textSize(20);
   text(txt,this.posX+30, this.posY+30 );
  }
  
  
  boolean mouseSobreBoton(){
    if(mouseX>this.posX && mouseX<this.posX+this.tamX && mouseY>this.posY && mouseY<this.posY + this.tamY){
      return true;
    }else{
      return false;
    }
  }
 
  
  void teclaPresionada(){
    
  }
}
