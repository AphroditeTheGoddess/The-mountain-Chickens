class GameEndingTracker
{
  GameEndingTracker() 
  {
  }

  //This function is used everytime there is a bankrun.
  //It checks if this was the last bankrun (so if no more fiches are left)
  //Then the game ends
  void gameEnd()
  {
    if (bankrun.bankrunFichesLeft <= 0)
    {
      screen = 56;
    }
  }
}
