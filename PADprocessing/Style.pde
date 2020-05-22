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
  PImage screen7;
  PImage screen9;
  PImage screen11;
  PImage screen12;
  PImage screen13;
  PImage screen14;
  PImage screen15;
  PImage screen16;
  PImage screen31;
  PImage screen35;
  PImage screen50;
  PImage screen51;

  PImage text1;
  PImage text2;
  PImage text3;
  PImage text4;
  PImage text5;
  PImage text6;
  PImage text7;
  PImage text8;
  PImage text9;
  PImage text10;
  PImage text11;
  
  PImage r10;
  PImage r20;
  PImage g10;
  PImage g20;
  PImage b10;
  PImage b20;
  PImage red;
  PImage green;
  PImage blue;
  
  PImage boot, molen, vis, wiel, bakstenen, bloem;
  
  PImage bankrunfiche;
  PImage klasse;
  PImage bankruncoin;
  
  PImage BagTip;
  PImage BagJoke;
  PImage BagFact;

  Style()
  {
    textSize = 80;
    backgroundColor = color(37, 116, 179);
    black = color(0);
    white = color(255);

    screen4 = loadImage("content/screen4.PNG");
    screen6 = loadImage("content/screen6.PNG");
    screen7 = loadImage("content/screen7.PNG");
    screen9 = loadImage("content/screen9.PNG");
    screen11 = loadImage("content/screen11.PNG");
    screen12 = loadImage("content/screen12.PNG");
    screen13 = loadImage("content/screen13.PNG");
    screen14 = loadImage("content/screen14.PNG");
    screen15 = loadImage("content/screen15.PNG");
    //screen16 = loadImage("content/screen16.PNG");
    screen31 = loadImage("content/screen32.PNG");
    screen35 = loadImage("content/screen35.PNG");
    screen50 = loadImage("content/screen50.PNG");
    screen51 = loadImage("content/screen51.PNG");
    

    text1 = loadImage("content/text1.PNG");
    text2 = loadImage("content/text2.PNG");
    text3 = loadImage("content/text3.PNG");
    text4 = loadImage("content/text4.PNG");
    text5 = loadImage("content/text5.PNG");
    text6 = loadImage("content/text6.PNG");
    text7 = loadImage("content/text7.PNG");
    text8 = loadImage("content/text8.PNG");
    text9 = loadImage("content/text9.PNG");
    text10 = loadImage("content/text10.PNG");
    text11 = loadImage("content/text11.PNG");
    
    r10 = loadImage("content/10r.png");
    r20 = loadImage("content/20r.png");
    g10 = loadImage("content/10g.png");
    g20 = loadImage("content/20g.png");
    b10 = loadImage("content/10b.png");
    b20 = loadImage("content/20b.png");
    red = loadImage("content/red.PNG");
    green = loadImage("content/green.PNG");
    blue = loadImage("content/blue.PNG");
    
    boot = loadImage("content/Boot.png");
    molen = loadImage("content/Molen.png");
    vis = loadImage("content/Vis.png");
    wiel = loadImage("content/Wiel.png");
    bakstenen = loadImage("content/Bakstenen.png");
    bloem = loadImage("content/Bloem.png");
    
    bankrunfiche = loadImage("content/bankrunfiche.png");
    klasse = loadImage("content/klasse.PNG");
    bankruncoin = loadImage("content/bankruncoin.png");
    
    BagTip = loadImage("content/whisper.png");
    BagJoke = loadImage("content/laugh.png");
    BagFact = loadImage("content/shrug.png");
  }
}
