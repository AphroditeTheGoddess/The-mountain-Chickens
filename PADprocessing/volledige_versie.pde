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

  if (overlaps(400, 300, 100, 100, mouseX, mouseY) && mousePressed) {
    screen = 28; 
    amountOfPlayers = 3;
    playersSelected = true;
  }
  if (overlaps(1200, 300, 100, 100, mouseX, mouseY) && mousePressed) {
    screen = 28; 
    amountOfPlayers = 4;
    playersSelected = true;
  }
  if (overlaps(400, 600, 100, 100, mouseX, mouseY) && mousePressed) {
    screen = 28; 
    amountOfPlayers = 5;
    playersSelected = true;
  }
  if (overlaps(1200, 600, 100, 100, mouseX, mouseY) && mousePressed) {
    screen = 28; 
    amountOfPlayers = 6;
    playersSelected = true;
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
  }
}
void screen30()
{
  imageMode(CENTER);
  image(style.screen4, width/2, height/2, 1600, 900);

  next(31);
}
void screen31()
{
  imageMode(CENTER);
  image(style.screen31, width/2, height/2, 1600, 900);

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

  next(29);
}
void screen34() 
{
  textSize(style.textSize);
  text("Aan de beurt komen", width/2, height/5);
  textSize(60);
  text("Iedere speler krijgt de kans om te mogen beginnen met bieden.", width/2, 300);
  text("Dit doe je door voor je beurt te bieden.", width/2, 400);
  text("Dit mag in willekeurige volgorde,", width/2, 600);
  text("de speler die het meest heeft geboden krijgt de eerste beurt,", width/2, 700);
  text("maar is dus wel al goud of krediet kwijt.", width/2, 800);

  next(35);
}
void screen35()
{
  imageMode(CENTER);
  image(style.screen35, width/2, height/2, 1600, 900);

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
}
void screen37()
{
  imageMode(CENTER);
  image(style.screen9, width/2, height/2, 1600, 900);

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
}
void screen39()
{
  imageMode(CENTER);
  image(style.screen11, width/2, height/2, 1600, 900);

  next(38);
}
void screen40()
{
  imageMode(CENTER);
  image(style.screen12, width/2, height/2, 1600, 900);

  next(41);
}
void screen41()
{
  imageMode(CENTER);
  image(style.screen13, width/2, height/2, 1600, 900);

  previous(40);
  next(42);
}
void screen42()
{
  imageMode(CENTER);
  image(style.screen14, width/2, height/2, 1600, 900);

  previous(41);
  next(38);
}
void screen43()
{
  imageMode(CENTER);
  image(style.screen15, width/2, height/2, 1600, 900);

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

  if (overlaps(500, height/2, 400, 400, mouseX, mouseY) && mousePressed && count > 30) {
    screen = 45; 
    count = 0;
  }
  if (overlaps(1100, height/2, 400, 400, mouseX, mouseY) && mousePressed && count > 30) {
    screen = 46; 
    count = 0;
  }
}
void screen45()
{
  text("Betaal 10 goud of krediet", width/2, height/2);

  next(46);
}
void screen46()
{
  imageMode(CENTER);
  background(255);
  fill(0);
  text("Gooi nu een kredietdobbelsteen.", 500, 100);
  text("Waarop is je dobbelsteen geland?", 500, 200);

  //When you click on the dices, it will bring you to a page about that specific dice.
  //Red 10
  image(style.r10, 400, 400, 200, 200);
  if (overlaps(400, 400, 200, 200, mouseX, mouseY) && mousePressed) {
    screen = 47;
  }

  //Red 20
  image(style.r20, 400, 700, 200, 200);
  if (overlaps(400, 700, 200, 200, mouseX, mouseY) && mousePressed) {
    screen = 47;
  }

  //Green 10
  image(style.g10, 800, 400, 200, 200);
  if (overlaps(800, 400, 200, 200, mouseX, mouseY) && mousePressed) {
    screen = 48;
  }

  //Green 20
  image(style.g20, 800, 700, 200, 200);
  if (overlaps(800, 700, 200, 200, mouseX, mouseY) && mousePressed) {
    screen = 48;
  }

  //Blue 10
  image(style.b10, 1200, 400, 200, 200);
  if (overlaps(1200, 400, 200, 200, mouseX, mouseY) && mousePressed) {
    screen = 49;
  }

  //Blue 20
  image(style.b20, 1200, 700, 200, 200);    
  if (overlaps(1200, 700, 200, 200, mouseX, mouseY) && mousePressed) {
    screen = 49;
  }

  next(50);
}
void screen47()
{
  imageMode(CENTER);
  background(255);
  fill(0);
  text("Rood", 500, 100);
  image(style.red, width/2, height/2);
  previous(46);
  next(50);
}
void screen48()
{
  imageMode(CENTER);
  background(255);
  fill(0);
  text("Groen", 500, 100);
  image(style.green, width/2, height/2);
  previous(46);
  next(50);
}
void screen49()
{
  imageMode(CENTER);
  background(255);
  fill(0);
  text("Blauw", 500, 100);
  image(style.blue, width/2, height/2);
  previous(46);
  next(50);
}
void screen50()
{
  imageMode(CENTER);
  background(255);
  fill(0);
  image(style.screen50, width/2, height/2);
  previous(46);
  next(51);
}
void screen51()
{
  imageMode(CENTER);
  background(255);
  fill(0);
  image(style.screen51, width/2, height/2);
  previous(50);
  next(52);
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
  
  next(54);
}
void screen54()
{
  imageMode(CENTER);
  textSize(style.textSize);
  text("Krediet klasse omhoog", width/2, height/5);
  textSize(60);
  text("Door je schulden af te lossen ga je een krediet klasse omhoog", width/2, 300);
  image(style.klasse, width/2, height-131);
  
  next(44);
}
//einde volledige spel 