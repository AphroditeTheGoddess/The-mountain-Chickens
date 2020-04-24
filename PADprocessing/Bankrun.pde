class Bankrun 
{
  public int bankrunCount;
  public boolean bankrunThisTurn;
  Bankrun() {
    bankrunCount = 0;
    bankrunThisTurn = false;
  }

  void bankrunFiche()
  {
    imageMode(CENTER);
    image(style.bankrunfiche, 1150, 790, 275, 250);
    count++;
    if (overlaps(1150, 790, 275, 250, mouseX, mouseY) && mousePressed && count > 20)
    {
      bankrunCount += 1;
      screen = 18;
      bankrunThisTurn = true;
    }
  }
}
