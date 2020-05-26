Screens screens;
RoundCounter counter;
Style style;
Bankrun bankrun;
GameEndingTracker gameEndingTracker;
Glossary glossary;
int screen = 1;
int amountOfPlayers;
int count;
// 0 voor beginners versie, 1 voor volledige versie.
int version;

void setup()
{
  size(1650, 900);
  screens = new Screens();
  style = new Style();
  counter = new RoundCounter();
  bankrun = new Bankrun();
  gameEndingTracker = new GameEndingTracker();
  glossary = new Glossary();
  textAlign(CENTER);
  rectMode(CENTER);
}

void draw()
{
  background(style.backgroundColor);
  //println(screen);
  println("Screen " + screen);
  println("turn " + counter.turn);
  println("round " + counter.round);
  println("bankrun " + bankrun.bankrunCount);
  counter.Count();

  bankrun.bankrunTrigger();
  bankrun.bankrunDisplay();

  glossary.glossaryUpdateDraw();

  if (glossary.glossaryState == GLOSSARY_DORMENT) {
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

    case 18:
      screens.screen18();
      return;

    case 19:
      screens.screen19();
      return;

    case 20:
      screens.screen20();
      return;

    case 21:
      screens.screen21();
      return;

    case 22:
      screens.screen22();
      return;

    case 23:
      screens.screen23();
      return;

    case 24:
      screens.screen24();
      return;

    case 25:
      screens.screen25();
      return;

    case 26:
      screens.screen26();
      return;

    case 27:
      screens.screen27();
      return;

    case 28:
      screens.screen28();
      return;

    case 29:
      screens.screen29();
      return;

    case 30:
      screens.screen30();
      return;

    case 31:
      screens.screen31();
      return;

    case 32:
      screens.screen32();
      return;

    case 33:
      screens.screen33();
      return;

    case 34:
      screens.screen34();
      return;

    case 35:
      screens.screen35();
      return;

    case 36:
      screens.screen36();
      return;

    case 37:
      screens.screen37();
      return;

    case 38:
      screens.screen38();
      return;

    case 39:
      screens.screen39();
      return;

    case 40:
      screens.screen40();
      return;

    case 41:
      screens.screen41();
      return;

    case 42:
      screens.screen42();
      return;

    case 43:
      screens.screen43();
      return;

    case 44:
      screens.screen44();
      return;

    case 45:
      screens.screen45();
      return;

    case 46:
      screens.screen46();
      return;

    case 47:
      screens.screen47();
      return;

    case 48:
      screens.screen48();
      return;

    case 49:
      screens.screen49();
      return;

    case 50:
      screens.screen50();
      return;

    case 51:
      screens.screen51();
      return;

    case 52:
      screens.screen52();
      return;

    case 53:
      screens.screen53();
      return;

    case 54:
      screens.screen54();
      return;

    case 55:
      screens.screen55();
      return;

    case 56:
      screens.screen56();
      return;

    case 57:
      screens.screen57();
      return;

    case 58:
      screens.screen58();
      return;
    }
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
  image(style.linkerPijl, 100, 865, 100, 50);
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
  image(style.rechterPijl, 1500, 865, 100, 50);
  count++;
  if (bankrun.bankrun)
  {
    if (version == 0) {
      screen = 26;
    }
    if (version == 1) {
      screen = 58;
    }
    return;
  }
  if (overlaps(1500, 865, 100, 50, mouseX, mouseY) && mousePressed && count > 20)
  {
    screen = nextScreen;
    count = 0;
  }
}
