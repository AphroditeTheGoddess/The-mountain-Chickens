class RoundCounter {
  int player;
  int turn = 0;
  int round;


  RoundCounter() {
  }

  void Count() {
    player = amountOfPlayers;
    if (turn == player){
    turn = 0;
    round++;
    }
    if (screen == 8){
    turn++;
    
    }
  }
}
