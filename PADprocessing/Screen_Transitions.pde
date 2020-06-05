public class Screen_Transitions {
  final int MAXTIME;

  float sizex;
  float sizey;
  color colour;
  float growthX;
  float growthY;
  int timer;
  int offset;
  

  boolean isFinished = false;
  Screen_Transitions() {

    offset = 50;
    sizex = 0;
    sizey = 0;
    growthX = 175;
    growthY = 100;
    timer = 0;
    MAXTIME = 30;
  }
  void counter() {
    if (transition) {

      timer++;
      if (timer <= MAXTIME  ) {
        sizex += growthX;
        sizey += growthY;
        isFinished = false;
      } else transition = false;
    } 
    if (transition == false) {
      if (sizex <= 0 && sizey <= 0) {
        sizex = 0;
        sizey = 0;
        isFinished = true;
      } 
      timer = 0;
      sizex -= growthX;
      sizey -= growthY;
    }
  }

  void screenTransition() {
    //noStroke();
    ellipse(width+offset, height+offset, sizex, sizey);
  }
}
