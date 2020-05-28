class GameEndingTracker
{
  Boolean gameFinished;
  
  GameEndingTracker() 
  {
    gameFinished = false;
  }

  void gameEnd()
  {
    if (bankrun.bankrunFichesLeft <= 0)
    {
      gameFinished = true;
      screen = 56;
    }
  }
}
