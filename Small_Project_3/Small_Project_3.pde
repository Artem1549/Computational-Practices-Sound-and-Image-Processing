Leaf[] leafs;
int c = 200;

int step;
int leafsnum;

void setup() {
  size(800, 600);
  frameRate(80);
  leafs = new Leaf[c];
  for (int i = 0; i < leafs.length; i++) {
    leafs[i] = new Leaf(random(width), -20);
  }

  step = 0;
  leafsnum = 10;
}

void draw() {
  background(89, 58, 14);
  displayLeafs(0, constrain(int(frameCount * 0.5), 0, 200));
}

void mousePressed() {
  setup();
}

void displayLeafs(int f, int l) {
  int time = int(random(500, 700));
  float randwind = random(-0.3,0.3);
  for (int i = f; i < l; i++) {

    // small wind
    if ((frameCount % int(random(100, 300))) == 0) {
      float rand = random(0.3);
      println("wind amount applied: " + rand); 
      leafs[i].applyWind(rand);
    }

    //big wind

    if ((frameCount % time) == 0) {
     
      println("BIG wind amount applied: " + randwind); 
      leafs[i].applyWind(randwind);
    }


    leafs[i].applyleafMovement();
    leafs[i].update();
    leafs[i].display();
  }
}
