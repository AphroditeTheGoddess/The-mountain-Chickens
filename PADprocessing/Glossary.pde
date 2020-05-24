final int GLOSSARY_OPENING = 1;
final int GLOSSARY_OPEN = 2;
final int GLOSSARY_ELEMENT_OPEN = 3;
final int GLOSSARY_DORMENT = 0;
final int GLOSSARY_INVISIBLE = -1;
final int GLOSSARY_STARTING_XPOS = 1600;
final int GLOSSARY_HORZ_OFFSET = 450;
final int GLOSSARY_OBJECT_AMOUNT = 12;
final int GLOSSARY_OBJECT_COLUMNS = 4;
final int GLOSSARY_OBJECT_OBJECTSPERCOLUMN = 3;
final int GLOSSARY_OBJECT_WH = 100;


class Glossary
{
  int theButtonXpos;
  int theButtonYpos;
  int glossarySizeX;
  int glossarySizeY;
  int glossaryState;
  int currentElement;

  Glossary() { //constructor for the glossary
    glossaryState = 0;
    theButtonXpos = 1650;
    theButtonYpos = 0;
    glossarySizeX = 50;
    currentElement = -1;
    glossarySizeY = height;
  }

  void glossaryUpdateDraw() { //function that runs all the necessary functions for the glossary to function
    rectMode(CORNER);
    drawGlossary();
    glossaryPosCheck();
    rectMode(CENTER);
  }

  void glossaryPosCheck() { //function that checks whether or not the button to display the glossary has been clicked
    if (glossaryState == GLOSSARY_OPEN && mouseX < 50 && mousePressed == true)
    {
      currentElement = -1;
      glossaryState = GLOSSARY_DORMENT;
    }
    if (mouseX > 1600 && mousePressed == true && glossaryState == GLOSSARY_DORMENT) {
      glossaryState = GLOSSARY_OPENING;
    }
    if (glossaryState == GLOSSARY_OPEN) {
      for (int i = 0; i < GLOSSARY_OBJECT_COLUMNS; i++) {
        for (int j = 0; j < GLOSSARY_OBJECT_OBJECTSPERCOLUMN; j++) {
          if (mouseX > GLOSSARY_HORZ_OFFSET + (i * 200) && mouseX < GLOSSARY_HORZ_OFFSET + (i * 200) + GLOSSARY_OBJECT_WH && mouseY > 200 + (j * 200) && mouseY < 200 + (j * 200) + GLOSSARY_OBJECT_WH && mousePressed == true) {
            currentElement = i + (3 * j);
            if (mouseY > 350) {
              currentElement += 1;
            }
            if (mouseY > 550) {
              currentElement += 1;
            }
            glossaryState = GLOSSARY_ELEMENT_OPEN;
          }
        }
      }
    }
    if (glossaryState == GLOSSARY_ELEMENT_OPEN) {
      if (mouseX < 50 && mousePressed == true)
      {
        currentElement = -1;
        glossaryState = GLOSSARY_DORMENT;
      }
    }
  }

  void drawGlossary() {
    fill(style.white);

    switch (glossaryState) {
    case GLOSSARY_OPENING:
      if (theButtonXpos > 0) {
        theButtonXpos -= 15;
        glossarySizeX += 15;
      } else {
        glossaryState = GLOSSARY_OPEN;
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

    case GLOSSARY_OPEN:
      rect(theButtonXpos, theButtonYpos, glossarySizeX, glossarySizeY);
      fill(style.black);
      text("Regelboekje", width/2, height/8);
      fill(style.white);
      for (int i = 0; i < GLOSSARY_OBJECT_COLUMNS; i++) {
        for (int j = 0; j < GLOSSARY_OBJECT_OBJECTSPERCOLUMN; j++) {
          rect(GLOSSARY_HORZ_OFFSET + 200 * i, 200 + j * 200, 100, 100);
          iconSelector(currentElement);
        }
      }
      break;

    case GLOSSARY_ELEMENT_OPEN:
      rect(theButtonXpos, theButtonYpos, glossarySizeX, glossarySizeY);
      contentSelector(currentElement);
      break;

    case GLOSSARY_INVISIBLE:
      break;
    }
    /*fill (style.black);
    text (currentElement, 100, 100);
    fill(style.white);*/
  }

  void iconSelector(int arrayIndex) { //this function supplies the glossary objects with the right icons

    switch (arrayIndex) {
    case 0: //bankrun
      break;
    case 1: //wijk dobbelsteen
      break;
    case 2: //krediet dobbelsteen
      break;
    case 3: //productie
      break;
    case 4: //consumptie
      break;
    case 5: //goud
      break;
    case 6: //krediet
      break;
    case 7: //bank
      break;
    case 8: //actie kaart
      break;
    case 9: //financierings kaart
      break;
    case 10: //gilde
      break;
    case 11: //gevangenis
      break;
    }
  }

  void contentSelector(int arrayIndex) { //this function defines what text/images/etc should be drawn in what glossarycontent object
    fill(style.black);
    switch (arrayIndex) {
    case 0: //bankrun
      text("Bankruns", width/2, height/8);
      image(style.BagJoke, 300, height/2, 500, 500);
      break;
    case 1: //wijk dobbelsteen
      text("Wijk dobbelsteen", width/2, height/8);
      break;
    case 2: //krediet dobbelsteen
      text("Krediet dobbelsteen", width/2, height/8);
      break;
    case 3: //productie
      text("Productie", width/2, height/8);
      break;
    case 4: //consumptie
      text("Consumptie", width/2, height/8);
      break;
    case 5: //goud
      text("Goud", width/2, height/8);
      break;
    case 6: //krediet
      text("Krediet", width/2, height/8);
      break;
    case 7: //bank
      text("De Bank", width/2, height/8);
      break;
    case 8: //actie kaart
      text("Actie Kaarten", width/2, height/8);
      break;
    case 9: //financierings kaart
      text("Financierings Kaarten", width/2, height/8);
      break;
    case 10: //gilde
      text("Gilde", width/2, height/8);
      break;
    case 11: //gevangenis
      text("Gevangenis", width/2, height/8);
      break;
    }
  }

  boolean overlapsRectCorner(float x0, float y0, float w0, float h0, float x1, float y1) //x0, y0 coordinates | w0, h0 width/height | x1, y1 position of mouse
  {
    if (x1 > x0 && y1 > y0 && x1 < x0 + w0 && y1 < x0 + h0)
    {
      return true;
    } else
    {
      return false;
    }
  }
}
