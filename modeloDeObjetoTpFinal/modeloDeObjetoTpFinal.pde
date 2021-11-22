AventuraGrafica aventuraGrafica;

void setup(){
  size(500, 500);
  aventuraGrafica= new AventuraGrafica();
}

void draw() {
  background(0);
  aventuraGrafica.dibujar();
}

void mouseClicked() {
  aventuraGrafica.mousePresionado();
}

void keyPressed(){
   aventuraGrafica.teclaPresionada();
}
