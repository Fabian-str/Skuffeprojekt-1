// Countrynames
String[] countries = {"RUSSIA", "SAUDI ARABIA", "EGYPT", "URUGUAY", "PORTUGAL", "SPAIN", "MOROCCO", "IRAN",
"FRANCE", "AUSTRALIA", "PERU", "DENMARK", "ARGENTINA", "ICELAND", "CROATIA", "NIGERIA"};

PImage[] flags = new PImage[16]; // Images

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
  
  // Variables
  int leftX = 10; // X For Left Side
  int rightX = width/2 + 15; // X For Right Side
  int flagW = 100; // Flags Width
  int flagH = 45; // Flags Height
  
  // Middleline
  stroke(255);
  strokeWeight(4);
  line(width/2,height,width/2,0);
  
  // Group Headers
  textAlign(CENTER);
  textSize(30);
  
  fill(65,185,210); // Blue 
  text("GROUP A", width/4,30); // Group A
  text("GROUP C", 3*width/4,30); // Group C  
  
  fill(215,220,55); // Yellow
  text("GROUP B", width/4,height/2+30); // Group B
  text("GROUP D", 3*width/4,height/2+30); // Group D
  
  // Group Setup
  countryGroup(0, leftX, 40, flagW, flagH, countries, flags, color(65,185,210));    // Group A
  countryGroup(4, leftX, 310, flagW, flagH, countries, flags, color(215,220,55));   // Group B
  countryGroup(8, rightX, 40, flagW, flagH, countries, flags, color(65,185,210));   // Group C
  countryGroup(12, rightX, 310, flagW, flagH, countries, flags, color(215,220,55)); // Group D
}

// FUnktion For Drawing Visuals
void countryGroup(int start, int startX, int startY, int w, int h, String[] names, PImage[] imgs, color boksColor){
  int spacing = 55; // spacing between rectangles
  
  for (int i=0; i<4; i++){
    int y = startY+i*spacing;
    
    // White Rectangles
    fill(255);
    noStroke();
    rect(startX,y,width/2-25,h);
    
    // Colored Rectangles
    fill(boksColor);
    rect(startX + (width/2-40),y,15,h);
    
    // Flags
    image(imgs[start+i],startX,y,w,h);
    
    // Text
    fill(0);
    textSize(40);
    textAlign(LEFT, CENTER);
    text(names[start+i], startX + w + 25, y + h/2);   
  }
}
