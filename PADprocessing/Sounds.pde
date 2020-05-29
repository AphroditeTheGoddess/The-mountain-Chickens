public class Sounds {
  
  AudioPlayer buttonPush;
  AudioPlayer bankrun;
  AudioPlayer talking;


  Sounds() {
    buttonPush = minim.loadFile("Buttonpush.mp3"); 
    bankrun = minim.loadFile("Bankrun.mp3");
    talking = minim.loadFile("talking_sound");
  }
}
