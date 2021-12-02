AventuraGrafica aventuraGrafica;
void setup(){
  size(500, 500);
  aventuraGrafica= new AventuraGrafica();
}

void draw() {
  background(0);
  aventuraGrafica.dibujar();
  //println(mouseX, mouseY);
}

void mouseClicked() {
  aventuraGrafica.mousePresionado();
}

void keyPressed(){
   aventuraGrafica.teclaPresionada();
}
