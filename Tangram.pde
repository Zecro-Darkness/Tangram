float  dxT=0, dyT=0, dxTT=0, dyTT=0, dxTTT=0, dyTTT=0, dxTTTT=0, dyTTTT=0, dxTTTTT=0, dyTTTTT=0;
float dxC=0, dyC=0, dxQ=0, dyQ=0;
float  roT=0, roTT=0, roTTT=0, roTTTT=0, roTTTTT=0;
float roC=0, roQ=0;
color col;
boolean mode_selected = false;
boolean mode_one = false;
boolean mode_two = false;
boolean mode_three = false;
boolean first_level = true;
boolean second_level = false;
boolean third_level = false;
boolean game_won = false;
boolean game_lost = false;
int R=255, RR=255, RRR=255, G=255, GG=255, GGG=255, B=255, BB=255, BBB=255;
int c = 0, p = 0, pp = 0, ppp = 0;
int w = 0;

void setup() {
  size(1080, 720);
}
void draw() {
  println(p, w);
  if(mode_selected == false){
  background(0);
  
  paint_mode();
  //Here, the user selects the game mode:
  pushStyle();                  
  fill(255);
  textSize(30);
  textAlign(CENTER);
  text("LEVEL OF DIFFICULTY", 540, 200);
  popStyle();
  
  pushStyle();
  fill(R, G, B);
  textSize(25);
  textAlign(CENTER);
  text("HARD", 540, 340);
  popStyle();
  
  pushStyle();
  fill(RR, GG, BB);
  textSize(25);
  textAlign(CENTER);
  text("IMPOSSIBLE", 540, 390);
  popStyle();
  
  pushStyle();
  fill(RRR, GGG, BBB);
  textSize(25);
  textAlign(CENTER);
  text("REAL LIFE", 540, 440);
  popStyle();
  
  }else{
    int white_counter = 0;
    background(25);
    
    if(game_won){
          mode_one = false;
          mode_two = false;
          mode_three = false;
          first_level = true;
          col = #000000;
          dxT=0; 
          dyT=0; 
          dxTT=0; 
          dyTT=0; 
          dxTTT=0; 
          dyTTT=0; 
          dxTTTT=0; 
          dyTTTT=0; 
          dxTTTTT=0; 
          dyTTTTT=0;
          dxC=0; 
          dyC=0; 
          dxQ=0; 
          dyQ=0;
          roT=0; 
          roTT=0; 
          roTTT=0; roTTTT=0; 
          roTTTTT=0;
          roC=0; 
          roQ=0;
        if(w < 600){
    
          pushStyle();
          fill(255);
          textSize(35);
          textAlign(CENTER);
          text("¡CONGRATULATIONS, YOU HAVE COMPLETED THIS MODE!", 540, 360);
          popStyle();
          w += 1;
             
        }else{
          mode_selected = false;
          w = 0;
          p = 0;
          game_won = false;
      }
    }
    if(game_lost){
          mode_one = false;
          mode_two = false;
          mode_three = false;
          first_level = true;
          col = #000000;
          dxT=0; 
          dyT=0; 
          dxTT=0; 
          dyTT=0; 
          dxTTT=0; 
          dyTTT=0; 
          dxTTTT=0; 
          dyTTTT=0; 
          dxTTTTT=0; 
          dyTTTTT=0;
          dxC=0; 
          dyC=0; 
          dxQ=0; 
          dyQ=0;
          roT=0; 
          roTT=0; 
          roTTT=0; roTTTT=0; 
          roTTTTT=0;
          roC=0; 
          roQ=0;
      if(w < 600){
        
        pushStyle();
        fill(255);
        textSize(35);
        textAlign(CENTER);
        text("SORRY, BE FASTER THE NEXT TIME.", 540, 360);
        popStyle();
        w = w + 1;
        }else{
        mode_selected = false;
        w = 0;
        p = 0;
        game_lost = false;
      }
    }
    
    
    if(mode_one){
    
    //aquí se dibuja la secuencia separada de figuras blancas (niveles), junto con las piezas.
     if(first_level){
        //Este es el indicador del nivel:
        pushStyle();
        fill(254);
        textSize(35);
        textAlign(CENTER);
        text("1/3", 539, 40);
        popStyle();
        //Este es el acertijo:
        pushStyle();
        fill(255);
        beginShape();
        vertex(345, 656);
        vertex(256, 567);
        vertex(345, 477);
        vertex(345, 352);
        vertex(219, 477);
        vertex(219, 352);
        vertex(345, 224);
        vertex(599, 224);
        vertex(690, 134);
        vertex(870, 134);
        vertex(870, 314);
        vertex(779, 225);
        vertex(690, 314);
        vertex(904, 530);
        vertex(778, 530);
        vertex(778, 404);
        vertex(418, 404);
        vertex(345, 477);
        endShape(CLOSE);
        popStyle();
        
        //Estas son las figuras:
        pushStyle();
        pushMatrix();
        fill(#3CB96D);
        translate(90 + dxT, 180 + dyT);
        rotate(roT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FF6200);
        translate(90 + dxTT, 460 + dyTT);
        rotate((radians(180)) + roTT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
         
        pushStyle();
        pushMatrix();
        fill(#FF0000);
        translate(1030 + dxTTT, 180 + dyTTT);
        rotate((radians(180)) + roTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#0000FF);
        translate(1030 + dxTTTT, 330 + dyTTTT);
        rotate(roTTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#DC00FF);
        translate(1010 + dxTTTTT, 520 + dyTTTTT);
        rotate(radians(180) + roTTTTT);
        scale(0.70711); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FFC800);
        translate(930 + dxC, 90 + dyC);
        rotate(radians(45) + roC); 
        rect(-(sqrt(259200)/8), -(sqrt(259200)/8), sqrt(259200)/4, sqrt(259200)/4);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#A54B0F);
        translate(890 + dxQ, 290 + dyQ);
        rotate(radians(90) + roQ); 
        quad(-135, 45, 45, 45, 135, -45, -45, -45);
        popMatrix();
        popStyle();
        
        loadPixels();
        for (int i = 0; i < width*height ; i++){
          if(pixels[i] == #FFFFFF){
            white_counter += 1;
          }
        }
        if(white_counter < 20){
          first_level = false;
          second_level = true;
          col = #000000;
          dxT=0; 
          dyT=0; 
          dxTT=0; 
          dyTT=0; 
          dxTTT=0; 
          dyTTT=0; 
          dxTTTT=0; 
          dyTTTT=0; 
          dxTTTTT=0; 
          dyTTTTT=0;
          dxC=0; 
          dyC=0; 
          dxQ=0; 
          dyQ=0;
          roT=0; 
          roTT=0; 
          roTTT=0; roTTTT=0; 
          roTTTTT=0;
          roC=0; 
          roQ=0;
        }
      }
      if(second_level){
        //Este es el indicador del nivel:
        pushStyle();
        fill(254);
        textSize(35);
        textAlign(CENTER);
        text("2/3", 539, 40);
        popStyle();
        
         //Este es el acertijo:
        pushStyle();
        fill(255);
        beginShape();
        vertex(345, 506);
        vertex(256, 416);
        vertex(256, 290);
        vertex(381, 163);
        vertex(509, 163);
        vertex(635, 290);
        vertex(381, 290);
        vertex(345, 326);
        vertex(434, 416);
        vertex(524, 326);
        vertex(883, 326);
        vertex(766, 445);
        vertex(766, 572);
        vertex(640, 572);
        vertex(704, 506);
        endShape(CLOSE);
        popStyle();
        
        //Estas son las figuras:
        pushStyle();
        pushMatrix();
        fill(#3CB96D);
        translate(90 + dxT, 180 + dyT);
        rotate(roT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FF6200);
        translate(90 + dxTT, 460 + dyTT);
        rotate((radians(180)) + roTT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
         
        pushStyle();
        pushMatrix();
        fill(#FF0000);
        translate(1030 + dxTTT, 180 + dyTTT);
        rotate((radians(180)) + roTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#0000FF);
        translate(1030 + dxTTTT, 330 + dyTTTT);
        rotate(roTTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#DC00FF);
        translate(1010 + dxTTTTT, 520 + dyTTTTT);
        rotate(radians(180) + roTTTTT);
        scale(0.70711); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FFC800);
        translate(930 + dxC, 90 + dyC);
        rotate(radians(45) + roC); 
        rect(-(sqrt(259200)/8), -(sqrt(259200)/8), sqrt(259200)/4, sqrt(259200)/4);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#A54B0F);
        translate(890 + dxQ, 290 + dyQ);
        rotate(radians(90) + roQ); 
        quad(-135, 45, 45, 45, 135, -45, -45, -45);
        popMatrix();
        popStyle();
        
        loadPixels();
        for (int i = 0; i < width*height ; i++){
          if(pixels[i] == #FFFFFF){
            white_counter += 1;
          }
        }
        if(white_counter < 20){
          second_level = false;
          third_level = true;
          col = #000000;
          dxT=0; 
          dyT=0; 
          dxTT=0; 
          dyTT=0; 
          dxTTT=0; 
          dyTTT=0; 
          dxTTTT=0; 
          dyTTTT=0; 
          dxTTTTT=0; 
          dyTTTTT=0;
          dxC=0; 
          dyC=0; 
          dxQ=0; 
          dyQ=0;
          roT=0; 
          roTT=0; 
          roTTT=0; roTTTT=0; 
          roTTTTT=0;
          roC=0; 
          roQ=0;
        }
        
      }
      if(third_level){
        pushStyle();
        fill(254);
        textSize(35);
        textAlign(CENTER);
        text("3/3", 539, 40);
        popStyle();
        
         //Este es el acertijo:
        pushStyle();
        fill(255);
        beginShape();
        vertex(290, 494);
        vertex(416, 368);
        vertex(290, 368);
        vertex(544, 114);
        vertex(798, 368);
        vertex(673, 368);
        vertex(798, 494);
        vertex(608, 494);
        vertex(608, 620);
        vertex(482, 620);
        vertex(482, 494);
        endShape(CLOSE);
        popStyle();
        
        //Estas son las figuras:
        pushStyle();
        pushMatrix();
        fill(#3CB96D);
        translate(90 + dxT, 180 + dyT);
        rotate(roT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FF6200);
        translate(90 + dxTT, 460 + dyTT);
        rotate((radians(180)) + roTT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
         
        pushStyle();
        pushMatrix();
        fill(#FF0000);
        translate(1030 + dxTTT, 180 + dyTTT);
        rotate((radians(180)) + roTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#0000FF);
        translate(1030 + dxTTTT, 330 + dyTTTT);
        rotate(roTTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#DC00FF);
        translate(1010 + dxTTTTT, 520 + dyTTTTT);
        rotate(radians(180) + roTTTTT);
        scale(0.70711); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FFC800);
        translate(930 + dxC, 90 + dyC);
        rotate(radians(45) + roC); 
        rect(-(sqrt(259200)/8), -(sqrt(259200)/8), sqrt(259200)/4, sqrt(259200)/4);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#A54B0F);
        translate(890 + dxQ, 290 + dyQ);
        rotate(radians(90) + roQ); 
        quad(-135, 45, 45, 45, 135, -45, -45, -45);
        popMatrix();
        popStyle();
        
        loadPixels();
        for (int i = 0; i < width*height ; i++){
          if(pixels[i] == #FFFFFF){
            white_counter += 1;
          }
        }
        if(white_counter < 20){
          third_level = false;
          game_won = true;
          
        }
        
        
      }
     }
    
    if(mode_two){
       
      if(first_level){
        //Este es el indicador del nivel:
        pushStyle();
        fill(254);
        textSize(35);
        textAlign(CENTER);
        text("1/3", 539, 40);
        popStyle();
        //Este es el acertijo:
        pushStyle();
        fill(255);
        beginShape();
        vertex(38, 510);
        vertex(291, 258);
        vertex(291, 175);
        vertex(982, 175);
        vertex(1019, 138);
        vertex(1019, 263);
        vertex(713, 263);
        vertex(672, 301);
        vertex(546, 301);
        vertex(546, 355);
        vertex(365, 355);
        vertex(290, 428);
        vertex(290, 510);
        endShape(CLOSE);
        popStyle();
        
        //Estas son las figuras:
        pushStyle();
        pushMatrix();
        fill(#3CB96D);
        translate(90 + dxT, 180 + dyT);
        rotate(roT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FF6200);
        translate(90 + dxTT, 460 + dyTT);
        rotate((radians(180)) + roTT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
         
        pushStyle();
        pushMatrix();
        fill(#FF0000);
        translate(1030 + dxTTT, 180 + dyTTT);
        rotate((radians(180)) + roTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#0000FF);
        translate(1030 + dxTTTT, 330 + dyTTTT);
        rotate(roTTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#DC00FF);
        translate(1010 + dxTTTTT, 520 + dyTTTTT);
        rotate(radians(180) + roTTTTT);
        scale(0.70711); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FFC800);
        translate(930 + dxC, 90 + dyC);
        rotate(radians(45) + roC); 
        rect(-(sqrt(259200)/8), -(sqrt(259200)/8), sqrt(259200)/4, sqrt(259200)/4);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#A54B0F);
        translate(890 + dxQ, 290 + dyQ);
        rotate(radians(90) + roQ); 
        quad(-135, 45, 45, 45, 135, -45, -45, -45);
        popMatrix();
        popStyle();
        
        loadPixels();
        for (int i = 0; i < width*height ; i++){
          if(pixels[i] == #FFFFFF){
            white_counter += 1;
          }
        }
        if(white_counter < 20){
          first_level = false;
          second_level = true;
          col = #000000;
          dxT=0; 
          dyT=0; 
          dxTT=0; 
          dyTT=0; 
          dxTTT=0; 
          dyTTT=0; 
          dxTTTT=0; 
          dyTTTT=0; 
          dxTTTTT=0; 
          dyTTTTT=0;
          dxC=0; 
          dyC=0; 
          dxQ=0; 
          dyQ=0;
          roT=0; 
          roTT=0; 
          roTTT=0; roTTTT=0; 
          roTTTTT=0;
          roC=0; 
          roQ=0;
        }
      }
      if(second_level){
        //Este es el indicador del nivel:
        pushStyle();
        fill(254);
        textSize(35);
        textAlign(CENTER);
        text("2/3", 539, 40);
        popStyle();
        
         //Este es el acertijo:
        pushStyle();
        fill(255);
        beginShape();
        vertex(346, 464);
        vertex(346, 284);
        vertex(526, 104);
        vertex(706, 284);
        vertex(706, 464);
        vertex(526, 643);
        endShape(CLOSE);
        popStyle();
        
        //Estas son las figuras:
        pushStyle();
        pushMatrix();
        fill(#3CB96D);
        translate(90 + dxT, 180 + dyT);
        rotate(roT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FF6200);
        translate(90 + dxTT, 460 + dyTT);
        rotate((radians(180)) + roTT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
         
        pushStyle();
        pushMatrix();
        fill(#FF0000);
        translate(1030 + dxTTT, 180 + dyTTT);
        rotate((radians(180)) + roTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#0000FF);
        translate(1030 + dxTTTT, 330 + dyTTTT);
        rotate(roTTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#DC00FF);
        translate(1010 + dxTTTTT, 520 + dyTTTTT);
        rotate(radians(180) + roTTTTT);
        scale(0.70711); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FFC800);
        translate(930 + dxC, 90 + dyC);
        rotate(radians(45) + roC); 
        rect(-(sqrt(259200)/8), -(sqrt(259200)/8), sqrt(259200)/4, sqrt(259200)/4);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#A54B0F);
        translate(890 + dxQ, 290 + dyQ);
        rotate(radians(90) + roQ); 
        quad(-135, 45, 45, 45, 135, -45, -45, -45);
        popMatrix();
        popStyle();
        
        loadPixels();
        for (int i = 0; i < width*height ; i++){
          if(pixels[i] == #FFFFFF){
            white_counter += 1;
          }
        }
        if(white_counter < 20){
          second_level = false;
          third_level = true;
          col = #000000;
          dxT=0; 
          dyT=0; 
          dxTT=0; 
          dyTT=0; 
          dxTTT=0; 
          dyTTT=0; 
          dxTTTT=0; 
          dyTTTT=0; 
          dxTTTTT=0; 
          dyTTTTT=0;
          dxC=0; 
          dyC=0; 
          dxQ=0; 
          dyQ=0;
          roT=0; 
          roTT=0; 
          roTTT=0; roTTTT=0; 
          roTTTTT=0;
          roC=0; 
          roQ=0;
        }
        
      }
      if(third_level){
        pushStyle();
        fill(254);
        textSize(35);
        textAlign(CENTER);
        text("3/3", 539, 40);
        popStyle();
        
         //Este es el acertijo:
        pushStyle();
        fill(255);
        beginShape();
        vertex(194, 258);
        vertex(703, 258);
        vertex(957, 511);
        vertex(450, 511);
        endShape(CLOSE);
        popStyle();
        
        //Estas son las figuras:
        pushStyle();
        pushMatrix();
        fill(#3CB96D);
        translate(90 + dxT, 180 + dyT);
        rotate(roT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FF6200);
        translate(90 + dxTT, 460 + dyTT);
        rotate((radians(180)) + roTT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
         
        pushStyle();
        pushMatrix();
        fill(#FF0000);
        translate(1030 + dxTTT, 180 + dyTTT);
        rotate((radians(180)) + roTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#0000FF);
        translate(1030 + dxTTTT, 330 + dyTTTT);
        rotate(roTTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#DC00FF);
        translate(1010 + dxTTTTT, 520 + dyTTTTT);
        rotate(radians(180) + roTTTTT);
        scale(0.70711); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FFC800);
        translate(930 + dxC, 90 + dyC);
        rotate(radians(45) + roC); 
        rect(-(sqrt(259200)/8), -(sqrt(259200)/8), sqrt(259200)/4, sqrt(259200)/4);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#A54B0F);
        translate(890 + dxQ, 290 + dyQ);
        rotate(radians(90) + roQ); 
        quad(-135, 45, 45, 45, 135, -45, -45, -45);
        popMatrix();
        popStyle();
        
        loadPixels();
        for (int i = 0; i < width*height ; i++){
          if(pixels[i] == #FFFFFF){
            white_counter += 1;
          }
        }
        if(white_counter < 20){
          third_level = false;
          game_won = true;
        } 
      }
    }
    if(mode_three){
       
      if(first_level){
        
        if(p > 120000){
          game_lost = true;
        }
        
        //Esta es la barra de tiempo:
        p = millis() - c;
        pushStyle();
        colorMode(HSB, 359000, 100, 100);
        fill(120000 - p, 99, 99);
        rect(0, 700, 1080 - (((int)(p / 1000))*9), 20);
        popStyle();
        
        //Este es el indicador del nivel:
        pushStyle();
        fill(254);
        textSize(35);
        textAlign(CENTER);
        text("1/3", 539, 40);
        popStyle();
        
        //Este es el acertijo:
        pushStyle();
        fill(255);
        beginShape();
        vertex(358, 539);
        vertex(358, 156);
        vertex(723, 156);
        vertex(723, 539);
        endShape(CLOSE);
        popStyle();
        
        pushStyle();
        fill(25);
        beginShape();
        vertex(486, 411);
        vertex(486, 284);
        vertex(540, 338);
        vertex(594, 284);
        vertex(594, 411);
        vertex(540, 357);
        endShape(CLOSE);
        popStyle();
        
        //Estas son las figuras:
        pushStyle();
        pushMatrix();
        fill(#3CB96D);
        translate(90 + dxT, 180 + dyT);
        rotate(roT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FF6200);
        translate(90 + dxTT, 460 + dyTT);
        rotate((radians(180)) + roTT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
         
        pushStyle();
        pushMatrix();
        fill(#FF0000);
        translate(1030 + dxTTT, 180 + dyTTT);
        rotate((radians(180)) + roTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#0000FF);
        translate(1030 + dxTTTT, 330 + dyTTTT);
        rotate(roTTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#DC00FF);
        translate(1010 + dxTTTTT, 520 + dyTTTTT);
        rotate(radians(180) + roTTTTT);
        scale(0.70711); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FFC800);
        translate(930 + dxC, 90 + dyC);
        rotate(radians(45) + roC); 
        rect(-(sqrt(259200)/8), -(sqrt(259200)/8), sqrt(259200)/4, sqrt(259200)/4);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#A54B0F);
        translate(890 + dxQ, 290 + dyQ);
        rotate(radians(90) + roQ); 
        quad(-135, 45, 45, 45, 135, -45, -45, -45);
        popMatrix();
        popStyle();
        
        loadPixels();
        for (int i = 0; i < width*height ; i++){
          if(pixels[i] == #FFFFFF){
            white_counter += 1;
          }
        }
        if(white_counter < 20){
          first_level = false;
          second_level = true;
          col = #000000;
          dxT=0; 
          dyT=0; 
          dxTT=0; 
          dyTT=0; 
          dxTTT=0; 
          dyTTT=0; 
          dxTTTT=0; 
          dyTTTT=0; 
          dxTTTTT=0; 
          dyTTTTT=0;
          dxC=0; 
          dyC=0; 
          dxQ=0; 
          dyQ=0;
          roT=0; 
          roTT=0; 
          roTTT=0; roTTTT=0; 
          roTTTTT=0;
          roC=0; 
          roQ=0;
          pp = p;
        }
      }
      if(second_level){
        
        if(p > 120000){
          game_lost = true;
          second_level = false;
        }
        
        //Esta es la barra de tiempo:
        p = millis() - (c + pp);
        pushStyle();
        colorMode(HSB, 359000, 100, 100);
        fill(120000 - p, 99, 99);
        rect(0, 700, 1080 - (((int)(p / 1000))*9), 20);
        popStyle();
        
        //Este es el indicador del nivel:
        pushStyle();
        fill(254);
        textSize(35);
        textAlign(CENTER);
        text("2/3", 539, 40);
        popStyle();
        
         //Este es el acertijo:
        pushStyle();
        fill(255);
        beginShape();
        vertex(348, 540);
        vertex(348, 158);
        vertex(730, 158);
        vertex(730, 540);
        endShape(CLOSE);
        popStyle();
        
        pushStyle();
        fill(25);
        beginShape();
        vertex(475, 411);
        vertex(348, 284);
        vertex(475, 284);
        vertex(475, 158);
        vertex(601, 284);
        vertex(475, 284);
        endShape(CLOSE);
        popStyle();
        
        //Estas son las figuras:
        pushStyle();
        pushMatrix();
        fill(#3CB96D);
        translate(90 + dxT, 180 + dyT);
        rotate(roT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FF6200);
        translate(90 + dxTT, 460 + dyTT);
        rotate((radians(180)) + roTT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
         
        pushStyle();
        pushMatrix();
        fill(#FF0000);
        translate(1030 + dxTTT, 180 + dyTTT);
        rotate((radians(180)) + roTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#0000FF);
        translate(1030 + dxTTTT, 330 + dyTTTT);
        rotate(roTTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#DC00FF);
        translate(1010 + dxTTTTT, 520 + dyTTTTT);
        rotate(radians(180) + roTTTTT);
        scale(0.70711); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FFC800);
        translate(930 + dxC, 90 + dyC);
        rotate(radians(45) + roC); 
        rect(-(sqrt(259200)/8), -(sqrt(259200)/8), sqrt(259200)/4, sqrt(259200)/4);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#A54B0F);
        translate(890 + dxQ, 290 + dyQ);
        rotate(radians(90) + roQ); 
        quad(-135, 45, 45, 45, 135, -45, -45, -45);
        popMatrix();
        popStyle();
        
        loadPixels();
        for (int i = 0; i < width*height ; i++){
          if(pixels[i] == #FFFFFF){
            white_counter += 1;
          }
        }
        if(white_counter < 20){
          second_level = false;
          third_level = true;
          col = #000000;
          dxT=0; 
          dyT=0; 
          dxTT=0; 
          dyTT=0; 
          dxTTT=0; 
          dyTTT=0; 
          dxTTTT=0; 
          dyTTTT=0; 
          dxTTTTT=0; 
          dyTTTTT=0;
          dxC=0; 
          dyC=0; 
          dxQ=0; 
          dyQ=0;
          roT=0; 
          roTT=0; 
          roTTT=0; roTTTT=0; 
          roTTTTT=0;
          roC=0; 
          roQ=0;
          ppp = p;
        }
        
      }
      if(third_level){
        
        if(p > 120000){
          third_level = false;
          game_lost = true;
        }
        
        //Esta es la barra de tiempo:
        p = millis() - (c + pp + ppp);
        pushStyle();
        colorMode(HSB, 359000, 100, 100);
        fill(120000 - p, 99, 99);
        rect(0, 700, 1080 - (((int)(p / 1000))*9), 20);
        popStyle();
        
        pushStyle();
        fill(254);
        textSize(35);
        textAlign(CENTER);
        text("3/3", 539, 40);
        popStyle();
        
         //Este es el acertijo:
        pushStyle();
        fill(255);
        beginShape();
        vertex(337, 569);
        vertex(337, 184);
        vertex(718, 184);
        vertex(718, 569);
        endShape(CLOSE);
        popStyle();
        
        pushStyle();
        fill(25);
        beginShape();
        vertex(463, 569);
        vertex(337, 440);
        vertex(463, 440);
        endShape(CLOSE);
        popStyle();
        
        pushStyle();
        fill(25);
        beginShape();
        vertex(591, 437);
        vertex(463, 310);
        vertex(591, 310);
        endShape(CLOSE);
        popStyle();
        
        //Estas son las figuras:
        pushStyle();
        pushMatrix();
        fill(#3CB96D);
        translate(90 + dxT, 180 + dyT);
        rotate(roT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FF6200);
        translate(90 + dxTT, 460 + dyTT);
        rotate((radians(180)) + roTT);
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
         
        pushStyle();
        pushMatrix();
        fill(#FF0000);
        translate(1030 + dxTTT, 180 + dyTTT);
        rotate((radians(180)) + roTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#0000FF);
        translate(1030 + dxTTTT, 330 + dyTTTT);
        rotate(roTTTT);
        scale(0.5); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#DC00FF);
        translate(1010 + dxTTTTT, 520 + dyTTTTT);
        rotate(radians(180) + roTTTTT);
        scale(0.70711); 
        triangle(-90, -180, -90, 180, 90, 0);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#FFC800);
        translate(930 + dxC, 90 + dyC);
        rotate(radians(45) + roC); 
        rect(-(sqrt(259200)/8), -(sqrt(259200)/8), sqrt(259200)/4, sqrt(259200)/4);
        popMatrix();
        popStyle();
        
        pushStyle();
        pushMatrix();
        fill(#A54B0F);
        translate(890 + dxQ, 290 + dyQ);
        rotate(radians(90) + roQ); 
        quad(-135, 45, 45, 45, 135, -45, -45, -45);
        popMatrix();
        popStyle();
        
        loadPixels();
        for (int i = 0; i < width*height ; i++){
          if(pixels[i] == #FFFFFF){
            white_counter += 1;
          }
        }
        if(white_counter < 20){
          third_level = false;
          game_won = true;
        }
        
      }  
    }
   }
  }
  
//Esta función pinta los modos de dificultad cuando el usuario ubica el cursor sobre ellas
void paint_mode (){
  if(!mode_selected){
    if((mouseX > 507 && mouseX < 577) && (mouseY > 324 && mouseY < 344)){
      R = 242;
      G = 235;
      B = 2;
    }else{
      R = 255;
      G = 255;
      B = 255;
    }
    if((mouseX > 473 && mouseX < 609) && (mouseY > 374 && mouseY < 394)){
      RR = 250;
      GG = 138;
      BB = 0;
    }else{
      RR = 255;
      GG = 255;
      BB = 255;
    }
    if((mouseX > 484 && mouseX < 599) && (mouseY > 425 && mouseY < 445)){
      RRR = 247;
      GGG = 50;
      BBB = 0;
    }else{
      RRR = 255;
      GGG = 255;
      BBB = 255;
    }
 }
}

void select_mode(){}
  
float e;
void mouseWheel(MouseEvent event) {
  e = event.getCount();
  if(e > 0){
   if(col == #3CB96D){
    roT = roT + radians(45);
   }
   if(col == #FF6200){
      roTT = roTT + radians(45);
   }
   if(col == #FF0000){
     roTTT = roTTT + radians(45);
   }
   if(col == #0000FF){
     roTTTT = roTTTT + radians(45);
   }
   if(col == #DC00FF){
     roTTTTT = roTTTTT + radians(45);
   }
   if(col == #FFC800){
     roC = roC + radians(45);
   }
   if(col == #A54B0F){
     roQ = roQ + radians(45);
   }
   }else{
     if(e < 0){
       if(col == #3CB96D){
          roT = roT - radians(45);
       }
       if(col == #FF6200){
          roTT = roTT - radians(45);
       }
       if(col == #FF0000){
         roTTT = roTTT - radians(45);
       }
       if(col == #0000FF){
         roTTTT = roTTTT - radians(45);
       }
       if(col == #DC00FF){
         roTTTTT = roTTTTT - radians(45);
       }
       if(col == #FFC800){
         roC = roC - radians(45);
       }
       if(col == #A54B0F){
         roQ = roQ - radians(45);
       }
     }
  }
}

void mousePressed() {
  if(mouseButton == 37){
    if (mode_selected){
      col = get(mouseX, mouseY);  
    }else{
      if((mouseX > 507 && mouseX < 577) && (mouseY > 324 && mouseY < 344)){
        mode_one = true;
        mode_selected = true;
      }
      if((mouseX > 473 && mouseX < 609) && (mouseY > 374 && mouseY < 394)){
        mode_two = true;
        mode_selected = true;
      }
      if((mouseX > 484 && mouseX < 599) && (mouseY > 425 && mouseY < 445)){
        mode_three = true;
        mode_selected = true;
        c = millis();
      }
    }
  }
}
void mouseDragged() {
  if(col == #3CB96D){
   dxT = mouseX - 90;
   dyT = mouseY - 180;
  }
  if(col == #FF6200){
   dxTT = mouseX - 90;
   dyTT = mouseY - 460;
  }
  if(col == #FF0000){
   dxTTT = mouseX - 1030;
   dyTTT = mouseY - 180;
  }
  if(col == #0000FF){
   dxTTTT = mouseX - 1030;
   dyTTTT = mouseY - 330;
  }
  if(col == #DC00FF){
   dxTTTTT = mouseX - 1010;
   dyTTTTT = mouseY - 520;
  }
  if(col == #FFC800){
   dxC = mouseX - 930;
   dyC = mouseY - 90;
  } 
  if(col == #A54B0F){
   dxQ = mouseX - 890;
   dyQ = mouseY - 290;
  }
}

void mouseReleased(){
  col = #000000;
}