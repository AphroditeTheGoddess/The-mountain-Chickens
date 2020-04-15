Screens screens;
Style style;
int screen = 1;
int amountOfPlayers;
int count;
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
    
  case 9:
    screens.screen9();
    return;
    
  case 10:
    screens.screen10();
    return;
    
  case 11:
    screens.screen11();
    return;
    
  case 12:
    screens.screen12();
    return;
    
  case 13:
    screens.screen13();
    return;
    
  case 14:
    screens.screen14();
    return;
    
  case 15:
    screens.screen15();
    return;
    
  case 16:
    screens.screen16();
    return;
    
  case 17:
    screens.screen17();
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

//This function draws a rectangle in the bottom left corner of the screen
//When it is clicked the screen changes to the screen number given in the paramater of this function
//Count makes it impossible for the player to accidentally skip a screen
void previous(int previousScreen)
{
    rectMode(CENTER);
    fill(style.white);
    rect(100, 865, 100, 50);
    count++;
    if (overlaps(100, 850, 100, 50, mouseX, mouseY) && mousePressed && count > 20)
    {
      screen = previousScreen;
      count = 0;
    }
}

//This function draws a rectangle in the bottom right corner of the screen
//When it is clicked the screen changes to the screen number given in the paramater of this function
//Count makes it impossible for the player to accidentally skip a screen
void next(int nextScreen)
{
    rectMode(CENTER);
    fill(style.white);
    rect(1500, 865, 100, 50);
    count++;
    if (overlaps(1500, 865, 100, 50, mouseX, mouseY) && mousePressed && count > 20)
    {
      screen = nextScreen;
      count = 0;
    }
}
