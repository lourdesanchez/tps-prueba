class Historia{
  //atributos
   String [] hPrincipal;
   String [] hSecundaria;
   String [] hTerciaria;
   
   PImage [] imgHistoria;
   
   
   int cantImgHistoria=23;
   int separacion;
  
  //constructores
  Historia(){
  this.hPrincipal = loadStrings("historia principal.txt");
  
  this.imgHistoria = new PImage [cantImgHistoria];  
  
  for (int i=0; i<cantImgHistoria; i++){
    this.imgHistoria[i] = loadImage(i+".jpg");
    
  }
  
  this.separacion = 20;
  
  }
  
  
  
  
  
  
  //metodos
  void dibujar(){
    image(imgHistoria[4], 0, 0, 500, 410);
    
    
    
    
   /* image(imgHistoriaPrincipal[4], 0, 0, 500, 410);
    for (int i=0; i<4; i++) {
      fill(#FFFFFF);
      text(hPrincipal[i], 10, 430+separacion*i);
    }*/
  }
  
   void mousePresionado(){
     
  }
  
  void teclaPresionada(){
    
  }
  
  
}
