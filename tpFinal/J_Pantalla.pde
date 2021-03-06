class J_Pantalla {
  //atributos

  PFont tipografia;
  String texto;
  color  _colorTexto, fondo;
  

  //constructores
  J_Pantalla( String texto, color _colorTexto, color fondo_) {
    

    this.texto = texto;
    this._colorTexto = _colorTexto;
    this.tipografia = loadFont("Consolas-48.vlw");
    this.fondo= fondo_;
  }



  //acciones

  void dibujar() {
    textFont(this.tipografia);
    background(fondo);
    fill(_colorTexto);
    textSize(20);
    text(this.texto, 30, 150);
  }
}
