class Boton{
  
  //atributos
  String txt;
  color fillTxt,fillRect ;
  int posX, posY, tamX, tamY, tamTxt;
  
  
  //constructores
  Boton(color fillRect_, String txt_,int tamTxt_, color _fillTxt, int posX_, int posY_, int tamX_, int tamY_){
   
    this.txt = txt_;
    this.tamTxt= tamTxt_;
    this.fillTxt = _fillTxt;
    this.posX = posX_;
    this.posY = posY_;
    this.tamX = tamX_;
    this.tamY = tamY_;
  
   this.fillRect = fillRect_;
   
  }
  
  
  //metodos
  void dibujar(){
    if (mouseX>this.posX && mouseX<this.posX + this.tamX && mouseY>this.posY && mouseY<this.posY + this.tamY){
      fill(this.fillRect, 150); //#B7AD74
    }else{
      fill(this.fillRect, 100); //#837C52
    }
    rect(this.posX, this.posY, this.tamX, this.tamY, 5);
  
   fill(this.fillTxt);
   textSize(this.tamTxt);
   text(txt,this.posX+30, this.posY+30 );
  }
  
  
  boolean mouseSobreBoton(){
    if(mouseX>this.posX && mouseX<this.posX+this.tamX && mouseY>this.posY && mouseY<this.posY + this.tamY){
      return true;
    }else{
      return false;
    }
  }
 
  
 
}
