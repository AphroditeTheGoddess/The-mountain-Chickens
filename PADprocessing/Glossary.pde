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

class Glossary
{

  int glossaryPosXpos;
  int glossaryPosYpos;

  int theButtonXpos;
  int theButtonYpos;

  int glossarySizeX;
  int glossarySizeY;
  int glossaryState;
  int currentElement;

  int navigationTimer;

  final int GLOSSARY_OPENBUTTON_XPOS = width - 100;
  final int GLOSSARY_OPENBUTTON_YPOS = 100;
  final int AVATAR_XPOS = 200;
  final int AVATAR_YPOS = height - (height / 3);

  Glossary() { //constructor for the glossary
    glossaryState = 0;
    glossaryPosXpos = 1650;
    glossaryPosYpos = 0;
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

    if (mouseX > 1600 && mousePressed == true && glossaryState == GLOSSARY_DORMENT || overlaps(GLOSSARY_OPENBUTTON_XPOS, GLOSSARY_OPENBUTTON_YPOS, 150, 150, mouseX, mouseY) && mousePressed) {
      glossaryState = GLOSSARY_OPENING;
    }
    if (glossaryState == GLOSSARY_OPEN) {
      for (int i = 0; i < GLOSSARY_OBJECT_COLUMNS; i++) {
        for (int j = 0; j < GLOSSARY_OBJECT_OBJECTSPERCOLUMN; j++) {
          if (mouseX > GLOSSARY_HORZ_OFFSET + (i * 200) && mouseX < GLOSSARY_HORZ_OFFSET + (i * 200) + GLOSSARY_OBJECT_WH && mouseY > 200 + (j * 200) && mouseY < 200 + (j * 200) + GLOSSARY_OBJECT_WH && mousePressed == true) {

            currentElement = i + (4 * j);

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
    fill(7, 53, 90);

    switch (glossaryState) {
    case GLOSSARY_OPENING:
      if (glossaryPosXpos > 0) {
        glossaryPosXpos -= 15;

        glossarySizeX += 15;
      } else {
        glossaryState = GLOSSARY_OPEN;
      }

      rect(glossaryPosXpos, glossaryPosYpos, glossarySizeX, glossarySizeY);
      break;

    case GLOSSARY_DORMENT:
      if (glossaryPosXpos < GLOSSARY_STARTING_XPOS) {
        glossaryPosXpos += 15;
        glossarySizeX -= 15;
      }
      rect(glossaryPosXpos, glossaryPosYpos, glossarySizeX, glossarySizeY);
      image(style.glossaryKnop, GLOSSARY_OPENBUTTON_XPOS, GLOSSARY_OPENBUTTON_YPOS, 150, 150);
      break;

    case GLOSSARY_OPEN:
      textSize(style.textSize);
      rect(glossaryPosXpos, glossaryPosYpos, glossarySizeX, glossarySizeY);
      image(style.linkerPijl, 100, 865, 100, 50);
      fill(style.white);

      text("Regelboekje", width/2, height/8);
      fill(style.white);
      for (int i = 0; i < GLOSSARY_OBJECT_COLUMNS; i++) {
        for (int j = 0; j < GLOSSARY_OBJECT_OBJECTSPERCOLUMN; j++) {
          rect(GLOSSARY_HORZ_OFFSET + 200 * i, 200 + j * 200, 100, 100);
        }
      }
      drawIcons();
      break;

    case GLOSSARY_ELEMENT_OPEN:

      rect(glossaryPosXpos, glossaryPosYpos, glossarySizeX, glossarySizeY);
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

  void drawIcons() { //this function supplies the glossary with the right icons
    imageMode(CORNER);
    image(style.bankruncoin, GLOSSARY_HORZ_OFFSET, 200, 100, 100);
    image(style.glossaryDobbelstenen, GLOSSARY_HORZ_OFFSET + 200, 200, 100, 100);
    image(style.glossaryPromoveren, GLOSSARY_HORZ_OFFSET + 2 * 200, 200, 100, 100);
    image(style.glossaryMarkten, GLOSSARY_HORZ_OFFSET + 3 * 200, 200, 100, 100);
    image(style.glossaryKopen, GLOSSARY_HORZ_OFFSET, 2 * 200, 100, 100);
    image(style.glossaryGoud, GLOSSARY_HORZ_OFFSET + 200, 2 * 200, 100, 100);
    image(style.glossaryKrediet, GLOSSARY_HORZ_OFFSET + 2 * 200, 2 * 200, 100, 100);
    image(style.glossaryBank, GLOSSARY_HORZ_OFFSET + 3 * 200, 2 * 200, 100, 100);
    image(style.glossaryActiekaart, GLOSSARY_HORZ_OFFSET, 3 * 200, 100, 100);
    image(style.glossaryFinancieringskaart, GLOSSARY_HORZ_OFFSET + 200, 3 * 200, 100, 100);
    image(style.glossaryGilde, GLOSSARY_HORZ_OFFSET + 2 * 200, 3 * 200, 100, 100);
    image(style.glossaryGevangenis, GLOSSARY_HORZ_OFFSET + 3 * 200, 3 * 200, 100, 100);
    imageMode(CENTER);
  }

void contentSelector(int arrayIndex) { //this function defines what text/images/etc should be drawn in what glossarycontent object
    fill(style.black);
    // with Monnay
    switch (arrayIndex) {
    case 0: //bankrun

      fill(style.white);
      textSize(style.textSize);
      text("Bankruns", width/2, height/8);
      image(style.BagJoke, AVATAR_XPOS, AVATAR_YPOS, 500, 500);
      image(style.glossarySpeech, AVATAR_XPOS + 50, AVATAR_YPOS - 400, 500, 400);
      textSize(16);
      fill(style.black);
      text("Je mag gewoon blijven zitten hoor.", AVATAR_XPOS + 50, 200);
      fill(style.white);
      text("Een bankrun is een spel evenement dat gebeurd wanneer bepaalde condities zijn behaald.\nBij een bankrun komt het spel meteen stil te liggen.\nHet gaat pas weer verder als elke speler zijn schulden heeft afgelost.\nAls een speler zijn schulden niet kan aflossen degradeerd hij in kredietklasse en kan hij zelfs in de gevangenis belanden.\nEen bankrun onstaat wanneer een bankrunfiche het einde van de bankrunmeter bereikt of als al het goud in de goudreserve opraakt.", (width / 3) * 2, height/2);
      image(style.bankrunMeter, width/2+200, height/2+275);
      break;
    case 1: //dobbelstenen
      fill(style.white);
      textSize(style.textSize);
      text("Dobbelstenen", width/2, height/8);
      image(style.BagTip, AVATAR_XPOS, AVATAR_YPOS, 500, 500);
      image(style.glossarySpeech, AVATAR_XPOS + 50, AVATAR_YPOS - 400, 500, 400);
      textSize(16);
      fill(style.black);
      text("Als je rustig gooit kun je\nmisschien de uitkomst bepalen.", AVATAR_XPOS + 50, 200, 200);
      fill(style.white);
      text("Er zijn twee soorten dobbelsteen, de kredietdobbelsteen en de wijkdobbelsteen.\nDe kredietdobbelsteen wordt aan het einde van een beurt gegooid en op basis van de worp gebeuren er bepaalde dingen.\nBij het getal 10 wordt het aantal spelers geteld die 10 of meer krediet hebben liggen op de getroffen huizenblokken.\nDe getroffen huizenblokken worden bepaald door een worp met de Wijkdobbelsteen.\nDitzelfde aantal blokjes wordt uit de markt met de corresponderende kleur gehaald. (groen/rood)\nVoor blauw worden er geen blokjes uit de markten gehaald,\ninplaats daarvan wordt het voorste bankrunfiche zoveel stappen verplaats als er getroffen spelers zijn.", (width / 3) * 2, height/2);
      image(style.r10, width/3, height/2+300, 200, 200);
      image(style.molen, width/2+500, height/4, 200, 200);
      break;
    case 2: //promoveren/degraderen
      fill(style.white);
      textSize(style.textSize);
      text("Promoveren en Degraderen", width/2, height/8);
      image(style.BagTip, AVATAR_XPOS, AVATAR_YPOS, 500, 500);
      image(style.glossarySpeech, AVATAR_XPOS + 50, AVATAR_YPOS - 300, 500, 400);
      textSize(16);
      fill(style.black);
      text("Als je je schulden niet kunt betalen tijdens\neen bankrun beland je in de gevangenis.", AVATAR_XPOS + 50, 200, 200);
      fill(style.white);
      text("Rechtsboven op het bord zie je de kredietklassen.\nJe kunt op deze schaal promoveren en degraderen.\nPromoveren gebeurt als je in een keer schulden aflost die groter dan of gelijk zijn aan de getallen in het geel boven de kredietklassen.\nDegraderen gebeurt wanneer je tijdens een bankrun je schulden niet kunt aflossen.\nAls je degradeerd in de eerste kredietklasse beland je in de gevangenis!", (width / 3) * 2, height/2);
      image(style.kredietKlassen, width/2+200, height/2+275);
      break;
    case 3: //productie/consumptie
      fill(style.white);
      textSize(style.textSize);
      text("Productie en Consumptie", width/2, height/8);
      image(style.BagFact, AVATAR_XPOS, AVATAR_YPOS, 500, 500);
      image(style.glossarySpeech, AVATAR_XPOS + 50, AVATAR_YPOS - 300, 500, 400);
      textSize(16);
      fill(style.black);
      text("Het duurste eten dat je kunt kopen is\nJapans Kobe vlees van 1000 euro per kilo.", AVATAR_XPOS + 50, 200, 200);
      fill(style.white);
      text("Links en rechts op het bord zie je de productie en consumptie markten.\nAlle blokjes zijn verdeeld in groepen met getallen erbij die de actuele prijs van de blokje weergeven.\nAls een blokje gekocht wordt wordt deze aan de kant met de laagste prijs genomen en betaald voor die prijs.\nHetzelfde geldt voor verkoop.", (width / 3) * 2, height/2);
      image(style.glossaryMarkten, width/2, height/2+275);
      break;
    case 4: //Kopen/Verkopen
      fill(style.white);
      textSize(style.textSize);
      text("Kopen en Verkopen", width/2, height/8);
      image(style.BagTip, AVATAR_XPOS, AVATAR_YPOS, 500, 500);
      image(style.glossarySpeech, AVATAR_XPOS + 50, AVATAR_YPOS - 350, 500, 400);
      textSize(16);
      fill(style.black);
      text("Later in het spel veranderen de prijzen\nvan goederen erg snel, wacht niet te lang!", AVATAR_XPOS + 50, 200, 200);
      fill(style.white);
      text("Kopen en verkopen van goederen in de groene/rode markt kan op elk moment in een beurt.\nDe getallen van het deel waar de blokjes in belanden bepalen de koop en verkoop prijs.\nStel je voor dat je vier blokjes wilt kopen uit de rode markt waarvan er twee in het deel van 4 en twee in het deel van 5 zitten.\n2 x 4 + 2 x 5 = 18 goud.", (width / 3) * 2, height/2);
      image(style.screen15, width/3, height/2+300, 250, 250);
      break;
    case 5: //goud
      fill(style.white);
      textSize(style.textSize);
      text("Goud", width/2, height/8);
      image(style.BagFact, AVATAR_XPOS, AVATAR_YPOS, 500, 500);
      image(style.glossarySpeech, AVATAR_XPOS + 50, AVATAR_YPOS - 400, 500, 400);
      textSize(16);
      fill(style.black);
      text("Ongeveer 80% van het totale aantal goud\nop aarde is al gedolven door de mensheid.", AVATAR_XPOS + 50, 200, 200);
      fill(style.white);
      text("Goud is naast krediet de valuta van het spel.\nGoud is altijd hetzelfde waard en kan gebruikt worden om dingen te kopen; zoals financierings- en actiekaarten.\nGoud is de enige manier om schulden af te lossen en kan verdiend worden door productie/consumptie blokjes-\nte verkopen voor de actuele marktwaarde\n of om financieringskaarten te verhandelen met andere spelers.", (width / 3) * 2, height/2);
      image(style.gold, width/2, height/2+300, 260, 200);
      break;
    case 6: //krediet
      fill(style.white);
      textSize(style.textSize);
      text("Krediet", width/2, height/8);
      image(style.BagTip, AVATAR_XPOS, AVATAR_YPOS, 500, 500);
      image(style.glossarySpeech, AVATAR_XPOS + 50, AVATAR_YPOS - 400, 500, 400);
      textSize(16);
      fill(style.black);
      text("Als je niet met krediet hoeft te\nbetalen zou ik dat ook niet doen.", AVATAR_XPOS + 50, 200, 200);
      fill(style.white);
      text("Krediet is naast goud de valuta van het spel.\nKrediet werkt als een lening, en kan net als goud gebruikt worden om financierings- en actiekaarten te kopen.\nGespendeerd krediet wordt op basis van de kredietklasse van de speler in de corresponderende wijk verdeeld over de verschillende iconen.\nTijdens een bankrun worden op basis van een gooi met de wijkdobbelsteen bepaald welke iconen in deze wijken getroffen worden.\nSpelers met schulden op die huizenblokken moeten hun schulden betalen.\n(Zie bankrun in het regelboekje voor meer uitleg)", (width / 3) * 2, height/2);
      image(style.glossaryKrediet, width/2-100, height/2+300);
      break;
    case 7: //bank
      fill(style.white);
      textSize(style.textSize);
      text("De Bank", width/2, height/8);
      image(style.BagFact, AVATAR_XPOS, AVATAR_YPOS, 500, 500);
      image(style.glossarySpeech, AVATAR_XPOS + 50, AVATAR_YPOS - 400, 500, 400);
      textSize(16);
      fill(style.black);
      text("Het woord 'bank' is een voorbeeld van een homoniem,\neen woord met meerdere betekenissen.", AVATAR_XPOS + 50, 200, 200);
      fill(style.white);
      text("De bank en de reserves zijn waar al het goud en alle productie en consumptie blokje die niet in het spel zijn worden opgeslagen.\nAls er geen goud meer is in de bank volgt er automatisch een bankrun\nen moeten alle spelers op dat moment hun schulden proberen af te betalen.", (width / 3) * 2, height/2);
      break;
    case 8: //actie kaart
      fill(style.white);
      textSize(style.textSize);
      text("Actie Kaarten", width/2, height/8);
      image(style.BagTip, AVATAR_XPOS, AVATAR_YPOS, 500, 500);
      image(style.glossarySpeech, AVATAR_XPOS + 50, AVATAR_YPOS - 400, 500, 400);
      textSize(16);
      fill(style.black);
      text("Met actie kaarten kun je het hele spel omgooien.", AVATAR_XPOS + 50, 200, 200);
      fill(style.white);
      text("De stapel groene kaarten zijn de actiekaarten.\nDeze kun je kopen voor 10 goud per stuk en hebben verschillende effecten als ze gespeeld worden.\nDe effecten van een gekochte kaart zijn alleen zichtbaar voor de speler die de kaart kocht.", (width / 3) * 2, height/2);
      image(style.glossaryActiekaart, width/2+400, height/3, 200, 200);
      break;
    case 9: //financierings kaart
      fill(style.white);
      textSize(style.textSize);
      text("Financierings Kaarten", width/2, height/8);
      image(style.BagFact, AVATAR_XPOS, AVATAR_YPOS, 500, 500);
      image(style.glossarySpeech, AVATAR_XPOS + 50, AVATAR_YPOS - 350, 500, 400);
      textSize(16);
      fill(style.black);
      text("Het oudste bedrijf van Nederland\nis een bierbrouwerij in Wijlre:\n de Koninklijke Brand Bierbrouwerij BV.\nAl sinds 1340 is deze brouwer actief.", AVATAR_XPOS + 50, 200, 200);
      fill(style.white);
      text("De stapel rode kaarten zijn de financieringskaarten.\ndeze stellen gebouwen/commodities voor waar je op kunt bieden en zijn de drijfveer van het spel.\nElke kaart heeft een speciale eigenschappen op basis van de getallen en plaatjes die er op staan afgebeeld.\nHieronder vallen gildes, startprijs en productie.\nElke beurt komt er een nieuwe financieringskaart bij, en als 1 speler er 10 verzameld heeft is het spel afgelopen-\nen moeten de scores worden berekend.\nLiggen er aan het begin van een beurt 5 kaarten dan beweegt het voorste bankrunfiche 1 plaats.", (width / 3) * 2, height/2);
      image(style.glossaryFinancieringskaart, width/2-200, height/2+300, 200, 200);
      break;
    case 10: //gilde
      fill(style.white);
      textSize(style.textSize);
      text("Gilde", width/2, height/8);
      image(style.BagFact, AVATAR_XPOS, AVATAR_YPOS, 500, 500);
      image(style.glossarySpeech, AVATAR_XPOS + 50, AVATAR_YPOS - 400, 500, 400);
      textSize(16);
      fill(style.black);
      text("Een gilde is een belangenorganisatie voor mensen\ndie in dezelfde beroepsgroep werken.", AVATAR_XPOS + 50, 200, 200);
      fill(style.white);
      text("Financieringskaarten behoren allemaal tot een gilde.\nAls je meerdere kaarten met hetzelfde gilde hebt krijg je 1 extra stuk groene/rode productie voor elke kaart die tot hetzelfde gilde behoort.", (width / 3) * 2, height/2);
      image(style.glossaryGilde, width/2+200, height/2+200, 200, 200);
      break;
    case 11: //gevangenis
      fill(style.white);
      textSize(style.textSize);
      text("Gevangenis", width/2, height/8);
      image(style.BagJoke, AVATAR_XPOS, AVATAR_YPOS, 500, 500);
      image(style.glossarySpeech, AVATAR_XPOS + 50, AVATAR_YPOS - 400, 500, 400);
      textSize(16);
      fill(style.black);
      text("Zebras zijn eigenlijk paarden die ontsnapt\nzijn uit de gevangenis.", AVATAR_XPOS + 50, 200, 200);
      fill(style.white);
      text("Als je degradeerd naar de gevangenis (zie degraderen/promoveren voor meer uitleg) blijf je in het spel, maar kun je minder dingen doen.\n Tijdens jouw beurt mag je alle normale beurtopties uitvoeren behalve bieden op fanancieringkaarten.\n Al het goud/krediet wat je verdient in de beurt moet direct gebruikt worden om schulden te betalen.\nAls al je schulden zijn betaald promoveer je weer naar kredietklasse I\nAls je in de gevangenis zit en je je schulden niet kunt betalen tijdens een bankrun ga je failliet en is het spel voor jou over.", (width / 3) * 2, height/2);
      image(style.gevangenis, width/2+200, height/2+300, 800, 200);
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
