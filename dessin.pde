class Dessin {
  ArrayList<Forme> formes;
  PVector extremite, position, vitesse;
  float vitesseAnglulaire;
  SoundFile son;

  Dessin(PApplet parent, PVector pos, PVector dim) {
     formes = new ArrayList<Forme>();
     position = new PVector(pos.x, pos.y);
     vitesse = new PVector(50, 50);
     extremite = new PVector(random(dim.x), random(dim.y));
     vitesseAnglulaire = 10;
     String fichierSon = int(random(1, 8)) + ".mp3";
     son = new SoundFile(parent, fichierSon); 
  }
  
  void ajoute(Forme f) {
    formes.add(f);
    extremite = f.pointB;
  }
  
void exploser() {
    vitesse.set(random(-40, 5), random(-2, 2));
    vitesseAnglulaire = random(-9, 5);
  }
  
  void bouger() {
    position.add(vitesse);
    vitesse.mult(0.5);
  }
   void jouer() {
 son.play();
  }
  
  void affichage() {
    pushMatrix();
    translate(position.x, position.y);
    noFill();
    stroke(0);
    for (Forme f : formes) {
      f.affichage();
    }
    popMatrix();
  }
}