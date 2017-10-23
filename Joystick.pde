Palanca palanca;
Casilla[] casilla;

int tx, ty;
int Rx[]=new int [3];
int Ry[]=new int [3];
int MostrarRespuestasEstaticas[]=new int [3];
int Rh[]=new int [3];
int puntos ;
String respuestas[]={"Bien jugado", "Hola", "Adios", "Exito"};
String respuestasEstaticas[]={respuestas[1],respuestas[2],respuestas[3]};
int rw=80, rh=25;
boolean dentro[]=new boolean[3];
String textico=respuestas[1];
color co[] =new color[3];


void setup() {
  
  size(600, 500);
  background(160, 120, 230);
  casilla =new Casilla[3];

  palanca = new Palanca();

  Rx[0]=100;
  Ry[0]=124;
  Rx[1]=346;
  Ry[1]=60;
  Rx[2]=480;
  Ry[2]=160;
  tx=width/2;
  ty=150;
  for (int i=0; i<3; i++) {
    co[i]=color(234, 26, 134);
  }

  casilla[0]=new Casilla(Rx[0], Ry[0], co[0], 1, dentro[0], "Abajo va hola");
  casilla[1]=new Casilla(Rx[1], Ry[1], co[1], 2, dentro[1], "Abajo va Adios");
  casilla[2]=new Casilla(Rx[2], Ry[2], co[2], 3, dentro[2], "Abajo va Exito");


  for (int i=0; i<3; i++) {
    dentro[i]=false;
  }
}
void draw() {
    println(mouseX+" - "+mouseY);
    
  background(160, 120, 230);
  fill(#893687, 30);
 
triangle(149,275,204,280,174,311);
triangle(149,373,206,353,206,400);
triangle(149,481,188,440,198,480);
triangle(300,264,335,320,267,320);
triangle(392,353,444,377,392,398);
triangle(398,285,442,271,409,313);
triangle(415,440,456,471,388,462);
triangle(288,453,328,453,306,490);

fill(0);
 text("puntos = "+puntos,40,10);

  if (mousePressed) {
    if (palanca.Over()) {
      palanca.mover();
      palanca.limitar();
    }
  }

  casilla[0].mostrar();
  dentro[0]=casilla[0].ColisionCasilla();
  casilla[1].mostrar();
  dentro[1]=casilla[1].ColisionCasilla();
  casilla[2].mostrar();
  dentro[2]=casilla[2].ColisionCasilla();

  //eliminar respuesta y poner en casilla
  for (int j=1,i=0; i<3; i++,j++) {
    if (dentro[i]==true) { 
      //respuestas[j]=" ";
      MostrarRespuestasEstaticas[i]=255;
    }  
      // aqui se muetran las respuestas ya en casilla
    fill(0,MostrarRespuestasEstaticas[i]);
    text(respuestasEstaticas[i],Rx[i],Ry[i]);

  }


   //---------------------------------------------------------------aqui me busca cual ya ha sido utilizada y me la elimina
  //for (int j=0; j<4; j++) {
  //  if (respuestas[j].equals(" ")==false) {
  //    textico=respuestas[j];
  //  }
  //}



  fill(0);
  textAlign(CENTER, CENTER);
  text(textico, tx, ty);
  stroke(255, 0, 0);
  point(tx, ty);
  palanca.mostrar();

  fill(#291034, 100);
  line(width*4/20, height*3/6, width*4/20, height);
  line(width*8/20, height*3/6, width*8/20, height);
  line(width*12/20, height*3/6, width*12/20, height);
  line(width*16/20, height*3/6, width*16/20, height);

  line(width*16/20, height*4/6, width*4/20, height*4/6);
  line(width*16/20, height*5/6, width*4/20, height*5/6);
  line(width*16/20, height*3/6, width*4/20, height*3/6);
  line(width*16/20, height*4/6, width*4/20, height*4/6);

  limites();
}

void limites() {
  if (tx>width) {
    tx=width;
  }
  if (ty>height-8) {
    ty=height-8;
  }

  if (tx<5) {
    tx=5;
  }
  if (ty<5) {
    ty=5;
  }
}
void keyPressed() {
  if (key=='1') {
    textico=respuestas[1];
  }
  if (key=='2') {
    textico=respuestas[2];
  }
  if (key=='3') {
    textico=respuestas[3];
  }
}