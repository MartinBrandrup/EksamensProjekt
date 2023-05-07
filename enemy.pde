class Enemy { //definere mine variabler som jeg bruger senere.
  PVector pos;
  float size;
  PVector[] checks;
  int index;
  float speed;

  Enemy(float size) {
    this.index = 0;
    PVector[] checks = { //Her er en liste over de pvectorer som bruges til at guide cirklerne og trekanterne.
      new PVector(82, 21), 
      new PVector(155, 657), 
      new PVector(208, 766), 
      new PVector(322, 784), 
      new PVector(420, 750), 
      new PVector(521, 373), 
      new PVector(657, 184), 
      new PVector(869, 210), 
      new PVector(1008, 390), 
      new PVector(1008, 661), 
      new PVector(1115, 816),
      new PVector(1280, 960),
      new PVector(1280, 960),
    };
    this.checks = checks;
    this.pos = checks[0];
    this.size = size;
    this.speed = 2.;
  }


  void update() {
    display();

    PVector Vbetween = PVector.sub(checks[index], this.pos); //Vector mellem to checkpoints
    if (Vbetween.mag() > 1) { //hvis mag er større end en så skal vi bevæge os imod det næste checkpoint og hvis det er mindre end 1 så skal vi øge index med 1
    //hvilket giver os det næste checkpoint på listen. Og når vi kommer til sidste checkpoint skal vi stoppe / fryse spillet aka du har tabt.
      this.pos.add(Vbetween.normalize().mult(speed));
    } else {
      this.index++;
    }

    if (this.index == checks.length-1) {
      stop();
    }
  }

  void display() {
    fill(255, 0, 0);
    rect(this.pos.x, this.pos.y, 25, 25);
  }
}
