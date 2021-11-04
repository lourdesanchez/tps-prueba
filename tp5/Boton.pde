class Boton{
  
  //atributos
  
  int x, y, tamX, tamY;
  String txt;
  color _fill;
  
  boolean empiezaJuego;
  
  //constructores
  Boton(int x, int y, int tamX, int tamY, String txt, color _fill){
    this.x=x;
    this.y=y;
    this.tamX=tamX;
    this.tamY=tamY;
    this.txt = txt;
    this._fill = _fill;
  }
  
  
  
   //acciones
  void dibujar(){
    if (mouseX>this.x && mouseX<this.x+this.tamX && mouseY>this.y && mouseY<this.y+this.tamY) {
    fill(#B4B2B2, 150);
  }
    rect(this.x, this.y, this.tamX, this.tamY);
    textSize(15); 
    fill(_fill);
    text(this.txt, this.x+46, this.y+25);
    
  }
  
   void mousePresionado() {
     this.empiezaJuego();
   }
  
  boolean empiezaJuego(){
    if (mouseX>this.x && mouseX<this.x+this.tamX && mouseY>this.y && mouseY<this.y+this.tamY) {
    return true;
  }else
  return false;
}
}
  
//}
