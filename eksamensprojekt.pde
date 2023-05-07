Enemy[] enemies = new Enemy[100];
PVector[] tower_pos = { //her laver jeg listen over tårnenes positioner på banen.
  new PVector(296,340),
  new PVector(320,600),
  new PVector(700,350),
  new PVector(860,370),
  new PVector(1100,600),
};
Towers[] towers = new Towers[tower_pos.length]; 
PImage bane;
int i;

void setup() {
  size(1280, 960);
  rectMode(CENTER);
  bane = loadImage("Bane1.png"); //her preloader jeg billedet. Som min enemies skal følge.
  // Setup towers
  for (int i = 0; i < tower_pos.length; i++) {
    towers[i] = new Towers(new PVector(tower_pos[i].x,tower_pos[i].y),1);
  }
  
}

void draw() {
  background(0);
  image(bane, 0, 0); 
  for (Towers tower : towers) {
    tower.display();
    tower.update();
  }
  for (Enemy enemy : enemies) {
    if (enemy != null) { enemy.update();}
  }

  if (ceil(random(100)) <= 1 && i <= enemies.length-1) { //
    if (ceil(random(100)) <= 50) {
      enemies[i] = new Circle(50);
    } else {
      enemies[i] = new Triangle(50);
    }
    i++;
  }
}
