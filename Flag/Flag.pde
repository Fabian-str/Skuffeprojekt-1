String[] countries = {
"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY",
"PORTUGAL", "SPAIN", "MOROCCO", "IRAN",
"FRANCE", "AUSTRALIA", "PERU", "DENMARK",
"ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"
};

int WRW = width/2-25; //WhiteRectWidth ¶
int WRH = 45; // WhiteRectHeight
int startX = 10; // Start of white rect X
int startY = 40; // Start of white rect Y

PImage[] flags = new PImage[16];

void setup() {
  size(1240,534);
  textAlign(CENTER);
  textSize(25);
  
//Imageloader
  for (int i=0;i<flags.length;i++) {
    flags[i]=loadImage("flag"+i+".png");
  }
  
}

void draw() {
  background(45,65,100);
  
  // Middleline
  stroke(255);
  strokeWeight(4);
  line(width/2,height,width/2,0);
  
  //Group headers
  textAlign(CENTER);
  textSize(30);
  fill(65,185,210);
  text("GROUP A", width/4,30);
  text("GROUP C", 3*width/4,30);
  fill(215,220,55);
  text("GROUP B", width/4,height/2+30);
  text("GROUP D", 3*width/4,height/2+30);
    
  //Group A white rect
  fill(255);
  noStroke();
  rect(startX,startY,WRW,WRH);
  rect(10,95,width/2-25,45);
  rect(10,150,width/2-25,45);  
  rect(10,205,width/2-25,45);   
  
  //Group B white rect
  fill(255);
  noStroke();
  rect(10,310,width/2-25,45); 
  rect(10,365,width/2-25,45); 
  rect(10,420,width/2-25,45); 
  rect(10,475,width/2-25,45); 

  //Group C white rect
  fill(255);
  noStroke();
  rect(width/2+15,40,width/2-25,45);
  rect(width/2+15,95,width/2-25,45);
  rect(width/2+15,150,width/2-25,45);  
  rect(width/2+15,205,width/2-25,45);  

  //Group D white rect
  fill(255);
  noStroke();
  rect(width/2+15,310,width/2-25,45); 
  rect(width/2+15,365,width/2-25,45); 
  rect(width/2+15,420,width/2-25,45); 
  rect(width/2+15,475,width/2-25,45); 
  
  //Group A blue rect
  fill(65,185,210);
  noStroke();
  rect(width/2-30,40,15,45);
  rect(width/2-30,95,15,45);
  rect(width/2-30,150,15,45);  
  rect(width/2-30,205,15,45); 

  //Group B yellow rect
  fill(215,220,55);
  noStroke();
  rect(width/2-30,310,15,45);
  rect(width/2-30,365,15,45);
  rect(width/2-30,420,15,45);  
  rect(width/2-30,475,15,45); 
  
  //Group C blue rect
  fill(65,185,210);
  noStroke();
  rect(width-25,40,15,45);
  rect(width-25,95,15,45);
  rect(width-25,150,15,45);  
  rect(width-25,205,15,45);   
  
  //Group D yellow rect
  fill(215,220,55);
  noStroke();
  rect(width-25,310,15,45);
  rect(width-25,365,15,45);
  rect(width-25,420,15,45);  
  rect(width-25,475,15,45); 
  
  //Group A flags
  image(flags[0],10,40,100,45);
  image(flags[1],10,95,100,45);
  image(flags[2],10,150,100,45);
  image(flags[3],10,205,100,45);

  //Group B flags
  image(flags[4],10,310,100,45);
  image(flags[5],10,365,100,45);
  image(flags[6],10,420,100,45);
  image(flags[7],10,475,100,45);

  //Group C flags
  image(flags[8],width/2+15,40,100,45);
  image(flags[9],width/2+15,95,100,45);
  image(flags[10],width/2+15,150,100,45);
  image(flags[11],width/2+15,205,100,45);

  //Group D flags
  image(flags[12],width/2+15,310,100,45);
  image(flags[13],width/2+15,365,100,45);
  image(flags[14],width/2+15,420,100,45);
  image(flags[15],width/2+15,475,100,45);
  
  //Group A countries
  fill(0);
  textSize(40);
  textAlign(LEFT);
  text(countries[0],135,75);
  text(countries[1],135,130);
  text(countries[2],135,185);
  text(countries[3],135,240);

  //Group B countries
  fill(0);
  textSize(40);
  textAlign(LEFT);
  text(countries[4],135,345);
  text(countries[5],135,400);
  text(countries[6],135,455);
  text(countries[7],135,510);
  
  //Group C countries
  fill(0);
  textSize(40);
  textAlign(LEFT);
  text(countries[8],760,75);
  text(countries[9],760,130);
  text(countries[10],760,185);
  text(countries[11],760,240);  
  
  //Group B countries
  fill(0);
  textSize(40);
  textAlign(LEFT);
  text(countries[12],760,345);
  text(countries[13],760,400);
  text(countries[14],760,455);
  text(countries[15],760,510);  
 
  }
 
