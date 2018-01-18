class Ligne extends Forme {
  SoundFile son;
  
  Ligne(PApplet parent, PVector ext, PVector d) {
    super(ext, d);
    String fichierSon = int(random(1, 8)) + ".mp3";
    //String fichierSon = "1.mp3";
    son = new SoundFile(parent, fichierSon);
  }

  void affichage() {
    stroke(255);
    pushMatrix();
    line(pointA.x, pointA.y, pointB.x, pointB.y);
    popMatrix();
  }
  
  void jouer() {
 son.play();
  }
}

class Ligne2 extends Forme {
  Ligne2(PVector ext, PVector d) {
    super(ext, d);
  }

  void affichage() {
    stroke(255);
    pushMatrix();
    line(pointA.y, pointA.y, pointB.y, pointB.y);
    popMatrix();
  }
}

class ArcDeCercle extends Forme {
  int hauteur, sens;
  float largeur, angle;

  ArcDeCercle(PVector ext, PVector d) {
    super(ext, d);
    hauteur = floor(random(10, 300));
    sens = floor(random(0, 2));
    largeur = PVector.sub(pointB, pointA).mag();
    angle = PVector.sub(pointB, pointA).heading();
  }

  void affichage() {
    stroke(255);
    pushMatrix();
    translate(pointA.x, pointA.y);
    rotate(angle);
    arc(largeur / 2, 0, largeur, hauteur, 0 + sens * PI, PI + sens * PI);
    popMatrix();
  }
}

class Ellipse extends Forme {
  int hauteur, sens;
  float largeur, angle;

  Ellipse(PVector ext, PVector d) {
    super(ext, d);
   
  }

  void affichage() {
    stroke(155);
    pushMatrix();
    translate(pointA.x, pointA.y);
    rotate(angle);
    ellipse(pointA.x, pointA.x, pointB.x, pointB.x);
    popMatrix();
  }
}


class Rectangle extends Forme {
  Rectangle(PVector ext, PVector d) {
     super(ext, d);
  }

  void affichage() {
    stroke(255);
    noFill();
    pushMatrix();
    rect(pointA.x, pointA.y, pointB.x, pointB.y);
    popMatrix();
  }
}