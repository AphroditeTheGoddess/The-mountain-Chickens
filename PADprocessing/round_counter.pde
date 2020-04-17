class RoundCounter {
  int turn = 0;
  int round;
  boolean turnGoesUp;
  boolean screen8;


  RoundCounter() {
  }

  void Count() {
    if (turn == amountOfPlayers) {
      turn = 0;
      round++;
    }
    if (screen == 8) {
      turnGoesUp = true;
      screen8 = true;

      if (turnGoesUp == true && screen8 == true) {
        turn++;
        turnGoesUp = false;
      }
    }
    if (screen != 8) {
      screen8 = false;
    }
  }
}
