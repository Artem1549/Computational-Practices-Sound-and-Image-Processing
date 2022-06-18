int redRectSpaceFromBorder = 40;
color red = color(255, 0, 0);
color white = color(255, 255, 255);
char[] text = new char[1000];
int index = 0;
char[] textAuthor = { 'K', 'o', 'm', 'a', 'r', '.', 'V' };

int[] posOftextX = new int[1300];
int[] posOftextY = new int[1300];
int indexTextX = 0;
int indexTextY = 0;

char[] XY = new char[2];
int indexXY = 0;

void setup() {
  size(800, 1000);
  background(255);
  strokeWeight(5);
  fill(white);
  rect(0, 0, width, height);
  noStroke();

  fill(red);
  rect(redRectSpaceFromBorder - (0.25 * redRectSpaceFromBorder), redRectSpaceFromBorder, width - (2 * redRectSpaceFromBorder) + (redRectSpaceFromBorder / 2), height - (2 * redRectSpaceFromBorder));

  letterCells(12, 12);
}

void draw() { 
  if (XY[0] != 0 && XY[1] != 0) {
    fill(red);
    rect(redRectSpaceFromBorder - (0.25 * redRectSpaceFromBorder), redRectSpaceFromBorder, width - (2 * redRectSpaceFromBorder) + (redRectSpaceFromBorder / 2), height - (2 * redRectSpaceFromBorder));
    letterCells(XY[0], XY[1]); // enter the number of columns then rows
  }
  outputText(XY[0], XY[1]);
}



void letterCells(int numOfRectX, int numOfRectY) { 
  int x = (width / 2) - (numOfRectX * 40) / 2;
  int y = ((height / 2) - (numOfRectY * 40) / 2) - 140;

  posOftextX[indexTextX] = x;
  posOftextY[indexTextY] = y;

  for (int q = 0; q < numOfRectY; q = q+1)
  {
    for (int i = 0; i < numOfRectX; i = i+1)
    {

      if (i == 0 && q == 0) {
        pushMatrix();
        translate(x + 5, y + 15);
        fill(white);
        textSize(50);
        text(",", 10, 20);
        popMatrix();
        pushMatrix();
        fill(white);
        textSize(50);
        translate(x - 7, y + 15);
        text(",", 10, 20);
        popMatrix();
      } else if (i == (numOfRectX - 1) && q == (numOfRectY - 1)) {
        pushMatrix();
        translate(x - 15, y - 12);
        fill(white);
        textSize(50);
        text(",", 10, 20);
        popMatrix();
        pushMatrix();
        fill(white);
        textSize(50);
        translate(x - 4, y - 12);
        text(",", 10, 20);
        popMatrix();
      } else {
        pushMatrix();
        translate(x, y);
        fill(white);
        rect(0, 0, 25, 40);
        popMatrix();
      }
      x = x + 40;
      indexTextX++;
      posOftextX[indexTextX] = x;
    }
    x = (width / 2) - (numOfRectX * 40) / 2;
    y = y + 60;
    indexTextY++;
    posOftextY[indexTextY] = y;
  } 

  int x2 = 430;
  int y2 = 850;

  for (int i = 0; i <  7; i = i+1)
  { 
    pushMatrix();
    translate(x2, y2);
    fill(white);
    rect(0, 0, 20, 30);
    fill(0);
    textSize(20);
    text(textAuthor[i], 1, 20);
    popMatrix();   
    x2 = x2 + 30;
  }

  indexTextX = 0;
  indexTextY = 0;
}


void outputText(int x, int y) {
  int w = 0;
  for (int q = 0; q < y; q++) {
    for (int i = 0; i < x; i++) {
      if (i == 0 && q == 0) {
      } else if (i == (x - 1) && q == (y - 1)) {
      } else {
        fill(0);
        textSize(20);
        if (text[w] != 0)
        {
          text(text[w], posOftextX[i] + 5, posOftextY[q] + 25);
          w++;
        }
      }
    }
  }
}

void keyPressed() {



  if (key == 'q') {      
    text[index] = 'q';
    index++;
  } else if (key == 'w') {
    text[index] = 'w';
    index++;
  } else if (key == 'e') {
    text[index] = 'e';
    index++;
  } else if (key == 'r') {
    text[index] = 'r';
    index++;
  } else if (key == 't') {
    text[index] = 't';
    index++;
  } else if (key == 'y') {
    text[index] = 'y';
    index++;
  } else if (key == 'u') {
    text[index] = 'u';
    index++;
  } else if (key == 'i') {
    text[index] = 'i';
    index++;
  } else if (key == 'o') {
    text[index] = 'o';
    index++;
  } else if (key == 'p') {
    text[index] = 'p';
    index++;
  } else if (key == 'a') {
    text[index] = 'a';
    index++;
  } else if (key == 's') {
    text[index] = 's';
    index++;
  } else if (key == 'd') {
    text[index] = 'd';
    index++;
  } else if (key == 'f') {
    text[index] = 'f';
    index++;
  } else if (key == 'g') {
    text[index] = 'g';
    index++;
  } else if (key == 'h') {
    text[index] = 'h';
    index++;
  } else if (key == 'j') {
    text[index] = 'j';
    index++;
  } else if (key == 'k') {
    text[index] = 'k';
    index++;
  } else if (key == 'l') {
    text[index] = 'l';
    index++;
  } else if (key == 'z') {
    text[index] = 'z';
    index++;
  } else if (key == 'x') {
    text[index] = 'x';
    index++;
  } else if (key == 'c') {
    text[index] = 'c';
    index++;
  } else if (key == 'v') {
    text[index] = 'v';
    index++;
  } else if (key == 'b') {
    text[index] = 'b';
    index++;
  } else if (key == 'n') {
    text[index] = 'n';
    index++;
  } else if (key == 'm') {
    text[index] = 'm';
    index++;
  } else if (key == ' ') {
    text[index] = ' ';
    index++;
  } else if (key == '?') {
    text[index] = '?';
    index++;
  } else if (key == '.') {
    text[index] = '.';
    index++;
  } else if (key == ',') {
    text[index] = ',';
    index++;
  } else if (key == '!') {
    text[index] = '!';
    index++;
  } else if (key == 'Q') {      
    text[index] = 'Q';
    index++;
  } else if (key == 'W') {
    text[index] = 'W';
    index++;
  } else if (key == 'E') {
    text[index] = 'E';
    index++;
  } else if (key == 'R') {
    text[index] = 'R';
    index++;
  } else if (key == 'T') {
    text[index] = 'T';
    index++;
  } else if (key == 'Y') {
    text[index] = 'Y';
    index++;
  } else if (key == 'U') {
    text[index] = 'U';
    index++;
  } else if (key == 'I') {
    text[index] = 'I';
    index++;
  } else if (key == 'O') {
    text[index] = 'O';
    index++;
  } else if (key == 'P') {
    text[index] = 'P';
    index++;
  } else if (key == 'A') {
    text[index] = 'A';
    index++;
  } else if (key == 'S') {
    text[index] = 'S';
    index++;
  } else if (key == 'D') {
    text[index] = 'D';
    index++;
  } else if (key == 'F') {
    text[index] = 'F';
    index++;
  } else if (key == 'G') {
    text[index] = 'G';
    index++;
  } else if (key == 'H') {
    text[index] = 'H';
    index++;
  } else if (key == 'J') {
    text[index] = 'J';
    index++;
  } else if (key == 'K') {
    text[index] = 'K';
    index++;
  } else if (key == 'L') {
    text[index] = 'L';
    index++;
  } else if (key == 'Z') {
    text[index] = 'Z';
    index++;
  } else if (key == 'X') {
    text[index] = 'X';
    index++;
  } else if (key == 'C') {
    text[index] = 'C';
    index++;
  } else if (key == 'V') {
    text[index] = 'V';
    index++;
  } else if (key == 'B') {
    text[index] = 'B';
    index++;
  } else if (key == 'N') {
    text[index] = 'N';
    index++;
  } else if (key == 'M') {
    text[index] = 'M';
    index++;
  }




  if (indexXY < 3) {

    if (key == '1') {
      XY[indexXY] = 1; 
      indexXY++;
    } else if (key == '2') {
      XY[indexXY] = 2; 
      indexXY++;
    } else if (key == '3') {
      XY[indexXY] = 3;
      indexXY++;
    } else if (key == '4') {
      XY[indexXY] = 4; 
      indexXY++;
    } else if (key == '5') {
      XY[indexXY] = 5; 
      indexXY++;
    } else if (key == '6') {
      XY[indexXY] = 6; 
      indexXY++;
    } else if (key == '7') {
      XY[indexXY] = 7; 
      indexXY++;
    } else if (key == '8') {
      XY[indexXY] = 8; 
      indexXY++;
    } else if (key == '9') {
      XY[indexXY] = 9; 
      indexXY++;
    }
  }
}
