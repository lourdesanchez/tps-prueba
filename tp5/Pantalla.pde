class Pantalla{
   //atributos
  
  PFont tipografia;
  String texto;
  color _colorFondo, _colorTexto;
  
  
  //constructores
  Pantalla(String texto, color _colorFondo, color _colorTexto ){
    this.texto = texto;
    this._colorFondo = _colorFondo;
    this._colorTexto = _colorTexto;
    this.tipografia = loadFont("Consolas-48.vlw");
  }
  
  
  
  
  //acciones
  
  void dibujar(){
    textFont(this.tipografia);
    background(_colorFondo);
    fill(_colorTexto);
    textSize(20);
    textAlign(CENTER);
    text(this.texto, 250, 150);
  }
  
  
}
