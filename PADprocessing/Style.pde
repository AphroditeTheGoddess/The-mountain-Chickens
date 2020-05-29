//In this class all things style-related
//will be handled. like textsizes and colors etc.
class Style
{
  int textSize;
  color backgroundColor;
  color black;
  color white;

  PImage screen4;
  PImage screen6;
  PImage screen7;
  PImage screen11;
  PImage screen12;
  PImage screen13;
  PImage screen14;
  PImage screen15;
  PImage screen31;
  PImage screen50;
  PImage screen51;

  PImage text1;
  PImage text2;
  PImage text3;
  PImage text4;
  PImage text5;
  PImage text6;
  PImage text7;
  PImage text8;
  PImage text9;
  PImage text10;
  PImage text11;

  PImage r10;
  PImage r20;
  PImage g10;
  PImage g20;
  PImage b10;
  PImage b20;
  PImage red;
  PImage green;
  PImage blue;

  PImage boot, molen, vis, wiel, bakstenen, bloem;

  PImage bankrunfiche;
  PImage klasse;
  PImage bankruncoin;

  PImage BagTip;
  PImage BagJoke;
  PImage BagFact;
  PImage Glossary;

  PImage rechterPijl;
  PImage linkerPijl;

  PImage glossaryKnop;
  PImage glossaryActiekaart;
  PImage glossaryDobbelstenen;
  PImage glossaryFinancieringskaart;
  PImage glossaryGevangenis;
  PImage glossaryGilde;
  PImage glossaryGoud;
  PImage glossaryKrediet;
  PImage glossaryMarkten;
  PImage glossaryPromoveren;
  PImage glossaryKopen;
  PImage glossaryBank;
  PImage glossarySpeech;
  PImage bankrunMeter;
  PImage kredietKlassen;
  PImage gold;
  PImage gevangenis;

  PImage scoreblok;

  Style()
  {
    textSize = 80;
    backgroundColor = color(37, 116, 179);
    black = color(0);
    white = color(255);

    screen4 = loadImage("data/screen4.PNG");
    screen6 = loadImage("data/screen6.PNG");
    screen7 = loadImage("data/screen7.PNG");
    screen12 = loadImage("data/screen12.PNG");
    screen13 = loadImage("data/screen13.PNG");
    screen14 = loadImage("data/screen14.PNG");
    screen15 = loadImage("data/screen15.PNG");
    screen31 = loadImage("data/screen31.png");
    screen50 = loadImage("data/screen50.PNG");
    screen51 = loadImage("data/screen51.PNG");


    text1 = loadImage("data/text1.PNG");
    text2 = loadImage("data/text2.PNG");
    text3 = loadImage("data/text3.PNG");
    text4 = loadImage("data/text4.PNG");
    text5 = loadImage("data/text5.PNG");
    text6 = loadImage("data/text6.PNG");
    text7 = loadImage("data/text7.PNG");
    text8 = loadImage("data/text8.PNG");
    text9 = loadImage("data/text9.PNG");
    text10 = loadImage("data/text10.PNG");
    text11 = loadImage("data/text11.PNG");

    r10 = loadImage("data/10r.png");
    r20 = loadImage("data/20r.png");
    g10 = loadImage("data/10g.png");
    g20 = loadImage("data/20g.png");
    b10 = loadImage("data/10b.png");
    b20 = loadImage("data/20b.png");

    boot = loadImage("data/Boot.png");
    molen = loadImage("data/Molen.png");
    vis = loadImage("data/Vis.png");
    wiel = loadImage("data/Wiel.png");
    bakstenen = loadImage("data/Bakstenen.png");
    bloem = loadImage("data/Bloem.png");

    bankrunfiche = loadImage("data/bankrunfiche.png");
    klasse = loadImage("data/klasse.PNG");
    bankruncoin = loadImage("data/bankruncoin.png");

    BagTip = loadImage("data/whisper.png");
    BagJoke = loadImage("data/laugh.png");
    BagFact = loadImage("data/shrug.png");
    Glossary = loadImage("data/what.png");

    rechterPijl = loadImage("data/rechterpijl.png");
    linkerPijl = loadImage("data/linkerpijl.png");

    glossaryKnop = loadImage("data/glossary_knop.png");
    glossaryActiekaart = loadImage("data/glossary_actiekaarten.png");
    glossaryDobbelstenen = loadImage("data/glossary_dobbelstenen.png");
    glossaryFinancieringskaart = loadImage("data/glossary_financieringskaarten.png");
    glossaryGevangenis = loadImage("data/glossary_gevangenis.png");
    glossaryGilde = loadImage("data/glossary_gilde.png");
    glossaryGoud = loadImage("data/glossary_goud.png");
    glossaryKrediet = loadImage("data/glossary_krediet.png");
    glossaryMarkten = loadImage("data/glossary_productie-consumptie.png");
    glossaryPromoveren = loadImage("data/glossary_promoveren.png");
    glossaryKopen = loadImage("data/glossary_kopen-verkopen.png");
    glossaryBank = loadImage("data/glossary_bank.png");
    glossarySpeech = loadImage("data/glossary_speechbubble.png");
    bankrunMeter = loadImage("data/bankrunMeter.png");
    kredietKlassen = loadImage("data/kredietKlassen.png");
    gold = loadImage("data/gold.png");
    gevangenis = loadImage("data/gevangenis.png");

    scoreblok = loadImage("data/scoreblok.PNG");
  }
}
