//This class will handle all screens
//There will be many screens in this program, so
//we will use a switch statement for all screens.

class Screens
{
  Boolean playersSelected;
  Screens()
  {
    playersSelected = false;
  }

  void screen1()
  {
    fill(style.white);
    textSize(style.textSize);
    text("Money maker beginners game", width/2, height/4);
    text("Interactive tutorial", width/2, height/2);

    next(2);
  }

  void screen2()
  {
    fill(style.white);
    text("How many players?", width/2, height/5);
    rect(400, 300, 100, 100);
    rect(1200, 300, 100, 100);
    rect(400, 600, 100, 100);
    rect(1200, 600, 100, 100);

    fill(style.black);
    text("3", 400, 325);
    text("4", 1200, 325);
    text("5", 400, 625);
    text("6", 1200, 625);

    if (overlaps(400, 300, 100, 100, mouseX, mouseY) && mousePressed) {
      screen = 3; 
      amountOfPlayers = 3;
      playersSelected = true;
    }
    if (overlaps(1200, 300, 100, 100, mouseX, mouseY) && mousePressed) {
      screen = 3; 
      amountOfPlayers = 4;
      playersSelected = true;
    }
    if (overlaps(400, 600, 100, 100, mouseX, mouseY) && mousePressed) {
      screen = 3; 
      amountOfPlayers = 5;
      playersSelected = true;
    }
    if (overlaps(1200, 600, 100, 100, mouseX, mouseY) && mousePressed) {
      screen = 3; 
      amountOfPlayers = 6;
      playersSelected = true;
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
    }
  }

  void screen4()
  {
    imageMode(CENTER);
    image(style.screen4, width/2, height/2, 1600, 900);

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
    image(style.screen7, width/2, height/2, 1600, 900);

    next(8);
  }

  void screen8()
  {
    text("Draai een financieringskaart om", width/2, height/10);
    text("Ga je bieden?", width/2, height/4.5);
    
    if(bankrun.bankrunThisTurn == false)
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
  }

  void screen9()
  {
    imageMode(CENTER);
    image(style.screen9, width/2, height/2, 1600, 900);

    next(10);
  }

  void screen10()
  {
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
  }

  void screen11()
  {
    imageMode(CENTER);
    image(style.screen11, width/2, height/2, 1600, 900);

    next(10);
  }

  void screen12()
  {
    imageMode(CENTER);
    image(style.screen12, width/2, height/2, 1600, 900);

    next(13);
  }

  void screen13()
  {
    imageMode(CENTER);
    image(style.screen13, width/2, height/2, 1600, 900);

    previous(12);
    next(14);
  }

  void screen14()
  {
    imageMode(CENTER);
    image(style.screen14, width/2, height/2, 1600, 900);

    previous(13);
    next(10);
  }

  void screen15()
  {
    imageMode(CENTER);
    image(style.screen15, width/2, height/2, 1600, 900);

    next(10);
  }

  void screen16()
  {
    imageMode(CENTER);
    image(style.screen16, width/2, height/2, 1600, 900);

    previous(10);
    next(17);
  }

  void screen17()
  {
    text("De volgende speler is nu aan de beurt", width/2, height/5);
    text("Herhaal dezelfde stappen", width/2, height/3);
    text("Klik door om naar het begin van het stappenplan te gaan", width/2, 500);
    
    bankrun.bankrunThisTurn = false;

    previous(16);
    next(8);
  }
  
  //bankrun info screen
  void screen18()
  {
    text("Verplaats het voorste bankrunfiche met 1 stap", width/2, height/5);
    next(8);
  }
}
