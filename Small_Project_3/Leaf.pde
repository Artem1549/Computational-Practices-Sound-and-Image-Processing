class Leaf {

  PVector position;
  PVector velocity; 
  PVector acceleration;  

  PVector gravity; // ↓
  PVector wind; // -> 
  PVector leafMovement; // <- ->
  PVector weight; // ↓

  color col;

  float xL; // pos leaf
  float yL; // pos leaf
  float size;
  int count;

  Leaf(float x, float y) {

    xL = x;
    yL = y;

    position = new PVector(x, y); 
    velocity = new PVector();
    acceleration = new PVector();



    gravity = new PVector(0, 0.000005);
    leafMovement = new PVector();
    wind = new PVector();
    size = random(0.8, 1.2);
    weight = new PVector(0, (1.2 - size) / 120);


    col = color(random(70), random(255), random(70));
  }



  void applyWind(float rand) {
    wind.x = rand;
    acceleration.add(wind);
  }

  void applyleafMovement() {
    leafMovement.x = random(-0.002, 0.002);
  }

  void update() {

    acceleration.add(leafMovement);
    acceleration.add(gravity);
    acceleration.add(weight);
    velocity.add(acceleration);
    leafHitGround();
    position.add(velocity);
  }

  void display() {

    stroke(64);
    strokeWeight(2);
    fill(col);



    pushMatrix();
    scale(size);
    translate(position.x, position.y);
    // leaf
    beginShape();
    rotate(0.35); 
    rect(-25, -2, 20, 3, 28);
    ellipse(0, 0, 30, 20);
    endShape(CLOSE);

    popMatrix();
  }
  void leafHitGround() {
    count++;  
    if ((position.y*size+15) > height) { 

      velocity.y = 0;
      velocity.x = 0;
      acceleration.x = 0;
      acceleration.y = 0;
      if ((count % 200) == 0) {
        position.y = yL;
        position.x = xL;
      }
    }
  }
}
