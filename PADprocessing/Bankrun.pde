class Bankrun 
{
  public int bankrunCount;
  public boolean bankrunThisTurn;
  public boolean bankrun;
  public int amountOfBankrunFiches;
  public int bankrunFichesLeft;
  public int fichesLeftOnPile;

  int bankrunSteps;
  Bankrun() {
    bankrunCount = 0;
    bankrunThisTurn = false;
    bankrun = false;
    bankrunSteps = amountOfPlayers +1;
    bankrunFichesLeft = amountOfBankrunFiches;
  }

  //Dit is de functie voor het fiche dat op het biedscherm gedisplayed wordt
  //Hier kan dan op geklikt worden als er op het begin van de beurt al 5 kaarten open liggen
  void bankrunFiche()
  {
    imageMode(CENTER);
    image(style.bankrunfiche, 1150, 790, 275, 250);
    count++;
    if (overlaps(1150, 790, 275, 250, mouseX, mouseY) && mousePressed && count > 20)
    {
      bankrunCount += 1;
      screen = 24;
      bankrunThisTurn = true;
      sounds.bankrun.play();
    }
  }

  //Dit is de functie die checkt of het fiche de bankrunmeter bereikt heeft
  //Als dat true is wordt er ook nog gecheckt of dit het laatste fiche was, als dat zo is eindigt de game
  void bankrunTrigger()
  {
    if (bankrunCount >= bankrunSteps)
    {
      bankrun = true;
      bankrunCount = 0;
      bankrunFichesLeft--;
      gameEndingTracker.gameEnd();
    }
  }

  //Deze functie zorgt ervoor dat de fiches en het aantal stappen linksboven in het scherm gedisplayed worden
  void bankrunDisplay()
  {
    fichesLeftOnPile = bankrunFichesLeft;
    int number;
    int coinX = 50;
    int coinY = 50;

    //Hier worden de cirkels gedrawed, de ingewikkelde berekeningen en getallen zorgen ervoor dat het patroon zig-zaggend is
    //Het aantal cirkels hangt ook af van het aantal spelers
    for (int i = 0; i <= amountOfPlayers; i++)
    {
      noFill();
      if (i % 2 != 0) {
        number = 60;
      } else {
        number = 0;
      }
      ellipse((50 + 75*i), 50 + number, 75, 75);
      if (i == amountOfPlayers) {
        ellipse(150 + 75*i, 75, 75, 75);
      }
    }

    //Dit is de coin die op de eerste cirkel staat (De stapel waar alle coins op het begin van de game staan)
    //Het aantal coins op de stapel wordt eronder gedisplayed met een getal
    imageMode(CENTER);
    if (bankrunCount != 0 && bankrunFichesLeft > 1)
    {
      image(style.bankruncoin, 50, 50, 78, 78);
    }
    //Dit if statement zorgt ervoor dat het getal onder de stapel fiches 1 minder wordt als 
    //er een fiche van de stapel naar een volgende stap wordt verplaatst
    if (bankrunCount > 0) {
      fichesLeftOnPile--;
    }

    //Zolang er nog fiches op de stapel liggen, blijft het getal eronder zichtbaar
    //Als het laatste fiche van de stapel een stap vooruit gaat, verdwijnt dit getal
    if (fichesLeftOnPile != 0)
    {
      textSize(20); 
      fill(style.white);
      text(fichesLeftOnPile, 50, 110);
      textSize(50);
    }

    //Dit if statement zorgt ervoor dat het fiche stappen zet
    if (bankrunCount <= bankrunSteps)
    {
      coinX = 50+ (75 * bankrunCount);
      //Hierdoor zig-zagt het fiche zodat het op de cirkels gedisplayed wordt
      if (bankrunCount % 2 != 0)
      {
        coinY += 60;
      }
    }

    //Hier wordt het fiche op de laatste cirkel gezet als het max aantal stappen bereikt is
    if (bankrun)
    {
      coinX = 150 + (75*amountOfPlayers); 
      coinY = 75;
    }
    image(style.bankruncoin, coinX, coinY, 78, 78);
  }
}
