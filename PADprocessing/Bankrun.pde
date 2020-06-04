final int bankrunficheX = 1150;
final int bankrunficheY = 790;
final int bankrunficheSizeX = 275;
final int bankrunficheSizeY = 250;

class Bankrun 
{
  //Counts the amount of steps a fiche has moved
  public int bankrunCount;
  //Boolean that makes it so that a fiche cannot be moved twice in one turn by the same trigger
  public boolean bankrunThisTurn;
  //Boolean that becomes true when there is a bankrun (when a fiche reaches the limit)
  public boolean bankrun;
  //Variable for the amount of fiches used this game
  public int amountOfBankrunFiches;
  //Variable for the amount of fiches left in the game
  public int bankrunFichesLeft;
  //Variable for the amount of fiches left on the pile
  public int fichesLeftOnPile;
  //Variable for the amount of steps that are drawn on screen. (amount of steps depends on the amount of players)
  int bankrunSteps;
  
  //Constructor for this class
  Bankrun() 
  {
    bankrunCount = 0;
    bankrunThisTurn = false;
    bankrun = false;
    bankrunSteps = amountOfPlayers +1;
    bankrunFichesLeft = amountOfBankrunFiches;
  }

  //This is the function for the fiche that is displayed on the "bieden?" screen.
  //This must be clicked when there are already 5 cards turned around on the table at the start of the turn, instead of turning around another card.
  //This will trigger the fiche to move 1 step
  void bankrunFiche()
  {
    imageMode(CENTER);
    image(style.bankrunfiche, bankrunficheX, bankrunficheY, bankrunficheSizeX, bankrunficheSizeY);
    count++;
    if (overlaps(bankrunficheX, bankrunficheY, bankrunficheSizeX, bankrunficheSizeY))
    {
      bankrunCount++;
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
    
    int stepsYDifference;
    int stepsX = 50;
    int stepsY = 50;
    int stepSize = 75;
    int stepMultiplier = 75;
    int stepYDifferenceMultiplier = 60;
    
    int lastStepX = 150;
    int lastStepY = 75;
    
    int coinPileX = 50;
    int coinPileY = 50;
    
    int pileTextX = 50;
    int pileTextY = 110;
    
    int coinX = 50;
    int coinY = 50;
    int coinSize = 78;

    //Hier worden de cirkels gedrawed, de ingewikkelde berekeningen en getallen zorgen ervoor dat het patroon zig-zaggend is
    //Het aantal cirkels hangt ook af van het aantal spelers
    for (int i = 0; i <= amountOfPlayers; i++)
    {
      noFill();
      if (i % 2 != 0) {
        stepsYDifference = stepYDifferenceMultiplier;
      } else {
        stepsYDifference = 0;
      }
      ellipse((stepsX + stepMultiplier*i), stepsY + stepsYDifference, stepSize, stepSize);
      if (i == amountOfPlayers) {
        ellipse(lastStepX + stepMultiplier*i, lastStepY, stepSize, stepSize);
      }
    }

    //Dit is de coin die op de eerste cirkel staat (De stapel waar alle coins op het begin van de game staan)
    //Het aantal coins op de stapel wordt eronder gedisplayed met een getal
    //Deze coin is alleen zichtbaar zolang er nog fiches op de stapel liggen
    //Deze coin verdwijnt dus als het laatste fiche van de stapel verplaatst wordt.
    imageMode(CENTER);
    if (bankrunCount != 0 && bankrunFichesLeft > 1)
    {
      image(style.bankruncoin, coinPileX, coinPileY, coinSize, coinSize);
    }
    
    //Dit if statement zorgt ervoor dat het getal onder de stapel met fiches 1 minder wordt als 
    //er een fiche van de stapel naar een volgende stap wordt verplaatst
    if (bankrunCount > 0) 
    {
      fichesLeftOnPile--;
    }

    //Zolang er nog fiches op de stapel liggen, blijft het getal eronder zichtbaar
    //Als het laatste fiche van de stapel een stap vooruit gaat, verdwijnt dit getal
    if (fichesLeftOnPile != 0)
    {
      textSize(20); 
      fill(style.white);
      text(fichesLeftOnPile, pileTextX, pileTextY);
      textSize(50);
    }

    //Dit if statement zorgt ervoor dat het fiche stappen zet
    if (bankrunCount <= bankrunSteps)
    {
      coinX = 50 + (stepMultiplier * bankrunCount);
      //Hierdoor zig-zagt het fiche zodat het op de cirkels gedisplayed wordt
      if (bankrunCount % 2 != 0)
      {
        coinY += stepYDifferenceMultiplier;
      }
    }

    //Hier wordt het fiche op de laatste cirkel gezet als het max aantal stappen bereikt is
    if (bankrun)
    {
      coinX = lastStepX + (stepMultiplier*amountOfPlayers); 
      coinY = lastStepY;
    }
    image(style.bankruncoin, coinX, coinY, coinSize, coinSize);
  }
}
