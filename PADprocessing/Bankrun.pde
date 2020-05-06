class Bankrun 
{
  public int bankrunCount;
  public boolean bankrunThisTurn;
  public boolean bankrun;
  public int amountOfBankrunFiches;
  
  int bankrunSteps;
  Bankrun() {
    bankrunCount = 0;
    bankrunThisTurn = false;
    bankrun = false;
    bankrunSteps = amountOfPlayers +1;
  }

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
    }
  }
  
  void bankrunTrigger()
  {
    if(bankrunCount >= bankrunSteps)
    {
      bankrun = true;
      bankrunCount = 0;
    }
  }
}
