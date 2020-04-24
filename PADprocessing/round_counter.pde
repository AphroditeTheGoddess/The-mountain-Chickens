class RoundCounter {
  int turn = 1;
  int round;
  boolean turnGoesUp;

  RoundCounter() {
  }

  void Count() {
    if (turn > amountOfPlayers +1 && screens.playersSelected == true) {
      turn = 1;
      round++;
    }

    if (screen == 17 && turnGoesUp == false) {
      turn++;
      turnGoesUp = true;
    }

    if (screen != 17) {
      turnGoesUp = false;
    }
  }
}
