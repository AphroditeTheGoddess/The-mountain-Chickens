class RoundCounter {
  int turn = 0;
  int round;
  boolean turnGoesUp;

  RoundCounter() {
  }

  void Count() {
    if (turn > amountOfPlayers && screens.playersSelected == true) {
      turn = 0;
      round++;
    }

    if (screen == 8 && turnGoesUp == false) {
      turn++;
      turnGoesUp = true;
    }

    if (screen != 8) {
      turnGoesUp = false;
    }
  }
}
