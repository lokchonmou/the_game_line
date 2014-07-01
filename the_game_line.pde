int[][] block = {
  {0,0,0,0,0,0,0},
  {0,0,0,0,0,0,0},
  {1,1,1,0,1,1,1},
  {1,1,1,0,1,1,1},
  {1,1,0,0,0,1,1},
  {1,0,0,0,0,0,1},
  {1,0,0,0,0,0,1},
};

long i, mark;
float[] rand = {0, 0};

void setup() {
  size (400, 600);
}

void draw() {
  // draw the background
  background(#FEFFD1);                  //Yellow

  // draw the block
  //stroke(0);
  fill(#FF8B8D) ;                       //Red  
  for (int x = 0; x < 7; x++) {
    for (int y = 0; y < 6; y++) {
      if (block[y][x] == 1)
        rect(width / 7 * x, height / 4 * (y-2) + i, width/7, height/4);
    }
  } 
  if (i >= height/4) {
    i = 0;
    mark++;
    rand[1] = rand[0];
    rand[0] = round(random(1, 6));
    for (int x = 0; x < 7; x++) {
      for (int y = 6; y > 1; y--)  
        block[y][x] = block[y-1][x]; 
      // creat a new random row
      if (x != rand[0])
        block[0][x] = 1;
      else
        block[0][x] = 0;
      if (x >= min(rand) && x <= max(rand)) 
        block[1][x] = 0;
      else 
        block[1][x] = 1;
    }
  }
  
  // display the score
  fill(#90FF8B);
  textSize(20);
  text("Mark = " + int(mark), 30, 30);


  // draw the ball
  noStroke();
  fill(#948BFF);                        //Blue
  ellipse(mouseX, height - 50, 30, 30);

  // make the block sink down
  i +=4;;
}
