class Triangle extends Enemy{
  Triangle(float size){
    super(size);
  }
  
  void display() {
    
    fill(0,255,0);
    triangle(this.pos.x-this.size/2,this.pos.y, this.pos.x,this.pos.y+this.size,this.pos.x+this.size/2,this.pos.y);
  }
}
