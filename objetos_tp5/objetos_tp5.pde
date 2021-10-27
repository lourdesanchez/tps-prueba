Juego juego;

void setup(){
  size(500,400);
  juego= new Juego();
  

}

void draw(){
  background(200);
  juego.dibujar();

  
}

void mouseClicked(){
  juego.dibujar();
  //juego.movimientoObstaculo();
}

void keyPressed(){
  juego.movimientoYSaltoBlancanieves();
 
}
