class Blancanieves {
  //atributos

  PImage blancanieves;

  float posXPj, posYPj, anchoPj, altoPj, posActual;
  float velocidad, limiteSalto, alturaSalto, suelo, limiteDeSalto;
  boolean saltando, bajar, subir, viva;


  //constructores
  Blancanieves() {

    //this.contador = new Contador();
     this.blancanieves = loadImage("Blancanieves1.png");

    this.anchoPj = 90;
    this.altoPj = 150;
    this.posXPj = 10;
    this.posYPj = 200;
    //this.posActual;


    this.velocidad = 5;
    this.alturaSalto = 100;
    this.suelo = this.posYPj;

    this.limiteDeSalto = this.alturaSalto ;
    this.subir = true;

    this.viva=true;
  }







  //acciones
  void dibujar() {
    if (viva) {
      //rect(this.posXPj, this.posYPj, this.anchoPj, this.altoPj);
      image(this.blancanieves,this.posXPj, this.posYPj, this.anchoPj, this.altoPj);
      this.actualizar();
    }
  }

  void actualizar() {

    if (keyPressed && keyCode == UP) {
      println("UP");
      this.saltando = true;
      if (saltando ==true) {
      }
      //println("contador");
    } 
    if (keyPressed && keyCode == LEFT) {
      this.posXPj -= this.velocidad ;
    } 
    if (keyPressed && keyCode == RIGHT) {
      this.posXPj += this.velocidad;
    }  
    if (this.saltando == true) {
      this.logicaDeSalto();
    }
  }

  void logicaDeSalto() {
    if (this.subir == true && this.bajar == false) {
      this.posYPj = this.posYPj-6;
      if (this.posYPj < this.limiteDeSalto) {
        this.bajar  = true;
        this.subir = false;
      }
    } else if (this.subir == false && this.bajar == true) {
      this.posYPj=this.posYPj+6;
      if (this.posYPj >= this.suelo) {
        this.bajar  = false;
        this.subir = true;
        this.saltando = false;
      }
    }
    println(this.subir);
  }

  void perder() {
    viva=false;
  }
}

  /*boolean chocar(int posXObstaculo, int posYObstaculo, int anchoObstaculo, int altoObstaculo) {
    if (
      posXObstaculo-anchoObstaculo/2 < this.posXPj + this.anchoPj/2
      && posXObstaculo+anchoObstaculo/2 > this.posXPj-this.anchoPj/2
      && posYObstaculo-altoObstaculo/2 < this.posYPj + this.altoPj/2
      && posYObstaculo+altoObstaculo/2 >this.posYPj- this.altoPj/2

      ) {
       // this.posActual = this.posXPj;
     
      return true;
    } else {
      return false;
    }
    
    
  }
  void reiniciar(){
   this.posActual = this.posXPj;
   }
}

//mi borde izquierdo a la izquierda del borde derecho
//mi borde derecho a la izquierda del borde izquierdo
//mi borde superior  arriba del borde inferior
//mi borde inferior abajop del borde superior
*/
