int canRect=60, canEllipse=60;
int tamRect=35;
int tamEllipse=10;
int separacion=40;
int pantalla;
int direcI = 0;
int direcD = 0;

void setup(){
   size(500,400);
   noStroke();
   }
   
 void draw(){
   //background(#050505);
    if(pantalla==0){
      background(#767676);
     for(int h=0; h<canRect; h++){
      for(int v=0; v<canRect; v++){
        fill(#050505);
        rect(h * separacion-10, v * separacion-5, tamRect+direcI, tamRect);
        }
       }
      for(int eh=0; eh<canEllipse; eh++){
       for(int ev=0; ev<canEllipse; ev++){
        fill(255);
        ellipse(eh * separacion-13, ev * separacion-7, tamEllipse , tamEllipse);
        }
       }
       fill(#BF5353);
       ellipse(20,30,30,30);
      }
 }
       
 
 void mouseClicked(){
   if(mouseX>10 && mouseX<40 && mouseY>20 && mouseY<50){
     pantalla=1;
   }
 
    }
 
   
   void mouseMoved(){
     if(mouseY>250){
       tamRect = round(map(mouseX,200,300,80,10));
     }
   }
   /*if(pantalla==0){
      pantalla=1;
   }*/
   /*if(mouseX>10 && mouseX<30 && mouseY>20 && mouseY<50){
    // rect(h * separacion-10, v * separacion-5, tamRect+direcI, tamRect);
     
   }*/
   
   
   
   /*else if(pantalla==1){
     pantalla=0;
   }*/
   
 
 void keyPressed(){
   if (keyCode == LEFT) {
        direcI++;
      }else if (keyCode == RIGHT){
        direcI--;
      }
   if(keyCode==UP){
    tamEllipse++;
  }else if(keyCode==DOWN){
    tamEllipse--; 
  }
 }
  
