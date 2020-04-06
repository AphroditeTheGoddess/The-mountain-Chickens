//In this class all things style-related
//will be handled. like textsizes and colors etc.
class Style
{
  int textSize;
  color backgroundColor;
  color black;
  color white;
  
  PImage screen4;
  PImage screen6;
  
  PImage text1;
  PImage text2;
  PImage text3;
  PImage text4;
  PImage text5;
  PImage text6;
  PImage text7;
  PImage text8;
  
    Style()
    {
      textSize = 80;
      backgroundColor = color(100, 200, 300);
      black = color(0);
      white = color(255);
      
      screen4 = loadImage("content/screen4.PNG");
      screen6 = loadImage("content/screen6.PNG");
      
      text1 = loadImage("content/text1.PNG");
      text2 = loadImage("content/text2.PNG");
      text3 = loadImage("content/text3.PNG");
      text4 = loadImage("content/text4.PNG");
      text5 = loadImage("content/text5.PNG");
      text6 = loadImage("content/text6.PNG");
      text7 = loadImage("content/text7.PNG");
      text8 = loadImage("content/text8.PNG");
    }
}
