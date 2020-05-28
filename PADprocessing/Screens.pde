//This class will handle all screens
//There will be many screens in this program, so
//we will use a switch statement for all screens.

class Screens
{
  Boolean playersSelected;
  Boolean bankrunFichesSelected;
  int stappen = 0;
  Screens()
  {
    playersSelected = false;
    bankrunFichesSelected = false;
  }
  //start beginners spel
  void screen1()
  {
    fill(style.white);
    textSize(style.textSize);
    text("Money Maker", width/2, height/4);
    text("Interactive tutorial", width/2, height/2);

    next(55);
  }

  void screen2()
  {
    fill(style.white);
    textSize(style.textSize);
    text("Hoeveel spelers?", width/2, height/5);
    rect(400, 300, 100, 100);
    rect(1200, 300, 100, 100);
    rect(400, 600, 100, 100);
    rect(1200, 600, 100, 100);

    fill(style.black);
    text("3", 400, 325);
    text("4", 1200, 325);
    text("5", 400, 625);
    text("6", 1200, 625);
    
    count++;

    if (overlaps(400, 300, 100, 100, mouseX, mouseY) && mousePressed && count > 20) {
      screen = 25; 
      amountOfPlayers = 3;
      playersSelected = true;
      count = 0;
    }
    if (overlaps(1200, 300, 100, 100, mouseX, mouseY) && mousePressed && count > 20) {
      screen = 25; 
      amountOfPlayers = 4;
      playersSelected = true;
      count = 0;
    }
    if (overlaps(400, 600, 100, 100, mouseX, mouseY) && mousePressed && count > 20) {
      screen = 25; 
      amountOfPlayers = 5;
      playersSelected = true;
      count = 0;
    }
    if (overlaps(1200, 600, 100, 100, mouseX, mouseY) && mousePressed && count > 20) {
      screen = 25; 
      amountOfPlayers = 6;
      playersSelected = true;
      count = 0;
    }
  }

  void screen3()
  {
    fill(style.white);
    rect(400, 450, 500, 500);
    rect(1200, 450, 500, 500);

    fill(style.black);
    textSize(65);
    text("Bord opzetten", 400, 475);
    text("Start spel", 1200, 475);

    bankrun.bankrunSteps = amountOfPlayers +1;

    //This variable makes it so that this screen doesn't get skipped
    //because of this variable you can't go to the next screen within the first 0.5 seconds (30 frames)
    count++;

    //Button for 'bord opzetten'
    if (overlaps(400, 450, 500, 500, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 4; 
      count = 0;
    }
    //Button for 'start spel'
    if (overlaps(1200, 450, 500, 500, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 7;
      count = 0;
    }
  }

  void screen4()
  {
    imageMode(CENTER);
    image(style.screen4, width/2, height/2, 1600, 900);

    previous(3);
    next(5);
  }

  void screen5()
  {
    textSize(style.textSize);
    text("Wincondities:", width/2, height/5);
    textSize(60);
    text("-Als alle financieringskaarten op zijn", width/2, 400);
    text("-Als een speler 10 financieringskaarten heeft", width/2, 500);
    text("-Als er 3 bankruns zijn geweest", width/2, 600);

    next(6);
    previous(4);
  }

  void screen6()
  {
    image(style.screen6, width/2, height/2, 1600, 900);
    noFill();
    strokeWeight(5);

    //productiemarkt
    rect(65, 95, 125, 155);
    //Productiereserve
    rect(65, 825, 125, 120);
    //huizenblokken
    rect(380, 360, 211, 305);
    rect(1100, 205, 460, 64);
    //bankrunmeter
    rect(464, 96, 467, 111);
    //krediet klasse
    rect(1100, 75, 465, 92);
    //rode kaart
    rect(1350, 865, 160, 57);
    //open kaarten
    rect(815, 865, 865, 57);
    //groene kaarten
    rect(275, 865, 160, 57);

    strokeWeight(1);

    //Productiemarkt
    if (overlaps(65, 95, 125, 155, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text1, mouseX, mouseY, 335, 188);
      imageMode(CENTER);
    }

    //Productiereserve
    if (overlaps(65, 825, 125, 120, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text2, mouseX, mouseY-140, 321, 140);
      imageMode(CENTER);
    }

    //huizenblokken
    if (overlaps(380, 360, 211, 305, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text3, mouseX, mouseY);
      imageMode(CENTER);
    }
    if (overlaps(1100, 205, 460, 64, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text3, mouseX, mouseY);
      imageMode(CENTER);
    }

    //bankrunmeter
    if (overlaps(464, 96, 467, 111, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text4, mouseX, mouseY);
      imageMode(CENTER);
    }

    //krediet klasse
    if (overlaps(1100, 75, 465, 92, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text8, mouseX, mouseY);
      imageMode(CENTER);
    }

    //rode kaarten
    if (overlaps(1350, 865, 160, 57, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text5, mouseX-306, mouseY-105);
      imageMode(CENTER);
    }
    //openkaarten
    if (overlaps(815, 865, 865, 57, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text6, mouseX-306, mouseY-105);
      imageMode(CENTER);
    }
    //groene kaarten
    if (overlaps(275, 865, 160, 57, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text7, mouseX, mouseY-105);
      imageMode(CENTER);
    }

    next(3);
  }

  void screen7()
  {
    imageMode(CENTER);
    image(style.screen7, 300, 700, 650, 400);
    text("De jongste speler begint, draai een financieringskaart", 800, 150);
    text("om en kies of je op een kaart wilt bieden of niet.", 800, 200);

    text("Rechts bovenin de foto zie je de hoeveelheid goederen", 800, 300);
    text("die het bedrijf zoekt ter investering.", 800, 350);
    text("In dit voorbeeld zijn het 2 goederen van de productiemarkt,", 800, 400);
    text("verplaatst daarom 2 goederen naar de Natuurlijke Voorraad.", 800, 450);    

    text("De prijs van een goed correspondeert", 1100, 550);
    text("met de schaal waar het goed in ligt.", 1100, 600);
    text("In dit voorbeeld is het start bod van", 1100, 700);
    text("de kaart dus 5 goud.", 1100, 750);

    previous(3);
    next(8);
  }

  void screen8()
  {
    text("Draai een financieringskaart om", width/2, height/10);
    text("Ga je bieden?", width/2, height/4.5);

    if (bankrun.bankrunThisTurn == false)
    {
      textSize(60);
      text("Liggen er al 5 kaarten open? -->", width/3, 800);
      bankrun.bankrunFiche();
    }

    rectMode(CENTER);
    rect(500, height/2, 400, 400);
    rect(1100, height/2, 400, 400);

    fill(style.black);
    text("Ja", 500, height/2);
    text("Nee", 1100, height/2);
    fill(style.white);
    rectMode(CORNER);
    count++;

    if (overlaps(500, height/2, 400, 400, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 9; 
      count = 0;
    }
    if (overlaps(1100, height/2, 400, 400, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 10; 
      count = 0;
    }
    previous(7);
  }

  void screen9()
  {
    textMode(CENTER);
    text("Bied minimaal het start bod.", 800, 200);
    text("Nu mogen alle spelers willekeurig hoger bieden,", 800, 250);
    text("de speler met het hoogste bod koopt de kaart.", 800, 300);

    text("Goud komt in de goudreserve.", 800, 400);

    text("Als de speler die aan de beurt is niet het hoogste bod", 800, 500);
    text("heeft gedaan, mag hij/zij op een andere kaart bieden,", 800, 550);
    text("als er nog een openligt. Als er geen kaarten meer open-", 800, 600);
    text("liggen of als je kiest om niet te bieden is de biedronde", 800, 650);
    text("over.", 800, 700);

    next(10);
  }

  void screen10()
  {
    bankrun.bankrunThisTurn = false;
    textSize(60);
    text("Biedronde over", width/2, height/5);
    textSize(40);
    text("De volgende stappen mogen op willekeurige volgorde gedaan worden", width/2, 350);

    rectMode(CENTER);
    rect(300, 650, 400, 400);
    rect(800, 650, 400, 400);
    rect(1300, 650, 400, 400);

    fill(style.black);
    text("Kopen", 300, 650);
    text("Produceren", 800, 650);
    text("Verkopen", 1300, 650);
    fill(style.white);

    count++;

    if (overlaps(300, 650, 400, 400, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 11; 
      count = 0;
    }
    if (overlaps(800, 650, 400, 400, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 12; 
      count = 0;
    }
    if (overlaps(1300, 650, 400, 400, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 15; 
      count = 0;
    }

    text("Einde beurt ->", 1300, 60);
    rectMode(CENTER);
    rect(1500, 50, 100, 50);
    if (overlaps(1500, 50, 100, 50, mouseX, mouseY) && mousePressed) {
      screen = 16;
    }
    previous(8);
  }

  void screen11()
  {
    imageMode(CENTER);
    text("KOPEN", 800, 200);
    
    text("Je mag elke beurt maximaal 4 goederen per markt kopen,", 800, 300);
    text("de prijs ligt aan de schaal waar de goederen uit komen.", 800, 350);
    
    text("Als de markt leeg is kunnen goederen uit de Natuurlijke", 800, 450);
    text("Voorraad gekocht worden voor 9 goud.", 800, 500);
    
    text("Betaal het goud aan de goudreserve.", 800, 600);

    next(10);
  }

  void screen12()
  {
    imageMode(CENTER);
    image(style.screen12, 300, 550);
    
    text("PRODUCEREN", 900, 200);
    text("Al je kaarten kunnen 1x", 1000, 300);
    text("produceren in jouw beurt.", 1000, 350);
    
    text("Het aantal goederen dat geproduceerd", 1000, 400);
    text("wordt staat onderaan de kaart.", 1000, 450);

    text("Haal de geproduceerde goederen uit", 1000, 550);
    text("de Natuurlijke Voorraad van de", 1000, 600);
    text("betreffende markt.", 1000, 650);

    next(13);
  }

  void screen13()
  {
    imageMode(CENTER);
    image(style.screen13, 300, 550);
    
    text("PRODUCEREN", 900, 200);
    text("Met een handelskaart kan je een", 1000, 300);
    text("aantal goederen omruilen met een", 1000, 350);
    text("andere markt. Aantal op de kaart", 1000, 400);
    text("is verplicht, maar gebruik van de", 1000, 450);
    text("kaart niet.", 1000, 500);

    previous(12);
    next(14);
  }

  void screen14()
  {
    imageMode(CENTER);
    image(style.screen14, 225, 500);
    
    text("PRODUCEREN", 900, 200);
    text("Wanneer je 2 of meer kaarten van dezelfde", 1000, 300);
    text("gilde in je bezit hebt produceert elke", 1000, 350);
    text("kaart van deze gilde, per beurt, één extra goed.", 1000, 400);
    
    text("Handelskaarten geven een extra goed", 1000, 550);
    text("van de al gekozen uitvoer.", 1000, 600);

    previous(13);
    next(10);
  }

  void screen15()
  {
    imageMode(CENTER);
    image(style.screen15, 300, 550);
    
    text("VERKOPEN", 900, 200);
    text("In deze fase kun je kiezen om al je goederen te verkopen.", 800, 300);
    
    text("Plaats de goederen die je wilt", 1000, 400);
    text("verkopen terug in de markten.", 1000, 450);
    text("De verkoopprijs wordt bepaald", 1000, 500);
    text("door de schaal van de markt.", 1000, 550);
    
    text("Als de markt vol worden goed-", 1000, 650);
    text("eren verkocht voor 1 goud, deze", 1000, 700);
    text("komen in de Natuurlijke Voorraad.", 1000, 750);

    next(10);
  }

  void screen16()
  {
    imageMode(CENTER);
    text("Gooi nu een kredietdobbelsteen.", 1000, 100);
    text("Waarop is je dobbelsteen geland?", 1000, 200);

    //When you click on the dices, it will bring you to a page about that specific dice.
    //Red 10
    image(style.r10, 400, 400, 200, 200);
    if (overlaps(400, 400, 200, 200, mouseX, mouseY) && mousePressed) {
      screen = 17;
    }

    //Red 20
    image(style.r20, 400, 700, 200, 200);
    if (overlaps(400, 700, 200, 200, mouseX, mouseY) && mousePressed) {
      screen = 18;
    }

    //Green 10
    image(style.g10, 800, 400, 200, 200);
    if (overlaps(800, 400, 200, 200, mouseX, mouseY) && mousePressed) {
      screen = 19;
    }

    //Green 20
    image(style.g20, 800, 700, 200, 200);
    if (overlaps(800, 700, 200, 200, mouseX, mouseY) && mousePressed) {
      screen = 20;
    }

    //Blue 10
    image(style.b10, 1200, 400, 200, 200);
    if (overlaps(1200, 400, 200, 200, mouseX, mouseY) && mousePressed) {
      screen = 21;
    }

    //Blue 20
    image(style.b20, 1200, 700, 200, 200);    
    if (overlaps(1200, 700, 200, 200, mouseX, mouseY) && mousePressed) {
      screen = 22;
    }

    previous(10);
    next(23);
  }

  void screen17()
  {
    imageMode(CENTER);
    text("Haal één goed uit de productiemarkt.", 1000, 100);
    image(style.r10, 400, 400, 200, 200);
    previous(16);
    next(23);
  }

  void screen18()
  {
    imageMode(CENTER);
    text("Haal twéé goederen uit de productiemarkt.", 1000, 100);
    image(style.r20, 400, 700, 200, 200);
    previous(16);
    next(23);
  }

  void screen19()
  {
    imageMode(CENTER);
    text("Haal één goed uit de consumptiemarkt.", 1000, 100);    
    image(style.g10, 800, 400, 200, 200);
    previous(16);
    next(23);
  }

  void screen20()
  {
    imageMode(CENTER);
    text("Haal twéé goederen uit de consumptiemarkt.", 1000, 100);
    image(style.g20, 800, 700, 200, 200);
    previous(16);
    next(23);
  }

  void screen21()
  {
    imageMode(CENTER);
    text("Verzet het bankrunfiche één stap.", 1000, 100);
    image(style.b10, 1200, 400, 200, 200);
    if (bankrun.bankrunThisTurn == false) {
      bankrun.bankrunCount += 1; 
      bankrun.bankrunThisTurn = true;
    }
    previous(16);
    next(23);
  }

  void screen22()
  {
    imageMode(CENTER);
    text("Verzet het bankrunfiche twéé stappen.", 1000, 100);
    if (bankrun.bankrunThisTurn == false) {
      bankrun.bankrunCount += 2; 
      bankrun.bankrunThisTurn = true;
    }
    image(style.b20, 1200, 700, 200, 200);
    previous(16);
    next(23);
  }

  void screen23()
  {
    text("De volgende speler is nu aan de beurt", width/2, height/5);
    text("Herhaal dezelfde stappen", width/2, height/3);
    text("Klik door om naar het begin van het stappenplan te gaan", width/2, 500);

    bankrun.bankrunThisTurn = false;

    next(8);
  }

  //bankrun info screen
  void screen24()
  {
    text("Verplaats het voorste bankrunfiche met 1 stap", width/2, height/5);
    if(version == 0) {next(8);}
    if(version == 1) {next(36);}
  }

  void screen25()
  {
    count++;
    fill(style.white);
    textSize(80);
    text("Hoeveel bankrunfiches?", width/2, height/6);
    textSize(40);
    text("Het aantal bankrunfiches bepaald hoelang het spel gaat duren", width/2, height/4);
    textSize(80);
    rect(400, 500, 100, 100);
    rect(800, 500, 100, 100);
    rect(1200, 500, 100, 100);

    fill(style.black);
    text("3", 400, 525);
    text("4", 800, 525);
    text("5", 1200, 525);

    if (overlaps(400, 500, 100, 100, mouseX, mouseY) && mousePressed && count > 15) {
      screen = 3; 
      bankrun.amountOfBankrunFiches = 3;
      bankrunFichesSelected = true;
      count = 0;
    }
    if (overlaps(800, 500, 100, 100, mouseX, mouseY) && mousePressed && count > 15) {
      screen = 3; 
      bankrun.amountOfBankrunFiches = 4;
      bankrunFichesSelected = true;
      count = 0;
    }
    if (overlaps(1200, 500, 100, 100, mouseX, mouseY) && mousePressed && count > 15) {
      screen = 3; 
      bankrun.amountOfBankrunFiches = 5;
      bankrunFichesSelected = true;
      count = 0;
    }
    bankrun.bankrunFichesLeft = bankrun.amountOfBankrunFiches;
  }

  //Bankrun screen
  void screen26()
  {
    bankrun.bankrun = false;
    textSize(80);
    text("Bankrun!", width/2, height/6);
    textSize(50);
    text("Verplaats 5 goederen van beide kleuren van de", width/2, height/3);
    text("Natuurlijke Voorraad en vul deze aan in de markt", width/2, height/3 + 100);

    next(23);
  }
  //einde beginners spel
  //start volledige spel
  //start volledige spel
  void screen27()
  {
    fill(style.white);
    text("Hoeveel spelers?", width/2, height/5);
    rect(400, 300, 100, 100);
    rect(1200, 300, 100, 100);
    rect(400, 600, 100, 100);
    rect(1200, 600, 100, 100);

    fill(style.black);
    text("3", 400, 325);
    text("4", 1200, 325);
    text("5", 400, 625);
    text("6", 1200, 625);
    
    count++;

    if (overlaps(400, 300, 100, 100, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 28; 
      amountOfPlayers = 3;
      playersSelected = true;
      count = 0;
    }
    if (overlaps(1200, 300, 100, 100, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 28; 
      amountOfPlayers = 4;
      playersSelected = true;
      count = 0;
    }
    if (overlaps(400, 600, 100, 100, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 28; 
      amountOfPlayers = 5;
      playersSelected = true;
      count = 0;
    }
    if (overlaps(1200, 600, 100, 100, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 28; 
      amountOfPlayers = 6;
      playersSelected = true;
      count = 0;
    }
  }
  void screen28()
  {
    count++;
    fill(style.white);
    textSize(80);
    text("Hoeveel bankrunfiches?", width/2, height/6);
    textSize(40);
    text("Het aantal fiches bepaalt hoe lang het spel duurt", width/2, height/4);
    textSize(80);
    rect(400, 500, 100, 100);
    rect(800, 500, 100, 100);
    rect(1200, 500, 100, 100);

    fill(style.black);
    text("3", 400, 525);
    text("4", 800, 525);
    text("5", 1200, 525);

    if (overlaps(400, 500, 100, 100, mouseX, mouseY) && mousePressed && count > 15) {
      screen = 29; 
      bankrun.amountOfBankrunFiches = 3;
      bankrunFichesSelected = true;
      count = 0;
    }
    if (overlaps(800, 500, 100, 100, mouseX, mouseY) && mousePressed && count > 15) {
      screen = 29; 
      bankrun.amountOfBankrunFiches = 4;
      bankrunFichesSelected = true;
      count = 0;
    }
    if (overlaps(1200, 500, 100, 100, mouseX, mouseY) && mousePressed && count > 15) {
      screen = 29; 
      bankrun.amountOfBankrunFiches = 5;
      bankrunFichesSelected = true;
      count = 0;
    }
    bankrun.bankrunFichesLeft = bankrun.amountOfBankrunFiches;
  }
  void screen29()
  {
    fill(style.white);
    rect(400, 450, 500, 500);
    rect(1200, 450, 500, 500);

    fill(style.black);
    textSize(65);
    text("Bord opzetten", 400, 475);
    text("Start spel", 1200, 475);

    bankrun.bankrunSteps = amountOfPlayers +1;

    //This variable makes it so that this screen doesn't get skipped
    //because of this variable you can't go to the next screen within the first 0.5 seconds (30 frames)
    count++;

    //Button for 'bord opzetten'
    if (overlaps(400, 450, 500, 500, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 30; 
      count = 0;
    }
    //Button for 'start spel'
    if (overlaps(1200, 450, 500, 500, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 34;
      count = 0;
    }
  }
  void screen30()
  {
    imageMode(CENTER);
    image(style.screen4, width/2, height/2, 1600, 900);

    previous(29);
    next(31);
  }
  void screen31()
  {
    imageMode(CENTER);
    image(style.screen31, width/2, height/2, 1600, 900);

    previous(30);
    next(32);
  }
  void screen32()
  {
    textSize(style.textSize);
    text("Wincondities:", width/2, height/5);
    textSize(60);
    text("-Als alle financieringskaarten op zijn", width/2, 300);
    text("-Als een speler 10 financieringskaarten heeft", width/2, 400);
    text("-Als alle bankruns zijn geweest", width/2, 500);
    text("-Als alle speler failliet zijn", width/2, 600);
    text("-Als er 1 speler niet failliet is", width/2, 700);

    next(33);
    previous(31);
  }
  void screen33()
  {
    image(style.screen6, width/2, height/2, 1600, 900);
    noFill();
    strokeWeight(5);

    //productiemarkt
    rect(65, 95, 125, 155);
    //Productiereserve
    rect(65, 825, 125, 120);
    //huizenblokken
    rect(380, 360, 211, 305);
    rect(1100, 205, 460, 64);
    //bankrunmeter
    rect(464, 96, 467, 111);
    //krediet klasse
    rect(1100, 75, 465, 92);
    //rode kaart
    rect(1350, 865, 160, 57);
    //open kaarten
    rect(815, 865, 865, 57);
    //groene kaarten
    rect(275, 865, 160, 57);

    strokeWeight(1);

    //Productiemarkt
    if (overlaps(65, 95, 125, 155, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text1, mouseX, mouseY, 335, 188);
      imageMode(CENTER);
    }

    //Productiereserve
    if (overlaps(65, 825, 125, 120, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text2, mouseX, mouseY-140, 321, 140);
      imageMode(CENTER);
    }

    //huizenblokken
    if (overlaps(380, 360, 211, 305, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text9, mouseX, mouseY);
      imageMode(CENTER);
    }
    if (overlaps(1100, 205, 460, 64, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text9, mouseX, mouseY);
      imageMode(CENTER);
    }

    //bankrunmeter
    if (overlaps(464, 96, 467, 111, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text4, mouseX, mouseY);
      imageMode(CENTER);
    }

    //krediet klasse
    if (overlaps(1100, 75, 465, 92, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text11, mouseX, mouseY);
      imageMode(CENTER);
    }

    //rode kaarten
    if (overlaps(1350, 865, 160, 57, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text5, mouseX-306, mouseY-105);
      imageMode(CENTER);
    }
    //openkaarten
    if (overlaps(815, 865, 865, 57, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text6, mouseX-306, mouseY-105);
      imageMode(CENTER);
    }
    //groene kaarten
    if (overlaps(275, 865, 160, 57, mouseX, mouseY))
    {
      imageMode(CORNER);
      image(style.text10, mouseX, mouseY-203);
      imageMode(CENTER);
    }
    
    previous(32);
    next(29);
  }
  void screen34() 
  {
    textSize(style.textSize);
    text("Aan de beurt komen", width/2, height/5);
    textSize(50);
    text("Iedere speler krijgt de kans om te mogen beginnen met bieden.", width/2, 300);
    text("Dit doe je door voor je beurt te bieden.", width/2, 400);
    text("Dit mag in willekeurige volgorde,", width/2, 600);
    text("de speler die het meest heeft geboden krijgt de eerste beurt,", width/2, 700);
    text("maar is dus wel al goud of krediet kwijt.", width/2, 800);

    previous(29);
    next(35);
  }
  void screen35()
  {
    imageMode(CENTER);
    image(style.screen7, 300, 700, 650, 400);
    text("Draai een financieringskaart om en kies", 800, 150);
    text("of je op een kaart wilt bieden of niet.", 800, 200);

    text("Rechts bovenin de foto zie je de hoeveelheid goederen", 800, 300);
    text("die het bedrijf zoekt ter investering.", 800, 350);
    text("In dit voorbeeld zijn het 2 goederen van de productiemarkt,", 800, 400);
    text("verplaatst daarom 2 goederen naar de Natuurlijke Voorraad.", 800, 450);    

    text("De prijs van een goed correspondeert", 1100, 550);
    text("met de schaal waar het goed in ligt.", 1100, 600);
    text("In dit voorbeeld is het start bod van", 1100, 700);
    text("de kaart dus 5 goud.", 1100, 750);

    previous(34);
    next(36);
  }
  void screen36()
  {
    text("Draai een financieringskaart om", width/2, height/10);
    text("Wat ga je doen?", width/2, height/4.5);

    if (bankrun.bankrunThisTurn == false)
    {
      textSize(60);
      text("Liggen er al 5 kaarten open? -->", width/3, 800);
      bankrun.bankrunFiche();
    }

    rectMode(CENTER);
    rect(500, height/2, 400, 400);
    rect(1100, height/2, 400, 400);

    fill(style.black);
    text("Bieden", 500, height/2);
    text("Aflossen", 1100, height/2);
    fill(style.white);
    rectMode(CORNER);
    count++;

    if (overlaps(500, height/2, 400, 400, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 37; 
      count = 0;
    }
    if (overlaps(1100, height/2, 400, 400, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 53; 
      count = 0;
    }
    
    previous(35);
  }
  void screen37()
  {
    imageMode(CENTER);
    text("Bied minimaal het start bod.", 800, 200);
    text("Nu mogen alle spelers willekeurig hoger bieden,", 800, 250);
    text("de speler met het hoogste bod koopt de kaart.", 800, 300);

    text("Goud komt in de goudreserve.", 800, 400);

    text("Als de speler die aan de beurt is niet het hoogste bod", 800, 500);
    text("heeft gedaan, mag hij/zij op een andere kaart bieden,", 800, 550);
    text("als er nog een openligt. Als er geen kaarten meer open-", 800, 600);
    text("liggen of als je kiest om niet te bieden is de biedronde", 800, 650);
    text("over.", 800, 700);

    previous(36);
    next(38);
  }
  void screen38()
  {
    bankrun.bankrunThisTurn = false;
    textSize(60);
    text("Biedronde over", width/2, height/5);
    textSize(40);
    text("De volgende stappen mogen op willekeurige volgorde gedaan worden", width/2, 350);

    rectMode(CENTER);
    rect(300, 650, 400, 400);
    rect(800, 650, 400, 400);
    rect(1300, 650, 400, 400);

    fill(style.black);
    text("Kopen", 300, 650);
    text("Produceren", 800, 650);
    text("Verkopen", 1300, 650);
    fill(style.white);

    count++;

    if (overlaps(300, 650, 400, 400, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 39; 
      count = 0;
    }
    if (overlaps(800, 650, 400, 400, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 40; 
      count = 0;
    }
    if (overlaps(1300, 650, 400, 400, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 43; 
      count = 0;
    }

    text("Einde beurt ->", 1300, 60);
    rectMode(CENTER);
    rect(1500, 50, 100, 50);
    if (overlaps(1500, 50, 100, 50, mouseX, mouseY) && mousePressed) {
      screen = 44;
    }
    
    previous(37);
  }
  void screen39()
  {
    textMode(CENTER);
    text("KOPEN", 800, 200);
    
    text("Je mag elke beurt maximaal 4 goederen per markt kopen,", 800, 300);
    text("de prijs van de goederen is gelijk aan de schaal waar", 800, 350);
    text("ze zich in bevinden.", 800, 400);
    
    text("Als de markt leeg is, haal de goederen uit de Natuurlijke", 800, 500);
    text("Voorraad, deze kosten 9 goud per goed.", 800, 550);

    text("Bepaal de kosten van de goederen die je wilt kopen en", 800, 650);
    text("betaal dit aantal goud aan de goudreserve.", 800, 700);

    next(38);
  }
  void screen40()
  {
    imageMode(CENTER);
    image(style.screen12, 300, 550);
    
    text("PRODUCEREN", 900, 200);
    text("Al je kaarten kunnen 1x", 1000, 300);
    text("produceren in jouw beurt.", 1000, 350);
    
    text("Het aantal goederen dat geproduceerd", 1000, 400);
    text("wordt staat onderaan de kaart.", 1000, 450);

    text("Haal de geproduceerde goederen uit", 1000, 550);
    text("de Natuurlijke Voorraad van de", 1000, 600);
    text("betreffende markt.", 1000, 650);

    next(41);
  }
  void screen41()
  {
    imageMode(CENTER);
    image(style.screen13, 300, 550);
    
    text("PRODUCEREN", 900, 200);
    text("Met een handelskaart kan je een", 1000, 300);
    text("aantal goederen omruilen met een", 1000, 350);
    text("andere markt. Aantal op de kaart", 1000, 400);
    text("is verplicht, maar gebruik van de", 1000, 450);
    text("kaart niet.", 1000, 500);

    previous(40);
    next(42);
  }
  void screen42()
  {
    imageMode(CENTER);
    image(style.screen14, 225, 500);
    
    text("PRODUCEREN", 900, 200);
    text("Wanneer je 2 of meer kaarten van dezelfde", 1000, 300);
    text("gilde in je bezit hebt produceert elke", 1000, 350);
    text("kaart van deze gilde, per beurt, één extra goed.", 1000, 400);
    
    text("Handelskaarten geven een extra goed", 1000, 550);
    text("van de al gekozen uitvoer.", 1000, 600);

    previous(41);
    next(38);
  }
  void screen43()
  {
    imageMode(CENTER);
    image(style.screen15, 300, 550);
    
    text("VERKOPEN", 900, 200);
    text("In deze fase kun je kiezen om al je goederen te verkopen.", 800, 300);
    
    text("Plaats de goederen die je wilt", 1000, 400);
    text("verkopen terug in de markten.", 1000, 450);
    text("De verkoopprijs wordt bepaald", 1000, 500);
    text("door de schaal van de markt.", 1000, 550);
    
    text("Als de markt vol worden goed-", 1000, 650);
    text("eren verkocht voor 1 goud, deze", 1000, 700);
    text("komen in de Natuurlijke Voorraad.", 1000, 750);

    next(38);
  }
  void screen44()
  {
    text("Wil je een actiekaart kopen?", width/2, height/4.5);

    rectMode(CENTER);
    rect(500, height/2, 400, 400);
    rect(1100, height/2, 400, 400);

    fill(style.black);
    text("Ja", 500, height/2);
    text("Nee", 1100, height/2);
    fill(style.white);
    rectMode(CORNER);
    
    count++;

    if (overlaps(500, height/2, 400, 400, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 45; 
      count = 0;
    }
    if (overlaps(1100, height/2, 400, 400, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 46; 
      count = 0;
    }
    
    previous(38);
  }
  void screen45()
  {
    text("Betaal 10 goud of krediet", width/2, height/2);

    next(46);
    previous(44);
  }
  void screen46()
  {
    imageMode(CENTER);
    text("Er zijn twéé typen dobbelstenen.", 1050, 100);
    text("Gooi eerst een wijkdobbelsteen.", 1050, 150);
    text("(Na de derde bankrun komt er nog één wijk dobbelsteen bij.)", 750, 200);
    text("Wat heb je gegooid?", 400, 575);
    text("Wijk:", 1050, 275);

    count++;
    
    previous(44);
    
    //Molen
    image(style.molen, 1000, 400, 200, 200);
    if (overlaps(1000, 400, 200, 200, mouseX, mouseY) && mousePressed && count > 25) {
      screen = 50;
      count = 0;
    }
    
    //Boot
    image(style.boot, 1000, 700, 200, 200);
    if (overlaps(1000, 700, 200, 200, mouseX, mouseY) && mousePressed && count > 25) {
      screen = 50;
      count = 0;
    }
    
    //Vis
    image(style.vis, 1225, 400, 200, 200);
    if (overlaps(1225, 400, 200, 200, mouseX, mouseY) && mousePressed && count > 25) {
      screen = 50;
      count = 0;
    }
    
    //Wiel
    image(style.wiel, 1225, 700, 200, 200);
    if (overlaps(1225, 700, 200, 200, mouseX, mouseY) && mousePressed && count > 25) {
      screen = 50;
      count = 0;
    }
    
    //Bakstenen
    image(style.bakstenen, 1450, 400, 200, 200);
    if (overlaps(1450, 400, 200, 200, mouseX, mouseY) && mousePressed && count > 25) {
      screen = 50;
      count = 0;
    }
    
    //Bloem
    image(style.bloem, 1450,700, 200, 200);
    if (overlaps(1450, 700, 200, 200, mouseX, mouseY) && mousePressed && count > 25) {
      screen = 50;
      count = 0;
    }
    previous(44);

  }
  void screen47()
  {
    imageMode(CENTER);
    text("Bij rood 10:", 800, 200);
    text("Tel het aantal spelers met 10 of meer krediet", 800, 250);
    text("op de getroffen huizenblokken.", 800, 300);
    text("Bij rood 20:", 800, 375);
    text("Tel het aantal spelers met 20 of meer krediet", 800, 425);
    text("op de getroffen huizenblokken.", 800, 475);
    
    text("Verwijder vervolgens dezelfde hoeveelheid", 800, 600);
    text("goederen uit de bedrijfsmarkt (rood) en voeg", 800, 650);
    text("deze toe aan de Natuurlijke Voorraad.", 800, 700);
    previous(60);
    next(50);
  }
  void screen48()
  {
    imageMode(CENTER);
    text("Bij groen 10:", 800, 200);
    text("Tel het aantal spelers met 10 of meer krediet", 800, 250);
    text("op de getroffen huizenblokken.", 800, 300);
    text("Bij groen 20:", 800, 375);
    text("Tel het aantal spelers met 20 of meer krediet", 800, 425);
    text("op de getroffen huizenblokken.", 800, 475);
    
    text("Verwijder vervolgens dezelfde hoeveelheid", 800, 600);
    text("goederen uit de consumentenmarkt (groen) en voeg", 800, 650);
    text("deze toe aan de Natuurlijke Voorraad.", 800, 700);
    previous(60);
    next(50);
  }
  void screen49()
  {
    count++;
    textSize(40);
    text("Hoeveel spelers hebben 20 of meer krediet op de getroffen huizenblokken?", width/2, height/4);
    int amountOfRects = amountOfPlayers + 1;
    for(int i = 0; i <= amountOfRects; i++)
    {
      fill(style.white);
      rect((width/amountOfRects) * i + (width/amountOfRects)/2, height/2, 100, 100);
      fill(style.black);
      text(i, (width/amountOfRects) * i + (width/amountOfRects)/2, height/2);
      fill(style.white);
      
      if(mousePressed && overlaps((width/amountOfRects) * i + (width/amountOfRects)/2, height/2, 100, 100, mouseX, mouseY) && count > 20)
      {
        bankrun.bankrunCount += 2*i;
        screen = 50;
        count = 0;
      }
    }
  }
  void screen50()
  {
    imageMode(CENTER);
    text("Dit zijn bij bijvoorbeeld de molen de getroffen wijken.", 800, 200);
    text("Op alle huizenblokken waar de molen staat afgebeeld,", 800, 750);
    text("zal de krediet dobbelsteen effect hebben.", 800, 800);
    image(style.screen50, width/2, 450);
    previous(46);
    next(51);
  }
  void screen51()
  {
    imageMode(CENTER);
    text("Voorbeeld van een worp:", 800, 150);
    text("4 spelers hebben 10 of meer krediet op deze huizenblokken.", 800, 775);
    text("4 goederen moeten van bedrijfsmarkt naar Natuurlijke Voorraad.", 800, 825);
    image(style.screen51, width/2, 450);
    previous(50);
    next(60);
  }
  void screen52()
  {
    text("De volgende speler is nu aan de beurt", width/2, height/5);
    text("Herhaal dezelfde stappen", width/2, height/3);
    text("Klik door om naar het begin van het stappenplan te gaan", width/2, 500);

    bankrun.bankrunThisTurn = false;
    next(36);
  }

  void screen53()
  {
    textSize(style.textSize);
    text("Aflossen", width/2, height/5);
    textSize(60);
    text("Je kunt je krediet aflossen door te betalen met goud", width/2, 300);
    text("of het krediet van een kredietwaardige speler.", width/2, 400);

    previous(36);
    next(54);
  }
  void screen54()
  {
    imageMode(CENTER);
    textSize(style.textSize);
    text("Krediet klasse omhoog", width/2, height/5);
    textSize(50);
    text("Door je schulden af te lossen ga je een krediet klasse omhoog", width/2, 300);
    image(style.klasse, width/2, height-131);

    previous(53);
    next(44);
  }
  //einde volledige spel 


  //kies spelmode
  void screen55()
  {
    fill(style.white);
    rect(400, 450, 500, 500);
    rect(1200, 450, 500, 500);

    fill(style.black);
    textSize(65);
    text("Basis spel", 400, 475);
    text("Volledig spel", 1200, 475);

    bankrun.bankrunSteps = amountOfPlayers +1;

    //This variable makes it so that this screen doesn't get skipped
    //because of this variable you can't go to the next screen within the first 0.5 seconds (30 frames)
    count++;

    //Button for 'basis spel'
    if (overlaps(400, 450, 500, 500, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 2; 
      count = 0;
      version = 0;
    }
    //Button for 'volledig spel'
    if (overlaps(1200, 450, 500, 500, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 27/*up to change @Pepijn :P*/;
      count = 0;
      version = 1;
    }
  }

  //einde volledige spel

  void screen56()
  {
    textSize(80);
    text("Game einde!", width/2, height/6);
    textSize(60);
    text("Gebruik het scoreblok om de winnaar te bepalen", width/2, height/4);
    image(style.scoreblok, width/2, height/1.6, style.scoreblok.width/1.5, style.scoreblok.height/1.5);
    textSize(50);
  }
  
  //Scherm voor dobbelsteen blauwe 10 (volledige versie)
  void screen57()
  {
    count++;
    textSize(40);
    text("Hoeveel spelers hebben 10 of meer krediet op de getroffen huizenblokken?", width/2, height/4);
    int amountOfRects = amountOfPlayers + 1;
    for(int i = 0; i <= amountOfRects; i++)
    {
      fill(style.white);
      rect((width/amountOfRects) * i + (width/amountOfRects)/2, height/2, 100, 100);
      fill(style.black);
      text(i, (width/amountOfRects) * i + (width/amountOfRects)/2, height/2);
      fill(style.white);
      
      if(mousePressed && overlaps((width/amountOfRects) * i + (width/amountOfRects)/2, height/2, 100, 100, mouseX, mouseY) && count > 40)
      {
        stappen = i;
        bankrun.bankrunCount += 2*i;
        screen = 59;
        count = 0;
      }
    }
  }
  
  void screen58()
  {
    count++;
    bankrun.bankrun = false;
    textSize(80);
    text("Bankrun!", width/2, height/6);
    textSize(50);
    text("Gooi de wijkendobbelsteen", width/2, height/3);
    textSize(35);
    text("Van de huizenblokken met het geworpen symbool moet al het krediet worden afgelost", width/2, height/3 + 100);
    text("Stap 1: bepaal hoeveel krediet afgelost moet worden", width/2, height/3 + 140);
    text("Stap 2: Betaal dat aantal met goud aan de centrale bank", width/2, height/3 + 180);
    text("Stap 3: Als een speler niet genoeg geld heeft om te kunnen aflossen, ga onderhandelen", width/2, height/3 + 220);
    text("Stap 4: Als een speler na het onderhandelen niet alle krediet kan afbetalen, degradeerd deze", width/2, height/3 + 260);
    text("Voor elke speler die degradeerd wordt het bankrunfiche met 2 stappen verplaatst", width/2, height/3 + 300);
    text("Hoeveel spelers zijn er gedegradeerd?", width/2, height/3 + 375);
    
    int amountOfRects = amountOfPlayers + 1;
        for(int i = 0; i <= amountOfRects; i++)
    {
      fill(style.white);
      rect((width/amountOfRects) * i + (width/amountOfRects)/2, 800, 100, 100);
      fill(style.black);
      text(i, (width/amountOfRects) * i + (width/amountOfRects)/2, 800);
      fill(style.white);
      
      if(mousePressed && overlaps((width/amountOfRects) * i + (width/amountOfRects)/2, 800, 100, 100, mouseX, mouseY) && count > 20)
      {
        bankrun.bankrunCount += 2*i;
        screen = 52;
        count = 0;
      }
    }
  }
  
  void screen59()
  {
    text("Verplaats het bankrunfiche met " + stappen + " stappen", width/2, height/2);
    next(52);
  }
  
  void screen60()
  {
    imageMode(CENTER);
    text("Gooi nu een kredietdobbelsteen.", 1100, 150);
    text("Wat heb je gegooid?", 1100, 200);
    text("Krediet:", 500, 275);
    
    //When you click on the dices, it will bring you to a page about that specific dice.
    //Red 10
    image(style.r10, 300, 400, 200, 200);
    if (overlaps(300, 400, 200, 200, mouseX, mouseY) && mousePressed && count > 25) {
      screen = 47;
      count = 0;
    }

    //Red 20
    image(style.r20, 300, 700, 200, 200);
    if (overlaps(300, 700, 200, 200, mouseX, mouseY) && mousePressed && count > 25) {
      screen = 47;
      count = 0;
    }

    //Green 10
    image(style.g10, 525, 400, 200, 200);
    if (overlaps(525, 400, 200, 200, mouseX, mouseY) && mousePressed && count > 25) {
      screen = 48;
      count = 0;
    }

    //Green 20
    image(style.g20, 525, 700, 200, 200);
    if (overlaps(525, 700, 200, 200, mouseX, mouseY) && mousePressed && count > 25) {
      screen = 48;
      count = 0;
    }

    //Blue 10
    image(style.b10, 750, 400, 200, 200);
    if (overlaps(750, 400, 200, 200, mouseX, mouseY) && mousePressed && count > 25) {
      screen = 57;
      count = 0;
    }

    //Blue 20
    image(style.b20, 750, 700, 200, 200);    
    if (overlaps(750, 700, 200, 200, mouseX, mouseY) && mousePressed && count > 25) {
      screen = 57;
      count = 0;
    }
    
    next(52);
    previous(46);
  }
}
