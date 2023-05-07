class Towers {
  PVector pos;
  float size;
  float timeout;

  Towers(PVector pos, float timeout, float size) {
    this.size = size;
    this.pos = pos;
    this.timeout = timeout;
  }
  
  // Function overload
  Towers(PVector pos, float timeout) {
    this(pos, timeout, 50); // Use the other constructor to set default size to 50
  }

  void display() {
    fill(0, 0, 255);
    rect(pos.x, pos.y, size, size);
  }

  int findenemy() {
    int closestIndex = -1; // Initialize with an invalid index
    float closestDistance = 250; // Initialize with the maximum range of 500
    for (int i = 0; i < enemies.length; i++) {
      if (enemies[i] != null) {
        float dist = dist(pos.x, pos.y, enemies[i].pos.x, enemies[i].pos.y);
        if (dist < closestDistance) {
          closestIndex = i;
          closestDistance = dist;
        }
      }
    }
    return closestIndex;
  }

  void update() {
    if (enemies != null && enemies.length != 0) { // Check for null before checking length
      int target = findenemy();
      if (target >= 0) { // Check if a valid enemy was found
        stroke(255,0,0);
        line(pos.x, pos.y, enemies[target].pos.x, enemies[target].pos.y);
      }
    }
  }
}
