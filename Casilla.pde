class Casilla {

  int posX;
  int posY;
  color col;
  color[] colorito;
  int equivalencia;
  boolean verificar;
  String pregunta;


  Casilla(int posX, int posY, int col, int equivalencia, boolean verificar, String pregunta) {

    this.posX=posX;
    this.posY =posY;
    this.col=col;
    this.equivalencia=equivalencia;
    this.verificar=verificar;
    this.pregunta=pregunta;
    colorito =new color[3];
  }
  void mostrar() {

    fill(0);
    text(pregunta, posX, posY-30);
    fill(col, 130);
    rectMode(CENTER);
    rect(posX, posY, rw, rh);
    stroke(255, 0, 0);
    point(posX, posY);
  }

  boolean ColisionCasilla() {

    if (tx>=posX-rw/3 && tx<=posX+rw/3 && ty>=posY-rh/3 && ty<=posY+rh/3) {
         
      
       if ( verificar==false) {
      if (textico.equals(respuestas[equivalencia])) {
          puntos+=5; 
          //respuestas[equivalencia]="";
          col =color(#3E31FF);
          verificar=true;
            tx=width/2;
            ty=100;
        }else{
              col =color(#F54311);
              puntos-=5; 
              //respuestas[equivalencia]="";
              verificar=true;  
              tx=width/2;
              ty=100;
        }
      }
    } else {
      //col =color(#B3F0E0);
    }
    return verificar;
  }
  
}