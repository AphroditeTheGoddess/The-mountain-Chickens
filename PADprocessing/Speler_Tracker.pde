public class Speler_Tracker {
  int spelers;
  boolean nextplayer;
  Speler_Tracker() {
    spelers = 1; 
    nextplayer = false;
  }

  void spelers() {
    if (nextplayer) {
      spelers++;
    }
    if (spelers == amountOfPlayers) {
      spelers = 1;
    }
    text("speler: "+ spelers, 900, 600);
    text("end turn", 900, 500);
    if (overlaps(900, 600, 100, 50))
    {
      nextplayer = true;
    }
  }
}
