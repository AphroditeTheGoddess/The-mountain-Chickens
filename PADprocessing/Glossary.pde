int theButtonXpos;
int theButtonYpos;
int glossarySizeX;
int glossarySizeY;
int glossaryState;

final int GLOSSARY_OPEN = 1;
final int GLOSSARY_DORMENT = 0;
final int GLOSSARY_INVISIBLE = -1;
final int GLOSSARY_STARTING_XPOS = 1600;

void glossaryHandler() { //function that runs all the necessary functions for the glossary to function
  drawGlossary();
  glossaryPosCheck();
}

void glossaryInit() { //function that initializes the necessary values for the glossary to function
  glossaryState = 0;
  theButtonXpos = 1650;
  theButtonYpos = 0;
  glossarySizeX = 50;
  glossarySizeY = height;
}

void glossaryPosCheck() { //function that checks whether or not the button to display the glossary has been clicked
  if (overlapsRectCorner(theButtonXpos, theButtonYpos, glossarySizeX, glossarySizeY, mouseX, mouseY) == true && mousePressed == true)
  {
    if (glossaryState == GLOSSARY_OPEN) {
      glossaryState = GLOSSARY_DORMENT;
    }
  }
  if (mouseX > 1600 && mousePressed == true && glossaryState == GLOSSARY_DORMENT) {
    glossaryState = GLOSSARY_OPEN;
  }
}

void drawGlossary() {
  rectMode(CORNER);
  fill(style.white);
  switch (glossaryState) {
  case GLOSSARY_OPEN:
    if (theButtonXpos > 50) {
      theButtonXpos -= 15;
      glossarySizeX += 15;
    }
    rect(theButtonXpos, theButtonYpos, glossarySizeX, glossarySizeY);
    break;

  case GLOSSARY_DORMENT:
    if (theButtonXpos < GLOSSARY_STARTING_XPOS) {
      theButtonXpos += 15;
      glossarySizeX -= 15;
    }
    rect(theButtonXpos, theButtonYpos, glossarySizeX, glossarySizeY);
    break;

  case GLOSSARY_INVISIBLE:
    break;
  }
  rectMode(CENTER);
}

//Enter the coördinates (x0, y0) and the sizes (w0, h0) of the rect you want to calculate the overlap with.
//Also enter the x and y position of the mouse (x1, y1)
boolean overlapsRectCorner(float x0, float y0, float w0, float h0, float x1, float y1)
{
  if (x1 > x0 && y1 > y0 && x1 < x0 + w0 && y1 < x0 + h0)
  {
    return true;
  } else
  {
    return false;
  }
}
