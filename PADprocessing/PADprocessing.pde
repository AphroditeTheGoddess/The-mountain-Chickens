Screens screens;
Style style;
int screen = 1;
int amountOfPlayers;
//uwu
void setup()
{
  size(1600, 900);
  screens = new Screens();
  style = new Style();
  textAlign(CENTER);
  rectMode(CENTER);
}

void draw()
{
  background(style.backgroundColor);
  println(screen);

  switch(screen)
  {
  case 1:
    screens.screen1();
    return;

  case 2:
    screens.screen2();
    return;
    
  case 3:
    screens.screen3();
    return;
   
  case 4:
    screens.screen4();
    return;
    
  case 5:
    screens.screen5();
    return;
    
  case 6:
    screens.screen6();
    return;
    
  case 7:
    screens.screen7();
    return;
  
  case 8:
    screens.screen8();
    return;
    
  }
}

//Enter the coördinates (x0, y0) and the sizes (w0, h0) of the rect you want to calculate the overlap with.
//Also enter the x and y position of the mouse (x1, y1)
//NOTE: this only works when the rect is in rectMode(CENTER).
boolean overlaps(float x0, float y0, float w0, float h0, float x1, float y1)
{
  if (x1 > (x0 - w0/2) && x1 < (x0 + w0/2) && y1 > (y0 - h0/2) && y1 < (y0 + h0/2))
  {
    return true;
  } else
  {
    return false;
  }
}
