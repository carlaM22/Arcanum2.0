class Forme {
  PVector pointA, pointB;

  Forme(PVector v, PVector dim) {
    pointA = new PVector(v.x, v.y);
    pointB = new PVector(random(dim.x), random(dim.y));
    //println(pointA);  
}

  void affichage() {
  }
}