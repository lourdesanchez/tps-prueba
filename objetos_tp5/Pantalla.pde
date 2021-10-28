class Pantalla{
   //atributos
  
  String texto;
  
  
  //constructores
  Pantalla(String texto){
    this.texto = texto;
  }
  
  
  
  
  //acciones
  
  void dibujar(){
    textSize(20);
    textAlign(CENTER);
    text(this.texto, width/2, height/2);
  }
  
  
}
