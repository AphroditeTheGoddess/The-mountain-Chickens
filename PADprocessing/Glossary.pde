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
final int GLOSSARY_ELEMENT_TEXT_XOFFSET = width - width / 3;
final int AVATAR_XPOS = 200;
final int AVATAR_YPOS = height - height/4;


class Glossary
{
  int theButtonXpos;
  int theButtonYpos;
  int glossarySizeX;
  int glossarySizeY;
  int glossaryState;
  int currentElement;
  int navigationTimer;

  Glossary() { //constructor for the glossary
    glossaryState = 0;
    theButtonXpos = 1650;
    theButtonYpos = 0;
    glossarySizeX = 50;
    currentElement = -1;
    navigationTimer = 0;
    glossarySizeY = height;
  }

  void glossaryUpdateDraw() { //function that runs all the necessary functions for the glossary to function
    rectMode(CORNER);
    drawGlossary();
    glossaryPosCheck();
    rectMode(CENTER);
  }

  void glossaryPosCheck() { //function that checks whether or not the button to display the glossary has been clicked
    navigationTimer--;
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
            currentElement = i + (4 * j);
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
    if (overlaps(100, 850, 100, 50, mouseX, mouseY) && mousePressed && navigationTimer <= 0)
    {
      if (glossaryState == GLOSSARY_OPEN) {
        glossaryState = GLOSSARY_DORMENT;
      }
      if (glossaryState == GLOSSARY_ELEMENT_OPEN) {
        glossaryState = GLOSSARY_OPEN;
        navigationTimer = 40;
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
      image(style.linkerPijl, 100, 865, 100, 50);
      fill(style.black);
      text("Regelboekje", width/2, height/8);
      fill(style.white);
      for (int i = 0; i < GLOSSARY_OBJECT_COLUMNS; i++) {
        for (int j = 0; j < GLOSSARY_OBJECT_OBJECTSPERCOLUMN; j++) {
          rect(GLOSSARY_HORZ_OFFSET + 200 * i, 200 + j * 200, 100, 100);
          iconSelector(i + j);
        }
      }
      break;

    case GLOSSARY_ELEMENT_OPEN:
      rect(theButtonXpos, theButtonYpos, glossarySizeX, glossarySizeY);
      image(style.linkerPijl, 100, 865, 100, 50);
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
  imageMode(CORNER);

    switch (arrayIndex) {
    case 0: //bankrun fiche plaatje
      image(style.bankruncoin, GLOSSARY_HORZ_OFFSET, 200, 100, 100);
      break;
    case 1: //dobbelstenen 
      break;
    case 2: //promoveren/degraderen
      break;
    case 3: //productie/consumptie
      break;
    case 4: //
      break;
    case 5: //goud
      break;
    case 6: //krediet
      break;
    case 7: //bank icon nodig
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
    imageMode(CENTER);
  }

  void contentSelector(int arrayIndex) { //this function defines what text/images/etc should be drawn in what glossarycontent object
    fill(style.black);
    switch (arrayIndex) {
    case 0: //bankrun
      text("Bankruns", width/2, height/8);
      image(style.BagJoke, 200, AVATAR_YPOS, 500, 500);
      text("Je mag gewoon blijven zitten hoor.", 0, 0);
      text("placeholder", (width / 3) * 2, height/2);
      break;
    case 1: //dobbelstenen
      text("Dobbelstenen", width/2, height/8);
      image(style.BagTip, 200, AVATAR_YPOS, 500, 500);
      text("Als je rustig gooit kun je misschien de uitkomst bepalen.", 0, 0);
      text("placeholder", (width / 3) * 2, height/2);
      break;
    case 2: //promoveren/degraderen
      text("Kredietklasse", width/2, height/8);
      image(style.BagTip, 200, AVATAR_YPOS, 500, 500);
      text("Als je je schulden niet kunt betalen tijdens een bankrun beland je in de gevangenis.", 0, 0);
      text("placeholder", (width / 3) * 2, height/2);
      break;
    case 3: //productie/consumptie
      text("Productie", width/2, height/8);
      image(style.BagTip, 200, AVATAR_YPOS, 500, 500);
      text("Later in het spel stijgen de prijzen van goederen erg snel, wacht niet te lang!", 0, 0);
      text("placeholder", (width / 3) * 2, height/2);
      break;
    case 4: //Kopen/Verkopen
      text("Placeholder", width/2, height/8);
      image(style.BagFact, 200, AVATAR_YPOS, 500, 500);
      text("Het duurste eten dat je kunt kopen is Japans Kobe vlees van 1000 euro per kilo.", 0, 0);
      text("placeholder", (width / 3) * 2, height/2);
      break;
    case 5: //goud
      text("Goud", width/2, height/8);
      image(style.BagFact, 200, AVATAR_YPOS, 500, 500);
      text("Ongeveer 80% van het totale aantal goud op aarde is al gedolven door de mensheid.", 0, 0);
      text("placeholder", (width / 3) * 2, height/2);
      break;
    case 6: //krediet
      text("Krediet", width/2, height/8);
      image(style.BagTip, 200, AVATAR_YPOS, 500, 500);
      text("Als je niet met krediet hoeft te betalen zou ik dat ook niet doen.", 0, 0);
      text("placeholder", (width / 3) * 2, height/2);
      break;
    case 7: //bank
      text("De Bank", width/2, height/8);
      image(style.BagFact, 200, AVATAR_YPOS, 500, 500);
      text("Het woord 'bank' is een voorbeeld van een homoniem, een woord met meerdere betekenissen.", 0, 0);
      text("placeholder", (width / 3) * 2, height/2);
      break;
    case 8: //actie kaart
      text("Actie Kaarten", width/2, height/8);
      image(style.BagTip, 200, AVATAR_YPOS, 500, 500);
      text("Met actie kaarten kun je het hele spel omgooien.", 0, 0);
      text("placeholder", (width / 3) * 2, height/2);
      break;
    case 9: //financierings kaart
      text("Financierings Kaarten", width/2, height/8);
      image(style.BagFact, 200, AVATAR_YPOS, 500, 500);
      text("Het oudste bedrijf van Nederland is een bierbrouwerij in Wijlre: de Koninklijke Brand Bierbrouwerij BV. Al sinds 1340 is deze brouwer actief.", 0, 0);
      text("placeholder", (width / 3) * 2, height/2);
      break;
    case 10: //gilde
      text("Gilde", width/2, height/8);
      image(style.BagFact, 200, AVATAR_YPOS, 500, 500);
      text("Een gilde is een belangenorganisatie voor mensen die in dezelfde beroepsgroep werken.", 0, 0);
      text("placeholder", (width / 3) * 2, height/2);
      break;
    case 11: //gevangenis
      text("Gevangenis", width/2, height/8);
      image(style.BagJoke, 200, AVATAR_YPOS, 500, 500);
      textSize(16);
      text("Zebras zijn eigenlijk paarden die ontsnapt zijn uit de gevangenis.", 0, 0);
      text("Als je degradeerd naar de gevangenis (zie degraderen/promoveren voor meer uitleg) blijf je in het spel, maar kun je minder dingen doen.\n Tijdens jouw beurt mag je alle normale beurtopties uitvoeren behalve bieden op fanancieringkaarten.\n Al het goud/krediet wat je verdient in de beurt moet direct gebruikt worden om schulden te betalen.\nAls al je schulden zijn betaald promoveer je weer naar kredietklasse I\nAls je in de gevangenis zit en je je schulden niet kunt betalen tijdens een bankrun ga je failliet en is het spel voor jou over.", (width / 3) * 2, height/2);
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
