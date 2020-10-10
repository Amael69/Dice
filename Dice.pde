 int randomNumber (int max) {
   return (( int)(Math.random()*(max+10)));
 }
 
 
 
 
 void setup()
  {
     size (500,500);
     background (250);
    noLoop();
  }
  void draw()
  {
     float total=0;
     Die newBob;
     background (255);
     
     for (int y=30; y<400; y=y+40) {
       for (int x=30; x<450; x=x+40){
   {
     newBob= new Die (x,y);
     newBob.roll();
     newBob.show();
     total= total+ newBob.value;
   }
       }
     }
     fill(0);
     text(" All numbers on dice added up: " + total, 30,450);
     
  }
  
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
     int value=0;
     int myX, myY;
    //member variable declarations here
      
      Die(int x, int y) //constructor
      {
         myX= x;
         myY= y;
      }
      void roll()
      {
        value= randomNumber(5)+1;
          //your code here
      }
      void show()
      {
          noStroke();
          fill((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
          rect (myX,myY, 30,30);
          fill(255);
          if (value==1){
            ellipse (myX+15,myY+15, 5,5);
          }
          else if (value== 2){
            ellipse (myX+7,myY+7, 5,5);
            ellipse (myX+23,myY+23, 5,5);
          }
           else if (value== 3){
            ellipse (myX+7,myY+7, 5,5);
            ellipse (myX+23,myY+23, 5,5);
             ellipse (myX+15,myY+15, 5,5);
          }
           else if (value== 4){
            ellipse (myX+7,myY+7, 5,5);
            ellipse (myX+23,myY+23, 5,5);
             ellipse (myX+7,myY+23, 5,5);
            ellipse (myX+23,myY+7, 5,5);
          }
           else if (value== 5){
            ellipse (myX+7,myY+7, 5,5);
            ellipse (myX+23,myY+23, 5,5);
             ellipse (myX+7,myY+23, 5,5);
            ellipse (myX+23,myY+7, 5,5);
            ellipse (myX+15,myY+15, 5,5);
          }
          else {
             ellipse (myX+7,myY+10, 5,5);
            ellipse (myX+7,myY+20, 5,5);
             ellipse (myX+15,myY+10, 5,5);
            ellipse (myX+15,myY+20, 5,5);
            ellipse (myX+23,myY+10, 5,5);
             ellipse (myX+23,myY+20, 5,5);
          }
          
          
        //your code here
      }
  }
