PFont f;
int x;
int y;

float r;
float g;
float b;
float a;

void setup()
{
  f=createFont("Monaco", 10);
  size(1000, 700);
  background(219,215,255);
  
}
 
void draw() {
  if (mousePressed){
    
    x= mouseX;
    y=mouseY;
    textFont(f);
    fill(0, 191, 0);
    text(x +"," + y, 10, 10);
   
  }
  else{
    x= mouseX;
    y=mouseY;
    textFont(f);
    fill(219,215,255);
    text(x +"," + y, 10, 10);
  }
  
  noStroke();
 
  //hair
  fill(0);
  ellipse(500, 270, 300, 350);
  fill(0);
  rect(350, 290, 300, 280);
  noStroke();
 
  //skin
  fill(#ECD4A3);
  ellipse(500, 270, 240, 280);
  noStroke();
  fill(#ECD4A3);
  rect(460, 320, 80, 200);
 
  //eye
  fill(#F7F7EB);
  ellipse(445, 240, 60, 23);
  fill(#F7F7EB);
  ellipse(555, 240, 60, 23);
 
  fill(#2F251C);
  ellipse(445, 215, 70, 10);
  fill(#2F251C);
  ellipse(555, 215, 70, 10);
 
 bgChange();
  changeShirt();
  changeEyes();
  changeCheeks();
  changeNoseMouth();
  keyPressed();
  
 
}

void changeShirt(){
 //shoulders    
 
 if (mousePressed)
 {
  r = random(255); // r is a random number between 0 - 255
  g = random(255); // g is a random number betwen 100 - 200
  b = random(255); // b is a random number between 0 - 100
  
  noStroke();
  fill(r, g, b);
  ellipse(500, 700, 350, 500);
  noStroke();
 }
 else
 {
  fill(255);
  ellipse(500, 700, 350, 500);
 }
}

void changeEyes()
 {
   if (mousePressed)
   {
   //pupils
   // try to make them move side to side slow
   float leftX= random(440,450);
   float rightX= random(550,560);
   
  fill(0);
  ellipse( leftX, 240 ,23, 23); 
 // ellipse(445, 240, 23, 23);
  fill(0);
  ellipse( rightX, 240 ,23, 23); 
  //ellipse(555, 240, 23, 23);
   }
   else
   {
      fill(0);
      ellipse(445, 240, 23, 23);
      fill(0);
      ellipse(555, 240, 23, 23);
   }
   
 }
 
void changeCheeks()
 {
  //blush
  if (mouseX<=333)
  {
  fill(#F8AE9E);
  ellipse(445, 290, 55, 55);
  fill(#F8AE9E);
  ellipse(555, 290, 55, 55);   
  }
  
    if (mouseX>333 && mouseX<633)
  {
  fill(#4F22FF,63);
  rect(412, 227, 65, 42);
  fill(#4F22FF,63);
  rect(522, 227, 65, 42);   
  fill(#4F22FF,63);
  rect(477, 245, 45, 10);   
  }
  
   else if (mouseX<1000 && mouseX>633)
  {
    //left heart
  fill(#FFC7E7);
  ellipse(425, 280, 40, 40);
  fill(#FFC7E7);
  ellipse(455, 280, 40, 40);   
  fill(#FFC7E7);
  //triangle(x1, y1, x2, y2, x3, y3)
  triangle(407, 290, 473, 290, 440, 320);
  
      //right heart
  fill(#FFC7E7);
  ellipse(545, 280, 40, 40);
  fill(#FFC7E7);
  ellipse(575, 280, 40, 40);   
  fill(#FFC7E7);
  //triangle(x1, y1, x2, y2, x3, y3)
  triangle(527, 290, 593, 290,559, 320);
  
   
  }

 }
  void changeNoseMouth(){
  //nose
  if (mouseY<=233)
  {
  fill(#EA8D79);
  ellipse(500, 290, 35, 50);
  //mouth
  fill(#EF896E);;
  ellipse(500, 340, 30, 20);
  }
    if (mouseY>=233 && mouseY<=466)
  {
  fill(#A8A5FF);
  rect(482, 270, 35, 50);
  //mouth
  fill(#130EBC);;
  ellipse(500, 340, 50, 20);

  }
  else if (mouseY>466)
  {
  fill(#FFCA17);
  triangle(485, 306, 516, 306,500,270);
  //mouth
  fill(#FF6565);;
  ellipse(500, 340, 10, 10);
    
  }
  
  
}
   
void keyPressed()
{
  //hard coding this into 8 balls
  if (key == '1')
  {
    f=createFont("Monaco", 30);
    fill(#FD8FD5);
    arc(500, 180, 270,200, PI * 1.0,PI * 2, CHORD);
    ellipse(500, 70, 50, 50);
    textFont(f);
    
    fill(#FDCE8F);
    text("My :-)", 450, 140);  
  }
  
}

void bgChange(){
  
  
  
}
