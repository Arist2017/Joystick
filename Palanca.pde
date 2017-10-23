class Palanca { //<>// //<>//

  int x, y;
  int diametro;


  Palanca() {

    x=321;
    y=383;
    diametro=102;
  }

  void mostrar() {

    fill(20, 240, 250);
    ellipse(x, y, diametro, diametro);
    point(x, y);
  }
  boolean Over() {
    float O=dist(mouseX, mouseY, x, y);
    if (O<diametro) {
      return true;
    } else {
      return false;
    }
  }
  void mover() {
    x=mouseX;
    y=mouseY;


    //-----------------------------------------------------------------------------------palanca invertida

    //if (mouseX>width*4/20 && mouseX<width*8/20 && mouseY>height*3/6 && mouseY<height*4/6 ) { 
    //  tx+=1; 
    //  ty+=1;
    //}
    //if (mouseX>width*8/20 && mouseX<width*12/20 && mouseY>height*3/6 && mouseY<height*4/6 ) { 
    //  // tx+=1; 
    //  ty+=1;
    //}
    //if (mouseX>width*12/20 && mouseX<width*16/20 && mouseY>height*3/6 && mouseY<height*4/6 ) { 
    //  tx-=1;  
    //  ty+=1;
    //}
    //if(mouseX>width*4/20 && mouseX<width*8/20 && mouseY>height*4/6 && mouseY<height*5/6 ){ 
    // tx+=1; 
    //}
    // if (mouseX>width*12/20 && mouseX<width*16/20 && mouseY>height*4/6 && mouseY<height*5/6 ) { 
    //  tx-=1;  

    // }
    // if (mouseX>width*4/20 && mouseX<width*8/20 && mouseY>height*5/6 && mouseY<height) { 
    //  tx+=1;
    //  ty-=1;  

    // }
    // if (mouseX>width*8/20 && mouseX<width*12/20 && mouseY>height*5/6 && mouseY<height) { 
    //  ty-=1;  

    // }
    // if (mouseX>width*12/20 && mouseX<width*16/20 && mouseY>height*5/6 && mouseY<height) { 
    //  ty-=1;  
    //  tx-=1;
    // }

    //-----------------------------------------------------------------------------------palanca sin invertir

    if (mouseX>width*4/20 && mouseX<width*8/20 && mouseY>height*3/6 && mouseY<height*4/6 ) { 
      tx-=1; 
      ty-=1;
    }
    if (mouseX>width*8/20 && mouseX<width*12/20 && mouseY>height*3/6 && mouseY<height*4/6 ) { 
      // tx+=1; 
      ty-=1;
    }
    if (mouseX>width*12/20 && mouseX<width*16/20 && mouseY>height*3/6 && mouseY<height*4/6 ) { 
      tx+=1;  
      ty-=1;
    }
    if (mouseX>width*4/20 && mouseX<width*8/20 && mouseY>height*4/6 && mouseY<height*5/6 ) { 
      tx-=1;
    }
    if (mouseX>width*12/20 && mouseX<width*16/20 && mouseY>height*4/6 && mouseY<height*5/6 ) { 
      tx+=1;
    }
    if (mouseX>width*4/20 && mouseX<width*8/20 && mouseY>height*5/6 && mouseY<height) { 
      tx-=1;
      ty+=1;
    }
    if (mouseX>width*8/20 && mouseX<width*12/20 && mouseY>height*5/6 && mouseY<height) { 
      ty+=1;
    }
    if (mouseX>width*12/20 && mouseX<width*16/20 && mouseY>height*5/6 && mouseY<height) { 
      ty+=1;  
      tx+=1;
    }
  }
  void limitar() {

    if (x<width*4/20) {
      x=width*4/20;
    }
    if (y<height*3/6) {
      y=height*3/6;
    }
    if (x>width*16/20) {
      x=width*16/20;
    }
    if (y>height) {
      y=height;
    }
  }
}