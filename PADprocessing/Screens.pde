//This class will handle all screens
//There will be many screens in this program, so
//we will use a switch statement for all screens.

class Screens
{
  int count;
  Screens()
  {
  }

  void screen1()
  {
    fill(style.white);
    textSize(style.textSize);
    text("Money maker beginners game", width/2, height/4);
    text("Interactive tutorial", width/2, height/2);
    rect(1450, 800, 100, 50);
    if (overlaps(1450, 800, 100, 50, mouseX, mouseY) && mousePressed)
    {
      text("TEST", width/2, height/2);
      screen++;
    }
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
    }
    if (overlaps(1200, 300, 100, 100, mouseX, mouseY) && mousePressed) {
      screen = 3; 
      amountOfPlayers = 4;
    }
    if (overlaps(400, 600, 100, 100, mouseX, mouseY) && mousePressed) {
      screen = 3; 
      amountOfPlayers = 5;
    }
    if (overlaps(1200, 600, 100, 100, mouseX, mouseY) && mousePressed) {
      screen = 3; 
      amountOfPlayers = 6;
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

    if (overlaps(400, 450, 500, 500, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 4; 
      count = 0;
    }
    if (overlaps(1200, 450, 500, 500, mouseX, mouseY) && mousePressed && count > 30) {
      screen = 7;
    }
  }

  void screen4()
  {
    imageMode(CENTER);
    image(style.screen4, width/2, height/2, 1600, 900);

    fill(style.white);
    rect(1500, 865, 100, 50);

    if (overlaps(1500, 865, 100, 50, mouseX, mouseY) && mousePressed)
    {
      screen = 5;
    }
  }

  void screen5()
  {
    textSize(style.textSize);
    text("Wincondities:", width/2, height/5);
    textSize(60);
    text("-Als alle financieringskaarten op zijn", width/2, 400);
    text("-Als een speler 10 financieringskaarten heeft", width/2, 500);
    text("-Als er 3 bankruns zijn geweest", width/2, 600);

    rect(1500, 865, 100, 50);
    count++;
    if (overlaps(1500, 865, 100, 50, mouseX, mouseY) && mousePressed && count > 30)
    {
      screen = 6;
      count = 0;
    }
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
    
    
  }
  
  void screen7()
  {
    
  }
  
  void screen8()
  {
    
  }
}
