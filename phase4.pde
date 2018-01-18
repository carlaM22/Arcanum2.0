ArrayList<Dessin> dessins;
Dessin dessinEnCours;
PVector dimensionDessin, positionDessin;

ArrayList<Ligne> lignes;

///////
import processing.sound.*;
SoundFile[] file;
SoundFile monSon;

int numsounds = 8;
int vitesseY;
int y;
boolean commencer = false;
////////

float[] valeursDeX = new float[200]; // 100=nombre total de sons possibles
int indexValeursDeX = 0;

void setup() {
  size(1439, 830);
  dimensionDessin = new PVector(200, 200);
  positionDessin = new PVector(0, 0);
  numsounds = 8;
  dessins = new ArrayList<Dessin>();
  lignes = new ArrayList<Ligne>();
  dessinEnCours = new Dessin(this, positionDessin, dimensionDessin);
  dessins.add(dessinEnCours);

  ////////
  y = 0;
  vitesseY = 1;
  ////////
}

void draw() {
  background(255);
  createGrid();
  for (Dessin d : dessins) {
    d.affichage();
    // d.bouger();
  }


  /////////// 
  if (commencer == true) {
    y += vitesseY;
    if (y >= height + 600) {
      y = 0;
    }

    stroke(#FFCC66);
    line(y, 0, y, width);




    // monSon = new SoundFile(this, int(random(5)) + ".mp3");

    // monSon.play();
  }
  for (int i=0; i<valeursDeX.length; i++) {
    // monSon = new SoundFile(this, int(random(5)) + ".mp3");
    //  monSon.play();
    if (y == valeursDeX[i] && y!=0) {
      monSon = new SoundFile(this, int(random(8)) + ".mp3");
      monSon.play();
    }
  }
  ////////////
}

void ajouteUneValeur() {
  float x = dessinEnCours.extremite.x + dessinEnCours.position.x;
  x = int(x);
  valeursDeX[indexValeursDeX] = x;
  indexValeursDeX += 1;
}

void keyPressed() {

  if (key == '3') {
    //println(dessinEnCours.extremite);
  }

  //LETTRES//
  if ((key == 'h') || (key == 'H')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
    // for (Dessin f : dessins) {
    //  f.jouer();
    // }
  }
  if ((key == 'g') || (key == 'G')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'j') || (key == 'J')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'k') || (key == 'K')) {
    dessinEnCours.ajoute(new ArcDeCercle(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'a') || (key == 'A')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'b') || (key == 'B')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'c') || (key == 'C')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'd') || (key == 'D')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'e') || (key == 'E')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'f') || (key == 'F')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'i') || (key == 'I')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'm') || (key == 'M')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'l') || (key == 'L')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'n') || (key == 'N')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'o') || (key == 'O')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new ArcDeCercle(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'p') || (key == 'P')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'q') || (key == 'Q')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne2(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'r') || (key == 'R')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 's') || (key == 'S')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 't') || (key == 'T')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Rectangle(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'u') || (key == 'U')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'v') || (key == 'V')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne2(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'y') || (key == 'Y')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'w') || (key == 'W')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'x') || (key == 'X')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'z') || (key == 'Z')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ligne(this, dessinEnCours.extremite, dimensionDessin));
  }

  //PONCTUATIONS//
  if ((key == '<')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '>')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '€')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '$')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'ù')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '%')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'è')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '&')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'à')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == 'é')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '.')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '"')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == ',')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '?')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == ';')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '/')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == ':')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '=')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '+')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '-')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == ')')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '!')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '(')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  //CHIFFRES//
  if ((key == '1')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Rectangle(dessinEnCours.extremite, dimensionDessin));
  }

  if ((key == '2')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '3')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Rectangle(dessinEnCours.extremite, dimensionDessin));
  }

  if ((key == '4')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }

  if ((key == '5')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }

  if ((key == '6')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }

  if ((key == '7')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '8')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '9')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  if ((key == '0')) {
    ajouteUneValeur();
    dessinEnCours.ajoute(new Ellipse(dessinEnCours.extremite, dimensionDessin));
  }
  //INTERRACTION// 

  if (key == ENTER) {
    commencer = true;

  } 

  if (keyCode == ' ') {
    for (Dessin d : dessins) {
      d.exploser();
    }
    if (positionDessin.x >= width - dimensionDessin.x) {
      positionDessin.x = 0;
      positionDessin.y += dimensionDessin.y;
    } else {
      positionDessin.x += dimensionDessin.x;
    }
    dessinEnCours = new Dessin(this, positionDessin, dimensionDessin);
    dessins.add(dessinEnCours);
  }
}