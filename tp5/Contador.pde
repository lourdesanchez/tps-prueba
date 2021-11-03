class Contador{
  //atributos
  
  
   String score;
   color fill_;
   int contador;
   boolean ganar;

  //constructores
  Contador(/*String score, int contador*/ color fill_){
    //this.score = score;
    this.fill_ = fill_;
    this.ganar=false;
    //this.contador=contador;
  }
  /*Contador(int contador){
    this.contador=contador;
  }*/

  
  
  //acciones
  void dibujar(){
    fill(this.fill_);
    text("Score:" + contador, 400, 70 );
   // this.contador= this.contador+1;
    //if(this.contador==10){
      //ganar=true;
    //}
  }
  
}
