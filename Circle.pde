class Circle extends Enemy{
  Circle(float size){
    super(size);
  }
  
  void display() {
    
    fill(255,0,0);
    circle(this.pos.x,this.pos.y, this.size);
  }
}
